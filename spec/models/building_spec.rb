require 'spec_helper'

describe Building do
  it { should belong_to :owner }

  it { should validate_presence_of(:street_address) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should ensure_inclusion_of(:state).in_array(Building::STATES)}
end
