require 'test_helper'

class SlideTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: slides
#
#  id           :integer         not null, primary key
#  slideshow_id :integer
#  subtype      :string(255)
#  title        :string(255)
#  duration     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

