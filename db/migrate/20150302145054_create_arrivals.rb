class CreateArrivals < ActiveRecord::Migration
  def change
    create_table :arrivals do |t|
      t.datetime :date
      t.integer :status, default: 0
      t.references :flight, index: true

      t.timestamps null: false
    end
    add_foreign_key :arrivals, :flights
  end
end
