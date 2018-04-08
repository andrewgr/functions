def operand(name, value)
  define_method name do |f = -> (value) { value }|
    f[value]
  end
end

def operation(name, &block)
  define_method name do |b|
    -> a { block.yield(a, b) }
  end
end
