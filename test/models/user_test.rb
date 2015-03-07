require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "El usuario no se guarde vacio" do
     user = User.new
     assert !user.save, "El usuario se guardo vacio"
   end 
   
   test "El usuario se guarde con nombre y sin apellido" do
     user = User.new
     user.name="Carlos"
     assert_not user.save, "El usuario se guardo con nombre y sin apellido"
   end 
   
    test "El usuario se guarde con apellido y sin nombre" do
     user = User.new
     user.lastname=users(:one).lastname
     assert_not user.save, "El usuario se guardo con apellido y sin nombre"
   end 
   
   
end
