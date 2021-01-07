class Party < ApplicationRecord

    belongs_to :category

    def private?
        self.private ? 'Private' : 'Public'
    end    

    

end
