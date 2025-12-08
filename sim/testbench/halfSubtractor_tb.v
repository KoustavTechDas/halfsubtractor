module halfSubtractor_tb;
  reg a,b;
  wire d,br;
  
halfSubtractor HS(a,b,d,br);
  
  initial begin
    $monitor("Time=%0t, A=%b, B=%b, diff=%b, borrow=%b",$time,a,b,d,br);
  end
  
  initial begin
    a=0; b=0; #5;
    a=0; b=1; #5;
    a=1; b=0; #5;
    a=1; b=1; #5;
    $stop;
  end
endmodule
