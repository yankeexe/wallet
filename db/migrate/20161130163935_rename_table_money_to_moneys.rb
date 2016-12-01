class RenameTableMoneyToMoneys < ActiveRecord::Migration[5.0]
  def change
  	rename_table :money, :moneys
  end
end
