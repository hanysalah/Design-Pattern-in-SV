`include "transaction.sv"
`include "Sequence.sv"


module top;

  transaction tr;
  Sequence    seq;

  initial begin
    int data_stream_length=1;
    tr = new();
    seq = new();
    seq.setTr(tr);

    // This repeat block let you see the core class (transaction) is decorated with 5 different decoratations.
    repeat(5) begin
      seq.set_data_stream_length(data_stream_length);
      seq.runSequence();
      data_stream_length++;
    end
  end
endmodule