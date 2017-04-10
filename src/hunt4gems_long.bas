10 poke 53280, 1
20 poke 53281, 0
30 print "{147}"
40 poke 214, 5
50 poke 211, 16
60 sys 58640
70 print "{green}hunt{light gray}4{pink}gems";
80 poke 214, 9
90 poke 211, 7
100 sys 58640
110 print "{white}an arcade game in 10 lines";
120 poke 214, 15
130 poke 211, 14
140 sys 58640
150 print "{red}press fire !!!";
160 poke 214,23
170 poke 211,14:
180 sys 58640:
190 print "{white}(c)2017 by robert naumann":
200 if not peek(56321) = 239 then goto 200
210 gosub 780
220 for n = 1 to 10
230   print "{147}"
240   poke 214, 10
250   poke 211, 10
260   sys58640
270   print "{red}level"l"- target:"lv(l)
280   for z = 1 to 2000
290   nextz
300   print"{147}"
310   poke214, 2
320   poke211, 0
330   sys58640:
340   for i = 1 to 40
350     print "{white}{175}";
360   nexti
370   ti$ = "000000"
380   for i = 60 to 0 step -1
390     s = int(-ti / 60 + 15)
400     poke 214, 1
410     poke 211, 1
420     sys 58640
430     print "{white}level:{blue}"l" {white}score:{blue}"p" {white}time:{blue}"s"{delete}"
440     for j = 1 to 5
450       poke 214, oy(j)
460       poke 211, ox(j)
470       sys 58640:
480       print " ";
490       poke 646, c(j,1)
500       poke 214, c(j,2)
510       poke 211, c(j,3)
520       sys 58640
530       print "{218}";
540       ox(j) = c(j,3)
550       oy(j) = c(j,2)
560       k = peek(56321)
570       if k = 251 and x > 0 then x = x - 1
580       poke 214, 24
590       poke 211, x
600       sys 58640
610       print " {orange}{127}{162}{162}{162}{169} ";
620       if k = 247 and x < 32 then x = x + 1
630       c(j,2) = c(j,2) + c(j,4)
640       if c(j,2) >= 24 then os = c(j,1) : c(j,1) = (int(rnd(1) * 3) + 1) * 5 : c(j,2) = 3 : c(j,3) = int(rnd(1) * 37) + 1 : c(j,4) = int(rnd(1) * 2) + 1 : if ox(j) > x and ox(j) <= x + 5 then p = p + os
650     next j
660     i = s
670   next i
680   if p < lv(l) then ?"{147}":poke214,10:poke211,14:sys58640:?"{white}game over !!!";:poke214,13:poke211,6:sys58640:?" your score:"p"- target:"lv(l):poke198,0:end
690   l = l + 1
700   gosub830
710 next n
720 print "{147}"
730 poke 214, 10:
740 sys 58640
750 print "{white}you won the game with a score of"p
760 poke 198,0
770 end
780 x = 17: p = 0: l = 1: dim lv(10): dim c(5,4): dim ox(5): dim oy(5)
790 data 100, 250, 400, 600, 800, 1000, 1200, 1500, 1800, 2000
800 for i = 1 to 10
810   read lv(i)
820 next i
830 for i = 1 to 5
840   c(i,1) = (int(rnd(1)*3)+1)*5
850   c(i,2) = 3
860   c(i,3) = int(rnd(1) * 37) + 1
870   c(i,4) = int(rnd(1) * 2) + 1
880 next i
890 return