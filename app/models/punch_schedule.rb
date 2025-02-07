class PunchSchedule < ApplicationRecord
  belongs_to :user

  enum time_line: {
    AM: 0,
    PM: 1
  }
  enum status: {
    pending: 0,
    successed: 1,
    failed: 2,
    cancel: 3
  }
end

# == Schema Information
#
# Table name: punch_schedules
#
#  id                   :bigint           not null, primary key
#  date                 :date             not null
#  perform_at_unixtime  :integer
#  response             :text
#  schedule_at_unixtime :integer
#  status               :integer          default("pending")
#  time_line            :integer          not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  user_id              :integer          not null
#
