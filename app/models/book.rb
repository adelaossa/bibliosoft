class Book < ActiveRecord::Base
    belongs_to :type
    belongs_to :area

    #Validacion de campos obligatorios
    validates :title, presence: true
    validates :author, presence: true
    validates :description, presence: true
    validates :publication_date, presence: true
    validates :isbn, presence: true
    validates :type_id, presence: true
    validates :area_id, presence: true
    #Validacion de valor unico para el campo isbn
    validates :isbn, uniqueness: true
    #Validacion de valor minimo para la descripcion
    validates :description, length: { minimum: 30 }

    def self.searchTitle(search)
     if search
        where(['title LIKE ?', "%#{search}%"])
     else
        all
     end
    end
    
    def self.searchAuthor(search)
     if search
        where(['author LIKE ?', "%#{search}%"])
     else
        all
     end
    end
    
    def self.searchType(search)
    
     if search.to_i > 0
        where(['type_id = ? ', search.to_i ])
     else
        all
     end
    end
end
