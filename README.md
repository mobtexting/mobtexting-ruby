# ruby plugin for mobtexting

This package makes it easy to send [Mobtexting notifications](https://mobtexting.com).

## Installation

Add the dependency to your Gemfile

`gem 'mobtexting_sms', :git => 'https://github.com/mobtexting/mobtexting-ruby.git'`

Then run:
``` bash
bundle install
```

## Send SMS Usage

```ruby
require "mobtexting_sms"

access_token = 'xxxxxxxxxxxxxxxxx'

client = MobtextingSms::Client.new(access_token)
response = client.send(
        '1234567890',
        'MobTxt',
        'hello from ruby!',
        'P'
)

puts(response)

```

## Verify Usage

### Send

```ruby
verify = MobtextingSms::Verify.new(access_token)
response = verify.send('1234567890')
puts(response)
```

### Check

```ruby
verify = MobtextingSms::Verify.new(access_token)
response = verify.check('705f1cd4-93e0-492e-b6f8-ffdf9dac68f5')
puts(response)
```

### Cancel
```ruby
verify = MobtextingSms::Verify.new(access_token)
response = verify.cancel('705f1cd4-93e0-492e-b6f8-ffdf9dac68f5') 
puts(response)
```
