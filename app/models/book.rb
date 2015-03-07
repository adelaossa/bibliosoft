class Book < ActiveRecord::Base
    belongs_to :type
    belongs_to :area
    
    def self.search(search)
     if search
        where(['title LIKE ?', "%#{search}%"])
     else
        all
     end
    end
end
