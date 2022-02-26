// ChainOne child will be responsible for handling the packet
// if it terms to an addition request
class ChainOne extends ChainParentClass;
  virtual function bit isRightObjectToHandle(transaction tr);
  	return tr.op_e == ADD;
  endfunction
  virtual function int calculateOutput(transaction tr);
  	return tr.a1 + tr.a2;
  endfunction
endclass


// ChainTwo child will be responsible for handling the packet
// if it terms to an subtraction request
class ChainTwo extends ChainParentClass;
  virtual function bit isRightObjectToHandle(transaction tr);
  	return tr.op_e == SUB;
  endfunction
  virtual function int calculateOutput(transaction tr);
  	return tr.a1 - tr.a2;
  endfunction
endclass


// ChainThree child will be responsible for handling the packet
// if it terms to an multiplication request
class ChainThree extends ChainParentClass;
  virtual function bit isRightObjectToHandle(transaction tr);
  	return tr.op_e == MUL;
  endfunction
  virtual function int calculateOutput(transaction tr);
  	return tr.a1 * tr.a2;
  endfunction
endclass


// ChainFour child will be responsible for handling the packet
// if it terms to an division request
class ChainFour extends ChainParentClass;
  virtual function bit isRightObjectToHandle(transaction tr);
  	return tr.op_e == DIV;
  endfunction
  virtual function int calculateOutput(transaction tr);
  	return tr.a1 / tr.a2;
  endfunction
endclass