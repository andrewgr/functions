def operation(name, &block)
  define_method name do |b|
    -> a { block.yield(a, b) }
  end
end

operation(:plus)       { |a, b| a + b }
operation(:minus)      { |a, b| a - b }
operation(:times)      { |a, b| a * b }
operation(:divided_by) { |a, b| a / b }
