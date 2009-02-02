# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{docusign}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Leigh Caplan"]
  s.date = %q{2009-02-01}
  s.default_executable = %q{docusign}
  s.description = %q{A library for communicating with the Docusign API via SOAP.}
  s.email = ["texel1@gmail.com"]
  s.executables = ["docusign"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/docusign", "docusign.gemspec", "lib/DocuSign3.0API.wsdl", "lib/docusign.rb", "lib/docusign/auth_header_handler.rb", "lib/docusign/base.rb", "lib/docusign/docusign.rb", "lib/docusign/docusignDriver.rb", "lib/docusign/docusignMappingRegistry.rb", "tasks/docusign_tasks.rake", "test/test_docusign.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://www.docusign.com}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{docusign}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A library for communicating with the Docusign API via SOAP.}
  s.test_files = ["test/test_docusign.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.8.3"])
    else
      s.add_dependency(%q<hoe>, [">= 1.8.3"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.8.3"])
  end
end
