class AddDisplayAnnouncementsBooleanToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :display_announcements, :boolean
    change_column_default :users, :display_announcements, true
    # add_column :users, :display_announcements, :boolean, default: true
  end
end
