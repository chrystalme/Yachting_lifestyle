class AddAuthorIdToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :authorid, :bigint
    add_reference :articles, :user, null: false, foreign_key: true
  end
end
