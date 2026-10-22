# Task Manager API

A simple REST API built using Ruby on Rails and PostgreSQL to manage tasks.

## Technologies
- Ruby on Rails (API)
- PostgreSQL
- RSpec
- RuboCop
- Brakeman
- Bundler Audit
- GitHub Actions

## Features
- Create a task
- View all tasks
- View a single task
- Update a task
- Delete a task

## Setup

```bash
git clone <your-repository-url>
cd task_manager_api
bundle install
rails db:create db:migrate
rails server
```

API base URL: `http://localhost:3000`

## Testing

```bash
bundle exec rspec
bundle exec rubocop
bundle exec brakeman --no-pager
bundle exec bundler-audit check --update
```

## CI/CD

GitHub Actions automatically runs four checks: RSpec, RuboCop, Brakeman, and Bundler Audit.

## License

For learning and practice purposes.
