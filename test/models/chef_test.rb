require "test_helper"

class ChefTest < ActiveSupport::TestCase

  setup do
    @chef = Chef.new(name: "csk", email: "csk@icloud.com")
  end

  test "should be valid " do
    # assert @chef.valid?
  end

  test "name should be present" do
    @chef.name = ""
    assert_not @chef.valid?
  end

  test "name should be less than 30 characters" do
    @chef.name = "a" * 31
    assert_not @chef.valid?
  end

  test "email should be present" do
    @chef.email = " "
    assert_not @chef.valid?
  end

  test "email should not be too long" do
    @chef.email = "a" * 245 + "example.com"
    assert_not @chef.valid?
  end

  test "email should accept correct format" do
      valid_email = %w[]
      valid_email.each do [valids]
        @chef.email = valids
        assert @chef.valid?, "#{valid.inspeect} should be valid"
      end
  end

  test "should reject invalid addresses" do
    invalid_emails = %w[]
    invalid_emails.each do |invalids|
      @chef.email = invalids
      assert_not @chef.valid?, "#{invalid.inspect} should be invalid"
    end
  end

  test "email should be lower case before hitting db" do
      # mixed_email = "csk@icloud.com"
      # @chef.email = mixed_email
      # @chef.save
      # assert_equal mixed_email.downcase, @chef.reload.email
  end

end
