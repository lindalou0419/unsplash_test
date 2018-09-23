class CreateImageTable < ActiveRecord::Migration[5.2]
  def change
    create_table :image_tables do |t|
      t.string :image_url
    end
  end
end
