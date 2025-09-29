Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # React frontend hosted on Render & localhost for dev
    origins 'https://b-crud.onrender.com', 'http://localhost:3000'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
