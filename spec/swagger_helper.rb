# frozen_string_literal: true

require 'rails_helper'

RSpec.configure do |config|
  config.swagger_root = Rails.root.join('swagger').to_s

  config.swagger_docs = {
    'v1/swagger.yaml' => {
      openapi: '3.0.1',
      info: {
        title: 'API V1',
        version: 'v1'
      },
      paths: {},
      servers: [
        {
          url: 'http://{defaultHost}',
          variables: {
            defaultHost: {
              default: 'localhost:3000'
            }
          }
        }
      ],
      components: {
        schemas: {
          request_counter: {
            type: 'object',
            properties: {
              id: { type: :integer },
              date: { type: :string },
              value: { type: :integer }
            },
            required: %w[id date value]
          }
        }
      }
    }
  }

  config.swagger_format = :yaml
end
