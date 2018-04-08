def operand(name, value)
  define_method name do |f = -> (value) { value }|
    f[value]
  end
end

%w(zero one two three four five six seven eight nine).each_with_index do |name, index|
  operand(name, index)
end
