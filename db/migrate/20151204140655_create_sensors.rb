class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.string      :temperature, limit: 10
      t.string      :humidity, limit: 10
      t.string      :light, limit: 10
      t.belongs_to  :growller, index: true

      t.timestamps null: false
    end
  end
end
