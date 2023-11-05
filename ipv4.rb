def valid_ipv4?(ip)
  #рядок на частини за допомогою крапок
  parts = ip.split(".")

  #чи є 4 частини
  return false unless parts.length == 4

  #чи кожна частина є цілим числом в діапазоні від 0 до 255
  parts.each do |part|
    return false unless part.match?(/\A\d+\z/) # Перевірка на число
    return false unless (0..255).include?(part.to_i)
  end

  #перевірки пройдено, це IPv4-адреса
  return true
end

puts valid_ipv4?("192.168.0.1") 
puts valid_ipv4?("10.0.0.256") 
puts valid_ipv4?("255.255.255.255") 
