class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.date :date
      t.integer :trip_number
      t.money :advance
      t.money :reimbursement
      t.money :gross_revenue
      t.money :net_revenue
      t.references :driver, index:true

      t.timestamps
    end
  end
end
