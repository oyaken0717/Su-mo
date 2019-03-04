class CreateAparts < ActiveRecord::Migration[5.0]
  def change
    create_table :aparts do |t|
      t.text :name, null: true
      t.integer :rent, null: true
      t.text :address, null: true
      t.integer :age, null: true
      t.text :note, null: true
      t.timestamps
    end
  end
end
