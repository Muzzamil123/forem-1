class AddSubscriberEmailToUserSubscriptions < ActiveRecord::Migration[6.0]
  def change
    # add_column :user_subscriptions, :subscriber_email, :string, null: false
    add_column :user_subscriptions, :subscriber_email, :string
    change_column_null :user_subscriptions, :subscriber_email, false
  end
end
