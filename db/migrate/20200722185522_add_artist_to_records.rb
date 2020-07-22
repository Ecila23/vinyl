class AddArtistToRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :records, :artist, :string
  end
end
