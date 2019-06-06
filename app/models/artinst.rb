class Artinst < ActiveRecord::Base
  belongs_to :artist 
  belongs_to :instrument
end
