def infix_to_rpn(expression)
  precedence = {
    '+' => 1,
    '-' => 1,
    '*' => 2,
    '/' => 2,
    '^' => 3
  }

  output = []
  stack = []

  tokens = expression.scan(/\d+|\+|-|\*|\/|\^|\(|\)/)

  tokens.each do |token|
    if token.match?(/\d+/)
      output << token
    elsif token == '('
      stack.push(token)
    elsif token == ')'
      while !stack.empty? && stack.last != '('
        output << stack.pop
      end
      stack.pop
    else
      while !stack.empty? && precedence[token] <= precedence[stack.last]
        output << stack.pop
      end
      stack.push(token)
    end
  end

  while !stack.empty?
    output << stack.pop
  end

  output.join(' ')
end

input = "2 + 1 * 4"
output = infix_to_rpn(input)
puts "Input: #{input}"
puts "Output (RPN): #{output}"
