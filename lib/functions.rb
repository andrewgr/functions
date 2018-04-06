def five
  5
end

def six(f = nil)
  Proc === f ? f[6] : 6
end

def times(r)
  -> (l) { l * r }
end
