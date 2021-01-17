class Denunciation < ApplicationRecord
    has_one :user
    validates :title, presence: true
    validates :description, presence: true
    validates :link, presence: true

    enum status: {lida: 0, arquivada: 1, deletada: 2}


    enum plagio: {sim: 0, nao: 1}
    enum abuso: {sim: 0, nao: 1}
    enum injuria: {sim: 0, nao: 1}
    enum outro: {sim: 0, nao: 1}
end
