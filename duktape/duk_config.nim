import strutils
const sourcePath = currentSourcePath().split({'\\', '/'})[0..^2].join("/")
{.passC: "-I\"" & sourcePath & "/src\"".}
const headerduk_config = sourcePath & "/src/duk_config.h"
type
  duk_uint8_t* = uint8_t
  duk_int8_t* = int8_t
  duk_uint16_t* = uint16_t
  duk_int16_t* = int16_t
  duk_uint32_t* = uint32_t
  duk_int32_t* = int32_t
  duk_uint64_t* = uint64_t
  duk_int64_t* = int64_t
  duk_uint_least8_t* = uint_least8_t
  duk_int_least8_t* = int_least8_t
  duk_uint_least16_t* = uint_least16_t
  duk_int_least16_t* = int_least16_t
  duk_uint_least32_t* = uint_least32_t
  duk_int_least32_t* = int_least32_t
  duk_uint_least64_t* = uint_least64_t
  duk_int_least64_t* = int_least64_t
  duk_uint_fast8_t* = uint_fast8_t
  duk_int_fast8_t* = int_fast8_t
  duk_uint_fast16_t* = uint_fast16_t
  duk_int_fast16_t* = int_fast16_t
  duk_uint_fast32_t* = uint_fast32_t
  duk_int_fast32_t* = int_fast32_t
  duk_uint_fast64_t* = uint_fast64_t
  duk_int_fast64_t* = int_fast64_t
  duk_uintptr_t* = uintptr_t
  duk_intptr_t* = intptr_t
  duk_uintmax_t* = uintmax_t
  duk_intmax_t* = intmax_t
  duk_size_t* = csize_t
  duk_ptrdiff_t* = ptrdiff_t
  duk_int_t* = cint
  duk_uint_t* = cuint
  duk_int_fast_t* = duk_int_fast32_t
  duk_uint_fast_t* = duk_uint_fast32_t
  duk_small_int_t* = cint
  duk_small_uint_t* = cuint
  duk_small_int_fast_t* = duk_int_fast16_t
  duk_small_uint_fast_t* = duk_uint_fast16_t
  duk_bool_t* = duk_small_uint_t
  duk_idx_t* = duk_int_t
  duk_uidx_t* = duk_uint_t
  duk_uarridx_t* = duk_uint_t
  duk_ret_t* = duk_small_int_t
  duk_errcode_t* = duk_int_t
  duk_codepoint_t* = duk_int_t
  duk_ucodepoint_t* = duk_uint_t
  duk_float_t* = cfloat
  duk_double_t* = cdouble
  duk_context* = duk_hthread