#
# Plato::DigitalIO class for enzi
#
module Plato
  class DigitalIO < GPIO
    def read
      ENZI::digitalRead(@pin)
    end

    def write(v)
      ENZI::digitalWrite(@pin, v)
    end
  end
end
