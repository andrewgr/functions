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
