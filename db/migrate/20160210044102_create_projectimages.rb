class CreateProjectimages < ActiveRecord::Migration
  def change
    create_table :projectimages do |t|
      t.string :image_url
    end
  end
end
