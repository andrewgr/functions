require 'functions/version'
require 'functions/dsl'

Functions.operation(:plus)       { |a, b| a + b }
Functions.operation(:minus)      { |a, b| a - b }
Functions.operation(:times)      { |a, b| a * b }
Functions.operation(:divided_by) { |a, b| a / b }

%w(zero one two three four five six seven eight nine).each_with_index do |name, index|
  Functions.operand(name, index)
end
