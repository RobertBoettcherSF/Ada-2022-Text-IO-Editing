pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Editing_Demo; use Editing_Demo;
procedure Tests is
   S : constant String := Format_Money (12.50);
begin
   Assert (S'Length > 0);
   Assert ((for some C of S => C = '1')
           and then (for some C of S => C = '2')
           and then (for some C of S => C = '5'));
   Put_Line ("PASS Text_IO.Editing Image: [" & S & "]");
   Put_Line ("All Text_IO.Editing topic tests passed.");
end Tests;
