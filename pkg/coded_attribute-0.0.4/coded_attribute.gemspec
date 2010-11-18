# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{coded_attribute}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jaden Carver"]
  s.date = %q{2010-11-10}
  s.description = %q{ActiveRecord plugin for storing coded variables}
  s.email = %q{jaden.carver@gmail.com}
  s.extra_rdoc_files = ["README", "README.rdoc", "lib/coded_attribute.rb"]
  s.files = ["MIT-LICENSE", "Manifest", "README", "README.rdoc", "Rakefile", "init.rb", "install.rb", "lib/coded_attribute.rb", "rdoc/classes/CodedAttribute.html", "rdoc/created.rid", "rdoc/files/README.html", "rdoc/files/lib/coded_attribute_rb.html", "rdoc/fr_class_index.html", "rdoc/fr_file_index.html", "rdoc/fr_method_index.html", "rdoc/index.html", "rdoc/rdoc-style.css", "test/coded_attributes_test.rb", "test/test_helper.rb", "uninstall.rb", "coded_attribute.gemspec"]
  s.homepage = %q{http://github.com/windigo/coded_attribute}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Coded_attribute", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{coded_attribute}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{ActiveRecord plugin for storing coded variables}
  s.test_files = ["test/coded_attributes_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_development_dependency(%q<activerecord>, [">= 3.0.0"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_dependency(%q<activerecord>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.0.0"])
    s.add_dependency(%q<activerecord>, [">= 3.0.0"])
  end
end
