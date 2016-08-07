page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

activate :dotenv
activate :directory_indexes
activate :asset_host

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  set :asset_host, '//cdn.ferperales.net'
end

activate :cloudfront do |cf|
  cf.access_key_id = ENV['CLOUDFRONT_ACCESS_KEY']
  cf.secret_access_key = ENV['CLOUDFRONT_SECRET_ACCESS_KEY']
  cf.distribution_id = ENV['CLOUDFRONT_DISTRIBUTION_ID']
  cf.after_build = true
end
