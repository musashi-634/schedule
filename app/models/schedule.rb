class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :date_start, presence: true
  validates :date_end, presence: true
  validate :check_dates_relation
  validates :whole_day, inclusion: [true, false]

  def check_dates_relation
    unless self.date_start.nil? || self.date_end.nil?  # 両方の日付が空白でない場合
      if self.date_start > self.date_end
        errors.add(:date_end, "は開始日以降にしてください")
      end
    end
  end

  def display_whole_day
    self.whole_day ? '○' : ''
  end
end
