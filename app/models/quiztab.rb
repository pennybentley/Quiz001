class Quiztab < ApplicationRecord
    validates :text001, presence: true, length: { maximum: 140, minimum: 3 }
    validates :artist, presence: true, length: { maximum: 50, minimum: 3 }

end
