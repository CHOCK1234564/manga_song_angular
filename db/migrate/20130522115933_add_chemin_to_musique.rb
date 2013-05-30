class AddCheminToMusique < ActiveRecord::Migration
  def change
	rename_column :musiques, :url, :name
  end
end
