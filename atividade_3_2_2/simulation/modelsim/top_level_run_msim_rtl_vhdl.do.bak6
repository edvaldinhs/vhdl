transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_2/PO.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_2/PC_Media.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_2/decoder3x8.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_2/registrador16bits.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_2/PO_Media.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_2/hex7seg.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_2/PC.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_2/bin2bcd.vhd}
vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_2/top_level.vhd}

vcom -93 -work work {/home/edvaldinhs/EddyPrograms/vhdl/atividade_3_2_2/tb_top_level_media.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_top_level_media

add wave *
view structure
view signals
run -all
