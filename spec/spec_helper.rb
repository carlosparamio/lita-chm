require "coveralls"
require "simplecov"

require "lita-chm"
require "lita/rspec"

Coveralls.wear!

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
]
SimpleCov.start { add_filter "/spec/" }