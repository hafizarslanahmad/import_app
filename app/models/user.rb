class User < ApplicationRecord

    has_one_attached :avatar

    has_many :programs
    belongs_to :registration
    belongs_to :organization


    enum category: %i[student teacher mentor]
end
