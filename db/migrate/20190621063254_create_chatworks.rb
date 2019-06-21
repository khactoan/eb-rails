class CreateChatworks < ActiveRecord::Migration[5.2]
  def change
    create_table :chatworks do |t|
      t.string :api_token
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
