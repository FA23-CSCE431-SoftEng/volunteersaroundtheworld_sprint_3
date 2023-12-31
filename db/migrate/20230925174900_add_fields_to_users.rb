# frozen_string_literal: true

class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :uid, :string
    add_column :users, :avatar_url, :string
    add_column :users, :provider, :string
    add_column :users, :encrypted_password, :string, default: '', null: false
    add_column :users, :reset_password_token, :string
    add_column :users, :reset_password_sent_at, :datetime
    add_column :users, :remember_created_at, :datetime
    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
