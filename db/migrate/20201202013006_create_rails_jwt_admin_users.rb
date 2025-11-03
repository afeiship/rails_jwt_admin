class CreateRailsJwtAdminUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :rails_jwt_admin_users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
    end

    add_index :rails_jwt_admin_users, :username, unique: true
    add_index :rails_jwt_admin_users, :email, unique: true
  end
end
