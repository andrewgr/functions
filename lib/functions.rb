%w(zero one two three four five six seven eight nine).each_with_index do |name, index|
  define_method name do |f = nil|
    Proc === f ? f[index] : index
  end
end

def times(r)
  -> (l) { l * r }
end
