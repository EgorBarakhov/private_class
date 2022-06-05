# PrivateClass

This gem allows you to restrict visible scope of a class like you could do with methods

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add private_class

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install private_class

## Usage

Version 0.0.1
```ruby
module YourNamespace
  class YourClass
    def your_proxy_method
      private_class.your_method
    end

    private def private_class
      @private_class ||= YourPrivateClass.new
    end

    private_class YourPrivateClass
      def your_method
        'Hello World'
      end
    end
  end
end
```

Version 0.1.0
```ruby
module YourNamespace
  class YourClass
    def your_proxy_method
      private_class.your_method
    end

    private def private_class
      @private_class ||= YourPrivateClass.new
    end

    private class YourPrivateClass
      def your_method
        'Hello World'
      end
    end
  end
end
```

Version 0.2.0
```ruby
module YourNamespace
  class YourClass
    def your_proxy_method
      private_class.your_method
    end

    private

    def private_class
      @private_class ||= YourPrivateClass.new
    end

    class YourPrivateClass
      def your_method
        'Hello World'
      end
    end
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/EgorBarakhov/private_class. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/EgorBarakhov/private_class/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PrivateClass project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/EgorBarakhov/private_class/blob/master/CODE_OF_CONDUCT.md).
