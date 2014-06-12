class AddTrailerRentalToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :trailer_rented, :boolean
    add_money :routes, :trailer_rental
  end
end
