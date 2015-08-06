class Document < ActiveRecord::Base
  belongs_to :documenttype
  belongs_to :patient
  belongs_to :user
  belongs_to :documentstat
end
