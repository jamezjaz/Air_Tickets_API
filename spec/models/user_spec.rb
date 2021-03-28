require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'James Odufu', email: 'jamezjaz@gmail.com', username: 'Jamezjaz') }

  before { subject.save }

  context 'associations' do
    it { should have_many(:airlines) }
    it { should have_many(:tickets) }
  end

  context 'User validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :username }
    it { should validate_presence_of :password }

    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'name should be present' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'name should be present' do
      subject.username = nil
      expect(subject).to_not be_valid
    end

    it 'password should not be too short' do
      subject.password = 'asdf'
      expect(subject).to_not be_valid
    end

    it 'password should not be too long' do
      subject.password = 'a' * 41
      expect(subject).to_not be_valid
    end

    it 'email should allow valid values' do
      subject.email = 'jaz.gmail.com'
      expect(subject).to_not be_valid
    end
  end
end
