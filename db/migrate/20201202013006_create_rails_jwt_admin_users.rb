class CreateRailsJwtAdminUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :rails_jwt_admin_users do |t|
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
