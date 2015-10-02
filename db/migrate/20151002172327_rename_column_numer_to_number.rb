class RenameColumnNumerToNumber < ActiveRecord::Migration
  def change
    rename_column :calorics, :numer, :number
  end
end
