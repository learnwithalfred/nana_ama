class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name, null: false, unique: true, limit: 100

      t.timestamps
    end
  end
end
