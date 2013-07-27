module console_address_decode(
			      input logic [15:0] address_in,
			      output logic sram_select,
			      output logic io_select,
			      output logic eeprom_select
			      );

   //Address space mappings
   parameter SRAM_ADDRESS_START = 16'h0000;
   parameter SRAM_ADDRESS_END = 16'hBFFF;
   parameter IO_ADDRESS_START = 16'hC000;
   parameter IO_ADDRESS_END = 16'hDFFF;
   parameter EEPROM_ADDRESS_START = 16'E000;
   parameter EEPROM_ADDRESS_END = 16'hFFFF;
   
   always_comb
     begin
	//Default values
	sram_select = 1;
	io_select = 1;
	eeprom_select = 1;
	if (address_in>=SRAM_ADDRESS_START && address_in<=SRAM_ADDRESS_END)
	  sram_select=0;
	if (address_in>=IO_ADDRESS_START && address_in<=IO_ADDRESS_END)
	  io_select=0;
	if (address_in>=EEPROM_ADDRESS_START && address_in<=EEPROM_ADDRESS_END)
          eeprom_select=0;	
     end
