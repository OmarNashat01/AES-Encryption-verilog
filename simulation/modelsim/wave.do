onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/clk
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/reset
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/we
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/Indata
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
add wave -noupdate -radix hexadecimal -radixshowbase 0 /AES_tb/encreptor/tmpwire
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/encreptor/state
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/encreptor/key
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/encreptor/state_current
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/encreptor/state_next
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/encreptor/rounds
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/encreptor/counter
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/encreptor/keybytes
add wave -noupdate -height 40 -radix hexadecimal -radixshowbase 0 /AES_tb/encreptor/Nk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {393 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 191
configure wave -valuecolwidth 285
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {169 ps} {592 ps}
