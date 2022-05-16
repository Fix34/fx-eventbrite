class Event < ApplicationRecord
    has_many :attendances
    has_many :guests, through: :attendances, class_name: 'User'
    belongs_to :admin, class_name: 'User'


    validates :duration, :title, :description, :start_date, :price, :location,  presence: true
    validate :start_date_cannot_be_in_the_past

    validates :duration, numericality: { only_integer: true, greater_than: 0 }
    validate :multiple_of_5

    validates :title, length: { in: 5..140 }

    validates :description, length: { in: 20..1000 }

    validates :price,
    numericality: { only_integer: true, in: 1..1000 }
    
    private 

    def start_date_cannot_be_in_the_past
        if start_date != nil
           if Time.now > start_date
            errors.add(:start_date, "Vous ne pouvez pas modifier un évènement passé")
            end
        end
    end

    def multiple_of_5
        if duration != nil
            if duration % 5 != 0
                errors.add(:duration, "La durée doit être un multiple de 5")
            end 
        end
    end

        





end
