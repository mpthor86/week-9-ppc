class Supply < ApplicationRecord

    has_many :parties_supplies
    has_many :parties, through: :parties_supplies

    scope :alpha, -> {order(name: :asc)}
    scope :order_by_use, -> {joins(:parties_supplies).group(:id).order(Arel.sql("COUNT(id)"))}

    def self.alphabetical
        self.order(name: :asc)
        # self.order("name ASC")
    end

end
