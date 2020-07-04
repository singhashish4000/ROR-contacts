require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe '#email' do
  
    it 'validates presence' do
      record = Contact.new
      record.email = '' # invalid state
      record.valid? # run validations
      expect(record.errors[:email]).to include("can't be blank") # check for presence of error

      record.email = 'foo@bar.com' # valid state
      record.valid? # run validations
      expect(record.errors[:email]).to_not include("can't be blank") # check for absence of error
    end
    
  end

  describe '#first_name' do
  
    it 'validates presence' do
      record = Contact.new
      record.first_name = '' # invalid state
      record.valid? # run validations
      expect(record.errors[:email]).to include("can't be blank") # check for presence of error

      record.first_name = 'foo' # valid state
      record.valid? # run validations
      expect(record.errors[:first_name]).to_not include("can't be blank") # check for absence of error
    end
    
  end

  describe '#last_name' do
  
    it 'validates presence' do
      record = Contact.new
      record.last_name = '' # invalid state
      record.valid? # run validations
      expect(record.errors[:last_name]).to include("can't be blank") # check for presence of error

      record.last_name = 'bar' # valid state
      record.valid? # run validations
      expect(record.errors[:last_name]).to_not include("can't be blank") # check for absence of error
    end
    
  end

  describe '#message' do
  
    it 'validates presence' do
      record = Contact.new
      record.message = '' # invalid state
      record.valid? # run validations
      expect(record.errors[:email]).to include("can't be blank") # check for presence of error

      record.message = 'foo bar' # valid state
      record.valid? # run validations
      expect(record.errors[:message]).to_not include("can't be blank") # check for absence of error
    end
    
  end
end