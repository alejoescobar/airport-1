class CreateDepartures < ActiveRecord::Migration
  def change
    create_table :departures do |t|
      t.datetime :date
      t.integer :status, default: 0
      t.references :flight, index: true

      t.timestamps null: false
    end
    add_foreign_key :departures, :flights
  end
end
