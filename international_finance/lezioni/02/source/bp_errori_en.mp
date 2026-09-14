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
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (594.00, 378.00)
    --(594.00, 706.50);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (648.00, 378.00)
    --(648.00, 706.50);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (355.50, 504.00)
    --(679.50, 504.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (355.50, 571.50)
    --(679.50, 571.50);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (355.50, 378.00)
    --(679.50, 378.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (355.50, 693.00)
    --(679.50, 693.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (369.00, 486.00)
    --(369.00, 463.50);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (369.00, 454.50)
    --(369.00, 432.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin text object
  picture q;
  q=thelabel.urt("financial liabilities reduction" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,461.70))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("financial assets reduction" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,446.40))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("financial liabilities increase" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,431.10))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Imports" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,657.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Exports" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,670.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Current Account" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((360.00,697.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Financial Account" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((360.00,508.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Capital Account" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((360.00,576.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Balance of payments" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((463.50,720.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("debit                -" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,472.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("credit              +" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,441.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("credit              +" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,675.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("debit                -" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,661.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("debit                -" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,634.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("credit              +" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,648.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Incoming primary income" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,643.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("financial assets increase" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,477.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Official reserves increase" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,418.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Official reserves decrease" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,405.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("debit                -" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,423.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("credit              +" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,405.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Outgoing primary income" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,630.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("credit              +" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,621.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("debit                -" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,607.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Incoming secondary income" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,616.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Outgoing secondary income" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,603.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Incoming unilateral tranfers" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,553.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Outgoing unilateral transfers" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,540.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("credit              +" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,553.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("debit                -" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,540.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Statistical discrepancy" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((360.00,382.50))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
endfig;
end
