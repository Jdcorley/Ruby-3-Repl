require_relative "../apps/data.rb"
require_relative "../apps/ruby_file.rb"
require "test/unit"
require 'fileutils'

class SimpleTestCase < Test::Unit::TestCase
  def test_data_interpretation
    assert_equal(10, Data.new(10).interpret)
    assert_equal("Hello World!", Data.new("Hello World!").interpret)
    assert_equal([1,2,3], Data.new([1,2,3]).interpret)
    assert_equal([a:"hello", b:"world!"], Data.new([a:"hello", b:"world!"]).interpret)
  end

  def test_ruby_file_creation
    RubyFile.new("test_file", "root/test/mock_folder/")
  end

  def ruby_test_file_created?
    File.exists?("root/test/mock_folder/test_file.rb")
  end
end