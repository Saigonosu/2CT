class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.Date, :date
      t.int, :trip_num
      t.float, :advance
      t.float, :reimbursement
      t.float, :gross_rev
      t.float :net_rev

      t.timestamps
    end
  end
end
