class CreatePurchasings < ActiveRecord::Migration[5.2]
  def change
    create_table :purchasings do |t|
      t.string :name_on_card
      t.integer :card_num
      t.integer :exp_month
      t.integer :exp_year
      t.integer :security_code
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :num_of_tickets
      t.references :movie, foreign_key: true
      t.references :user, foreign_key: true
      t.references :theater, foreign_key: true

      t.timestamps
    end
  end
end
