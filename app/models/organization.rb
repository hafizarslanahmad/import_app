class Organization < ApplicationRecord

    has_one_attached :logo

    has_many :users
    has_many :programs
    belongs_to :registration

    enum category: %i[student teacher mentor]
end
