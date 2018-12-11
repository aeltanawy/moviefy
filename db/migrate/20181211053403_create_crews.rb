class CreateCrews < ActiveRecord::Migration[5.2]
  def change
    create_table :crews do |t|
      t.string :director_name
      t.integer :director_facebook_likes
      t.string :actor_1_name
      t.integer :actor_1_facebook_likes
      t.string :actor_2_name
      t.integer :actor_2_facebook_likes
      t.string :actor_3_name
      t.integer :actor_3_facebook_likes
      t.integer :cast_total_facebook_likes
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
