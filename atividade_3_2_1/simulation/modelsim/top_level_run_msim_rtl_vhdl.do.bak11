transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_1/PO_Divisao.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_1/PO.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_1/decoder3x8.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_1/registrador16bits.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_1/PC_Divisao.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_1/hex7seg.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_1/PC.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_1/DivisaoSubSuc.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_1/top_level.vhd}

vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_1/tb_top_level.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_top_level

add wave *
view structure
view signals
run -all
