class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :password_digest, null: false, unique: true
      t.string :username, null: false, unique: true
      t.string :session_token, unique: true
    end
  end
end
