class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.integer :width
      t.integer :height
      t.integer :spaces, array: true, default: []
      t.timestamps
    end

    add_index :boards, :spaces, using: :gin
  end
end
