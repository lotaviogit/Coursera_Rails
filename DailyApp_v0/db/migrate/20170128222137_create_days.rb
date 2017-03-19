class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.float :cost
      t.string :description
      t.string :day
      t.string :month
      t.string :year

      t.timestamps
    end
  end
end
