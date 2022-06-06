# frozen_string_literal: true

module PrivateClass
  module Mixin # :nodoc:
    private

    def private(key = nil)
      puts '`private`` method called in `PrivateClass::Mixin`'
      puts "key: #{key.inspect}"
      super
    end
  end
end
