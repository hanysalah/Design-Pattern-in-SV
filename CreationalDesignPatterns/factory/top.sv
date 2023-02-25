typedef class factory;
`include "transactions.sv"
`include "factory.sv"

module top;

	parentTransaction parentHandle;
	factory  factoryObject = factory::getInstance();

	initial begin
		factoryObject.createChild=0;
		parentHandle = parentTransaction::create();
		parentHandle.drive_trans();


		factoryObject.createChild=1;
		parentHandle = parentTransaction::create();
		parentHandle.drive_trans(); 


	end

endmodule : top