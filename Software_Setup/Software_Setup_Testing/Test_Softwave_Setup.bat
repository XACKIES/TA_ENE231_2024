ghdl -a -fsynopsys .\seven_seg.vhd 
ghdl -a -fsynopsys .\seven_seg_tb.vhd
ghdl -e -fsynopsys tb_seven_seg
ghdl -r -fsynopsys tb_seven_seg --vcd=seven_seg_tb.vcd
gtkwave .\seven_seg_tb.vcd