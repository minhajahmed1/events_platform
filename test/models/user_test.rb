require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user=User.new(email:"fo30@hotmail.com", password: "h3h3123")
  end
  
 test 'is invalid without a name' do
    user = User.new(email: 'fo30@hotmail.com')
    assert user.errors[:name]
  end
  
 test 'invalid without email' do
    user = User.new(email: "fo30@hotmail.com")
    assert user.errors[:password]
 end
  

  test "user should be valid" do
    assert @user.valid?, @user.errors.full_messages
  end
end

