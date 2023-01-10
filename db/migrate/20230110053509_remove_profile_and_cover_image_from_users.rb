class RemoveProfileAndCoverImageFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :profile_img, :string
    remove_column :users, :cover_img, :string
  end
end
