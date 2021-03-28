require 'rails_helper'

describe 'airline routes' do
  it 'should route to airline creation' do
    expect(post('/airlines')).to route_to('airlines#create')
  end

  it 'should route to list of all airlines' do
    expect(get('/airlines')).to route_to('airlines#index')
  end
end
