class CreatePurchasings < ActiveRecord::Migration[5.2]
  def change
    create_table :purchasings do |t|
      t.integer :num_of_tickets
      t.references :movie, foreign_key: true
      t.references :theater, foreign_key: true
      t.references :user, foreign_key: true
      t.references :credit_card, foreign_key: true

      t.timestamps
    end
  end
end
