`include "typeOneClass.sv"
`include "typeTwoClass.sv"
`include "adapter.sv"

module top;

  typeOneClass typeOneObject;
  typeTwoClass typeTwoObject;
  adapter      adapterObject;

  initial begin
    typeOneObject = new();
    adapterObject = new();

    // Do initialization to object of typeOneClass.
    typeOneObject.m_cmd = READ;
    typeOneObject.m_data[0] = $urandom_range(1,10);
    typeOneObject.m_data[2] = $urandom_range(1,10);

    // Convert transaction from typeOneClass into typeTwoClass
    typeTwoObject = adapterObject.typeOne2Two(typeOneObject);

    // Show contents of both. What do you see?
    typeOneObject.showcontent();
    typeTwoObject.showcontent();

  end
endmodule