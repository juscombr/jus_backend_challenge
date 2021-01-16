class User < ApplicationRecord
    validates :name, presence: true

    enum type: {admin: 0, cliente: 1}
end
