# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name              = "ennui"
  s.version           = "0.0.1"
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["Todd Mohney"]
  s.email             = ["toddmohney@gmail.com"]
  s.homepage          = "https://github.com/toddmohney/ennui"
  s.summary           = "A gem for when you just don't care about what's executed"
  s.description       = "Ennui provides a library of predicates which return true at various frequencies."
  s.license           = "MIT"
  s.rubyforge_project = s.name

  s.required_rubygems_version = ">= 1.3.6"

  # The list of files to be contained in the gem
  s.files         = `git ls-files`.split("\n")
  # s.executables   = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  # s.extensions    = `git ls-files ext/extconf.rb`.split("\n")

  s.require_path = 'lib'
  s.post_install_message = "Eh, whatever."
end
