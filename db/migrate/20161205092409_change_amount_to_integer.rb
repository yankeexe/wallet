class ChangeAmountToInteger < ActiveRecord::Migration[5.0]
  def change
  	change_column :money, :amount, :integer
  end
end
