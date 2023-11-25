# frozen_string_literal: true

class UrlsController < ApplicationController
  before_action :set_current_counter, only: %i[short_url stats]

  def create
    render json: { short_url: "#{base_url}/urls/short_url" }
  end

  def short_url
    @request_counter.inc_value

    render json: { long_url: "#{base_url}/urls/short_url/stats" }
  end

  def stats
    render json: { requests_count: @request_counter.value }
  end

  private

  def set_current_counter
    date_today = Time.current.strftime('%F')
    @request_counter = RequestCounter.find_or_create_by(date: date_today)
  end
end
