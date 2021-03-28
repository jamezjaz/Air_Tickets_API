require 'rails_helper'

RSpec.describe Airline, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:tickets) }
  end
end