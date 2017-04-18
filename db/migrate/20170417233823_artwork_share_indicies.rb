class ArtworkShareIndicies < ActiveRecord::Migration[5.0]
  def change
    remove_index :artwork_shares, :artwork_id
    remove_index :artwork_shares, :viewer_id

    add_index :artwork_shares, [:viewer_id, :artwork_id], unique: true
  end
end
