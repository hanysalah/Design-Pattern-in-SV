class SingltonClass;

   static SingltonClass SingltonClassObject;

   string name;
   
   protected function new ();
   endfunction // new

   static function SinglonClass getInstance();
      if (SingltonClassObject == null) begin
	 SingltonClassObject = new ();
      end
      return SinglonClassObject;
   endfunction // getInstance
     
endclass
