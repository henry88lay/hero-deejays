class ChangeBookingsUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :user_id, :renter_id
    rename_column :djs, :user_id, :manager_id
  end
end
