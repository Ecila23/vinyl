class RemoveUserIdFromRecords < ActiveRecord::Migration[6.0]
  def change
    remove_reference :records, :user
  end
end
