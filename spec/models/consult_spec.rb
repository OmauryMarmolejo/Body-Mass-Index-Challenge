require 'rails_helper'

RSpec.describe Consult, type: :model do
  it{is_expected.to validate_presence_of(:height)}
  it{is_expected.to validate_presence_of(:mass)}
  it{is_expected.to belong_to(:user)}
end
