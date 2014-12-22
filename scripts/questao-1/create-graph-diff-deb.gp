set term png

set out "img/questao-1/diff-deb-2-arm.png"

set xlabel "# clientes"
set ylabel "débito (pedidos/s)"

plot "data/questao-1/ser-2-arm.txt" u 1:3 w lines t "Serializable",\
"data/questao-1/rep-read-2-arm.txt" u 1:3 w lines t "Repeatable Read",\
"data/questao-1/read-uncom-2-arm.txt" u 1:3 w lines t "Read Uncommitted",\
"data/questao-1/read-com-2-arm.txt" u 1:3 w lines t "Read Committed"

set out "img/questao-1/diff-deb-4-arm.png"

plot "data/questao-1/ser-4-arm.txt" u 1:3 w lines t "Serializable",\
"data/questao-1/rep-read-4-arm.txt" u 1:3 w lines t "Repeatable Read",\
"data/questao-1/read-uncom-4-arm.txt" u 1:3 w lines t "Read Uncommitted",\
"data/questao-1/read-com-4-arm.txt" u 1:3 w lines t "Read Committed"