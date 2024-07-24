class User < ApplicationRecord
    has_many :numbers, dependent: :destroy

    validates :name, presence: true
end
