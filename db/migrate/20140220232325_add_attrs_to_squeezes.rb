class AddAttrsToSqueezes < ActiveRecord::Migration
  def up
    add_column :squeezes, :title, :string
    add_column :squeezes, :user_id, :integer
    add_column :squeezes, :date, :date
  end

  def down
    remove_column :squeezes, :title, :string
    remove_column :squeezes, :user_id, :integer
    remove_column :squeezes, :date, :date
  end
end
