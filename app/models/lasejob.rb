class Lasejob < ActiveRecord::Base
  has_many :elements
  has_one :product
end
