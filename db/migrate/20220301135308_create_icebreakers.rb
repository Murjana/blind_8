class CreateIcebreakers < ActiveRecord::Migration[6.1]
  def change
    create_table :icebreakers do |t|
      t.text :content

      t.timestamps
    end
  end
end
