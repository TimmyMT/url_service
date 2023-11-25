# frozen_string_literal: true

module ApiHelper
  def response_body
    JSON.parse(response.body)
  end
end
