class CreateInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :interests do |t|
      t.text :interests

      t.timestamps
    end
  end
end
