class  typeTwoClass;

  // A single bit to define rw command; 1: read 0:write
  bit rw;

  // 32-bit data as a single vector
  bit[31:0] m_data;

  virtual function void showcontent();
    $display("typeOneClass: m_cmd=%p  m_data =%p",rw,m_data);
  endfunction
endclass