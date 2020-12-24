module testbench(
    output [7:0] SSEG_CA,
    output [7:0] SSEG_AN,
    output [7:0] LED
    );
    reg[7:0] SW;
    reg CLK;
    intital
    begin
        CLK = 1;
        SW = 8'b0;
    end
    always #10 CLK = ~CLK;
    Hex_Display_dut(SW, CLK, SSEG,_CA, SSEG_AN, LED);
    
endmodule