class Bug < ApplicationRecord
    has_and_belongs_to_many :northern_months
    has_and_belongs_to_many :southern_months
end
