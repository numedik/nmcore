class Runningnumber < ActiveRecord::Base
  
  def self.get_latest_number_for(code)
    rs = Runningnumber.where(:code=>code).first
    rs.running+1
  end
end
