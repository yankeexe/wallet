class CreateMoney < ActiveRecord::Migration[5.0]
  def change
    create_table :money do |t|
    	t.text :title
    	t.string :amount

      t.timestamps null: false
    end
  end
end
