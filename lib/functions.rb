require 'functions/dsl'
require 'functions/version'

Functions::DSL.number(:zero,  0)
Functions::DSL.number(:one,   1)
Functions::DSL.number(:two,   2)
Functions::DSL.number(:three, 3)
Functions::DSL.number(:four,  4)
Functions::DSL.number(:five,  5)
Functions::DSL.number(:six,   6)
Functions::DSL.number(:seven, 7)
Functions::DSL.number(:eight, 8)
Functions::DSL.number(:nine,  9)

Functions::DSL.operation(:plus)       { |a, b| a + b }
Functions::DSL.operation(:minus)      { |a, b| a - b }
Functions::DSL.operation(:times)      { |a, b| a * b }
Functions::DSL.operation(:divided_by) { |a, b| a / b }
