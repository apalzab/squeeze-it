class AddContentToSqueezes < ActiveRecord::Migration
  def change
    add_column :squeezes, :content, :text
  end
end
