class Book < ActiveRecord::Base
    belongs_to :type
    belongs_to :area
    
end
