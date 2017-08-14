include(Quartus)

configure_file(Top.qsf Top.qsf)
configure_file(Top.srf Top.srf)
configure_file(Top.sdc Top.sdc)

set(FPGA_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/Top.sv)

add_fpga(PROJECT Top
         FAMILY "Cyclone IV E"
         PART "EP4CE22F17C6"
         SOURCES ${FPGA_SOURCES})

add_custom_command(OUTPUT __program_de0_nano__
                   COMMAND ${QUARTUS_PGM_EXECUTABLE} --mode=jtag -o \"P\;Top.sof\"
                   DEPENDS Top.sof)

add_custom_target(de0-nano DEPENDS Top.sta.rpt)
add_custom_target(de0-nano-program DEPENDS __program_de0_nano__)
