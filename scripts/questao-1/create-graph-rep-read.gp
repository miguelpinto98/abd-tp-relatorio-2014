set term png

set out "img/questao-1/rep-read-deb.png"

set xlabel "# clientes"
set ylabel "débito (pedidos/s)"

plot "data/questao-1/rep-read-2-arm.txt" u 1:3 w lines t "Dois (2) armazéns",\
"data/questao-1/rep-read-4-arm.txt" u 1:3 w lines t "Quatro (4) armazéns"

set out "img/questao-1/rep-read-lat-med.png"

set xlabel "# clientes"
set ylabel "latência média (s)"

plot "data/questao-1/rep-read-2-arm.txt" u 1:4 w lines t "Dois (2) armazéns",\
"data/questao-1/rep-read-4-arm.txt" u 1:4 w lines t "Quatro (4) armazéns"

set out "img/questao-1/rep-read-lat-pct99.png"

set xlabel "# clientes"
set ylabel "latência percentil 99 (s)"

plot "data/questao-1/rep-read-2-arm.txt" u 1:5 w lines t "Dois (2) armazéns",\
"data/questao-1/rep-read-4-arm.txt" u 1:5 w lines t "Quatro (4) armazéns"
