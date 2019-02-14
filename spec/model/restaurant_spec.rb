describe 'generateOTP' do
	context 'when contact number is valid' do
		it 'responds with otp' do
			expect(generateOtp)
		end
	end

	context 'when contact number is invalid' do
		it 'responds with error msg'
	end
end

describe 'verifyOTP' do
	context 'otp is valid' do
		it 'responds with success: 200' do
				expect(verifyOTP).to_eq "1234"

		end
	end

	context 'otp is invalid' do
		it 'responds with error' do
			expect(verifyOTP).to_not be  "1234"
		end
		it 'responds with validation for blank input' do
			expect(verifyOTP).to be_empty
		end
		it 'responds with validation for length' do
			expect(verifyOTP).to contain_exactly
	end
end

describe 'restaurant SignUp' do
	
	context 'email not entered'do
		it 'responds with error msg email required'do
			expect(response).to_exist
	end

	context 'password not entered' do
		it 'responds with error msg password required'
			expect(response).to_exist
	end

	context 'email not valid' do
		it 'responds with email required' do
			expect(response).to have_content "email" 
	end

	it 'responds with necessary regex' do
			expect(response).to_raise error ""
	end

	context 'password not valid' do
		it 'responds with error msg'
	end

	context 'contact number not recieved' do
		it 'responds with error msg' do
			expect(response)not_to contain "contactNo" 
		end
	end 

	context 'valid' do
		it 'responds with success'do
			expect(response)to have_content 
		end
	end
end

describe 'restaurant login' do
	context 'when valid creditials' do
		it 'responds with auth token' do
			expect(response)to have_content "auth token"
		end
	end

	context 'when invalid creditials' do
		it 'responds with failure in case of wrong token' do 
			expect(response)not_to contain ""
		end
	end
end


