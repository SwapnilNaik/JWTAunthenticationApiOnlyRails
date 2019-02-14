class Restaurant < ApplicationRecord
	validate :poc_contact_no, presence: true, numericality
end
