class AddSubscribedToUserSubscriptionsCountToUsers < ActiveRecord::Migration[6.0]
  def self.up
    # add_column :users, :subscribed_to_user_subscriptions_count, :integer, null: false, default: 0
    add_column :users, :subscribed_to_user_subscriptions_count, :integer
    change_column_default :users, :subscribed_to_user_subscriptions_count, 0
    change_column_null :users, :subscribed_to_user_subscriptions_count, false
  end

  def self.down
    safety_assured { remove_column :users, :subscribed_to_user_subscriptions_count }
  end
end
