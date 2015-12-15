class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :player
      t.integer :phase, default: 1
      t.integer :point_count, default: 0
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
