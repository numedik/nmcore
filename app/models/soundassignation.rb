class Soundassignation < ActiveRecord::Base
  attr_accessible :id, :sound_id, :soundevent_id, :value
  belongs_to :soundevent
  belongs_to :sound

end
