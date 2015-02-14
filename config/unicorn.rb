working_directory "/home/deployer/apps/e_verification/current"
pid "/home/deployer/apps/e_verification/current/tmp/pids/unicorn.pid"
stderr_path "/home/deployer/apps/e_verification/current/log/unicorn.log"
stdout_path "/home/deployer/apps/e_verification/current/log/unicorn.log"

#listen 80, :tcp_nopush => true
listen "/tmp/unicorn.e_verification.sock"
worker_processes 2
timeout 30
