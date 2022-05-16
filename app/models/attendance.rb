class Attendance < ApplicationRecord
    after_create :welcome_event
    belongs_to :guest, class_name: 'User'
    belongs_to :event

    def welcome_event
        AttendanceMailer.welcome_event(self).deliver_now
    end
end
