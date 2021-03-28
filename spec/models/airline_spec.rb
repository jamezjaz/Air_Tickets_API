require 'rails_helper'

RSpec.describe Airline, type: :model do
  subject { Airline.new(name: 'Air Peace', price: '$750.45', location: 'Lagos, Nigeria', description: 'One of 5 top airlines in Nigeria, 2018')}

  before { subject.save }

  context 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:tickets) }
  end

  context 'Airline validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :price }
    it { should validate_presence_of :location }
    it { should validate_presence_of :description }

    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'valid if name is present' do
      subject.name = 'Air Peace'
      expect(subject).to be_valid
    end

    it 'price should be present' do
      subject.price = nil
      expect(subject).to_not be_valid
    end

    it 'location should be present' do
      subject.location = nil
      expect(subject).to_not be_valid
    end

    it 'description should be present' do
      subject.description = nil
      expect(subject).to_not be_valid
    end

    it 'image must not be present' do
      subject.image = nil
      expect(subject).to be_valid
    end
  end
end