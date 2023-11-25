require 'swagger_helper'

describe 'urls API' do
  path '/urls' do
    post 'returns short_url' do
      tags 'Urls'
      produces 'application/json'

      response '200', "render json with short url" do
        schema type: :object,
          properties: {
            short_url: { type: :string }
          },
          required: [ 'short_url' ]

        run_test! do
          expect(response_body).to eq("short_url" => "www.example.com/urls/short_url")
        end
      end
    end
  end

  path '/urls/short_url' do
    get 'return long_url' do
      tags 'Urls'
      produces 'application/json'

      it 'check request_counter before' do
        expect(RequestCounter.count).to eq(0)
      end

      response '200', "render json with long url" do
        schema type: :object,
          properties: {
            long_url: { type: :string }
          },
          required: [ 'long_url' ]

        run_test! do
          expect(RequestCounter.count).to eq(1)
          expect(RequestCounter.last.value).to eq(1)
          expect(response_body).to eq("long_url" => "www.example.com/urls/short_url/stats")
        end
      end
    end
  end

  path '/urls/short_url/stats' do
    get 'return requests_count' do
      tags 'Urls'
      produces 'application/json'

      it 'check request_counter before' do
        expect(RequestCounter.count).to eq(0)
      end

      response '200', "render json with requests count" do
        schema type: :object,
          properties: {
            requests_count: { type: :integer }
          },
          required: [ 'requests_count' ]

        run_test! do
          expect(RequestCounter.count).to eq(1)
          expect(RequestCounter.last.value).to eq(0)
          expect(response_body).to eq("requests_count" => 0)
        end
      end
    end
  end
end
