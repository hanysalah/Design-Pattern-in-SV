class factory;
	static factory factoryInstance;

	bit  createChild=0;

	protected function new();
	endfunction : new

	static function factory getInstance;
		if(factoryInstance == null)
			factoryInstance = new();

		return factoryInstance;
	endfunction

	virtual function parentTransaction create_transaction();
		parentTransaction  parentObj;
		if(createChild ==0)
			parentObj =  parentTransaction::new;
		else
			parentObj =  childTransaction::new;
		return parentObj;
	endfunction : create_transaction

endclass : factory