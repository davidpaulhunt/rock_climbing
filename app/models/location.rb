class Location < ActiveRecord::Base
	has_many :routes
	has_many :attempts, through: :routes

  accepts_nested_attributes_for :routes, :allow_destroy => true
end
