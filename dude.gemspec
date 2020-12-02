require_relative 'lib/dude/version'

Gem::Specification.new do |spec|
  spec.name          = "dude-cli"
  spec.version       = Dude::VERSION
  spec.authors       = ["Nikita Pupko"]
  spec.email         = ["work.pupko@gmail.com"]

  spec.summary       = %q{A daily assistant in the hard work of a programmer.}
  spec.description   = %q{This program helps to combine such services as Gitlab, Toggl and git and replace most routine activities with one simple CLI utility.}
  spec.homepage      = "https://github.com/npupko/dude"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/npupko/dude"
  spec.metadata["changelog_uri"] = "https://github.com/npupko/dude/blob/master/CHANGELOG.md"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "bin"
  spec.executables   = ["dude"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'dry-cli', '>= 0.6'
  spec.add_runtime_dependency "faraday", "~> 1.1"
  spec.add_runtime_dependency "colorize", "~> 0.8.1"
  spec.add_runtime_dependency "jira-ruby", "~> 2.1"

  spec.add_development_dependency 'pry', '~> 0.13.1'
end
