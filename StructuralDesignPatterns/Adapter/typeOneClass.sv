typedef enum{READ, WRITE} m_cmd_e;

class typeOneClass;

  // Enum to define the command READ/WRITE
  m_cmd_e m_cmd;

  // 32 bit as 4-bytes 
  bit [7:0] m_data [3:0];

  virtual function void showcontent();
    $display("typeOneClass: m_cmd=%p  m_data =%p",m_cmd,m_data);
  endfunction

endclass