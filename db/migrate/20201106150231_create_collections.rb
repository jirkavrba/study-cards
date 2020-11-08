class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :title
      t.boolean :is_private, default: true
      t.datetime :last_opened_at, null: true
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
