class RenameTable < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :money, :moneys
  end

  def self.down
    rename_table :moneys, :money
  end
end
