class RenameTableMoneysToMoney < ActiveRecord::Migration[5.0]
  def change
  	rename_table :moneys, :money
  end
end
