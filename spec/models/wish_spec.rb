require 'rails_helper'

RSpec.describe Wish, :type => :model do
  it 'is invalid without a title' do
      wish = Wish.new(title: nil)
      expect(wish).not_to be_valid
    end
end
