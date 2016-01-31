namespace :rails do
  desc 'Tail rails env logs from server'
  task :env_log do
    SSHKit.config.output_verbosity = Logger::DEBUG
    on roles(:app) do
      execute "tail -f #{release_path}/log/#{fetch(:rails_env)}.log"
    end
  end

  desc 'Tail sikdekiq env logs from server'
  task :sidekiq_log do
    SSHKit.config.output_verbosity = Logger::DEBUG
    on roles(:app) do
      execute "tail -f #{release_path}/log/sidekiq.log"
    end
  end

  desc 'Tail puma error logs from server'
  task :puma_error_log do
    SSHKit.config.output_verbosity = Logger::DEBUG
    on roles(:app) do
      execute "tail -f #{release_path}/log/puma.error.log"
    end
  end

  desc 'Tail puma access logs from server'
  task :puma_access_log do
    SSHKit.config.output_verbosity = Logger::DEBUG
    on roles(:app) do
      execute "tail -f #{release_path}/log/puma.access.log"
    end
  end
end
