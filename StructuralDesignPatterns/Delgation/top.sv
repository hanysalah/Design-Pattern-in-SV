`include "non_touchable_package/non_touch_package.sv"

import non_touch_package::*;

`include "child2_extension.sv"

module top;
  child1Child1 child1Child1obj=new();
  child2Child1 child2Child1obj=new();
  child1Child2 child1Child2obj=new();
  child2Child2 child2Child2obj=new();

  initial begin
    // Let's check the default implementation in the package first
    child1Child1obj.FuncVirtual();
    child2Child1obj.FuncVirtual();
    child1Child2obj.FuncVirtual();
    child2Child2obj.FuncVirtual();

    // Now we will override the implementation in child 2 which should affect all of its descendents.
    begin
      child2_extension child2_extensionObj = new();
      child2::set_delegator(child2_extensionObj);
    end

    // Let's see FuncVirtual again
    child1Child1obj.FuncVirtual();
    child2Child1obj.FuncVirtual();
    child1Child2obj.FuncVirtual();
    child2Child2obj.FuncVirtual();
  end
endmodule