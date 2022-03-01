class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :answers
      t.references :asker, foreign_key: { to_table: :users }
      t.references :replier, foreign_key: { to_table: :users }
      t.integer :replier
      t.boolean :rejected
      
      t.timestamps
    end
  end
end
