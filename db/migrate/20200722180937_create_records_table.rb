class CreateRecordsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :title
      t.integer :year
      t.timestamps
    end
  end
end
