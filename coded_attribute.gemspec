# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{coded_attribute}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jaden Carver"]
  s.date = %q{2010-11-06}
  s.description = %q{ActiveRecord plugin for storing coded variables}
  s.email = %q{jaden.carver@gmail.com}
  s.extra_rdoc_files = ["README", "lib/coded_attributes.rb"]
  s.files = ["MIT-LICENSE", "Manifest", "README", "Rakefile", "coded_attribute.gemspec", "init.rb", "install.rb", "lib/coded_attributes.rb", "rdoc/CodedAttributes.html", "rdoc/README.html", "rdoc/created.rid", "rdoc/images/brick.png", "rdoc/images/brick_link.png", "rdoc/images/bug.png", "rdoc/images/bullet_black.png", "rdoc/images/bullet_toggle_minus.png", "rdoc/images/bullet_toggle_plus.png", "rdoc/images/date.png", "rdoc/images/find.png", "rdoc/images/loadingAnimation.gif", "rdoc/images/macFFBgHack.png", "rdoc/images/package.png", "rdoc/images/page_green.png", "rdoc/images/page_white_text.png", "rdoc/images/page_white_width.png", "rdoc/images/plugin.png", "rdoc/images/ruby.png", "rdoc/images/tag_green.png", "rdoc/images/wrench.png", "rdoc/images/wrench_orange.png", "rdoc/images/zoom.png", "rdoc/index.html", "rdoc/js/darkfish.js", "rdoc/js/jquery.js", "rdoc/js/quicksearch.js", "rdoc/js/thickbox-compressed.js", "rdoc/lib/coded_attributes_rb.html", "rdoc/rdoc.css", "test/coded_attributes_test.rb", "test/test_helper.rb", "uninstall.rb"]
  s.homepage = %q{http://github.com/windigo77/coded_attribute}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Coded_attribute", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{coded_attribute}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{ActiveRecord plugin for storing coded variables}
  s.test_files = ["test/test_helper.rb", "test/coded_attributes_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
