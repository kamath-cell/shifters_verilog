To execute and see the outputs for the inputs given in the testbench file called tbddco.v which shows how left/right shifters & arithmetic left/right shifters work,issue the following commands.As a prerequisite,install iverilog compiler in your local machine.

>iverilog -o out lib.v ddcopro.v tbddco.v
>vvp out
