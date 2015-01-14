# LogIt

Simple ubiquitous method to write to the log. Writing out Rails.logger.info is way too hard. This is easier. And it has colors, so.... yay.

## Installation

Add to this to your Gemfile and then bundle

```ruby
gem 'log_it'
```

Initialize it with

```
rails g log_it:install
```

## Usage

```ruby
logit "HERES A LOGIT STATEMENT", color: :red
logit "info", lvl:1, :color => :red
logit "info plain", lvl: 'info'
logit "Again with teh info", lvl: :info
logit "Rails.logger.fatal by severity", severity: 4
```

## More Readings
Read up on the possible log levels (aka severities) on the Rails docs [here](http://guides.rubyonrails.org/debugging_rails_applications.html#log-levels).

Logit relies on the Colorize gem for its prettiness. If you want to see the possible colors you can send to Logit run `String.colors` in your Rails Console