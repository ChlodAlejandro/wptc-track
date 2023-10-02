add_executable(
    track

    track.c track.h
    scales.c scales.h
    jma.h jma.c
    template.c template.h
    tab.c tab.h
    tcr.c tcr.h
    atcf.c atcf.h
    hurdat2.c hurdat2.h
    hurdat.c hurdat.h
    md.c md.h
)

target_link_libraries(track ${CAIRO_LIBRARIES})
target_include_directories(track PUBLIC ${CAIRO_INCLUDE_DIRS})
target_compile_options(track PUBLIC ${CAIRO_CFLAGS_OTHER})