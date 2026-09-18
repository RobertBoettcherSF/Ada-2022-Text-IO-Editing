pragma Ada_2022;

with Ada.Text_IO.Editing;

package body Editing_Demo is

   package DE renames Ada.Text_IO.Editing;
   package Money_Output is new DE.Decimal_Output (Num => Money);

   Pic : constant DE.Picture := DE.To_Picture ("999.99");

   function Format_Money (Item : Money) return String is
   begin
      return Money_Output.Image (Item, Pic);
   end Format_Money;

end Editing_Demo;
