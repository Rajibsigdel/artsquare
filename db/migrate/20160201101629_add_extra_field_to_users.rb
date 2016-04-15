class AddExtraFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :biography, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :avatar, :string
  end
end
