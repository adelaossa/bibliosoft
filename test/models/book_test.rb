require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "El libro no se guarde vacio" do
     book = Book.new
     assert !book.save, "El libro se guardo vacio"
   end 
   
   test "El libro se guarde con titulo y sin autor,descripcion,fecha publicacion,isbn,tipo,area" do
     book = Book.new
     book.title=books(:one).title
     assert_not book.save, "El libro se guardo con titulo y sin autor,descripcion,fecha publicacion,isbn,tipo,area"
   end 
   
   test "El libro se guarde con autor y sin titulo,descripcion,fecha publicacion,isbn,tipo,area" do
     book = Book.new
     book.author=books(:one).author
     assert_not book.save, "El libro se guardo con autor y sin titulo,descripcion,fecha publicacion,isbn,tipo,area"
   end 
   
   test "El libro se guarde con descripcion y sin titulo,autor,fecha publicacion,isbn,tipo,area" do
     book = Book.new
     book.description=books(:one).description
     assert_not book.save, "El libro se guardo con descripcion y sin titulo,autor,fecha publicacion,isbn,tipo,area"
   end 
   
   test "El libro se guarde con fecha publicacion y sin autor,descripcion,titulo,isbn,tipo,area" do
     book = Book.new
     book.publication_date=books(:one).publication_date
     assert_not book.save, "El libro se guardo con fecha publicacion y sin autor,descripcion,titulo,isbn,tipo,area"
   end 
   
   test "El libro se guarde con isbn y sin autor,descripcion,fecha publicacion,titulo,tipo,area" do
     book = Book.new
     book.isbn=books(:one).isbn
     assert_not book.save, "El libro se guarde con isbn y sin autor,descripcion,fecha publicacion,titulo,tipo,area"
   end 
   
    test "El libro se guarde con tipo y sin autor,descripcion,fecha publicacion,isbn,titulo,area" do
     book = Book.new
     book.type_id=books(:one).type_id
     assert_not book.save, "El libro se guarde con tipo y sin autor,descripcion,fecha publicacion,isbn,titulo,area"
   end 
  
  test "El libro se guarde con area y sin autor,descripcion,fecha publicacion,isbn,tipo,titulo" do
     book = Book.new
     book.area_id=books(:one).area_id
     assert_not book.save, "El libro se guardo con titulo y sin autor,descripcion,fecha publicacion,isbn,tipo,area"
   end 
end
