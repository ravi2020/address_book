class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.string :subject
      t.text :body
      t.datetime :read_at

      t.timestamps
    end
    add_index :messages,:sender_id
    add_index :messages,:recipient_id
  end
end
