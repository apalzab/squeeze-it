class AddSluggedToUsers < ActiveRecord::Migration
  def up
    add_column :users, :slug, :string
  end
end
