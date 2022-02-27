class Sequence extends transaction;

  // The decorator class will instantiate an instance of the core class which is actually its parent.
  transaction tr;

  // Always keep the possiblity to set the handle of the core class so as not to keep it fixed to the core class
  // Instead, It could be assigned to an object of core class or any extended ones.
  virtual function setTr (transaction tr);
    this.tr = tr;
  endfunction

  // This method describes how an object from the core class is decorated based on that particular Sequence
  // class.
  virtual function void runSequence();
    int data_stream_lenght_;
    data_stream_lenght_ = this.data_stream_length;
    tr.randomize() with {this.data_stream_length == data_stream_lenght_;};
    $display("Randomized with lenght = %0d \t\t\t %s", this.data_stream_length,tr.getDescription());
  endfunction

  virtual function set_data_stream_length(int i);
    this.data_stream_length = i;
  endfunction
endclass