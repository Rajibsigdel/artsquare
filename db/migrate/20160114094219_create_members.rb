class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :status

      t.timestamps null: false
    end
  end
end
