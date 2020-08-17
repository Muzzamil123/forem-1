class AddUserSubscriptionsCountToArticles < ActiveRecord::Migration[6.0]
  def self.up
    # add_column :articles, :user_subscriptions_count, :integer, null: false, default: 0
    add_column :articles, :user_subscriptions_count, :integer
    change_column_default :articles, :user_subscriptions_count, 0
    # change_column_null :articles, :user_subscriptions_count, false
  end

  def self.down
    safety_assured { remove_column :articles, :user_subscriptions_count }
  end
end
