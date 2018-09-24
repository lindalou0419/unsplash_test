class CreateImages < ActiveRecord::Migration[5.2]
  def change
    rename_table :image_tables, :images
  end
end
