class ChildOneClass extends ParentClass;

   int x;

   virtual function ParentClass clone ();
      ChildOneClass copy;
      copy = new();
      copy.x = this.x;
      return copy;
   endfunction // clone
endclass // ChildOneClass
