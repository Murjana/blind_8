class AddCounterToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_column :chatrooms, :counter, :integer, default: 0
  end
end
