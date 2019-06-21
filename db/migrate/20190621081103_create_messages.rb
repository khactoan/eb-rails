class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :chatwork, foreign_key: true
      t.text :content
      t.integer :room
      t.string :time
      t.string :day_of_week

      t.timestamps
    end
  end
end
