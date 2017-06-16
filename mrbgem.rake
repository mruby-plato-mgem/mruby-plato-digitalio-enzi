MRuby::Gem::Specification.new('mruby-plato-digitalio-enzi') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Plato developers'
  spec.description = 'Plato::DigitalIO class for enzi board'

  spec.add_dependency('mruby-plato-gpio')
  spec.add_dependency('mruby-plato-gpio-enzi')
  spec.add_dependency('mruby-plato-digitalio')
end
