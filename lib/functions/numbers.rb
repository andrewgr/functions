%w(zero one two three four five six seven eight nine).each_with_index do |name, index|
  define_method name do |f = -> (value) { value }|
    f[index]
  end
end
