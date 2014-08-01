class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :album_id,    null: false
      t.string :bonus_status, null: false
      t.string :lyrics

      t.timestamps
    end
    add_index :tracks, :album_id
  end
end
