require "test_helper"

class UserTest < ActiveSupport::TestCase

  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:uservalid)
    # login_as users(:uservalid)
  end

  test 'user should be valid' do
    assert @user.valid?
  end

  test "email should be present" do
    @user.email = ''
    assert_not @user.valid?
  end

end
