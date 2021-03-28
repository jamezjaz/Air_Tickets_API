require 'rails_helper'

describe 'ticket routes' do
  it 'should route to ticket creation' do
    expect(post('/tickets')).to route_to('tickets#create')
  end

  it 'should route to list of all tickets' do
    expect(get('/tickets')).to route_to('tickets#index')
  end
end