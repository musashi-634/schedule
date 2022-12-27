class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :date_start
      t.datetime :date_end
      t.boolean :whole_day

      t.timestamps
    end
  end
end
