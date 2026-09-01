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
	    rotated 0.00 shifted (459.00,1026.00);
 fill c withcolor (black + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (738.00,1026.00);
 fill c withcolor ((1.00,0.00,1.00) + 0.00white);
	draw c withcolor (1.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (468.00,1278.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (459.00,1386.00);
 fill c withcolor (black + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (495.00,1278.00);
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
	    rotated 0.00 shifted (738.00,1278.00);
 fill c withcolor ((1.00,0.00,1.00) + 0.00white);
	draw c withcolor (1.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (477.00,1026.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (495.00,1026.00);
 fill c withcolor ((0.00,0.00,1.00) + 0.00white);
	draw c withcolor (0.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (513.00,1026.00);
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
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (927.00,396.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (954.00,396.00);
 fill c withcolor ((0.00,0.00,1.00) + 0.00white);
	draw c withcolor (0.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (981.00,396.00);
 fill c withcolor ((0.00,1.00,0.00) + 0.00white);
	draw c withcolor (0.00,1.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (360.00,396.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (360.00,-252.00);
 fill c withcolor ((1.00,0.00,0.00) + 0.00white);
	draw c withcolor (0.00,0.00,0.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (360.00,-270.00);
 fill c withcolor ((0.00,0.00,1.00) + 0.00white);
	draw c withcolor (0.00,0.00,1.00);
% End ellipse object
% Begin ellipse object
  pickup pencircle scaled 1.80;
  path c;
  c = fullcircle scaled 18.00 yscaled 1.00
	    rotated 0.00 shifted (360.00,-288.00);
 fill c withcolor ((0.00,1.00,0.00) + 0.00white);
	draw c withcolor (0.00,1.00,0.00);
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
  pickup pencircle scaled 5.40;
  path p;
  p = (342.00, 1026.00)
    --(783.00, 1026.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (342.00, 1233.00)
    --(792.00, 1233.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 1.80;
  path p;
  p = (342.00, 1233.00)
    --(342.00, 1476.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 5.40;
  path p;
  p = (468.00, 1278.00)
    --(468.00, 1386.00)
    --(342.00, 1386.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 5.40;
  path p;
  p = (468.00, 1278.00)
    --(783.00, 1278.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
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
  p = (927.00, 396.00)
    --(927.00, 441.00)
    --(801.00, 441.00);
	draw p withcolor (0.00,0.00,0.00);
% End polyline object
% Begin polyline object
  linecap:=0;
  linejoin:=0;
  pickup pencircle scaled 5.40;
  path p;
  p = (927.00, 396.00)
    --(1260.00, 396.00);
	draw p withcolor (0.00,0.00,0.00);
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
  pickup pencircle scaled 5.40;
  path p;
  p = (360.00, -144.00)
    --(360.00, -504.00);
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
  q=thelabel.urt("1" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 270.00;
  label.urt(p,((378.00,-225.00))+llcorner p) withcolor (0.00,0.00,0.00);
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
  q=thelabel.urt("tempo" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((738.00,1215.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("1" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((459.00,1395.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((459.00,1251.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("3" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((495.00,1251.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("4" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((522.00,1251.00))+llcorner p) withcolor (0.00,1.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("LP" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((729.00,1242.00))+llcorner p) withcolor (1.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("P" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((306.00,1431.00))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("immediato" infont "ptmr" scaled (28pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((54.00,1310.40))+llcorner p) withcolor (0.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((468.00,990.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("3" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((486.00,990.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("4" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((504.00,990.00))+llcorner p) withcolor (0.00,1.00,0.00);
% End text object
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
  q=thelabel.urt("LP" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((1197.00,360.00))+llcorner p) withcolor (1.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((918.00,360.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("3" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((945.00,360.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("4" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((972.00,360.00))+llcorner p) withcolor (0.00,1.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 0.00;
  label.urt(p,((369.00,405.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("2" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 270.00;
  label.urt(p,((378.00,-243.00))+llcorner p) withcolor (1.00,0.00,0.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("3" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 270.00;
  label.urt(p,((378.00,-261.00))+llcorner p) withcolor (0.00,0.00,1.00);
% End text object
% Begin text object
  picture q;
  q=thelabel.urt("4" infont "ptmr" scaled (21pt/fontsize defaultfont),(0,0));
  picture p;
  p = q rotated 270.00;
  label.urt(p,((378.00,-279.00))+llcorner p) withcolor (0.00,1.00,0.00);
% End text object
endfig;
end
