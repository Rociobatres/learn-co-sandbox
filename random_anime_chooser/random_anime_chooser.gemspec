
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "random_anime_chooser/version"

Gem::Specification.new do |spec|
  spec.name          = "random_anime_chooser"
  spec.version       = RandomAnimeChooser::VERSION
  spec.authors       = ["'Rocio Batres'"]
  spec.email         = ["'jonasgirl21@gmail.com'"]

  spec.summary       = %q{This gem will get information from popular anime site 'Buzzfeed', then generate a list consisting of 32 popular animes. It will then ask the user for a random number and output a random anime from the list, providing a description if the user chooses to see it.}
  spec.homepage      = "https://github.com/Rociobatres/random_anime_chooser.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/Rociobatres/random_anime_chooser.git"
    spec.metadata["changelog_uri"] = "https://github.com/Rociobatres/random_anime_chooser.git."
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_dependency "nokogiri"

end
