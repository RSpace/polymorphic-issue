class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.integer :user_id
      t.integer :access_to_id
      t.string :access_to_type
      t.string :role_type

      t.timestamps
    end
  end
end
