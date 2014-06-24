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
end
