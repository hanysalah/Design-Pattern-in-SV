// Transaction Class to be used in testing.

typedef enum {ADD,SUB,MUL,DIV} op_enum;

class transaction;
  rand op_enum   op_e;
  rand int unsigned a1;
  rand int unsigned a2;
  // To make the results limited for visual checking.
  constraint c1{ a1 < 20; a2 < 30;}
endclass