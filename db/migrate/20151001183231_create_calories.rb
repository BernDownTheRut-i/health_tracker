class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.date :date
      t.decimal :number

      t.timestamps null: false
    end
  end
end
