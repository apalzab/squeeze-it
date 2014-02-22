class CreateSqueezes < ActiveRecord::Migration
  def change
    create_table :squeezes do |t|
      t.timestamps
    end
  end
end
