class User < ApplicationRecord
    validates :name, presence: true


    enum user_type: {admin: 0, client: 1}
end
