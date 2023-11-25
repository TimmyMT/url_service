# frozen_string_literal: true

class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  private

  def base_url
    Rails.application.routes.default_url_options[:host]
  end
end
