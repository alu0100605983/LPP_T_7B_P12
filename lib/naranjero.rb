require "naranjero/version"

module Naranjero
  # Your code goes here...
  class A_Naranjero
  	def initialize
		@edad = 0
		@altura = 0
		@contador = 0
		@Arbol_RIP = false
    end
    
    def recolectar_una
		if @contador > 0
		   @contador = @contador - 1
		   puts "Deliciosa, tranquilo aun te quedan #{@contador} naranjas.\n"
		else
		   puts "Negativo, no es que no queramos es que no hay naranjas.\n"
		end
		@contador
    end
    
    def uno_mas
        if @Arbol_RIP == false
		   @edad = @edad + 1
		   puts "Biennn!,  Ahora tengo #{@edad} anios\n"
		   @altura = @altura + 2
		   puts "Yujuuuu ahora soy mas grande mido: #{@altura} metros\n"
		   if @edad < 4
		      @contador = @contador + 7
		   end
		   if @edad >= 4 
		      @contador = @contador + 13
		   end
		   if @edad >= 13 
		      puts "Arbol RIP\n"
		      @Arbol_RIP = true
		      @contador = 0
	   		end
		end
     end
     
     def contador
		return @contador
     end
	
     def edad
        return @edad
     end
     
     def altura
        return @altura
     end
	
    def Arbol_RIP
       if @Arbol_RIP == true
          return true
       end
    end

  end
end
