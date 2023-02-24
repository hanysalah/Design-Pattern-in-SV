`include "drivers.sv"
`include "agents.sv"

module top;

	base_agent agentHandle;

	initial begin
		//  For Uart Interface
		agentHandle = agent_uart::new;
		agentHandle.create_driver();
		agentHandle.run_driver();

		// For JTAG
		agentHandle = agent_jtag::new;
		agentHandle.create_driver();
		agentHandle.run_driver();
	end


endmodule