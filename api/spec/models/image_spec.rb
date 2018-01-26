require 'rails_helper'

RSpec.describe Image, type: :model do
  
  it { should belong_to(:category) }

  it { should validate_presence_of(:iname) }
  it { should validate_presence_of(:url) }

end
