class Denunciation < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :link, presence: true
end
