class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :gender, :string, null: false
    add_column :users, :address, :string
    add_column :users, :role, :integer, default: 0, null: false
  end
end
