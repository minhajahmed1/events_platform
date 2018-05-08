require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user=User.new(email:"fo0@hotmail.com")
  end
  
  test "user should be valid" do
    assert @user.valid?
  end
end