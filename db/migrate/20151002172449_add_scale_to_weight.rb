class AddScaleToWeight < ActiveRecord::Migration
  def change
    change_column :weights, :number, :decimal, precision: 10, scale: 2
  end
end
