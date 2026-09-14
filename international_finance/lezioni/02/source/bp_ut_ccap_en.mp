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
% Begin arc object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path a,p,ls,le;
  pair s,e,c;
  c = (157.50,467.72);
  s = (229.50,414.00);
  e = (85.50,414.00);
  d := (72.00 ++ 53.72)*2.0;
  ls = (0,0)--(d,0) rotated angle (s-c);
  le = (0,0)--(d,0) rotated angle (e-c);
  p = reverse fullcircle scaled d rotated angle (s-c) cutafter le;
	a = p shifted c;
	draw a withcolor (0.00,0.00,0.00);
% Draw arrowhead type 2
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path arr;
  arr = (224.40, 405.00)
      --(228.72, 413.10)
      --(221.64, 407.28)
      --(224.16, 407.52)
      --(224.40, 405.00) -- cycle;
  fill arr withcolor (0.00,0.00,0.00);
  draw arr withcolor (0.00,0.00,0.00);
% End arc object
% Begin arc object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path a,p,ls,le;
  pair s,e,c;
  c = (157.50,402.00);
  s = (85.50,445.50);
  e = (229.50,445.50);
  d := (-72.00 ++ -43.50)*2.0;
  ls = (0,0)--(d,0) rotated angle (s-c);
  le = (0,0)--(d,0) rotated angle (e-c);
  p = reverse fullcircle scaled d rotated angle (s-c) cutafter le;
	a = p shifted c;
%	draw a withcolor (0.00,0.00,0.00);
% Draw arrowhead type 3
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path arr;
  arr = (224.58, 449.58)
      --(229.08, 446.10)
      --(227.58, 451.56)
      --(225.12, 452.10)
      --(224.58, 449.58) -- cycle;
%  fill arr withcolor (0.00,0.00,0.00);
%  draw arr withcolor (0.00,0.00,0.00);
% Draw arrowhead type 2
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path arr;
  arr = (89.70, 454.98)
      --(86.16, 446.46)
      --(92.64, 452.94)
      --(90.18, 452.46)
      --(89.70, 454.98) -- cycle;
%  fill arr withcolor (0.00,0.00,0.00);
%  draw arr withcolor (0.00,0.00,0.00);
% End arc object
% Begin arc object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path a,p,ls,le;
  pair s,e,c;
  c = (157.50,701.72);
  s = (229.50,648.00);
  e = (85.50,648.00);
  d := (72.00 ++ 53.72)*2.0;
  ls = (0,0)--(d,0) rotated angle (s-c);
  le = (0,0)--(d,0) rotated angle (e-c);
  p = reverse fullcircle scaled d rotated angle (s-c) cutafter le;
	a = p shifted c;
	draw a withcolor (0.00,0.00,0.00);
% Draw arrowhead type 2
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path arr;
  arr = (93.36, 641.28)
      --(86.28, 647.10)
      --(90.60, 639.00)
      --(90.84, 641.52)
      --(93.36, 641.28) -- cycle;
  fill arr withcolor (0.00,0.00,0.00);
  draw arr withcolor (0.00,0.00,0.00);
% End arc object
% Begin arc object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path a,p,ls,le;
  pair s,e,c;
  c = (157.50,636.00);
  s = (85.50,679.50);
  e = (229.50,679.50);
  d := (-72.00 ++ -43.50)*2.0;
  ls = (0,0)--(d,0) rotated angle (s-c);
  le = (0,0)--(d,0) rotated angle (e-c);
  p = reverse fullcircle scaled d rotated angle (s-c) cutafter le;
	a = p shifted c;
%	draw a withcolor (0.00,0.00,0.00);
% Draw arrowhead type 2
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path arr;
  arr = (222.36, 686.94)
      --(228.84, 680.46)
      --(225.30, 688.98)
      --(224.82, 686.46)
      --(222.36, 686.94) -- cycle;
%  fill arr withcolor (0.00,0.00,0.00);
%  draw arr withcolor (0.00,0.00,0.00);
% End arc object
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
  p = (243.00, 508.50)
    --(369.00, 603.00);
%	draw p withcolor (0.00,0.00,1.00) dashed evenly scaled 1.21;
% Draw arrowhead type 2
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path arr;
  arr = (361.92, 595.44)
      --(368.04, 602.28)
      --(359.76, 598.32)
      --(362.28, 597.96)
      --(361.92, 595.44) -- cycle;
%  fill arr withcolor (0.00,0.00,1.00);
%  draw arr withcolor (0.00,0.00,1.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (238.44, 346.98)
    --(364.50, 441.00);
%	draw p withcolor (0.00,0.00,1.00) dashed evenly scaled 1.21;
% Draw arrowhead type 2
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path arr;
  arr = (357.42, 433.44)
      --(363.54, 440.28)
      --(355.26, 436.32)
      --(357.78, 435.96)
      --(357.42, 433.44) -- cycle;
%  fill arr withcolor (0.00,0.00,1.00);
%  draw arr withcolor (0.00,0.00,1.00);
% End polyline object
  
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (243.00, 742.50)
    --(364.50, 567.00);
	draw p withcolor (0.00,0.00,1.00) dashed evenly scaled 1.21;
% Draw arrowhead type 2
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path arr;
  arr = (357.24, 574.38)
      --(363.84, 567.96)
      --(360.18, 576.42)
      --(359.70, 573.90)
      --(357.24, 574.38) -- cycle;
  fill arr withcolor (0.00,0.00,1.00);
  draw arr withcolor (0.00,0.00,1.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (238.44, 580.98)
    --(369.00, 477.00);
	draw p withcolor (0.00,0.00,1.00) dashed evenly scaled 1.21;
% Draw arrowhead type 2
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path arr;
  arr = (359.88, 481.92)
      --(368.04, 477.72)
      --(362.16, 484.74)
      --(362.46, 482.22)
      --(359.88, 481.92) -- cycle;
  fill arr withcolor (0.00,0.00,1.00);
  draw arr withcolor (0.00,0.00,1.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (369.00, 486.00)
    --(369.00, 463.50);
	draw p withcolor (0.00,0.00,1.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 0.90;
  path p;
  p = (369.00, 454.50)
    --(369.00, 432.00);
	draw p withcolor (0.00,0.00,1.00);
% End polyline object
% Begin text object
  picture q;
  q=thelabel.urt("financial assets increase" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,477.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("financial liabilities decrease" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,461.70))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("financial assets decrease" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,446.40))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("financial liabilities increase" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,431.10))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Incoming primary income" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,643.50))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Outgoing primary income" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,630.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Incoming secondary income                                               100" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,616.50))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Outgoing secondary income                                                                   100" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,603.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Incoming unilateral transfers                                               100" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,558.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Imports" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,657.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Exports" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((373.50,670.50))+llcorner p) withcolor (0.00,0.00,1.00);
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
  q=thelabel.urt("Financia Account" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
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
  q=thelabel.urt("Country" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((58.50,416.70))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Countries" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((216.00,418.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Foreign" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((225.00,432.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Our" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((63.00,432.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("=" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((162.00,351.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("=" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
%  label.urt(p,((157.50,504.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Country" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((58.50,650.70))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Countries" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((216.00,652.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Foreign" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((225.00,666.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("Our" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((63.00,666.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("collection = purchase of financial assets" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((99.00,594.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("=" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((162.00,585.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("financial assets import" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((112.50,571.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("production factors export" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
%  label.urt(p,((85.50,724.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("=" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
%  label.urt(p,((157.50,738.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("unilateral transfer in capital account" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((103.50,751.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("unilateral transert in capital account" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((103.50,517.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("production factors import" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
%  label.urt(p,((85.50,490.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("payment = financial assets sale" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((99.00,360.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("financial assets export" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((112.50,337.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("400" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((653.00,472.50))+llcorner p) withcolor (0.00,0.00,1.00); %financial assets +
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("300" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,441.00))+llcorner p) withcolor (0.00,0.00,1.00);%fin assets -
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("100" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,675.00))+llcorner p) withcolor (0.00,0.00,1.00); %exports
  label.urt(p,((603.00,648.00))+llcorner p) withcolor (0.00,0.00,1.00); %primary income
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("credit" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((603.00,697.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("100" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((653.00,661.50))+llcorner p) withcolor (0.00,0.00,1.00);%primary income +
  label.urt(p,((653.00,634.50))+llcorner p) withcolor (0.00,0.00,1.00);%primary income -
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("debit" infont "ptmr" scaled (10pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((653.00,697.50))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
endfig;
end
