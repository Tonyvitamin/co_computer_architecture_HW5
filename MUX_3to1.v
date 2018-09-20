//Subject:     CO project 2 - MUX 221
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:      
//----------------------------------------------
//Date:        
//----------------------------------------------
//Description: 
//--------------------------------------------------------------------------------
     
module MUX_3to1(
               data0_i,
               data1_i,
               data2_i,
               select_i,
               data_o
               );
//parameter size = 0;

//I/O ports               
input   [32-1:0] data0_i;          
input   [32-1:0] data1_i;
input   [32-1:0] data2_i;
input   [1:0] select_i;
output  [32-1:0] data_o; 

//Internal Signals
reg     [32-1:0] data_o;

//Main function
always@(*) begin
	if(select_i == 2'b01) 
		data_o = data1_i ;
	else if(select_i ==2'b00)
		data_o = data0_i ;
  else
    data_o = data2_i ;
end 
endmodule      
