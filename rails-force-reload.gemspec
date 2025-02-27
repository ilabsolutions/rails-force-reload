$:.push File.expand_path("../lib", __FILE__)

require "rails-force-reload/version"

Gem::Specification.new do |s|

  s.name          = "rails-force-reload"
  s.version       = RailsForceReload::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Frank Koehl"]
  s.email         = ["fkoehl@gmail.com"]
  s.summary       = "Restore force_reload argument on ActiveRecord collection associations"
  s.description   = <<-EOF
    Starting in v5.0, Rails removed the `force_reload` option from ActiveRecord association readers. This gem adds that functionality back in.
  EOF
  s.homepage      = "https://github.com/battlebrisket/rails-force-reload"
  s.license       = "MIT"
  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.test_files    = Dir["test/**/*"]
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'activerecord', '>= 5.0', '< 6.1'

  s.add_development_dependency 'activerecord', '>= 5.0', '< 6.1'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rake'
  s.add_development_dependency "appraisal"
  s.add_development_dependency 'pry-byebug', '>= 0'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency "activesupport"

  # Rails 5.0 onward requires Ruby 2.2.2
  s.required_ruby_version = '>= 2.2.2'

end
