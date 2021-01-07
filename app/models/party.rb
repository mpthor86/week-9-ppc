class Party < ApplicationRecord

    belongs_to :category
    has_many :parties_supplies
    has_many :supplies, through: :parties_supplies 

    accepts_nested_attributes_for :category, :supplies 

    def private?
        self.private ? 'Private' : 'Public'
    end    

    

end
