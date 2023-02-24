virtual class base_driver;

	pure virtual function void drive_data(/*transaction tr*/);

endclass

class uart_driver extends base_driver;

	virtual function void drive_data(/*transaction tr*/);
		$display("Driving transaction by uart driver");
	endfunction
endclass

class jtag_driver extends base_driver;

	virtual function void drive_data(/*transaction tr*/);
		$display("Driving transaction by jtag driver");
	endfunction
endclass