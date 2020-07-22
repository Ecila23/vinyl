class AddSlugToRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :records, :slug, :string
  end
end
