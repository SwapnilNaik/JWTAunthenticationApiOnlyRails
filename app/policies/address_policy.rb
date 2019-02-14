class AddressPolicy > ApplicationPolicy
	def index?
		true
	end

	def create?
		user.present?
	end

	def update?
		return true if user.present? && user == address.user
	end

	def destroy?
		return true if user.present? && user == address.user
	end

	private 

	def address
		record
	end
end