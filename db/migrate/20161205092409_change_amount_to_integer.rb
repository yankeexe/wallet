class ChangeAmountToInteger < ActiveRecord::Migration[5.0]
  def change
  	change_column :moneys, :amount, :integer
  end
end
