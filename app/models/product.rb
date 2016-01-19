class Product < ActiveRecord::Base
  belongs_to :lasejob
  belongs_to :portfolio
end
