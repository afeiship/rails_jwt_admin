class CreateRailsJwtAdminUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :rails_jwt_admin_users do |t|
      t.string :username, null: false, index: { unique: true }
      t.string :email, null: false, index: { unique: true }
      t.string :password_digest, null: false

      t.timestamps
    end

  end
end
