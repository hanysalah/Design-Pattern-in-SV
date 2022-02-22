
`include "SingltonClass.sv"

module top;

   SingltonClass SingltonObject1;
   SingltonClass SingltonObject2;

   initial begin
      // If you uncomment the next statement, the compiler will prompt a compilation error
      // since the class has no constructor. 
      //   
      // SingltonObject1 = new();

      // The only way to use SingltonClass is to get instance
      SingltonObject1 = SingltonClass::getInstance();
      
      // Let's Set name variable in SingltonObject1 to "Mike"
      SingltonObject1.name = "Mike";

      // Since The main objective of Singlton Design Pattern is to create a single object of it
      // and share it among all modules. SingleObject2 will point to the same object like
      // SingleObject1 after the next statement.
      SingltonObject2 = SingltonClass::getInstance();

      // Let's see the value of name in the second object. What do you see
      $display("SingleObject2.name = %s",SingltonObject2.name);

   end

endmodule // top
