class User < ApplicationRecord
    belongs_to :denunciation

    validates :name, presence: true


    enum user_type: {admin: 0, client: 1}
end
