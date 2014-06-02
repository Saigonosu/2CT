json.array!(@routes) do |route|
  json.extract! route, :id, :date, :trip_num, :advance, :reimbursement, :gross_rev, :net_rev
  json.url route_url(route, format: :json)
end
