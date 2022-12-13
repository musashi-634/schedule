class ChangeDatatypeWholeDayOfSchedules < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules, :whole_day, :string
  end
end
