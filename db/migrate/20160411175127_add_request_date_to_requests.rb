class AddRequestDateToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :request_date, :date
  end
end
