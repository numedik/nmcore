class Panel < ActiveRecord::Base
  attr_accessible :code, :name, :id
  
  has_many :patients
  has_many :billitems
  has_many :prices, dependent: :destroy
  
  after_create :addprice
  
  def addprice
  	  
  	  #Warehouse.all.each do |w|
	  #	  p = Price.find_last_by_code(w.code)
	  #	  if p
	  #	  	price 					=  Price.new
		#	  	price.name 				=  p.name
		#	  	price.code 				=  p.code
		#	  	price.actualcost 		=  p.actualcost
		#	  	price.recommendedprice 	=  p.recommendedprice
		#	  	price.panel_id			=  self.id
		#	  	price.pricetype 		=  p.pricetype
		#  	price.save
	  	#  end
      #end
      
      #iterate for lab charges
      Labcharges.all.each do |l|
	  	  p = Price.find_last_by_code(l.code)
	  	  if p
	  	  	price 					=  Price.new
			  	price.name 				=  p.name
			  	price.code 				=  p.code
			  	price.actualcost 		=  p.actualcost
			  	price.recommendedprice 	=  p.recommendedprice
			  	price.panel_id			=  self.id
			  	price.pricetype 		=  p.pricetype
		  	price.save
	  	  end	
      end
      
      #iterate for room charges
      Room.all.each do |r|
	  	  p = Price.find_last_by_code(r.code)
	  	  if p
	  	  	price 					=  Price.new
			  	price.name 				=  p.name
			  	price.code 				=  p.code
			  	price.actualcost 		=  p.actualcost
			  	price.recommendedprice 	=  p.recommendedprice
			  	price.panel_id			=  self.id
			  	price.pricetype 		=  p.pricetype
		  	price.save
	  	  end	
      end
      
      #iterate for general charges 
      GeneralCharge.all.each do |g|
	  	  p = Price.find_last_by_code(g.code)
	  	  if p
	  	  	price 					=  Price.new
			  	price.name 				=  p.name
			  	price.code 				=  p.code
			  	price.actualcost 		=  p.actualcost
			  	price.recommendedprice 	=  p.recommendedprice
			  	price.panel_id			=  self.id
			  	price.pricetype 		=  p.pricetype
		  	price.save
	  	  end	
      end
      
  end
end