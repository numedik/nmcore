run   = Rails.env.match(/production|development/)
run &&= File.split($0).last != 'rake'
run &&= !(defined? Rails::Console)
run ||= ENV['ES'].present?
run = true
if run
  host = ENV['ES'] || "192.168.0.22"
  Tire::Configuration.url "http://#{host}:9200"
end

ES_ENABLED = run
