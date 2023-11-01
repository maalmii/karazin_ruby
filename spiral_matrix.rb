def generate_spiral_matrix(n)
  matrix = Array.new(n) { Array.new(n) }
  
  num = 1
  start_row = 0
  end_row = n - 1
  start_col = 0
  end_col = n - 1
  
  while start_row <= end_row && start_col <= end_col
    start_col.upto(end_col) do |i|
      matrix[start_row][i] = num
      num += 1
    end
    start_row += 1
    
    start_row.upto(end_row) do |i|
      matrix[i][end_col] = num
      num += 1
    end
    end_col -= 1
    
    end_col.downto(start_col) do |i|
      matrix[end_row][i] = num
      num += 1
    end
    end_row -= 1
    
    end_row.downto(start_row) do |i|
      matrix[i][start_col] = num
      num += 1
    end
    start_col += 1
  end
  
  matrix
end

print "Введіть розмір матриці: "
size = gets.chomp.to_i

spiral_matrix = generate_spiral_matrix(size)
spiral_matrix.each { |row| puts row.join(' ') }
