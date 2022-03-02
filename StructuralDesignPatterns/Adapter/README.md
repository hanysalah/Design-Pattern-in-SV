# Adapter Design Pattern

Adapter design pattern is used when two modules with different interfaces are connected togather. The purpose of it is to convert from the interface of the first domain to the interface of the second domain.

*An Interface in software is quite equivalent to a transaction in sysmteverilog testbenches*

## Application

1. The popular example of adapter design pattern is the uvm_reg_adapter which is used in RAL model to convert between the transaction of ral model *uvm_reg_bus_op* and transaction used in bus operation which will be extended from *uvm_sequence_item*

2. Adapter design pattern could also be used when the sv developper wants to reuse a UVC from other project which probably uses a different transaction (sequence_item). In that case, we add a converter (adapter) to convert between the two transaction types.

## Demo
[EDA PLAYGROUND](https://www.edaplayground.com/x/eUZb)