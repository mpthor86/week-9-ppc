class Party < ApplicationRecord

    belongs_to :category
    has_many :parties_supplies
    has_many :supplies, through: :parties_supplies 

    accepts_nested_attributes_for :category, :supplies 

    def private?
        self.private ? 'Private' : 'Public'
    end    

    scope :order_by_name, -> { order(:name) }
    scope :order_by_most_supplies, -> { joins(:supplies).group("parties.id").order("COUNT(*) DESC") }
    scope :public_parties, -> { where(private: false) }
    

end
