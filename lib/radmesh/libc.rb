require 'ffi'

module RADMesh
  # helper module for memcpy
  # @!visibility private
  module LibC
    extend FFI::Library
    ffi_lib FFI::Library::LIBC
    attach_function :memcpy, [:pointer, :pointer, :size_t], :pointer
  end
end
