require 'rails_helper'

describe 'registration routes' do
  it 'should route to user\s registeration' do
    expect(post('auth/register')).to route_to('users#register')
  end

  it 'should route to user\s login' do
    expect(post('auth/login')).to route_to('users#login')
  end
end