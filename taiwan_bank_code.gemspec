# coding: utf-8
$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "taiwan_bank_code/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "taiwan_bank_code"
  s.version     = TaiwanBankCode::VERSION
  s.authors     = ["陳家陞"]
  s.email       = ["qitar888@gmail.com"]
  s.homepage    = "https://github.com/qitar888/taiwan_bank_code"
  s.description = "A gem providing the select helper for all the banks and their representing code in Taiwan."
  s.summary     = "A gem providing the select helper for all the banks and their representing code in Taiwan."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.5"
end
