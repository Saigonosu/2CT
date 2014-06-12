class AddTrailerRentalToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :trailer_rented, :boolean, default: 'false'
    add_money :routes, :trailer_rental
  end
end
