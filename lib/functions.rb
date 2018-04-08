require 'functions/version'
require 'functions/dsl'

operation(:plus)       { |a, b| a + b }
operation(:minus)      { |a, b| a - b }
operation(:times)      { |a, b| a * b }
operation(:divided_by) { |a, b| a / b }

%w(zero one two three four five six seven eight nine).each_with_index do |name, index|
  operand(name, index)
end
