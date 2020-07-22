class Noodle < ApplicationRecord
    has_many :addons
    belongs_to :order
end
