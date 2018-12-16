class CreateBillingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :billing_addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.references :credit_card, foreign_key: true

      t.timestamps
    end
  end
end
