# Tokenizable
Short description and motivation.

## Use example
```ruby
class User < ApplicationRecord
  tokenizable
end
```

Create token and present for user
```ruby
...
user = User.last
token = user.tokens.create
token.to_s # Send to the user
...
```

Find owner by token
```ruby
User.by_token(token)
# Or
Tokenizable.owner_by_token(token)
```

Check how many times token has been used
```ruby
token.used
# Or summary for all owner tokens
user.summary_tokens_use
```


## Installation

```ruby
gem 'tokenizable'
```

Copy migrations
```copy migrations
rails tokenizable:install:migrations
```

