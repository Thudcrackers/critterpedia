class NorthernMonth < ApplicationRecord
    has_and_belongs_to_many :bugs
    has_and_belongs_to_many :fish
end