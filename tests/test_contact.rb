require "minitest/autorun"
require "./contact"

class TestContact < Minitest::Test
  def test_format
    c = Contact.new(12379874234, "Danny", "Home")
    assert_equal "12379874234 | Danny | Home", c.format, "format method failed"
  end
end
