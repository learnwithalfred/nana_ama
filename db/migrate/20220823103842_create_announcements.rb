class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
