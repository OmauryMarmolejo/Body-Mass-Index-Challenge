require 'rails_helper'

RSpec.describe Consult, type: :model do
  describe Consult do
    it {is_expected.to validate_presence_of(:height)}
    it {is_expected.to validate_presence_of(:body)}
  end
end
