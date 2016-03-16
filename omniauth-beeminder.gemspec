Gem::Specification.new do |gem|
  gem.name = 'omniauth-beeminder'
  gem.authors = ["Andy Brett"]
  gem.license = 'MIT'
  gem.description = %q{An omniauth strategy for Beeminder.}
  gem.email = ['andy@andybrett.com']
  gem.files = ['lib/omniauth-beeminder.rb', 'lib/omniauth/strategies/beeminder.rb', 'lib/omniauth-beeminder/version.rb']
  gem.homepage = 'https://github.com/beeminder/omniauth-beeminder'
  gem.require_paths = ['lib']
  gem.summary = %q{Omniauth strategy for Beeminder}
  gem.add_dependency 'omniauth-oauth2', ['>= 1.1.1']
  gem.version = "0.1.2"
end
