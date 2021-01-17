class Denunciation < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :description, presence: true
    validates :link, presence: true

    enum status: {lida: 0, arquivada: 1, deletada: 2}


    enum plagio: {sim_plagio: 0, nao_plagio: 1}
    enum abuso: {sim_abuso: 0, nao_abuso: 1}
    enum injuria: {sim_injuria: 0, nao_injuria: 1}
    enum outro: {sim_outro: 0, nao_outro: 1}
end
