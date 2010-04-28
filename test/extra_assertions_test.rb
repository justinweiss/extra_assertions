require 'test/unit'
require File.expand_path(File.join(File.dirname(__FILE__), '../lib/extra_assertions'))

class ExtraAssertionsTest < Test::Unit::TestCase
  include ExtraAssertions

  def test_includes
    assert_includes [1,2], 2
  end

  def test_not_includes
    assert_not_includes [1,2], 3
  end
end
