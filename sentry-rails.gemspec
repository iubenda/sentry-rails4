require_relative "lib/sentry/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "sentry-rails4"
  spec.version       = Sentry::Rails::VERSION
  spec.authors = ["stefano.gessa@iubenda.com", "Sentry Team"]
  spec.description = spec.summary = "A gem that provides Rails 4 integration for the Sentry error logger"
  spec.email = "stefano.gessa@iubenda.com"
  spec.license = 'MIT'
  spec.homepage = "https://github.com/iubenda/sentry-rails4"

  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.4'
  spec.extra_rdoc_files = ["README.md", "LICENSE.txt"]
  spec.files = `git ls-files | grep -Ev '^(spec|benchmarks|examples)'`.split("\n")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 4.0.13"
  spec.add_dependency "sentry-ruby-core", "~> 4.9.1"
end
