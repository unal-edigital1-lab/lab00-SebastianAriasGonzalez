module sum1bcc (A, B, Ci,Cout,S);

// Entradas
  input  A;
  input  B;
  input  Ci;
// Salidas  
  output Cout;
  output S;

  reg [1:0] st;
  assign S = st[0];
  assign Cout = st[1];

  always @ ( * ) begin //Bucle que modifica el valor de st si alguna de las entradas se modifica
  	st  = 	A+B+Ci;
  end
  
endmodule

