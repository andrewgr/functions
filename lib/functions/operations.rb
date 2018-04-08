def operation(name, symbol)
  define_method name do |right|
    -> (left) { left.__send__(symbol, right) }
  end
end

{
  plus:       :+,
  minus:      :-,
  times:      :*,
  divided_by: :/,
}.each do |operation, symbol|
  operation(operation, symbol)
end
