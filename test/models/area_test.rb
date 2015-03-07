require 'test_helper'

class AreaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "El area no se guarde vacio" do
     area = Area.new
     assert !area.save, "El area se guardo vacio"
   end
   
end
