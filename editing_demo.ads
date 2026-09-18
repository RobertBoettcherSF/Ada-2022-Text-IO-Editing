--  Ada 2022 topic: Ada.Text_IO.Editing (decimal pictures).
pragma Ada_2022;

package Editing_Demo is

   type Money is delta 0.01 digits 6;

   --  Format Item with picture "999.99".
   function Format_Money (Item : Money) return String;

end Editing_Demo;
