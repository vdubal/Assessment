class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :password_confirmation
      t.string :username
      t.string :about_me
      t.string :current_password

      t.timestamps null: false
    end
  end
end
