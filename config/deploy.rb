# frozen_string_literal: true

lock '3.11.2'

set :repo_url, ENV.fetch('REPO', 'https://git.qoto.org/qoto/qoto.git')
set :branch, ENV.fetch('BRANCH', 'qoto')

set :application, 'mastodon'
set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip
set :migration_role, :app

append :linked_files, '.env.production', 'public/robots.txt'
append :linked_dirs, 'vendor/bundle', 'node_modules', 'public/system'
