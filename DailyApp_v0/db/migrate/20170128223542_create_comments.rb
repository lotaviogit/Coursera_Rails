class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :day
      t.string :text
      t.integer :cost

      t.timestamps
    end
  end
end
