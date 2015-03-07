class Type < ActiveRecord::Base
    has_many :books
    #Validacion de campos obligatorios
    validates :name, presence: true
end
