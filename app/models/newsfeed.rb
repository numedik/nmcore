class Newsfeed < ActiveRecord::Base
  attr_accessible :feedurl, :icon, :numentry, :statusrow_id
end
