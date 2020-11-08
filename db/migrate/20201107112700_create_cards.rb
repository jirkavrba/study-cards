class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.text :question
      t.text :answer
      t.integer :collection_id, null: false

      t.timestamps
    end
  end
end
