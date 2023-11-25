# frozen_string_literal: true

class RequestCounter < ApplicationRecord
  validates :date, presence: true, uniqueness: true

  def inc_value
    self.value += 1
    save!
  end
end
