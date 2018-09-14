class RemoveImageFromHobbies < ActiveRecord::Migration[5.2]
  def change
    remove_column :hobbies, :image
  end
end
