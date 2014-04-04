require 'spec_helper'

describe Building do
  before(:each) do
    FactoryGirl.create(:building)
  end
  it { should validate_presence_of(:street_address) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should ensure_inclusion_of(:state).in_array(Building::STATES)}
  it { should ensure_inclusion_of(:owner).in_array(Owner.all.full_name)}
end
