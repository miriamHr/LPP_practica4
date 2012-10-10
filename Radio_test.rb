#       Radio_test.rb
#       
#       Copyright 2012 Hikoreko <hikoreko@ubuntu>
#       
#       This program is free software; you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation; either version 2 of the License, or
#       (at your option) any later version.
#       
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#       
#       You should have received a copy of the GNU General Public License
#       along with this program; if not, write to the Free Software
#       Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#       MA 02110-1301, USA.


class Circulo
	attr_reader :perimetro
	def initialize(perimetro)
		raise ArgumentError.new("Debe introducirse un numero positivo, gracias.") unless (perimetro.is_a? Numeric) && (perimetro > 0)
		@perimetro=perimetro
		
	end
	def radio
		(@perimetro/3.14)/2
	end
	def to_s
		"El radio del circulo es #{perimetro}"
	end
end

require"test/unit"

class CirculoTest < Test::Unit::TestCase

	def test_perimetro
		assert_equal(1.910828025477707,Circulo.new(12).radio)
	end
	
	def test_crear_circulo
		#assert_instance_of(Circulo.new(12),)
		assert_equal(12,Circulo.new(12).perimetro)
		assert_nothing_raised do
			p=Circulo.new(12)
			puts p.radio
	    end
	assert_raise(ArgumentError){Circulo.new(-1)}
	assert_raise(ArgumentError){Circulo.new( 'a')}
	end
end
