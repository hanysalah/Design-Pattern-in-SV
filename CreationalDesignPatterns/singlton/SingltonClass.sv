class SingltonClass;

   static SingltonClass SingltonClassObject;

   // For  the sake of testing
   string name;
   
   protected function new ();
   endfunction // new

   static function SingltonClass getInstance();
      if (SingltonClassObject == null) begin
	 SingltonClassObject = new ();
      end
      return SingltonClassObject;
   endfunction // getInstance
     
endclass
