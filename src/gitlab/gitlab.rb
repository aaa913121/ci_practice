external_url 'https://gitlab.nolin.cc'
letsencrypt['enable'] = false

# backup settings
gitlab_rails['backup_path'] = 'srv/gitlab-swarm/backup'
gitlab_rails['backup_archive_permissions'] = 0644
gitlab_rails['backup_keep_time'] = 604800

# Disable services
postgresql['enable'] = false
redis['enable'] = false
postgres_exporter['enable'] = false
redis_exporter['enable'] = false

# Postgres settings
gitlab_rails['db_adapter'] = "postgresql"
gitlab_rails['db_encoding'] = "unicode"

# database service will be named "postgres" in the stack
gitlab_rails['db_host'] = "postgres" 
gitlab_rails['db_database'] = "gitlab"
gitlab_rails['db_username'] = "gitlab"
gitlab_rails['db_password'] = "gitlab"

# Redis settings
# redis service will be named "redis" in the stack
gitlab_rails['redis_host'] = "redis"