class CreateGrowllers < ActiveRecord::Migration
  def change
    create_table :growllers do |t|
      t.string :token
      t.string :ip_address, limit: 15
      t.string :version, limit: 8
      t.string :last_message
      t.datetime :transaction_date

      t.timestamps null: false
    end
  end
end
