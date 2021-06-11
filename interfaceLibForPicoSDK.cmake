## Include this file if you want to use brotli in YOUR (Pico) project

cmake_minimum_required(VERSION 3.12)

# Define the brotli library
add_library(brotli INTERFACE)

target_sources(brotli INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/c/common/constants.c
    ${CMAKE_CURRENT_LIST_DIR}/c/common/context.c
    ${CMAKE_CURRENT_LIST_DIR}/c/common/dictionary.c
    ${CMAKE_CURRENT_LIST_DIR}/c/common/platform.c
    ${CMAKE_CURRENT_LIST_DIR}/c/common/transform.c
    ${CMAKE_CURRENT_LIST_DIR}/c/dec/bit_reader.c
    ${CMAKE_CURRENT_LIST_DIR}/c/dec/decode.c
    ${CMAKE_CURRENT_LIST_DIR}/c/dec/huffman.c
    ${CMAKE_CURRENT_LIST_DIR}/c/dec/state.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/backward_references.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/backward_references_hq.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/bit_cost.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/block_splitter.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/brotli_bit_stream.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/cluster.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/command.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/compress_fragment.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/compress_fragment_two_pass.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/dictionary_hash.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/encode.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/encoder_dict.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/entropy_encode.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/fast_log.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/histogram.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/literal_cost.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/memory.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/metablock.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/static_dict.c
    ${CMAKE_CURRENT_LIST_DIR}/c/enc/utf8_util.c
)

target_include_directories(brotli INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/c/include
)
