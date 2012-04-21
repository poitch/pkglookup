require 'rubygems' unless Object.const_defined?(:Gem)
require File.dirname(__FILE__) + "/lib/pkglookup/version"

Gem::Specification.new do |spec|
    spec.name = "pkglookup"
    spec.version = PkgLookup::VERSION
    spec.authors = ["Jerome Poichet"]
    spec.email = "poitch@gmail.com"
    spec.homepage = "http://github.com/poitch/pkglookup"
    spec.summary = "Looks up packages on PyPI, CPAN, RubyGems, NPM, Maven Central, Clojars, GitHub, Bitbucket, Ubuntu, Arch User Repository, FreeBSD ports, Fedora and Homebrew."
    spec.description = "Packages lookup

Looks up packages on PyPI, CPAN, RubyGems, NPM, Maven Central, Clojars, GitHub, Bitbucket, Ubuntu, Arch User Repository, FreeBSD ports, Fedora and Homebrew.

This is a command line client for the pkglookup http://labs.floatboth.com/pkglookup/"
    spec.executables = %w(pkglookup)
    spec.add_dependency 'json'
    spec.add_dependency 'hirb'
    spec.add_dependency 'gems'
    spec.files = Dir.glob(%w[{lib}/**/*.rb bin/*])
    spec.require_paths << "lib"
end

