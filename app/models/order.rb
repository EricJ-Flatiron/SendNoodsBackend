class Order < ApplicationRecord
    belongs_to :user
    has_many :noodles
    has_many :addons, through: :noodles

    def get_cost
        sum = 0.0
        self.noodles.each do |n|
            sum += n.cost
        end
        self.addons.each do |a|
            sum += a.cost
        end
        self.cost = sum.to_f.round(2)
        return self.cost
    end

end
