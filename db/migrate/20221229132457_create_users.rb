class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.string :password_digest
      t.string :agreement
      t.string :github
      t.string :linkedin
      t.string :cv_link
      t.string :profile_img
      t.string :cover_img
      t.string :country
      t.string :bio
      t.string :skills
      t.string :profession
      t.integer :user_type
      t.string :company_name
      t.string :company_website

      t.timestamps
    end
  end
end
