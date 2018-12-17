class Tablechange < ActiveRecord::Migration[5.2]
  def change
    drop_table :purchasings
    drop_table :credit_cards
    drop_table :billing_addresses

    remove_column :users, :credit_card_id
  end

end
