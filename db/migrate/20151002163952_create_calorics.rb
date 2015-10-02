class CreateCalorics < ActiveRecord::Migration
  def change
    create_table :calorics do |t|
      t.date :date
      t.decimal :numer

      t.timestamps null: false
    end
  end
end
