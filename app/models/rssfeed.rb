class Rssfeed < ActiveRecord::Base
  attr_accessible :icon, :id, :numentry, :statusrow_id, :url
  belongs_to :statusrow
end
