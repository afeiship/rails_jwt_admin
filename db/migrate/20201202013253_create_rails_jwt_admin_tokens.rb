class CreateRailsJwtAdminTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :rails_jwt_admin_tokens do |t|

      t.timestamps
    end
  end
end
