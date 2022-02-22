`include "ParentClass.sv"
`include "ChildOneClass.sv"
`include "ChildTwoClass.sv"

module top;

   ChildOneClass OriginalObject1,ClonedObject1;
   ChildTwoClass OriginalObject2,ClonedObject2;

   initial begin
      // Let's Allocate the objects that are the original image of the two child classes
      OriginalObject1 = new();
      OriginalObject2 = new();

      // Let's initialize the variable in each object.
      OriginalObject1.x = 10;
      OriginalObject2.name = "Ahmed";

      // To clone each object into a cloned image, we no longer need to have a prior knowledge
      // about its internal fields.
      // Thanks to Clone virtual method, object cloning becomes the responsibility of the object
      // itself.
      
      // Uncomment the next line will let interpreter prompt a compilation error since the clone
      // method return the child copy on parent handle. So you need a dynamic cast to finish the
      // clone process
      // ClonedObject1 = OriginalObject1.clone();
      $cast(ClonedObject1,OriginalObject1.clone());

      // Let's apply the same for the second child object
      $cast(ClonedObject2,OriginalObject2.clone());

      // Let's override the internal fields in the original objects
      OriginalObject1.x = 20;
      OriginalObject2.name = "Mohamed";

      // Let's display the fields of the four objects. The cloned versions
      // shouldn't be affected by the overridden
      $display("OriginalObject1.x = %0d",OriginalObject1.x); 
      $display("OriginalObject2.name = %s",OriginalObject2.name);
      $display("ClonedObject1.x = %0d",ClonedObject1.x);     
      $display("ClonedlObject2.x = %0d",ClonedObject2.x);
    end
endmodule

      
