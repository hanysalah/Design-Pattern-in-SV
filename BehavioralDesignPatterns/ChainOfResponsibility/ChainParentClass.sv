// Abstract class that will be used as a parent for all Chain objects.
// It cannot be created. quite similiar to interfaces in Java.
virtual class ChainParentClass;

  ChainParentClass NextChainObject;

  protected bit last_chain_part;

  // This method will be called to define the next chain object. Since it will be
  // child of the current class(ChainParentClass).
  // It can be passed over ChainParentClass handle
  virtual function void SetNextChainObject(ChainParentClass ChainObject);
    this.NextChainObject = ChainObject;
  endfunction

  // This method will be called in the object of the last chain child class
  // to define let be the end of chain. So in case that the object cannot be 
  // handled, do exit condition like return null, prompt and error message, etc
  virtual function void is_last_chain_part();
    this.last_chain_part=1;
  endfunction


  virtual function int process (transaction tr);
  	// Check if the transaction should be handled by this part of chain. then calculate
    // the output
    if(isRightObjectToHandle(tr)) begin
      process = calculateOutput(tr);
    end
    // If this object cannot handle that transaction and it is not the last one in the chain.
    // send thransaction to the next chain object.
    else if (this.last_chain_part == 0) begin
    	process = NextChainObject.process(tr);
    end
    // If this object is the last one in the chain just prompt an error message and do nothing 
    else begin
      $error("This type of transaction cannot be handled");
      return 0;
    end
  endfunction


  // Any child should implement those two couple of virtual function:
  // 1- The first method is to define if it is the proper child to handle
  //    this object or to pass it to the next chain object.
  pure virtual function bit isRightObjectToHandle(transaction tr);
  //
  // 2- The second method is to calculate the output in case that this
  //    class is the proper child to handle the transaction. 
  pure virtual function int calculateOutput(transaction tr);
endclass