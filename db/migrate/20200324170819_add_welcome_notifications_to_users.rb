class AddWelcomeNotificationsToUsers < ActiveRecord::Migration[5.2]
  def change
    # add_column :users, :welcome_notifications, :boolean, default: true, null: false
    add_column :users, :welcome_notifications, :boolean
    change_column_default :users, :welcome_notifications, true
    # change_column_null :users, :welcome_notifications, false
  end
end
