`timescale 1ns / 1ps
module sum4bcc_TB;
  // Entradas 
  reg [3:0] A;
  reg [3:0] B;
  // Salidas
  wire co;
  wire [3:0] S;

  // Archivo sobre el cual se aplican las entradas
  sum4bcc uut (    
		.xi(A),
		.yi(B),
		.co(co),
		.zi(S)  
	);

  
  initial begin
  

  // Ciclo de entradas
    A=0;
	 for (B = 0; B < 16; B = B + 1) begin
      if (B==0)
        A=A+1;
      #2 ;
		$display("El valor de %d + %d = %d",A, B,S) ;
    end
	
  end      

  initial begin: TEST_CASE
     $dumpfile("sum4bcc_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;		//Unidades de tiempo de ejecución antes de finalizar
   end
endmodule
