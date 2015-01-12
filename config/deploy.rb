SSHKit.config.command_map[:rake] = "bundle exec rake"
# config valid only for Capistrano 3.1
lock '3.1.0'
set :application, 'e_verification'                       # application name
set :repo_url, 'git@github.com:sudorails/e_verification.git'   # your repo url
set :deploy_to, '/home/deployer/apps/e_verification'
# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
set :scm, :git
set :branch, 'master'
# Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/var/www/my_app'
# Default value for :scm is :git
# set :scm, :git
set :keep_releases, 5
# Default value for :format is :pretty
# set :format, :pretty
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
# Default value for :log_level is :debug
set :log_level, :debug

# Default value for :pty is false
# set :pty, true
set :format, :pretty
set :log_level, :debug
set :pty, true
set :rvm1_ruby_version, "ruby-2.1.5"
# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
#set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :default_env, { rvm_bin_path: '~/.rvm/bin' }

# Default value for keep_releases is 5
# set :keep_releases, 5
# set :puma_rackup, -> { File.join(current_path, 'config.ru') }
# set :puma_state, "#{shared_path}/tmp/pids/puma.state"
# set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
# set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock"
# set :puma_conf, "#{shared_path}/puma.rb"
# set :puma_access_log, "#{shared_path}/log/puma_error.log"
# set :puma_error_log, "#{shared_path}/log/puma_access.log"
# set :puma_role, :app
# set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
# set :puma_threads, [0, 16]
# set :puma_workers, 0
# set :puma_init_active_record, true
# set :puma_preload_app, true

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
