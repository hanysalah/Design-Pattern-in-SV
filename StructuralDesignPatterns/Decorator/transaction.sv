class transaction;

  rand bit[3:0] data_stream [];
  rand int unsigned data_stream_length;

  constraint data_stream_length_constraint {data_stream.size()==data_stream_length; }

  virtual function string getDescription();
    getDescription = $sformatf("Stream Length:%0d  Data Stream %p",data_stream_length,data_stream);
  endfunction
endclass