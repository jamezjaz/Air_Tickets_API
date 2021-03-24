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
    response = { message: 'User created successfully'}
    render json: response, status: :created 
   else
    render json: @user.errors, status: :bad
   end 
  end

  private

  def authenticate(email, password)
    command = AuthenticateUser.call(email, password)

    if command.success?
      render json: {
        access_token: command.result,
        message: 'Login Successful'
      }
    else
      render json: { error: command.errors }, status: :unauthorized
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
