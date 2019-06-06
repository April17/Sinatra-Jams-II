class Instrument < ActiveRecord::Base
  has_many :artinsts
  has_many :artists, through: :artinsts
end
