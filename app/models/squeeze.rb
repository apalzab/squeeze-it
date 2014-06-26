# == Schema Information
#
# Table name: squeezes
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  title      :string(255)
#  user_id    :integer
#  date       :date
#  content    :text
#

class Squeeze < ActiveRecord::Base
  belongs_to :user

  before_save :update_attrs

  scope :publish, -> { where('publish = ?', true) }
  scope :recents, -> { order('published_at ASC') }

  def publish?
    self.publish == true
  end

  def update_attrs
    if self.publish?
      self.published_at = DateTime.now
    end
  end
end
