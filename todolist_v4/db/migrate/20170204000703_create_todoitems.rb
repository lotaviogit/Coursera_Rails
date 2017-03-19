class CreateTodoitems < ActiveRecord::Migration[5.0]
  def change
    create_table :todoitems do |t|
      t.date :due_date
      t.string :title
      t.string :description
      t.boolean :completed

      t.timestamps
    end
  end
end
