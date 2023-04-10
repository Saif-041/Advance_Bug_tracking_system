require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

RSpec.describe 'User' do
  context 'before create' do  # (almost) plain English
    before { User.create!(id: 100) }
    it 'cannot have bugs' do
      expect { User.create.bugs.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end
  end
end
