class AddImageIdAndMoodFields < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :image_id, :integer
    add_column :images, :mood, :string
  end
end
