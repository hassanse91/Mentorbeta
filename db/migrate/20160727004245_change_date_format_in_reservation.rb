class ChangeDateFormatInReservations < ActiveRecord::Migration
  def change
    change_column :reservations, :date, :datetime
  end
end
