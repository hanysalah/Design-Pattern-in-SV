class child1 extends parent;

  static parent ParentObject;

  static function void set_delegator (parent delegationObject);
    ParentObject = delegationObject;
  endfunction

  virtual function void FuncVirtual();
    if(ParentObject != null) begin
      ParentObject.do_FuncVirtual();
    end else begin
      do_FuncVirtual();
    end
  endfunction

  virtual function void do_FuncVirtual();
    $display("Here is the default implementation is overridden in Child 1");
  endfunction

endclass

class child2 extends parent;

  static parent ParentObject;

  virtual function void FuncVirtual();
    if(ParentObject != null) begin
      ParentObject.do_FuncVirtual();
    end else begin
      do_FuncVirtual();
    end
  endfunction

  static function void set_delegator (parent delegationObject);
    ParentObject = delegationObject;
  endfunction
endclass
