class AddCommentScoreToArticles < ActiveRecord::Migration[5.2]
  # def change
  #   add_column :articles, :comment_score, :integer, default: 0
  # end
  def up
    add_column :articles, :comment_score, :integer
    change_column_default :articles, :comment_score, 0
  end

  def down
    # remove_column :users, :some_column
    safety_assured { remove_column :articles, :comment_score }
  end
end
