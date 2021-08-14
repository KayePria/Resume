module tb_memory_address_register(); 
reg i_debug; 
reg [3:0] in_address; 
reg enable_in; 
reg reset; 
wire [3:0] out_address; 
memory_address_register 
uut(i_debug,in_address,enable_in,reset,out_address);
always #10 enable_in = ~enable_in; 
initial begin 
enable_in = 0; 
in_address = 4'b0100; 
i_debug = 1; 
reset = 0; 
#20; 
reset = 1; 
#50; 
reset = 0; 
#10; 
i_debug = 0; 
in_address = 4'b1111; 
#20; 
$finish; 
end 
endmodule 
