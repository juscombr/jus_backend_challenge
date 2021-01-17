class User < ApplicationRecord
    has_one :denunciation

    validates :name, presence: true


    enum user_type: {admin: 0, client: 1}
    
    def to_s
        name
    end
end
