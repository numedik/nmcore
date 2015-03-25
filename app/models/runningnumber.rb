class Runningnumber < ActiveRecord::Base
  attr_accessible :code, :info, :running
  
  def self.reset_sn
    rn = Runningnumber.find_by_code('SN')
      rn.running = 0
    rn.save
  end
  
  def increment
    if code == 'PO'
      num = running.to_s
      a1 = num[0..1]
      a2 = num[2..3]
      a3 = num[4..-1]
      if a3.to_i == 9999999
        if a2.to_i < 90
          a2 = a2.to_i + 1
        else
          a1 = a1.to_i + 1
          a2 = '65'
        end
        a3 = '0000000'
      else
        a3 = a3.to_i + 1
        a3 = a3.to_s.rjust(7, '0')
      end
      self.running = "#{a1}#{a2}#{a3}".to_i
    else
      self.running += 1
    end
    save
  end
end
