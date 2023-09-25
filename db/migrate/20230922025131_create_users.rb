class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # Removed t.string :id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :is_admin, default: false # Renamed to is_admin and added a default value

      t.timestamps
    end
  end
end