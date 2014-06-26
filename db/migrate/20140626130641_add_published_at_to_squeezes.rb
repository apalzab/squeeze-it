class AddPublishedAtToSqueezes < ActiveRecord::Migration
  def change
    add_column :squeezes, :published_at, :datetime
  end
end
