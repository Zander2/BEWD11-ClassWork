require "./helpers"
require_relative "string_converter"
require_relative "calculator"

Helpers.say_hello
puts Helpers.add(2,3)

ConvertString.initialize
ConvertString.upper
ConvertString.lower
ConvertString.reverse
ConvertString.caps
ConvertString.swap_case

Calculator.initialize
Calculator.run_calulator