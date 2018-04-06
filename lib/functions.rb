def identity(value)
  value
end

%w(zero one two three four five six seven eight nine).each_with_index do |name, index|
  define_method name do |f = method(:identity)|
    f[index]
  end
end

{
  times: :*,
  divided_by: :/,
}.each do |operation, symbol|
  define_method operation do |r|
    -> (l) { l.__send__(symbol, r) }
  end
end
