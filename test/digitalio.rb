# Plato::DigitalIO class

module ENZI
  def self.digitalRead(pin); 0; end
  def self.digitalWrite(pin, v); v; end
end

assert('DigitalIO', 'class') do
  assert_equal(Plato::DigitalIO.class, Class)
end

assert('DigitalIO', 'superclass') do
  assert_equal(Plato::DigitalIO.superclass, Plato::GPIO)
end

assert('DigitalIO', 'read') do
  Plato::DigitalIO.new(Plato::GPIO::D0).read
end

assert('DigitalIO', 'write') do
  Plato::DigitalIO.new(Plato::GPIO::D0).write(1)
end

assert('DigitalIO', 'write - argument error') do
  assert_raise(ArgumentError) {Plato::DigitalIO.new(Plato::GPIO::D0).write}
  assert_raise(ArgumentError) {Plato::DigitalIO.new(Plato::GPIO::D0).write(1, 2)}
end
