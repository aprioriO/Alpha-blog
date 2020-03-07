require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = Category.new(name: "sports")
  end
  test "category should be valid" do
    assert @catergory.valid?
  end
end
