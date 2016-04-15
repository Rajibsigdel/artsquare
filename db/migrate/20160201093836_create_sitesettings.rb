class CreateSitesettings < ActiveRecord::Migration
  def change
    create_table :sitesettings do |t|
      t.string :meta_key
      t.string :meta_value

      t.timestamps null: false
    end
  end
end
