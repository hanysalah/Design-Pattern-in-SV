`include "transaction.sv"
`include "ChainParentClass.sv"
`include "ChainClasses.sv"


module top;

  ChainOne addChain;
  ChainTwo subChain;
  ChainThree mulChain;
  ChainFour divChain;

  // Simple method to define how to build chain. It is implemented in top module
  // for simplicity. It can be done in a wrapper class.
  function void build_chain ();
    addChain = new();
    subChain = new();
    mulChain = new();
    divChain = new();
    addChain.SetNextChainObject(subChain);
    subChain.SetNextChainObject(mulChain);
    mulChain.SetNextChainObject(divChain);
    //Div Chain Object will be the final one
    divChain.is_last_chain_part();
  endfunction

  initial begin
    transaction tr = new();
    int Result;
    build_chain();

    repeat(10) begin
      tr.randomize();

      //Feed the transaction to the first chain part
      Result = addChain.process(tr);

      $display("op:%p\t a1=%0d a2=%0d \t\t\t Result=%0d",tr.op_e,tr.a1,tr.a2,Result);
    end
  end
endmodule
