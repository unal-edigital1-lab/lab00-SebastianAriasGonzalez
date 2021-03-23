module sum1bcc_primitive (A, B, Ci,Cout,S);

//entradas
  input  A;
  input  B;
  input  Ci;
//salidas  
  output Cout;
  output S;

// Cableado
  wire a_ab;
  wire x_ab;
  wire cout_t;

  and(a_ab,A,B);	//Se define a_ab como la salida de una compuerta tipo "and" con entradas A y B 
  xor(x_ab,A,B);	//Se define x_ab como la salida de una compuerta tipo "Xor" con entradas A y B

  xor(S,x_ab,Ci);	//Se define la salida S como la salida de una compuerta tipo "Xor" con entradas x_ab y Ci
  and(cout_t,x_ab,Ci);	//Se define cout_t como la salida de una compuerta tipo "and" con entradas x_ab y Ci

  or (Cout,cout_t,a_ab);	//Se define la salida Cout como la salida de una compuerta tipo "or" con entradas cout_t y a_ab

endmodule

