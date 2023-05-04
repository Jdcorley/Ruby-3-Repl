require_relative "../apps/data.rb"
require "test/unit"

class SimpleTestCase < Test::Unit::TestCase
  def test_data_interpretation
    assert_equal(10, Data.new(10).interpret)
    assert_equal("Hello World!", Data.new("Hello World!").interpret)
    assert_equal([1,2,3], Data.new([1,2,3]).interpret)
    assert_equal([a:"hello", b:"world!"], Data.new([a:"hello", b:"world!"]).interpret)
  end
end