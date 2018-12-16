class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.string :name_on_card
      t.integer :card_num
      t.integer :exp_month
      t.integer :exp_year
      t.integer :security_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
