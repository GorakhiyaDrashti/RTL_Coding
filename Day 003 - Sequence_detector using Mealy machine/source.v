module Seq_gen(
  input clk,rst,In,
  output reg out);
  
  reg [1:0]present_state, next_state;
  
   parameter A = 2'b00,
             B = 2'b01,
             C = 2'b10, 
             D = 2'b11;
  
  always @(posedge clk or negedge rst)
    begin
      if(rst!=1) begin
        present_state <= 2'b00;
        out = 0;
      end
      else 
        present_state <= next_state;
    end
  always @(*) begin
        case(present_state)
        A: begin 
          next_state = In ? A : B;
          out = 1'b0;
        end
        B: begin
          next_state = In ? C : B;
          out =1'b0;
        end
        C: begin
          next_state = In ? D : B;
          out = 1'b0;
        end
        D: begin
          next_state = In ? A : B;
          out = In ? 1'b1:1'b0;
        end
          default: begin
            next_state = A;
          out = 1'b0;
          end
        endcase
  end
  
//   always @(*)
//     begin
//       if(present_state == D) begin
//         if( In == 1)
//           out = 1;
//       else
//         out =0;
//       end
//     end
      
endmodule
