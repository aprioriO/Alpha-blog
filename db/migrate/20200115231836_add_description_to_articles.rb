class AddDescriptionToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :description, :text
    # add column to articles table, the name of the column is "description", and type of the atribute name is "text"
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime

  end
end
