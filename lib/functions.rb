require 'functions/version'
require 'functions/dsl'

Functions.operand(:zero,  0)
Functions.operand(:one,   1)
Functions.operand(:two,   2)
Functions.operand(:three, 3)
Functions.operand(:four,  4)
Functions.operand(:five,  5)
Functions.operand(:six,   6)
Functions.operand(:seven, 7)
Functions.operand(:eight, 8)
Functions.operand(:nine,  9)

Functions.operation(:plus)       { |a, b| a + b }
Functions.operation(:minus)      { |a, b| a - b }
Functions.operation(:times)      { |a, b| a * b }
Functions.operation(:divided_by) { |a, b| a / b }
