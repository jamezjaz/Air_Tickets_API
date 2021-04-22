# rubocop:disable Style/SafeNavigation

class AuthenticateUser
  # prepend SimpleCommand
  attr_accessor :email, :password

  # this is where parameters are taken when the command is called
  def initialize(email, password)
    @email = email
    @password = password
  end

  # this is where the result gets returned
  def call
    return user if user[:authenticate_errors]

    json_web_token = { token: JsonWebToken.encode(user_id: user.id), user: user }
    json_web_token
  end

  private

  def user
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)

    { authenticate_errors: { user_authentication: 'Invalid credentials' } }
  end
end

# rubocop:enable Style/SafeNavigation
