module sum1bcc_TB;
// variables de entrada
  reg x;
  reg y;
  reg c;
// variables de salida
  wire out;
  wire z;


sum1bcc uut(x, y, c,out,z);	//Archivo sobre el que se ejecuta la entrada de valores (x,y,c)
										// y del que se toman los resultados (out, z)


initial begin
x=0; y=0; c=0; #3; // "#3" tres unidades de tiempo
x=0; y=0; c=1; #3;
x=0; y=1; c=0; #3;
x=0; y=1; c=1; #3;
x=1; y=0; c=0; #3;
x=1; y=0; c=1; #3;
x=1; y=1; c=0; #3;
x=1; y=1; c=1; #3;



end

initial begin: TEST_CASE
     $dumpfile("sum1bcc_TB.vcd");
     $dumpvars(-1, uut);
     #(30) $finish;		//Numero de unidades de tiempo antes de finalizar
   end

endmodule 
