`include "StrategyObjectClasses.sv"
`include "StrategyAlgorithmClasses.sv"

module top;

  StrategyAlgorithmBase  AlgorithmObject;
  StrategyObjectClass    ItemObject;

  initial begin
    ItemObject = StrategyObjectOneClass::new();

    // Let's try first algorithm
    AlgorithmObject = AlgorithmOne::new();
    AlgorithmObject.run_algorithm(ItemObject);

    // Let's dynamically change the algorithm used to be the second one.
    $display("Switching to Algorithm TWO!!");
    AlgorithmObject = AlgorithmTwo::new();
    AlgorithmObject.run_algorithm(ItemObject);

  end
endmodule