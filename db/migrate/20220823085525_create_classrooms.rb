class CreateClassrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :classrooms do |t|
      t.string :name, null: false, unique: true
      t.integer :role, default: 0, null: false

      t.timestamps
    end
  end
end
