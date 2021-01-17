class Denunciation < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :description, presence: true
    validates :link, presence: true

    enum status: {lida: 0, arquivada: 1, deletada: 2}


    enum plagio: {acusação_de_plagio: 0, sem_acusação_de_plagio: 1}
    enum abuso: {acusação_de_abuso: 0, sem_acusação_de_abuso: 1}
    enum injuria: {acusação_de_injuria: 0, sem_acusação_de_injuria: 1}
    enum outro: {acusação_de_outro: 0, sem_acusação_de_outro: 1}
end
