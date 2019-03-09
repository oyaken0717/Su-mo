class AddRefToStations < ActiveRecord::Migration[5.0]
  def change
    add_reference :stations, :apart, foreign_key: true
  end
end
