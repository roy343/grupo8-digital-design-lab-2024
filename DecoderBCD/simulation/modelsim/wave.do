onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Decoder_tb/a
add wave -noupdate /Decoder_tb/b
add wave -noupdate /Decoder_tb/c
add wave -noupdate /Decoder_tb/d
add wave -noupdate /Decoder_tb/t
add wave -noupdate /Decoder_tb/u
add wave -noupdate /Decoder_tb/v
add wave -noupdate /Decoder_tb/w
add wave -noupdate /Decoder_tb/x
add wave -noupdate /Decoder_tb/y
add wave -noupdate /Decoder_tb/z
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {139 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1 ns}
