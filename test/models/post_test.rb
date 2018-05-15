require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post=Post.new(user_id: "4",name:"ruby meetup")
  end
  
  test "post should be valid" do
    assert @post.valid?, @post.errors.full_messages
  end

end
