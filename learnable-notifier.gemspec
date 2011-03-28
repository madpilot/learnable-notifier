# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{learnable-notifier}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Myles Eftos"]
  s.date = %q{2011-03-29}
  s.default_executable = %q{learnable-notify}
  s.description = %q{A little application that check the Learnable RSS feed and posts new messages to prowl. Use it in a cronjob - tested on OSX and Linux.}
  s.email = %q{myles@madpilot.com.au}
  s.executables = ["learnable-notify"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "Gemfile",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/learnable-notify",
     "learnable-notifier.gemspec",
     "lib/command_line.rb",
     "lib/learnable-notifier.rb",
     "test/helper.rb",
     "test/test_learnable-notifier.rb"
  ]
  s.homepage = %q{http://github.com/madpilot/learnable-notifier}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A little application that check the Learnable RSS feed and posts new messages to prowl}
  s.test_files = [
    "test/helper.rb",
     "test/test_learnable-notifier.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, [">= 0"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<prowler>, ["~> 1.2"])
      s.add_runtime_dependency(%q<feedzirra>, [">= 0"])
      s.add_runtime_dependency(%q<clamp>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<prowler>, ["~> 1.2"])
      s.add_dependency(%q<feedzirra>, [">= 0"])
      s.add_dependency(%q<clamp>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<prowler>, ["~> 1.2"])
    s.add_dependency(%q<feedzirra>, [">= 0"])
    s.add_dependency(%q<clamp>, [">= 0"])
  end
end

