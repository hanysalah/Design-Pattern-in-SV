virtual class base_agent;
	base_driver   actual_driver;

	pure virtual function void create_driver();

	virtual function void run_driver();
		actual_driver.drive_data();
	endfunction

endclass

class agent_uart extends base_agent;

	virtual function void create_driver();
		actual_driver = uart_driver::new;
	endfunction
endclass

class agent_jtag extends base_agent;

	virtual function void create_driver();
		actual_driver = jtag_driver::new;
	endfunction
endclass