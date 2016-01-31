## CapistranoLogger
Monitorize your production, sidekiq and puma logs throught capistrano without connect to server and find them manually.
For now you can use it when your log files located in `release_path`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano_logger'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano_logger

## Usage

  1. Add `require 'capistrano/capistrano_logger'` in your `Capfile`.
  2. Run whatever your task: `cap production rails:env_log`

## Advanced Tasks
  Production or staging log
  `cap production rails:env_log`
  or
  `cap staging rails:env_log`

  For sidekiq Log:
  `cap production rails:sidekiq_log`

  For puma error Log:
  `cap production rails:puma_error_log`

  For puma error Log:
  `cap production rails:puma_access_log`


## Contributing

1. Fork it ( https://github.com/sadikay/capistrano-logger/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
