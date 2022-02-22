class ChildTwoClass extends ParentClass;

   string name;

   virtual function ParentClass clone ();
      ChildTwoClass copy;
      copy = new();
      copy.name = this.name;
      return copy;
   endfunction // clone

endclass // ChildTwoClass
