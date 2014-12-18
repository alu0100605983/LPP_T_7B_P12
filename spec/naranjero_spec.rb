require "naranjero"
require 'thread'


module Naranjero
     describe Naranjero::A_Naranjero do
     before :each do
	@var_arbol = Naranjero::A_Naranjero.new
     end

  context "Pruebas de Naranjero" do
      it "El atributo es de la clase" do
	expect(@var_arbol.class).to eq(A_Naranjero)
      end
      
      it "Metodo para recolectar" do
	expect(@var_arbol).to respond_to :recolectar_una
      end
      
      it "Metodo para crecer el arbol" do
	expect(@var_arbol).to respond_to :uno_mas
      end
      
      it "Metodo para ver si el arbol esta muerto" do
	expect(@var_arbol).to respond_to :Arbol_RIP
      end
      
      it "Pruebas para probar la ejecucion con los hilos" do
	  @th1 = Thread.new do
          @var_arbol.uno_mas
          sleep(3)
		  @var_arbol.uno_mas
		  sleep(3)
		  for i in(0..4)
			  @var_arbol.recolectar_una
			  sleep(0.5)
		   end
          @var_arbol.uno_mas
          sleep(1)
		  @var_arbol.uno_mas
		  sleep(1)
		  @var_arbol.recolectar_una
		  sleep(1)
		  @var_arbol.uno_mas
		  sleep(1)
		  @var_arbol.recolectar_una
		  sleep(1)
		  @var_arbol.uno_mas
		  sleep(1)   
      end 
   
	  @th2 = Thread.new do
		  @var_arbol.recolectar_una
		  sleep(0)
		  for i in(0..6)
				@var_arbol.uno_mas
				sleep(1)
		  end
      end
   
	  @th1.join
	  @th2.join
   
   	it "Los hilos pertenecen a la clase Thread" do
	    expect(@th1.class).to eq(Thread)
	    expect(@th2.class).to eq(Thread)
	end
	it "Edad del arbol" do
    	expect(@var_arbol.edad).to eq(13)
    end
    it "Numero de Naranjas" do
    	expect(@var_arbol.contador).to eq(0)
    end
    it "Altura del arbol" do 
    	expect(@var_arbol.altura).to eq(26)
    end
    it "Muerte del arbol" do
    	expect(@var_arbol.Arbol_RIP).to eq(true)
    end
  end
      
  end
end

end#module