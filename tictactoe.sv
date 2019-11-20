module tictactoe (
input logic [8:0] x,
input logic [8:0] o,
output logic error,
output logic full,
output logic winX,
output logic winO,
output logic noWin
);
logic [7:0] a;
logic [7:0] b;
assign full=&(x|o);
assign error=|(x&o);

//winX

assign a[0]=&x[2:0]; //first line
assign a[1]=&x[5:3]; //second line
assign a[2]=&x[8:6]; //third line
assign a[3]=x[0]&x[3]&x[6]; //first column
assign a[4]=x[1]&x[4]&x[7]; //second column
assign a[5]=x[2]&x[5]&x[8]; //third column
assign a[6]=x[0]&x[4]&x[8]; //first diagonal
assign a[7]=x[2]&x[4]&x[5]; //second diagonal
assign winX=|a;

//winO

assign b[0]=&o[2:0]; //first line
assign b[1]=&o[5:3]; //second line
assign b[2]=&xo[8:6]; //third line
assign b[3]=o[0]&o[3]&o[6]; //first column
assign b[4]=o[1]&o[4]&o[7]; //second column
assign b[5]=o[2]&o[5]&o[8]; //third column
assign b[6]=o[0]&o[4]&o[8]; //first diagonal
assign b[7]=o[2]&o[4]&o[5]; //second diagonal
assign winO=|b;

always_comb
begin
if(winX|winO)
noWin=0;
else
noWin=1;
endmodule;

