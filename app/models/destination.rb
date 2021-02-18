class Destination < ApplicationRecord
    has_many :activities
    has_many :vacations
    has_many :users, through: :vacations

    validates :name, uniqueness: true


    def highlights_to_hash
        Hash[*highlights.split('|')]
    end

end
