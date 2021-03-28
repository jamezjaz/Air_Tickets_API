require 'rails_helper'

RSpec.describe Ticket, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:airline) }
  end

  context 'Ticket validations' do
    it { is_expected.to have_db_column(:airline_name) }
    it { is_expected.to have_db_column(:username) }
    it { is_expected.to have_db_column(:city) }
    it { is_expected.to have_db_column(:date) }
    it { is_expected.to have_db_column(:user_id) }
    it { is_expected.to have_db_column(:airline_id) }
  end
end