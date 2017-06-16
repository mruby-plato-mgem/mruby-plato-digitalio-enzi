# mruby-plato-digitalio-enzi   [![Build Status](https://travis-ci.org/mruby-plato/mruby-plato-digitalio.svg?branch=master)](https://travis-ci.org/mruby-plato/mruby-plato-digitalio)
Plato::DigitalIO class for enzi board
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

  # ... (snip) ...

  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-gpio'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-gpio-enzi'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-digitalio'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-digitalio-enzi'
end
```

## example
```ruby
d0 = Plato::DigitalIO.new(Plato::GPIO::D0)
p d0.read   # -> 0 or 1
d1 = Plato::DigitalIO.new(Plato::GPIO::D1)
d1.write(1)
```

## License
under the MIT License:
- see LICENSE file
