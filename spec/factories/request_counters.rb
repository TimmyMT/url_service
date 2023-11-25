# frozen_string_literal: true

FactoryBot.define do
  factory :request_counter, class: RequestCounter do
    date { Time.current.strftime('%F') }
  end
end
