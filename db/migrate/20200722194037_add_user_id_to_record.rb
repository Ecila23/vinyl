class AddUserIdToRecord < ActiveRecord::Migration[6.0]
  def change
    add_reference :records, :user, index: true
  end
end
