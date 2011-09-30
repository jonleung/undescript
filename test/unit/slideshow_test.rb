require 'test_helper'

class SlideshowTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: slideshows
#
#  id               :integer         not null, primary key
#  name             :string(255)
#  slide_order_hash :text
#  created_at       :datetime
#  updated_at       :datetime
#

