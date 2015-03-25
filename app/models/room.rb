class Room < ActiveRecord::Base
  attr_accessible :code, :inpatientroomcategory_id, :name, :price_code, :vacantstat_id, :floorlevel_id
  
  belongs_to :inpatientroomcategory
  has_many :inpatientrecords
  belongs_to :vacantstat
  belongs_to :floorlevel
  
  
  has_many :roomreservations

  public
    def label
      self.name + ' - ' + Vacantstat.find_by_id(vacantstat_id).name
    end
end
