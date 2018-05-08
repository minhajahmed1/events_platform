require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post=Post.new(:"ruby meetup")
  end
  
  test "post should be valid" do
    assert @post.valid?
  end

end
