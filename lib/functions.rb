%w(zero one two three four five six seven eight nine).each_with_index do |name, index|
  define_method name do |f = -> (value) { value }|
    f[index]
  end
end

{
  plus:       :+,
  minus:      :-,
  times:      :*,
  divided_by: :/,
}.each do |operation, symbol|
  define_method operation do |right|
    -> (left) { left.__send__(symbol, right) }
  end
end
