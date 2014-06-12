class AddTrailerRentalToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :rented_trailer, :boolean
    add_column :routes, :trailer_rental, :money
  end
end
