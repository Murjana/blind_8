class CreateChatrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :chatrooms do |t|
    t.references :user_a, foreign_key: { to_table: :users }
    t.references :user_b, foreign_key: { to_table: :users }
    
      t.timestamps
    end
  end
end
