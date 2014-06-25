class AddPublishToSqueezes < ActiveRecord::Migration
  def change
    add_column :squeezes, :publish, :boolean
  end
end
