class CreateObservations < ActiveRecord::Migration[6.1]
  def change
    create_table :observations do |t|
      t.string :season
      t.string :name
      t.integer :max_number
      t.string :notes

      t.timestamps
    end
  end
end
