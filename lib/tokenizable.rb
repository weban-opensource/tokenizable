require "tokenizable/version"
require "tokenizable/engine"
require "tokenizable/extenders/tokenizable"

ActiveRecord::Base.extend Tokenizable::Extenders::Tokenizable

module Tokenizable
  mattr_accessor :token_salt

  def self.owner_by_token(jwt_token)
    Token.owner(jwt_token)
  end
end
