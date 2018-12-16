class Migrateexpdate < ActiveRecord::Migration[5.2]
  def change
    remove_column :credit_cards, :exp_date
    remove_column :billing_addresses, :exp_month
    remove_column :billing_addresses, :exp_year
    add_column :credit_cards, :exp_month, :integer
    add_column :credit_cards, :exp_year, :integer
  end
end
