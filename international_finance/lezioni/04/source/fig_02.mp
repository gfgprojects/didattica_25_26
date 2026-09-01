%
% fig2dev (version 3.2.7) -L (m)mp version 0.05 --- Preamble
%

%
% mp output driver options:
%  -L mp
%

% +MP-ADDITIONAL-HEADER
verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex
% -MP-ADDITIONAL-HEADER


%SetFigFont macros for latex
verbatimtex
%
\begingroup\makeatletter\ifx\SetFigFont\undefined%
\gdef\SetFigFont#1#2#3#4#5{%
  \reset@font\fontsize{#1}{#2pt}%
  \fontfamily{#3}\fontseries{#4}\fontshape{#5}%
  \selectfont}%
\fi\endgroup%
\ifx\SetFigFontSize\undefined%
\gdef\SetFigFontSize#1#2{%
	\fontsize{#1}{#2pt}%
	\selectfont}%
\fi%
etex

% Now draw the figure
beginfig(0)
% Some reasonable defaults
  labeloffset:=0;
  truecorners:=1;
  bboxmargin:=0;
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (927.00,333.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (954.00,351.00);
 fill c withcolor ((0.00,0.00,1.00) + 0.00white);
	draw c withcolor (0.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (990.00,369.00);
 fill c withcolor ((0.00,1.00,0.00) + 0.00white);
	draw c withcolor (0.00,1.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (1206.00,396.00);
 fill c withcolor ((1.00,0.00,1.00) + 0.00white);
	draw c withcolor (1.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (918.00,441.00);
 fill c withcolor (black + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (801.00, 288.00)
    --(1251.00, 288.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (801.00, 288.00)
    --(801.00, 630.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 5.40;
  path p;
  p = (927.00, 333.00)
    --(927.00, 441.00)
    --(801.00, 441.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=2;
  pickup pencircle scaled 5.40;
  path p;
  p = (927.00, 333.00)
    --(927.36, 333.24)
    --(928.20, 333.84)
    --(929.64, 334.68)
    --(931.56, 336.00)
    --(933.84, 337.44)
    --(936.48, 339.12)
    --(939.00, 340.80)
    --(941.52, 342.48)
    --(943.92, 344.04)
    --(946.08, 345.36)
    --(948.12, 346.68)
    --(950.04, 347.76)
    --(951.96, 348.96)
    --(953.76, 349.92)
    --(955.56, 351.00)
    --(957.12, 351.96)
    --(958.80, 352.80)
    --(960.48, 353.76)
    --(962.28, 354.72)
    --(964.20, 355.80)
    --(966.24, 356.76)
    --(968.28, 357.84)
    --(970.44, 358.92)
    --(972.60, 360.00)
    --(974.88, 361.08)
    --(977.16, 362.16)
    --(979.44, 363.24)
    --(981.72, 364.20)
    --(984.00, 365.28)
    --(986.28, 366.24)
    --(988.44, 367.20)
    --(990.72, 368.04)
    --(993.00, 369.00)
    --(995.04, 369.84)
    --(997.20, 370.68)
    --(999.48, 371.52)
    --(1001.76, 372.36)
    --(1004.16, 373.20)
    --(1006.68, 374.16)
    --(1009.32, 375.00)
    --(1011.96, 375.96)
    --(1014.60, 376.92)
    --(1017.36, 377.76)
    --(1020.24, 378.72)
    --(1023.00, 379.56)
    --(1025.76, 380.40)
    --(1028.52, 381.24)
    --(1031.28, 382.08)
    --(1033.92, 382.80)
    --(1036.44, 383.52)
    --(1038.96, 384.24)
    --(1041.48, 384.84)
    --(1044.00, 385.44)
    --(1046.28, 386.04)
    --(1048.56, 386.64)
    --(1050.84, 387.12)
    --(1053.24, 387.60)
    --(1055.76, 388.20)
    --(1058.28, 388.68)
    --(1061.04, 389.16)
    --(1063.80, 389.64)
    --(1066.68, 390.12)
    --(1069.56, 390.60)
    --(1072.68, 391.08)
    --(1075.80, 391.56)
    --(1079.04, 391.92)
    --(1082.28, 392.28)
    --(1085.52, 392.64)
    --(1088.88, 393.00)
    --(1092.36, 393.36)
    --(1095.72, 393.60)
    --(1099.20, 393.84)
    --(1102.68, 394.08)
    --(1106.28, 394.32)
    --(1110.00, 394.44)
    --(1112.76, 394.68)
    --(1115.64, 394.80)
    --(1118.64, 394.92)
    --(1121.76, 394.92)
    --(1125.12, 395.04)
    --(1128.48, 395.16)
    --(1132.20, 395.28)
    --(1136.16, 395.28)
    --(1140.36, 395.40)
    --(1144.80, 395.52)
    --(1149.48, 395.52)
    --(1154.52, 395.64)
    --(1159.80, 395.64)
    --(1165.32, 395.64)
    --(1171.20, 395.76)
    --(1177.08, 395.76)
    --(1183.08, 395.88)
    --(1189.08, 395.88)
    --(1194.96, 395.88)
    --(1200.48, 395.88)
    --(1205.64, 395.88)
    --(1210.20, 396.00)
    --(1214.28, 396.00)
    --(1217.52, 396.00)
    --(1220.04, 396.00)
    --(1221.84, 396.00)
    --(1223.04, 396.00)
    --(1223.76, 396.00)
    --(1224.00, 396.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin text object
  picture q;
  q=thelabel.urt("E" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((774.00,603.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("tempo" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((1197.00,270.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("1" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((918.00,450.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((918.00,306.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("3" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((954.00,324.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("4" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((999.00,342.00))+llcorner p) withcolor (0.00,1.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("LP" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((1197.00,360.00))+llcorner p) withcolor (1.00,0.00,1.00);
% End text object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (468.00,1584.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (459.00,1692.00);
 fill c withcolor (black + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (495.00,1584.00);
 fill c withcolor ((0.00,0.00,1.00) + 0.00white);
	draw c withcolor (0.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (522.00,1584.00);
 fill c withcolor ((0.00,1.00,0.00) + 0.00white);
	draw c withcolor (0.00,1.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (738.00,1584.00);
 fill c withcolor ((1.00,0.00,1.00) + 0.00white);
	draw c withcolor (1.00,0.00,1.00);
% End ellipse object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (342.00, 1539.00)
    --(792.00, 1539.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (342.00, 1539.00)
    --(342.00, 1782.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 5.40;
  path p;
  p = (468.00, 1584.00)
    --(468.00, 1692.00)
    --(342.00, 1692.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 5.40;
  path p;
  p = (468.00, 1584.00)
    --(783.00, 1584.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin text object
  picture q;
  q=thelabel.urt("tempo" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((738.00,1521.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("1" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((459.00,1701.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((459.00,1557.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("3" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((495.00,1557.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("4" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((522.00,1557.00))+llcorner p) withcolor (0.00,1.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("LP" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((729.00,1548.00))+llcorner p) withcolor (1.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("M" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((306.00,1737.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (360.00,144.00);
 fill c withcolor (black + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (360.00,144.00);
 fill c withcolor (black + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (486.00,216.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (486.00,333.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (441.00,198.00);
 fill c withcolor ((0.00,0.00,1.00) + 0.00white);
	draw c withcolor (0.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (405.00,180.00);
 fill c withcolor ((0.00,1.00,0.00) + 0.00white);
	draw c withcolor (0.00,1.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (405.00,369.00);
 fill c withcolor ((0.00,1.00,0.00) + 0.00white);
	draw c withcolor (0.00,1.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (441.00,351.00);
 fill c withcolor ((0.00,0.00,1.00) + 0.00white);
	draw c withcolor (0.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (360.00,396.00);
 fill c withcolor ((1.00,0.00,1.00) + 0.00white);
	draw c withcolor (1.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (360.00,441.00);
 fill c withcolor (black + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (486.00,-243.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (441.00,-261.00);
 fill c withcolor ((0.00,0.00,1.00) + 0.00white);
	draw c withcolor (0.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (405.00,-288.00);
 fill c withcolor ((0.00,1.00,0.00) + 0.00white);
	draw c withcolor (0.00,1.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (360.00,-234.00);
 fill c withcolor (black + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (360.00,-414.00);
 fill c withcolor ((1.00,0.00,1.00) + 0.00white);
	draw c withcolor (1.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (459.00,1350.00);
 fill c withcolor (black + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (738.00,1242.00);
 fill c withcolor ((1.00,0.00,1.00) + 0.00white);
	draw c withcolor (1.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (477.00,1323.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (495.00,1296.00);
 fill c withcolor ((0.00,0.00,1.00) + 0.00white);
	draw c withcolor (0.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (522.00,1278.00);
 fill c withcolor ((0.00,1.00,0.00) + 0.00white);
	draw c withcolor (0.00,1.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (459.00,1026.00);
 fill c withcolor (black + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (468.00,936.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (486.00,963.00);
 fill c withcolor ((0.00,0.00,1.00) + 0.00white);
	draw c withcolor (0.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (513.00,990.00);
 fill c withcolor ((0.00,1.00,0.00) + 0.00white);
	draw c withcolor (0.00,1.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (738.00,1026.00);
 fill c withcolor ((1.00,0.00,1.00) + 0.00white);
	draw c withcolor (1.00,0.00,1.00);
% End ellipse object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, 639.00)
    --(207.00, -72.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, 288.00)
    --(657.00, 288.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, 144.00)
    --(630.00, 144.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (360.00, 441.00)
    --(360.00, -486.00);
	draw p withcolor (0.00,0.00,0.00) dashed evenly scaled 1.21;
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, 441.00)
    --(801.00, 441.00);
	draw p withcolor (0.00,0.00,0.00) dashed evenly scaled 1.21;
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, 216.00)
    --(621.00, 216.00);
	draw p withcolor (1.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (486.00, 333.00)
    --(486.00, -243.00);
	draw p withcolor (1.00,0.00,0.00) dashed evenly scaled 1.21;
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, 333.00)
    --(927.00, 333.00);
	draw p withcolor (1.00,0.00,0.00) dashed evenly scaled 1.21;
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, 198.00)
    --(621.00, 198.00);
	draw p withcolor (0.00,0.00,1.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, 180.00)
    --(621.00, 180.00);
	draw p withcolor (0.00,1.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (441.00, 351.00)
    --(441.00, -261.00);
	draw p withcolor (0.00,0.00,1.00) dashed evenly scaled 1.21;
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (405.00, 369.00)
    --(405.00, -288.00);
	draw p withcolor (0.00,1.00,0.00) dashed evenly scaled 1.21;
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, 351.00)
    --(954.00, 351.00);
	draw p withcolor (0.00,0.00,1.00) dashed evenly scaled 1.21;
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, 369.00)
    --(1008.00, 369.00);
	draw p withcolor (0.00,1.00,0.00) dashed evenly scaled 1.21;
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, 396.00)
    --(1242.00, 396.00);
	draw p withcolor (1.00,0.00,1.00) dashed evenly scaled 1.21;
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, -144.00)
    --(567.00, -144.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (207.00, -486.00)
    --(207.00, -144.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 5.40;
  path p;
  p = (486.00, -243.00)
    --(360.00, -243.00)
    --(360.00, -144.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (342.00, 1197.00)
    --(792.00, 1197.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (342.00, 1197.00)
    --(342.00, 1440.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 5.40;
  path p;
  p = (459.00, 1350.00)
    --(342.00, 1350.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (342.00, 873.00)
    --(792.00, 873.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (342.00, 873.00)
    --(342.00, 1116.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (342.00, 1026.00)
    --(783.00, 1026.00);
	draw p withcolor (0.00,0.00,0.00) dashed evenly scaled 1.21;
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 5.40;
  path p;
  p = (468.00, 936.00)
    --(468.00, 1026.00)
    --(342.00, 1026.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=2;
  pickup pencircle scaled 1.80;
  path p;
  p = (279.00, 603.00)
    --(279.12, 602.76)
    --(279.24, 602.28)
    --(279.60, 601.44)
    --(280.08, 600.00)
    --(280.80, 597.96)
    --(281.76, 595.44)
    --(282.84, 592.20)
    --(284.28, 588.36)
    --(285.84, 584.04)
    --(287.64, 579.24)
    --(289.56, 573.96)
    --(291.60, 568.44)
    --(293.76, 562.80)
    --(295.92, 557.04)
    --(298.20, 551.16)
    --(300.48, 545.40)
    --(302.64, 539.88)
    --(304.80, 534.36)
    --(306.96, 529.08)
    --(309.12, 524.04)
    --(311.16, 519.24)
    --(313.20, 514.68)
    --(315.12, 510.36)
    --(317.16, 506.16)
    --(319.08, 502.20)
    --(320.88, 498.48)
    --(322.80, 494.88)
    --(324.72, 491.40)
    --(326.64, 488.04)
    --(328.56, 484.80)
    --(330.48, 481.68)
    --(332.52, 478.56)
    --(334.56, 475.44)
    --(336.72, 472.32)
    --(339.00, 469.08)
    --(341.40, 465.96)
    --(343.80, 462.84)
    --(346.32, 459.60)
    --(348.96, 456.48)
    --(351.72, 453.36)
    --(354.48, 450.12)
    --(357.36, 447.00)
    --(360.48, 443.76)
    --(363.48, 440.64)
    --(366.72, 437.52)
    --(369.96, 434.28)
    --(373.32, 431.16)
    --(376.80, 428.16)
    --(380.28, 425.04)
    --(383.88, 422.04)
    --(387.36, 419.16)
    --(390.96, 416.28)
    --(394.68, 413.40)
    --(398.28, 410.64)
    --(402.00, 408.00)
    --(405.60, 405.36)
    --(409.20, 402.84)
    --(412.92, 400.44)
    --(416.52, 398.16)
    --(420.12, 395.88)
    --(423.72, 393.60)
    --(427.20, 391.56)
    --(430.80, 389.40)
    --(434.40, 387.48)
    --(438.00, 385.44)
    --(441.36, 383.64)
    --(444.84, 381.96)
    --(448.32, 380.16)
    --(451.92, 378.48)
    --(455.64, 376.68)
    --(459.48, 375.00)
    --(463.44, 373.32)
    --(467.52, 371.52)
    --(471.84, 369.72)
    --(476.40, 367.92)
    --(481.08, 366.12)
    --(486.00, 364.20)
    --(491.28, 362.28)
    --(496.68, 360.24)
    --(502.32, 358.20)
    --(508.20, 356.04)
    --(514.32, 353.88)
    --(520.44, 351.72)
    --(526.68, 349.56)
    --(532.92, 347.40)
    --(539.04, 345.36)
    --(544.92, 343.32)
    --(550.44, 341.52)
    --(555.72, 339.72)
    --(560.40, 338.16)
    --(564.48, 336.84)
    --(567.84, 335.64)
    --(570.60, 334.80)
    --(572.76, 334.08)
    --(574.32, 333.60)
    --(575.28, 333.24)
    --(575.76, 333.12)
    --(576.00, 333.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=2;
  pickup pencircle scaled 1.80;
  path p;
  p = (261.00, -18.00)
    --(261.12, -17.76)
    --(261.36, -17.16)
    --(261.84, -15.96)
    --(262.44, -14.28)
    --(263.52, -11.88)
    --(264.72, -8.88)
    --(266.28, -5.04)
    --(268.08, -0.72)
    --(270.12, 4.08)
    --(272.28, 9.36)
    --(274.56, 14.88)
    --(276.96, 20.64)
    --(279.48, 26.28)
    --(281.88, 31.92)
    --(284.28, 37.44)
    --(286.68, 42.84)
    --(289.08, 47.88)
    --(291.24, 52.80)
    --(293.52, 57.36)
    --(295.56, 61.80)
    --(297.60, 65.88)
    --(299.64, 69.84)
    --(301.68, 73.44)
    --(303.60, 77.04)
    --(305.52, 80.40)
    --(307.44, 83.64)
    --(309.48, 86.88)
    --(311.40, 90.00)
    --(313.56, 93.00)
    --(315.60, 96.00)
    --(317.76, 99.00)
    --(319.92, 102.00)
    --(322.20, 105.00)
    --(324.60, 107.88)
    --(327.00, 110.88)
    --(329.52, 113.88)
    --(332.16, 116.88)
    --(334.80, 120.00)
    --(337.56, 123.00)
    --(340.44, 126.00)
    --(343.32, 129.00)
    --(346.32, 132.00)
    --(349.32, 134.88)
    --(352.44, 137.88)
    --(355.56, 140.76)
    --(358.68, 143.52)
    --(361.92, 146.28)
    --(365.04, 149.04)
    --(368.28, 151.68)
    --(371.40, 154.20)
    --(374.52, 156.72)
    --(377.64, 159.12)
    --(380.76, 161.52)
    --(383.88, 163.68)
    --(386.88, 165.96)
    --(390.00, 168.00)
    --(393.00, 170.04)
    --(396.00, 172.08)
    --(399.00, 174.00)
    --(402.00, 175.92)
    --(405.12, 177.84)
    --(408.24, 179.64)
    --(411.36, 181.56)
    --(414.60, 183.36)
    --(417.84, 185.16)
    --(421.20, 186.96)
    --(424.68, 188.76)
    --(428.16, 190.56)
    --(431.76, 192.36)
    --(435.24, 194.16)
    --(438.96, 195.96)
    --(442.56, 197.64)
    --(446.28, 199.32)
    --(450.00, 201.00)
    --(453.72, 202.68)
    --(457.44, 204.24)
    --(461.04, 205.80)
    --(464.76, 207.36)
    --(468.36, 208.80)
    --(471.84, 210.12)
    --(475.32, 211.56)
    --(478.80, 212.76)
    --(482.16, 214.08)
    --(485.40, 215.28)
    --(488.64, 216.36)
    --(491.76, 217.44)
    --(494.88, 218.52)
    --(498.00, 219.48)
    --(501.00, 220.44)
    --(504.24, 221.52)
    --(507.48, 222.48)
    --(510.72, 223.44)
    --(513.96, 224.40)
    --(517.32, 225.36)
    --(520.80, 226.32)
    --(524.40, 227.28)
    --(528.12, 228.24)
    --(531.96, 229.20)
    --(536.04, 230.16)
    --(540.36, 231.12)
    --(544.80, 232.20)
    --(549.48, 233.28)
    --(554.28, 234.36)
    --(559.20, 235.44)
    --(564.12, 236.52)
    --(568.92, 237.60)
    --(573.60, 238.68)
    --(577.92, 239.64)
    --(581.88, 240.48)
    --(585.36, 241.20)
    --(588.24, 241.80)
    --(590.52, 242.28)
    --(592.08, 242.64)
    --(593.16, 242.88)
    --(593.76, 243.00)
    --(594.00, 243.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=2;
  pickup pencircle scaled 1.80;
  path p;
  p = (253.08, 579.60)
    --(253.20, 579.36)
    --(253.32, 578.88)
    --(253.68, 578.04)
    --(254.16, 576.60)
    --(254.88, 574.56)
    --(255.84, 572.04)
    --(256.92, 568.80)
    --(258.36, 564.96)
    --(259.92, 560.64)
    --(261.72, 555.84)
    --(263.64, 550.56)
    --(265.68, 545.04)
    --(267.84, 539.40)
    --(270.00, 533.64)
    --(272.28, 527.76)
    --(274.56, 522.00)
    --(276.72, 516.48)
    --(278.88, 510.96)
    --(281.04, 505.68)
    --(283.20, 500.64)
    --(285.24, 495.84)
    --(287.28, 491.28)
    --(289.20, 486.96)
    --(291.24, 482.76)
    --(293.16, 478.80)
    --(294.96, 475.08)
    --(296.88, 471.48)
    --(298.80, 468.00)
    --(300.72, 464.64)
    --(302.64, 461.40)
    --(304.56, 458.28)
    --(306.60, 455.16)
    --(308.64, 452.04)
    --(310.80, 448.92)
    --(313.08, 445.68)
    --(315.48, 442.56)
    --(317.88, 439.44)
    --(320.40, 436.20)
    --(323.04, 433.08)
    --(325.80, 429.96)
    --(328.56, 426.72)
    --(331.44, 423.60)
    --(334.56, 420.36)
    --(337.56, 417.24)
    --(340.80, 414.12)
    --(344.04, 410.88)
    --(347.40, 407.76)
    --(350.88, 404.76)
    --(354.36, 401.64)
    --(357.96, 398.64)
    --(361.44, 395.76)
    --(365.04, 392.88)
    --(368.76, 390.00)
    --(372.36, 387.24)
    --(376.08, 384.60)
    --(379.68, 381.96)
    --(383.28, 379.44)
    --(387.00, 377.04)
    --(390.60, 374.76)
    --(394.20, 372.48)
    --(397.80, 370.20)
    --(401.28, 368.16)
    --(404.88, 366.00)
    --(408.48, 364.08)
    --(412.08, 362.04)
    --(415.44, 360.24)
    --(418.92, 358.56)
    --(422.40, 356.76)
    --(426.00, 355.08)
    --(429.72, 353.28)
    --(433.56, 351.60)
    --(437.52, 349.92)
    --(441.60, 348.12)
    --(445.92, 346.32)
    --(450.48, 344.52)
    --(455.16, 342.72)
    --(460.08, 340.80)
    --(465.36, 338.88)
    --(470.76, 336.84)
    --(476.40, 334.80)
    --(482.28, 332.64)
    --(488.40, 330.48)
    --(494.52, 328.32)
    --(500.76, 326.16)
    --(507.00, 324.00)
    --(513.12, 321.96)
    --(519.00, 319.92)
    --(524.52, 318.12)
    --(529.80, 316.32)
    --(534.48, 314.76)
    --(538.56, 313.44)
    --(541.92, 312.24)
    --(544.68, 311.40)
    --(546.84, 310.68)
    --(548.40, 310.20)
    --(549.36, 309.84)
    --(549.84, 309.72)
    --(550.08, 309.60);
	draw p withcolor (1.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=2;
  pickup pencircle scaled 5.40;
  path p;
  p = (486.00, -243.00)
    --(485.88, -243.00)
    --(485.52, -243.24)
    --(484.56, -243.60)
    --(482.88, -244.32)
    --(480.48, -245.28)
    --(477.48, -246.60)
    --(474.00, -248.04)
    --(470.28, -249.48)
    --(466.68, -251.16)
    --(463.08, -252.60)
    --(459.84, -254.04)
    --(456.72, -255.48)
    --(453.96, -256.68)
    --(451.32, -258.00)
    --(448.92, -259.08)
    --(446.76, -260.28)
    --(444.60, -261.36)
    --(442.56, -262.56)
    --(440.40, -263.64)
    --(438.36, -264.84)
    --(436.32, -266.16)
    --(434.16, -267.48)
    --(432.00, -268.80)
    --(429.84, -270.36)
    --(427.68, -271.80)
    --(425.40, -273.48)
    --(423.24, -275.16)
    --(420.96, -276.84)
    --(418.80, -278.52)
    --(416.64, -280.32)
    --(414.60, -282.12)
    --(412.56, -283.80)
    --(410.64, -285.60)
    --(408.72, -287.40)
    --(406.80, -289.20)
    --(405.00, -291.00)
    --(403.32, -292.68)
    --(401.64, -294.36)
    --(399.96, -296.16)
    --(398.28, -298.08)
    --(396.48, -300.00)
    --(394.80, -302.04)
    --(393.00, -304.08)
    --(391.20, -306.24)
    --(389.40, -308.52)
    --(387.60, -310.68)
    --(385.92, -312.96)
    --(384.24, -315.12)
    --(382.56, -317.40)
    --(381.00, -319.56)
    --(379.56, -321.72)
    --(378.24, -323.76)
    --(376.92, -325.80)
    --(375.72, -327.72)
    --(374.52, -329.64)
    --(373.56, -331.56)
    --(372.48, -333.36)
    --(371.52, -335.16)
    --(370.68, -337.08)
    --(369.72, -339.00)
    --(368.88, -341.04)
    --(368.16, -343.08)
    --(367.32, -345.24)
    --(366.60, -347.52)
    --(366.00, -349.80)
    --(365.28, -352.20)
    --(364.80, -354.72)
    --(364.20, -357.24)
    --(363.72, -359.88)
    --(363.24, -362.52)
    --(362.88, -365.16)
    --(362.52, -367.92)
    --(362.28, -370.68)
    --(361.92, -373.56)
    --(361.68, -376.44)
    --(361.56, -379.56)
    --(361.32, -381.96)
    --(361.20, -384.48)
    --(361.08, -387.12)
    --(360.96, -390.00)
    --(360.84, -393.00)
    --(360.72, -396.24)
    --(360.72, -399.72)
    --(360.60, -403.44)
    --(360.48, -407.52)
    --(360.48, -411.84)
    --(360.36, -416.52)
    --(360.36, -421.44)
    --(360.24, -426.72)
    --(360.24, -432.00)
    --(360.12, -437.40)
    --(360.12, -442.80)
    --(360.12, -447.96)
    --(360.12, -452.76)
    --(360.00, -456.96)
    --(360.00, -460.56)
    --(360.00, -463.44)
    --(360.00, -465.48)
    --(360.00, -466.92)
    --(360.00, -467.64)
    --(360.00, -468.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=2;
  pickup pencircle scaled 5.40;
  path p;
  p = (459.00, 1350.00)
    --(459.24, 1349.64)
    --(459.60, 1348.80)
    --(460.32, 1347.48)
    --(461.28, 1345.56)
    --(462.60, 1343.16)
    --(464.04, 1340.40)
    --(465.48, 1337.52)
    --(467.16, 1334.52)
    --(468.60, 1331.76)
    --(470.04, 1329.12)
    --(471.48, 1326.72)
    --(472.68, 1324.44)
    --(474.00, 1322.40)
    --(475.08, 1320.60)
    --(476.28, 1318.80)
    --(477.36, 1317.12)
    --(478.56, 1315.56)
    --(479.64, 1313.88)
    --(480.84, 1312.32)
    --(482.16, 1310.76)
    --(483.48, 1309.08)
    --(484.80, 1307.40)
    --(486.36, 1305.72)
    --(487.80, 1304.04)
    --(489.48, 1302.36)
    --(491.16, 1300.68)
    --(492.84, 1299.00)
    --(494.52, 1297.44)
    --(496.32, 1295.76)
    --(498.12, 1294.20)
    --(499.80, 1292.64)
    --(501.60, 1291.20)
    --(503.40, 1289.76)
    --(505.20, 1288.32)
    --(507.00, 1287.00)
    --(508.68, 1285.80)
    --(510.36, 1284.48)
    --(512.16, 1283.28)
    --(514.08, 1281.96)
    --(516.12, 1280.64)
    --(518.16, 1279.32)
    --(520.44, 1277.88)
    --(522.72, 1276.44)
    --(525.12, 1275.12)
    --(527.52, 1273.68)
    --(530.04, 1272.36)
    --(532.56, 1270.92)
    --(535.20, 1269.60)
    --(537.84, 1268.40)
    --(540.36, 1267.08)
    --(543.00, 1265.88)
    --(545.64, 1264.68)
    --(548.28, 1263.60)
    --(550.80, 1262.52)
    --(553.56, 1261.56)
    --(555.60, 1260.72)
    --(557.76, 1259.88)
    --(559.92, 1259.16)
    --(562.20, 1258.44)
    --(564.60, 1257.60)
    --(567.12, 1256.88)
    --(569.76, 1256.04)
    --(572.40, 1255.32)
    --(575.28, 1254.60)
    --(578.16, 1253.76)
    --(581.28, 1253.04)
    --(584.40, 1252.32)
    --(587.76, 1251.60)
    --(591.12, 1250.88)
    --(594.48, 1250.28)
    --(597.96, 1249.68)
    --(601.56, 1249.08)
    --(605.28, 1248.48)
    --(608.88, 1247.88)
    --(612.60, 1247.40)
    --(616.44, 1246.92)
    --(620.16, 1246.44)
    --(624.00, 1246.08)
    --(627.96, 1245.72)
    --(631.92, 1245.36)
    --(636.00, 1245.00)
    --(639.24, 1244.76)
    --(642.48, 1244.52)
    --(645.84, 1244.28)
    --(649.32, 1244.16)
    --(653.04, 1243.92)
    --(656.88, 1243.80)
    --(660.84, 1243.68)
    --(665.04, 1243.44)
    --(669.48, 1243.32)
    --(674.28, 1243.20)
    --(679.20, 1243.08)
    --(684.48, 1242.96)
    --(690.12, 1242.84)
    --(695.88, 1242.72)
    --(702.00, 1242.72)
    --(708.36, 1242.60)
    --(714.96, 1242.48)
    --(721.68, 1242.48)
    --(728.52, 1242.36)
    --(735.36, 1242.36)
    --(742.08, 1242.24)
    --(748.56, 1242.24)
    --(754.80, 1242.12)
    --(760.44, 1242.12)
    --(765.60, 1242.12)
    --(770.16, 1242.12)
    --(774.00, 1242.00)
    --(777.00, 1242.00)
    --(779.40, 1242.00)
    --(781.08, 1242.00)
    --(782.16, 1242.00)
    --(782.76, 1242.00)
    --(783.00, 1242.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=2;
  pickup pencircle scaled 5.40;
  path p;
  p = (468.00, 936.00)
    --(468.24, 936.36)
    --(468.84, 937.20)
    --(469.80, 938.52)
    --(471.00, 940.44)
    --(472.56, 942.72)
    --(474.36, 945.24)
    --(476.16, 947.76)
    --(477.84, 950.16)
    --(479.40, 952.44)
    --(480.96, 954.60)
    --(482.40, 956.52)
    --(483.72, 958.20)
    --(484.92, 959.88)
    --(486.24, 961.44)
    --(487.56, 963.00)
    --(488.76, 964.56)
    --(490.20, 966.12)
    --(491.64, 967.68)
    --(493.08, 969.36)
    --(494.76, 971.04)
    --(496.44, 972.84)
    --(498.12, 974.52)
    --(499.92, 976.32)
    --(501.72, 978.00)
    --(503.64, 979.68)
    --(505.44, 981.36)
    --(507.24, 982.92)
    --(509.16, 984.36)
    --(510.96, 985.80)
    --(512.76, 987.24)
    --(514.56, 988.56)
    --(516.36, 989.76)
    --(518.16, 991.08)
    --(520.20, 992.28)
    --(522.24, 993.60)
    --(524.40, 994.80)
    --(526.56, 996.12)
    --(528.84, 997.32)
    --(531.24, 998.64)
    --(533.52, 999.72)
    --(535.92, 1000.92)
    --(538.20, 1002.00)
    --(540.48, 1003.08)
    --(542.64, 1003.92)
    --(544.80, 1004.88)
    --(546.96, 1005.72)
    --(549.00, 1006.56)
    --(550.80, 1007.16)
    --(552.72, 1007.88)
    --(554.64, 1008.48)
    --(556.68, 1009.08)
    --(558.72, 1009.80)
    --(560.88, 1010.40)
    --(563.16, 1011.00)
    --(565.56, 1011.72)
    --(568.08, 1012.32)
    --(570.60, 1012.92)
    --(573.12, 1013.52)
    --(575.76, 1014.00)
    --(578.52, 1014.60)
    --(581.16, 1015.08)
    --(583.92, 1015.56)
    --(586.68, 1016.04)
    --(589.56, 1016.52)
    --(592.56, 1017.00)
    --(594.72, 1017.36)
    --(597.12, 1017.72)
    --(599.64, 1018.08)
    --(602.16, 1018.44)
    --(604.92, 1018.80)
    --(607.68, 1019.16)
    --(610.68, 1019.52)
    --(613.80, 1019.88)
    --(617.04, 1020.24)
    --(620.40, 1020.60)
    --(623.88, 1020.96)
    --(627.36, 1021.32)
    --(630.96, 1021.68)
    --(634.68, 1021.92)
    --(638.40, 1022.28)
    --(642.12, 1022.64)
    --(645.84, 1022.88)
    --(649.56, 1023.24)
    --(653.40, 1023.48)
    --(657.12, 1023.72)
    --(660.84, 1023.96)
    --(664.56, 1024.08)
    --(668.28, 1024.32)
    --(672.00, 1024.56)
    --(675.00, 1024.68)
    --(678.12, 1024.80)
    --(681.36, 1024.92)
    --(684.60, 1024.92)
    --(687.96, 1025.04)
    --(691.56, 1025.16)
    --(695.16, 1025.28)
    --(699.12, 1025.28)
    --(703.20, 1025.40)
    --(707.64, 1025.52)
    --(712.20, 1025.52)
    --(717.12, 1025.64)
    --(722.16, 1025.64)
    --(727.56, 1025.64)
    --(733.08, 1025.76)
    --(738.72, 1025.76)
    --(744.36, 1025.88)
    --(750.12, 1025.88)
    --(755.64, 1025.88)
    --(760.92, 1025.88)
    --(765.72, 1025.88)
    --(770.04, 1026.00)
    --(773.88, 1026.00)
    --(776.88, 1026.00)
    --(779.28, 1026.00)
    --(780.96, 1026.00)
    --(782.16, 1026.00)
    --(782.76, 1026.00)
    --(783.00, 1026.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin text object
  picture q;
  q=thelabel.urt("tassi" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((675.00,261.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("M/P" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((144.00,-63.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("E" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((180.00,612.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("tempo" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 270.00;
  label.urt(p,((189.00,-423.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("R" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 270.00;
  label.urt(p,((549.00,-117.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("1" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((360.00,450.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((486.00,306.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("3" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((450.00,351.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("4" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((414.00,369.00))+llcorner p) withcolor (0.00,1.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("LP" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((333.00,369.00))+llcorner p) withcolor (1.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("1" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((369.00,117.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((495.00,225.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("3" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((414.00,198.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("4" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((414.00,153.00))+llcorner p) withcolor (0.00,1.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("LP" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((333.00,153.00))+llcorner p) withcolor (1.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("1" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 270.00;
  label.urt(p,((378.00,-225.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 270.00;
  label.urt(p,((504.00,-243.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("3" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 270.00;
  label.urt(p,((450.00,-270.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("4" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 270.00;
  label.urt(p,((414.00,-297.00))+llcorner p) withcolor (0.00,1.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("LP" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 270.00;
  label.urt(p,((378.00,-405.00))+llcorner p) withcolor (1.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("tempo" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((738.00,1179.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("1" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((459.00,1359.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("LP" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((729.00,1206.00))+llcorner p) withcolor (1.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("P" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((306.00,1395.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((468.00,1287.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("3" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((486.00,1260.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("4" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((513.00,1242.00))+llcorner p) withcolor (0.00,1.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("tempo" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((738.00,855.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("1" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((459.00,1035.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((459.00,891.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("4" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((522.00,963.00))+llcorner p) withcolor (0.00,1.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("3" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((495.00,936.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("LP" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((729.00,990.00))+llcorner p) withcolor (1.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("M/P" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((279.00,1071.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Diminuzione " infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((54.00,1737.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("offerta di moneta" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((54.00,1699.20))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("nazionale" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((54.00,1661.40))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("prezzi con" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((54.00,1386.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("adattamento" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((54.00,1348.20))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("graduale" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((54.00,1310.40))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
endfig;
end
