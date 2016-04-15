class ChangeColumnSlug < ActiveRecord::Migration
  def change
  	change_column :projects, :slug, :string
  end
end
