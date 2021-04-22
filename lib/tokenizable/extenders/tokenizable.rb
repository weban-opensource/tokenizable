# frozen_string_literal: true

module Tokenizable
  module Extenders
    module Tokenizable
      def tokenizable
        class_eval do
          has_many :tokens, class_name: 'Tokenizable::Token', as: :ownerable

          def summary_tokens_use
            tokens.sum(:used)
          end
        end

        extend ::Tokenizable::Extenders::ClassMethods
      end
    end

    module ClassMethods
      def by_token(jwt_token)
        owner = ::Tokenizable.owner_by_token(jwt_token)
        raise ActiveRecord::RecordNotFound unless owner.is_a?(self)

        owner
      end
    end
  end
end
