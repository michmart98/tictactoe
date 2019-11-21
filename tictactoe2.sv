module tictactoe2(
input logic [8:0] x,
input logic [8:0] o,
output logic error,
output logic full,
output logic winX,
output logic winO,
output logic noWin
);
//output error
assign error=|(x&o);

//output full
assign full=&(x|o);

//output winX
assign winX=((x[0]==1 & x[1]==1 & x[2]==1) | 
(x[3]==1 & x[4]==1 & x[5]==1) | 
(x[6]==1 & x[7]==1 & x[8]==1) | 
(x[0]==1 & x[3]==1 & x[6]==1) |
(x[1]==1 & x[4]==1 & x[7]==1) |
(x[2]==1 & x[5]==1 & x[8]==1) |
(x[0]==1 & x[4]==1 & x[8]==1) |
             (x[2]==1 & x[4]==1 & x[6]==1)) & (~error)? 1:0;

//output winO
assign winO=((o[0]==1 & o[1]==1 & o[2]==1) | 
(o[3]==1 & o[4]==1 & o[5]==1) | 
(o[6]==1 & o[7]==1 & o[8]==1) | 
(o[0]==1 & o[3]==1 & o[6]==1) |
(o[1]==1 & o[4]==1 & o[7]==1) |
(o[2]==1 & o[5]==1 & o[8]==1) |
(o[0]==1 & o[4]==1 & o[8]==1) |
(o[2]==1 & o[4]==1 & o[6]==1)) & (~error) ? 1:0;

//output noWIn
assign noWin=(!winX & !winO) ? 1:0;

endmodule
