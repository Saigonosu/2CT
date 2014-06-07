class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.date :date
      t.integer :trip_number
      t.float :advance
      t.float :reimbursement
      t.float :gross_revenue
      t.float :net_revenue
      t.references :driver, index:true

      t.timestamps
    end
  end
end
