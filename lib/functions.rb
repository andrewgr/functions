def identity(value)
  value
end

%w(zero one two three four five six seven eight nine).each_with_index do |name, index|
  define_method name do |f = method(:identity)|
    f[index]
  end
end

def times(r)
  -> (l) { l * r }
end

def divided_by(r)
  -> (l) { l / r }
end
