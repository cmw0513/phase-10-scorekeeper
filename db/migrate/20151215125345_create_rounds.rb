class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :game, index: true, foreign_key: true
      t.references :score, index: true, foreign_key: true
      t.integer :point_count, default: 0
      t.boolean :phase, default: false

      t.timestamps null: false
    end
  end
end
