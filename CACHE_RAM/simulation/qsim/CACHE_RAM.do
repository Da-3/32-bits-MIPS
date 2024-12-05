onerror {exit -code 1}
vlib work
vcom -work work CACHE_RAM.vho
vcom -work work Waveform.vwf.vht
vsim -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.CACHE_RAM_vhd_vec_tst
vcd file -direction CACHE_RAM.msim.vcd
vcd add -internal CACHE_RAM_vhd_vec_tst/*
vcd add -internal CACHE_RAM_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

