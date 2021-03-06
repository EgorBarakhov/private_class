# frozen_string_literal: true

require_relative 'lib/private_class/version'

Gem::Specification.new do |spec|
  spec.name = 'private_class'
  spec.version = PrivateClass::VERSION
  spec.authors = ['Egor Barakhov']
  spec.email = ['egor.barakhov@flatstack.com']

  spec.summary = 'May your classes be private'
  spec.description = 'Allows you to change visibility of class in Ruby'
  spec.homepage = 'https://github.com/EgorBarakhov/private_class'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.1.0'

  spec.metadata['rubygems_mfa_required'] = 'true'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/EgorBarakhov/private_class'
  spec.metadata['changelog_uri'] = 'https://github.com/EgorBarakhov/private_class/blob/master/CHANGELOG.md'
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*.rb'
  ]
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency 'example-gem', '~> 1.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.21'
  spec.add_development_dependency 'rubocop-rake', '~> 0.6'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.11'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
