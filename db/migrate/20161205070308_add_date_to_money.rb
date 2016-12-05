class AddDateToMoney < ActiveRecord::Migration[5.0]
  def change
    add_column :moneys, :date, :date
  end
end
