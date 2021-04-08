# rubocop:disable Style/UnlessElse

class UsersController < ApplicationController
  before_action :authenticate_request, except: %i[login register]

  def index
    render json: User.all
  end

  def login
    authenticate params[:email], params[:password]
  end

  def test
    render json: {
      message: 'You have passed authentication and authorization test'
    }
  end

  # POST /register
  def register
    @user = User.create(user_params)
    if @user.save
      response = { message: 'User created successfully' }
      render json: response, status: :created
    else
      render json: @user.errors, status: :bad
    end
  end

  private

  def authenticate(email, password)
    command = AuthenticateUser.new(email, password)
    command = command.call

    unless command[:authenticate_errors]
      render json: {
        access_token: command[:token],
        user: command[:user],
        message: 'Login Successful'
      }
    else
      render json: { error: command[:authenticate_errors] }, status: :unauthorized
    end
  end

  def user_params
    params.permit(
      :name,
      :email,
      :password,
      :username
    )
  end
end

# rubocop:enable Style/UnlessElse
