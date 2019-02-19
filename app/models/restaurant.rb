class Restaurant < ApplicationRecord
  attr_accessor :password
	
	validates :poc_contactno, presence: true, numericality: { only_integer: true }
	validates :poc_contactno, uniqueness: true
	#validates :poc_email, presence: true
	#validates :password_digest, presence: true

end
