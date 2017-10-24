class CreateStatMoves < ActiveRecord::Migration[5.1]
  def change
    create_table :stat_moves do |t|
      t.integer :stat_id
      t.integer :move_id
      t.integer :stat_change
    end
  end
end
