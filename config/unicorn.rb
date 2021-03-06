# config/unicorn.rb
appname = "nmcore"
working_directory "/#{appname}"
pid "/#{appname}/pids/unicorn.pid"
stderr_path "/#{appname}/log/unicorn.log"
stdout_path "/#{appname}/log/unicorn.log"
#listen "/tmp/unicorn.#{appname}.sock", :backlog => 64
listen ENV['EXPOSEPORT'], :tcp_nopush => true

worker_processes Integer(ENV["WEB_CONCURRENCY"] || 1)
timeout 60
preload_app true

before_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end
