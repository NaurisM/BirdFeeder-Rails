class AddUserIdToObservations < ActiveRecord::Migration[6.1]
  def change
    add_column :observations, :user_id, :integer
    add_index :observations, :user_id
  end
end
