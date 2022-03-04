virtual class StrategyAlgorithmBase;

  virtual function void run_algorithm(StrategyObjectClass Object);
    DoFirstStep(Object);
    DoSecondStep(Object);
    DoThreeStep(Object);
  endfunction

  pure virtual function void DoFirstStep(StrategyObjectClass Object);
  pure virtual function void DoSecondStep(StrategyObjectClass Object);
  pure virtual function void DoThreeStep(StrategyObjectClass Object);

endclass

class AlgorithmOne extends StrategyAlgorithmBase;

  virtual function void DoFirstStep(StrategyObjectClass Object);
    $display("DoFirstStep in Algorithm One");
  endfunction

  virtual function void DoSecondStep(StrategyObjectClass Object);
    $display("DoSecondStep in Algorithm One");
  endfunction

  virtual function void DoThreeStep(StrategyObjectClass Object);
    $display("DoThirdStep in Algorithm One");
  endfunction
endclass


class AlgorithmTwo extends StrategyAlgorithmBase;

  virtual function void DoFirstStep(StrategyObjectClass Object);
    $display("DoFirstStep in Algorithm Two");
  endfunction

  virtual function void DoSecondStep(StrategyObjectClass Object);
    $display("DoSecondStep in Algorithm Two");
  endfunction

  virtual function void DoThreeStep(StrategyObjectClass Object);
    $display("DoThirdStep in Algorithm Two");
  endfunction
endclass