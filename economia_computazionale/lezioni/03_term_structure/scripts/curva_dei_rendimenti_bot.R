library(dplyr) #libreria per manipolare dataframe
library(rvest) #libreria per web scraping
library(readr) #importa file rettangolari funzione parse_number
library(stringr) #manipolazione stringhe funzione str_detect

#scraping tabella da simpletoolsforinvestors

url <- "https://www.simpletoolsforinvestors.eu/monitor_info.php?monitor=5&timescale=DUR&yieldtype=G&issuer=GOV_IT&volumerating=0"

page <- read_html(url)

tables <- page |>
  html_elements("table") |>
  html_table(fill = TRUE)

btp_table<-tables[[1]]

#selezione variabili

btp <- btp_table |>
  transmute(
    isin = `Codice ISIN`,
    descrizione = Descrizione,
    scadenza = as.Date(Datascadenza),
    prezzo = parse_number(
      `Prezzo diriferimento`,
      locale = locale(decimal_mark = ",")
    ),
    yield = parse_number(
      Yield,
      locale = locale(decimal_mark = ",")
    ),
    mercato = Mercato
  )

# classificazione automatica dei titoli

btp <- btp |>
  mutate(
    tipo = case_when(
      str_detect(descrizione, "^BOT ") ~ "BOT",
      str_detect(descrizione, "^BTP Italia") ~ "BTP Italia",
      str_detect(descrizione, "^BTPi ") ~ "BTPi",
      str_detect(descrizione, "^BTP VALORE") ~ "BTP Valore",
      str_detect(descrizione, "^BTP FUTURA") ~ "BTP Futura",
      str_detect(descrizione, "^BTP PIU") ~ "BTP Più",
      str_detect(descrizione, regex("GREEN", ignore_case = TRUE)) ~ "BTP Green",
      str_detect(descrizione, "^BTP ") ~ "BTP plain vanilla",
      TRUE ~ "Altro"
    )
  )

#
tipi_presenti<-levels(as.factor(btp$tipo))
print(tipi_presenti)
# selezione titoli di interesse

titoli_selezionati <- btp |>
  filter(tipo %in% c("BOT", "BTP plain vanilla")) |>
  arrange(scadenza)

titoli_selezionati |>
  select(
    isin,
    descrizione,
    tipo,
    scadenza,
    prezzo,
    yield
  )

#separiamo i due gruppi

bot <- titoli_selezionati |>
  filter(tipo == "BOT")

btp_plain <- titoli_selezionati |>
  filter(tipo == "BTP plain vanilla")

#analizziamo i BOT

bot <- bot |> filter(!is.na(prezzo))
data_valutazione <- Sys.Date()
bot <- bot |>
  mutate(
    giorni_scadenza = as.numeric(scadenza - data_valutazione),
    T = giorni_scadenza / 365
  ) |>
  filter(T > 0)
#calcolo fattori di sconto
bot <- bot |>
  mutate(
    discount_factor = prezzo / 100
  )
#visualizzazione dei fattori di sconto
#pdf("fig_fasttori_di_sconto_bot.pdf")
plot(
  bot$T,
  bot$discount_factor,
  xlab = "Maturity (anni)",
  ylab = "Discount factor",
  main = "Discount factors ricavati dai BOT",
  pch = 19
)
#dev.off()
#write.csv(bot, "bot20261022.csv",row.names = FALSE)
#write.csv(btp_plain, "btp20261022.csv",row.names = FALSE)
