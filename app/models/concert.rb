class Concert < ApplicationRecord
    validates :name, presence: true
    validates :city, presence: true
    validates :artist, presence: true
    validates :salle, presence: true
    validates :style, presence: true
    validates :date, presence: true

    validates :photo, presence: true
    has_attachment :photo, accept: [:jpg, :png, :jpeg]
end
