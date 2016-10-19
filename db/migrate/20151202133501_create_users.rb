class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string      :name, limit: 20
      t.string      :last_name, limit: 30
      t.integer     :age, limit: 1
      t.string      :email, limit: 50
      t.string      :address, limit: 100
      t.string      :country, limit: 30
      t.string      :password_hash
      t.string      :password_salt

      t.timestamps null: false
    end
  end
end
