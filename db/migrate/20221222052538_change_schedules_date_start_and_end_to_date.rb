class ChangeSchedulesDateStartAndEndToDate < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :date_start, :date, using: "date_start::date"
    change_column :schedules, :date_end, :date, using: "date_end::date"
  end

  def down
    change_column :schedules, :date_start, :datetime, using: "date_start::datetime"
    change_column :schedules, :date_end, :datetime, using: "date_end::datetime"
  end
end
