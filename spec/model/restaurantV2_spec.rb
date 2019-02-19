require 'rails_helper'
describe Restaurant, :type => :model do
  it { should validate_presence_of(:poc_contactno)}
  it { should validate_uniqueness_of(:poc_contactno)}
  it { should validate_numericality_of(:poc_contactno).only_integer}
  it { should validate_length_of(:poc_contactno).is_equal_to(10)}
  it { should validate_length_of(:password_digest).to be_between(5,15).inclusive}
  it { should validate_presence_of(:poc_email)}
  it { should validate_presence_of(:password_digest)}

  describe 'verifying OTP' do
    context 'with otp as an input' do
      it 'should detect if otp entered is valid' do
        rs = Restaurant.new
        otp = '123456'
        expect(rs.isOtpValid? otp).to be true
        
      end

      it 'should detect if otp entered is invalid' do
        rs = Restaurant.new
        otp = '3456'
        expect(rs.isOtpValid? otp).to be false
      end
    end
  end

  describe 'restaurant SignUp' do
    context 'with email as input' do
      it 'should detect if email entered satifies the given regex' do 
        poc_email = 'abc@das.com'
        expect(poc_email).to match(/\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/)
      end

      it 'should detect if email entered does not satify the given regex' do 
        poc_email = 'abc1das,com'
        expect(poc_email).to_not match(/\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/)
      end
    end

    context 'with password as input' do
      it 'should detect if password satifies the regex'do
        password_digest = 'Abcdf1'
        expect(password_digest).to match(/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,15}$/)
      end
      it 'should detect if password does not satify the regex'do
        password_digest = 'abc'
        expect(password_digest).to_not match(/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,15}$/)
      end
    end
  end
end