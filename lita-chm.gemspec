Gem::Specification.new do |spec|
  spec.name          = "lita-chm"
  spec.version       = "0.0.2"
  spec.authors       = ["Carlos Paramio"]
  spec.email         = ["hola@carlosparamio.com"]
  spec.description   = %q{Shows a short history lesson of the day from the Computer History Museum.}
  spec.summary       = %q{Shows a short history lesson of the day from the Computer History Museum}
  spec.homepage      = "https://github.com/carlosparamio/lita-chm"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.3"

  spec.add_dependency "nokogiri"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.2"
  spec.add_development_dependency "simplecov"
end
