class CreateGrowllersAndUsers < ActiveRecord::Migration
  def change
    create_table :growllers_users do |t|
      t.belongs_to :growller, index: true
      t.belongs_to :user, index: true
    end
  end
end
