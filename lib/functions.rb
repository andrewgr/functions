require 'functions/version'
require 'functions/dsl'

Functions.number(:zero,  0)
Functions.number(:one,   1)
Functions.number(:two,   2)
Functions.number(:three, 3)
Functions.number(:four,  4)
Functions.number(:five,  5)
Functions.number(:six,   6)
Functions.number(:seven, 7)
Functions.number(:eight, 8)
Functions.number(:nine,  9)

Functions.operation(:plus)       { |a, b| a + b }
Functions.operation(:minus)      { |a, b| a - b }
Functions.operation(:times)      { |a, b| a * b }
Functions.operation(:divided_by) { |a, b| a / b }
