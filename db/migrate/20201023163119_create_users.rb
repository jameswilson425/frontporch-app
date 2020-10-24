class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.string :address
      t.text :bio
      t.string :profile_image

      t.timestamps
    end
  end
end
