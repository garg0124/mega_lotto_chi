# frozen_string_literal: true

require_relative "lib/mega_lotto_chi/version"

Gem::Specification.new do |spec|
  spec.name = "mega_lotto_chi"
  spec.version = MegaLottoChi::VERSION
  spec.authors = ["Manasvi Garg"]
  spec.email = ["manasvi.garg@unthinkable.co"]

  spec.summary = %q{A ruby gem to generate lottery drawings.}
  spec.description = %q{MegaLotto is a gem which draws an array of 6 random integers between 0 to 60(excluding).}
  spec.homepage = "https://github.com/garg0124/mega_lotto_chi"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "rails"
  spec.add_development_dependency "bundler", "~> 2.3.7"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
