class AddInfoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nickname, :string
    add_column :users, :orientation, :string
    add_column :users, :gender, :string
    add_column :users, :preferred_date_ideas, :text
    add_column :users, :about_me, :text
  end
end
