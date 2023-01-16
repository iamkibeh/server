class AddDescriptionToPostTypes < ActiveRecord::Migration[6.1]
  def change
    add_column :post_types, :description, :string
  end
end
