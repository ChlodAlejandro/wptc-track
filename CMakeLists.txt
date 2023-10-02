cmake_minimum_required(VERSION 3.12)

project(Tracks DESCRIPTION "WikiProject Tropical cyclones track map generator")

find_package(PkgConfig REQUIRED)
pkg_check_modules(CAIRO REQUIRED cairo>=1.0.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_executable(track
    src/track.c src/track.h
    src/scales.c src/scales.h
    src/template.c src/template.h

    src/jma.h src/jma.c
    src/tab.c src/tab.h
    src/tcr.c src/tcr.h
    src/atcf.c src/atcf.h
    src/hurdat2.c src/hurdat2.h
    src/hurdat.c src/hurdat.h
    src/md.c src/md.h
)

target_link_libraries(track ${CAIRO_LIBRARIES})
target_include_directories(track PUBLIC ${CAIRO_INCLUDE_DIRS})
target_compile_options(track PUBLIC ${CAIRO_CFLAGS_OTHER})