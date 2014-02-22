class Squeeze < ActiveRecord::Base
  attr_accessor :title, :user_id, :date

  belongs_to :user
end
