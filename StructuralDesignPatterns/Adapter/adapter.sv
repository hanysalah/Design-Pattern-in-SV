class adapter;

  // Function to convert from Type two class into type one class.
  virtual function typeOneClass typeTwo2One (const ref typeTwoClass typeTwoObject);
    typeOneClass typeOneObject;
    typeOneObject           = new();
    typeOneObject.m_cmd     = (typeTwoObject.rw==1'b1)? READ:WRITE;
    typeOneObject.m_data[0] = typeTwoObject.m_data[7:0];
    typeOneObject.m_data[1] = typeTwoObject.m_data[15:8];
    typeOneObject.m_data[2] = typeTwoObject.m_data[23:16];
    typeOneObject.m_data[3] = typeTwoObject.m_data[31:24];
    return typeOneObject;
  endfunction

  // Function to convert from Type one class into type two class.
  virtual function typeTwoClass typeOne2Two (const ref typeOneClass typeOneObject);
    typeTwoClass typeTwoObject;
    typeTwoObject               = new();
    typeTwoObject.rw            = (typeOneObject.m_cmd==READ)? 1'b1:1'b0;
    typeTwoObject.m_data[7:0]   = typeOneObject.m_data[0];
    typeTwoObject.m_data[15:8]  = typeOneObject.m_data[1];
    typeTwoObject.m_data[23:16] = typeOneObject.m_data[2];
    typeTwoObject.m_data[31:24] = typeOneObject.m_data[3];
    return typeTwoObject;
  endfunction
endclass