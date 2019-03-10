class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.text :line, null: true
      t.text :name, null: true
      t.integer :foot, null: true
    end
  end
end
