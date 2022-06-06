# frozen_string_literal: true

module PrivateClass
  module ClassName # :nodoc:
    def inner_name
      name.split('::').last
    end
  end
end
