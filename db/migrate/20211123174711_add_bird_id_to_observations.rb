class AddBirdIdToObservations < ActiveRecord::Migration[6.1]
  def change
    add_column :observations, :bird_id, :integer
  end
end
