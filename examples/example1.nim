import .. / duktape / duktape
import streams


var checkELF: DTCFunction = (proc (ctx: DTContext): cint{.stdcall.} =
    let
      file_name = $duk_to_string(ctx, 0)
      f = openFileStream(file_name, fmRead)
      buf = f.readUint32()
    f.close()
    if buf == 0x464c457f: # elf header
      return 1
    return 0
)

var println: DTCFunction = (proc (ctx: DTContext): cint{.stdcall.} =
    echo duk_to_string(ctx, 0)
)

# Bind proc to the context and global "println" variable
var
  ctx = duk_create_heap_default()
discard ctx.duk_push_c_function(checkELF, cast[cint](-1))
# discard ctx.duk_push_c_function(println, cast[cint](-1))
discard ctx.duk_put_global_string("checkELF")
# discard ctx.duk_put_global_string("println")

# Call bound proc from Javascript
ctx.duk_eval_string("checkELF('/tmp/test')");

# Cleanup duktape memory
ctx.duk_destroy_heap();