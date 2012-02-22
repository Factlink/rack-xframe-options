# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-xframe-options}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tomasz Mazur"]
  s.date = %q{2010-09-28}
  s.description = %q{The X-Frame-Options HTTP response header can be used to indicate whether or not a browser should be allowed to render a page in a <frame> or <iframe>}
  s.email = %q{defkode@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = Dir["**/*"] - Dir["*.gem"]
  s.homepage = %q{http://github.com/defkode/rack-xframe-options}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Adds X-Frame-Options Header to HTML response}
end

