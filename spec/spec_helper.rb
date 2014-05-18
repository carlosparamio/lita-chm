require "coveralls"
require "simplecov"

require "lita-chm"
require "lita/rspec"

Coveralls.wear!

SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start { add_filter "/spec/" }