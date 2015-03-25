class Labreport < ActiveRecord::Base
  attr_accessible :labpriority_id, :remark, :reportstat_id, :reporttype_id, :requestcompleted, :requestdate, :requester_id, :treatment_id, :user_id
  
  belongs_to :labpriority
  belongs_to :reportstat
  belongs_to :reporttype
  
  belongs_to :user, :foreign_key => "requester_id"
  belongs_to :treatment
  belongs_to :user
  
  belongs_to :requester, :class_name=>"User", :foreign_key=>:requester_id
  has_many :labresults
  
  def reporttypename
  	"#{self.reporttype.name rescue 'no data - (new format)' }"  
  end
  
  def treatment_labreport
  	"#{id}_#{reporttype_id}"
  end
  
  #upload img
  def self.saveimages(upload,name)
    #name =  name #upload['datafile'].original_filename
    directory = "public/lab-attachments/"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload.read) }
  end
  
end
