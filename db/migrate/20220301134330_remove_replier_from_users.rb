class RemoveReplierFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :replier, :integer
  end
end
