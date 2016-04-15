class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :slug
      t.text :description
      t.string :thumbnail
      t.boolean :is_adult
      t.boolean :status

      t.timestamps null: false
    end
  end
end
