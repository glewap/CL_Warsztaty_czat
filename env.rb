require 'active_record'

Dir.glob('./models/*.rb').each do |file|
  require file
end

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'czat_db'
  )