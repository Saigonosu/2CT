class Driver < ActiveRecord::Base
  validates :name, :presence => true
end
