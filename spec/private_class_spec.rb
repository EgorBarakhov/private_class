# frozen_string_literal: true

RSpec.describe PrivateClass do
  it 'has a version number' do
    expect(PrivateClass::VERSION).not_to be_nil
  end
end
