class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.date :date
      t.integer :number

      t.timestamps null: false
    end
  end
end
