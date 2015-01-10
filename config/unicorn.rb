# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/home/deployer/apps/e_verification"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/deployer/apps/e_verification/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/home/deployer/apps/e_verification/log/unicorn.log"
stdout_path "/home/deployer/apps/e_verification/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.[app name].sock"
listen "/tmp/unicorn.e_verification.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30
