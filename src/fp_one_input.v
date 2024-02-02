
module fp_one_input #(parameter A_SIZE = 64)
(
    input                   clk, resetn,
    
    input                   start,
    output reg              done,

    input      [63:0]       A,
    output reg [63:0]       RESULT,

    output reg [A_SIZE-1:0] A_tdata,
    output reg              A_tvalid,
    input                   A_tready,

    input      [63:0]       RESULT_tdata,
    input                   RESULT_tvalid,
    output reg              RESULT_tready
);


reg[1:0]  fsm_state;
always @(posedge clk) begin
    
    // This will strobe high for exactly one cycle
    done <= 0;

    if (resetn == 0) begin
        done          <= 0;
        A_tvalid      <= 0;
        RESULT_tready <= 0;
        fsm_state     <= 0;
        
    end else case(fsm_state) 

        0:  if (start) begin
                A_tdata       <= A;
                A_tvalid      <= 1;
                fsm_state     <= fsm_state + 1;
            end

        1:  if (A_tvalid & A_tready) begin
                A_tvalid       <= 0;
                RESULT_tready  <= 1;
                fsm_state      <= fsm_state + 1;
            end 

        2:  if (RESULT_tvalid & RESULT_tready) begin
                RESULT        <= RESULT_tdata;
                RESULT_tready <= 0;
                done          <= 1;
                fsm_state     <= 0;
            end
    endcase 


end



endmodule