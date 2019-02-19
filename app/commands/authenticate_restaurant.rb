class AuthenticateRestaurant
  prepend SimpleCommand

  def initialize(otp)
    @otp = otp
  end

  def call
    JsonWebToken.encode(rest_id: restaurant.id) if restaurant
  end

  private

  attr_accessor :otp

    def restaurant
    restaurant = Restaurant.find_by_otp(otp)
    return restaurant if restaurant

    errors.add :rest_authentication, 'invalid otp'
    nil
  end
end
