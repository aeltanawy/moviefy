class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|
      t.string :state
      t.string :city
      t.string :theater_name
      t.string :zipcode

      t.timestamps
    end
  end
end
