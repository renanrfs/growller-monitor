class Growller < ActiveRecord::Base
  has_many :sensors, dependent: destroy
  has_and_belongs_to_many :users
end
