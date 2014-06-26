class RemoveDateFromSqueezes < ActiveRecord::Migration
  def change
    remove_column :squeezes, :date
  end
end
