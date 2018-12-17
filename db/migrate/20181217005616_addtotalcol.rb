class Addtotalcol < ActiveRecord::Migration[5.2]
  def change
    add_column :purchasings, :total, :float
  end
end
