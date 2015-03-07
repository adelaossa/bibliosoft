require 'test_helper'

class TypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "El tipo no se guarde vacio" do
     type = Type.new
     assert !type.save, "El tipo se guardo vacio"
   end
   
end
