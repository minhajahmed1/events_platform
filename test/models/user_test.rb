require 'test_helper'

class UserTest < ActiveSupport::TestCase
 test 'is valid' do
    user = User.new( email: 'minhajahmed32@hotmail.com', user_id:'1', password: 'secret', password_confirmation: 'secret')
    assert user.valid?
  end
  
  test 'is invalid without a user_id' do
    user= User.new(email:'minhajahmed32@hotmail.com')
    reftute user.valid?
    assert_not_nil user.erors[:user_id]
  end
  
 

  test 'is invalid without an email' do
    user = User.new(user_id:'1')
    refute user.valid?
    assert_not_nil user.errors[:email]
  end

  test 'is invalid with an email of an existing user' do
    user = User.new(user_id: '1', email: users(:one).email, password: 'secret', password_confirmation: 'secret')
    refute user.valid?
    assert_not_nil user.errors[:email]
  end


end
