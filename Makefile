VERILOG = iverilog
TARGET = BCD.vcd
TEMP = BCD.vvp
$(TARGET) :  $(TEMP)
	vvp $(TEMP)
$(TEMP): BCD_tb.v BCD.v
	$(VERILOG) -o $(TEMP) BCD_tb.v BCD.v
clean:
	-del $(TARGET)
	-del $(TEMP)