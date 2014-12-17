puts "\\begin{table}[!h]"
puts "\\center"
puts "\\small"
puts "\\begin{tabular}{|c|c|c|c|c|}"
puts "\\hline"

cols = ["\\# clientes", "\\# pedidos", 'pedidos/s', 'lat. média (s)', 'lat. perct. 99 (s)']

cols.each_with_index do |c, i|
	print "\\textbf{#{c}} #{i == cols.size-1 ? '' : '&'} "
end
puts "\\\\ \\hline"

File.open ARGV[0] do |f| 
	f.each_line do |l|
		l.split.each_with_index do |val,i|
			print "#{val} #{i == cols.size-1 ? '' : '&'} "
		end
		puts "\\\\ \\hline"
	end
end

puts "\\end{tabular}"
puts "\\caption{Resultados obtidos para X (X) armazéns}"
puts "\\end{table}"
