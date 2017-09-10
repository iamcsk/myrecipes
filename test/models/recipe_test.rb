require "test_helper"

class Recipe < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(name: "veg", decription:'new veg rec')
  end

  test "recipe should be valid" do
    # assert @recipe.valid?
  end

end
