class AddDateToMoney < ActiveRecord::Migration[5.0]
  def change
    add_column :money, :date, :date
  end
end
