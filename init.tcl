proc simdes {fname} {
    set des_dir "./des"
    set tb_dir  "./tb"

    set des_file "$des_dir/$fname.vhd"
    set tb_file  "$tb_dir/${fname}_tb.vhd"

    add_files $des_file
    set_property top $fname [get_filesets sources_1]

    add_files -fileset sim_1 $tb_file
    set_property top ${fname}_tb [get_filesets sim_1]

    update_compile_order -fileset sources_1
    update_compile_order -fileset sim_1

    launch_simulation
}
