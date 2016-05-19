require 'rails_helper'

RSpec.describe Product, type: :model do
  it {is_expected.to belong_to :category}

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:description)}
  it { is_expected.to validate_presence_of(:price)}
  it { is_expected.to validate_presence_of(:maker)}
end
