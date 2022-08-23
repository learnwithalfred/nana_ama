class RemoveNameFromAnnouncements < ActiveRecord::Migration[6.1]
  def change
    remove_column :announcements, :name, :string
  end
end
