class parentTransaction;

	virtual function void drive_trans();
		$display("Drive Transaction of parentTransaction");
	endfunction : drive_trans

	static function parentTransaction create();
		factory factory_obj = factory::getInstance();
		return factory_obj.create_transaction();
	endfunction : create

endclass

class childTransaction extends parentTransaction;

	virtual function void drive_trans();
		$display("Drive Transaction of ChildTransaction");
	endfunction : drive_trans

endclass	