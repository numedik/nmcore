class Statusrow < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :advertisement
end
