# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "academic"
  spec.version       = "0.5.8"
  spec.authors       = ["gaalcaras"]
  spec.email         = ["gaby.alcaras@gmail.com"]

  spec.summary       = %q{Academic is a Jekyll theme with a focus on simplicity, typography and flexibility.}
  spec.homepage      = "https://github.com/gaalcaras/academic"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_data|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll-data", '~> 1.0'

  spec.add_development_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
