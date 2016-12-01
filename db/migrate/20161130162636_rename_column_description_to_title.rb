class RenameColumnDescriptionToTitle < ActiveRecord::Migration[5.0]
  def change
  	rename_column :money, :description, :title
  end
end
