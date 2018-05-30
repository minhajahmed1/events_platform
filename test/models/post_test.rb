require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post=Post.new(user_id: "4",name:"ruby meetup")
  end
  
  test "post should be valid" do
    assert @post.valid?, @post.errors.full_messages
  end
  
  test 'invalid without user_id' do
    post = Post.new(user_id: "4")
    assert post.errors[:user_id]
  end
  
 test "post should update" do
   @post.update user_id:"4"
   assert @post.valid?,  @post.errors.full_messages
 
 
 end
  

end
