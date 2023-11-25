# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RequestCounter, type: :model do
  let(:request_counter) { build :request_counter }

  it 'check default build' do
    expect(request_counter.valid?).to eq(true)
  end

  context '#inc_value' do
    let(:request_counter) { create :request_counter }

    it 'change value' do
      expect(request_counter.value).to eq(0)
      request_counter.inc_value
      expect(request_counter.value).to eq(1)
    end
  end
end
