class Program < ApplicationRecord

    has_rich_text :description

    belongs_to :registration
    belongs_to :organization
    belongs_to :user

    enum category: %i[open_case live_case internship]
end
