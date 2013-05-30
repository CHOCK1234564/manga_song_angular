class CreateMusiques < ActiveRecord::Migration
  def change
    create_table :musiques do |t|
      t.string :title
      t.string :url
      t.string :name
      t.timestamps
    end
  end
end
