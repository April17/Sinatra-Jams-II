class Artist < ActiveRecord::Base
  has_many :artinsts
  has_many :instruments, through: :artinsts
end
