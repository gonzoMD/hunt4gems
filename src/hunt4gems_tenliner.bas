10poke53280,1:poke53281,0:?"{147}":poke214,5:poke211,16:sys58640:?"{green}hunt{light gray}4{pink}gems";:poke214,9:poke211,7:sys58640:?"{white}an arcade game in 10 lines";
20poke214,15:poke211,14:sys58640:?"{red}press fire !!!";:poke214,23:poke211,14:sys58640:?"{white}(c)2017 by robert naumann":ifnotpeek(56321)=239thengoto20
30gosub90:forn=1to10:?"{147}":poke214,10:poke211,10:sys58640:?"{red}level"l"- target:"lv(l):forz=1to2000:nextz:?"{147}":poke214,2:poke211,0:sys58640:fori=1to40:?"{white}{175}";:nexti:ti$="000000":fori=60to0step-1:s=int(-ti/60+99):poke214,1:poke211,1:sys58640
40?"{white}level:{blue}"l" {white}score:{blue}"p" {white}time:{blue}"s"{delete}":forj=1to5:poke214,oy(j):poke211,ox(j):sys58640:?" ";:poke646,c(j,1):poke214,c(j,2):poke211,c(j,3):sys58640:?"{218}";:ox(j)=c(j,3):oy(j)=c(j,2):k=peek(56321):ifk=251andx>0thenx=x-1
50poke214,24:poke211,x:sys58640:?" {orange}{127}{162}{162}{162}{169} ";:ifk=247andx<32thenx=x+1
60c(j,2)=c(j,2)+c(j,4):ifc(j,2)>=24thenos=c(j,1):c(j,1)=(int(rnd(1)*3)+1)*5:c(j,2)=3:c(j,3)=int(rnd(1)*37)+1:c(j,4)=int(rnd(1)*2)+1:ifox(j)>xandox(j)<=x+5thenp=p+os
70nextj:i=s:nexti:ifp<lv(l)then?"{147}":poke214,10:poke211,14:sys58640:?"{white}game over !!!";:poke214,13:poke211,6:sys58640:?" your score:"p"- target:"lv(l):poke198,0:end
80l=l+1:gosub100:nextn:?"{147}":poke214,10:sys58640:?"{white}you won the game with a score of"p:poke198,0:end
90x=17:p=0:l=1:dimlv(10):dimc(5,4):dimox(5):dimoy(5):data100,250,400,600,800,1000,1200,1500,1800,2000:fori=1to10:readlv(i):nexti
100fori=1to5:c(i,1)=(int(rnd(1)*3)+1)*5:c(i,2)=3:c(i,3)=int(rnd(1)*37)+1:c(i,4)=int(rnd(1)*2)+1:nexti:return