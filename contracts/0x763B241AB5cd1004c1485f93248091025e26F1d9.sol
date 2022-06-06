contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_ae85e61a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(64 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
        mem[64] = (98 * arg1.length) + (32 * arg2.length) + 224
        if not arg1.length:
            idx = 0
            s = 0
            while idx < arg1.length:
                require idx < mem[96]
                _114 = mem[(32 * idx) + 128]
                _115 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[(32 * arg1.length) + 128]
                _117 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < 32 * _117:
                    mem[mem[64] + s + 100] = mem[(32 * arg1.length) + s + 160]
                    s = s + 32
                    continue 
                require ext_code.size(address(_114))
                staticcall address(_114).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _117) + _115 + -mem[64] + 96]
                if ext_call.success:
                    _229 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _239 = mem[_229]
                    require mem[_229] <= 4294967296
                    require mem[_229] + 32 <= return_data.size
                    require mem[mem[_229] + _229] <= 4294967296 and mem[_229] + (32 * mem[mem[_229] + _229]) + 32 <= return_data.size
                    mem[_229 + ceil32(return_data.size)] = mem[mem[_229] + _229]
                    _251 = mem[_239 + _229]
                    s = 0
                    while s < 32 * _251:
                        mem[_229 + ceil32(return_data.size) + s + 32] = mem[_239 + _229 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _251) + _229 + ceil32(return_data.size) + 32
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = idx
                    require 1 < mem[_229 + ceil32(return_data.size)]
                    require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                    mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_229 + ceil32(return_data.size) + 64]
                idx = idx + 1
                s = _114
                continue 
            _111 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
            _113 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
            mem[mem[64] + 96 len floor32(mem[(64 * arg1.length) + (32 * arg2.length) + 192])] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len floor32(mem[(64 * arg1.length) + (32 * arg2.length) + 192])]
            mem[mem[64] + 32] = (32 * _113) + 96
            mem[(32 * _113) + _111 + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _208 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[(32 * _113) + _111 + 128 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
            return memory
              from mem[64]
               len (32 * _208) + (32 * _113) + _111 + -mem[64] + 128
        mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < mem[96]
            _121 = mem[(32 * idx) + 128]
            _122 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg1.length) + 128]
            _124 = mem[(32 * arg1.length) + 128]
            s = 0
            while s < 32 * _124:
                mem[mem[64] + s + 100] = mem[(32 * arg1.length) + s + 160]
                s = s + 32
                continue 
            require ext_code.size(address(_121))
            staticcall address(_121).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _124) + _122 + -mem[64] + 96]
            if ext_call.success:
                _232 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _241 = mem[_232]
                require mem[_232] <= 4294967296
                require mem[_232] + 32 <= return_data.size
                require mem[mem[_232] + _232] <= 4294967296 and mem[_232] + (32 * mem[mem[_232] + _232]) + 32 <= return_data.size
                mem[_232 + ceil32(return_data.size)] = mem[mem[_232] + _232]
                _252 = mem[_241 + _232]
                s = 0
                while s < 32 * _252:
                    mem[_232 + ceil32(return_data.size) + s + 32] = mem[_241 + _232 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _252) + _232 + ceil32(return_data.size) + 32
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = idx
                require 1 < mem[_232 + ceil32(return_data.size)]
                require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_232 + ceil32(return_data.size) + 64]
            idx = idx + 1
            s = _121
            continue 
        _118 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
        _120 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
        mem[mem[64] + 96 len floor32(mem[(64 * arg1.length) + (32 * arg2.length) + 192])] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len floor32(mem[(64 * arg1.length) + (32 * arg2.length) + 192])]
        mem[mem[64] + 32] = (32 * _120) + 96
        mem[(32 * _120) + _118 + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _213 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[(32 * _120) + _118 + 128 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        return memory
          from mem[64]
           len (32 * _213) + (32 * _120) + _118 + -mem[64] + 128
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
    mem[64] = (98 * arg1.length) + (32 * arg2.length) + 224
    if not arg1.length:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < mem[96]
            _128 = mem[(32 * idx) + 128]
            _129 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg1.length) + 128]
            _131 = mem[(32 * arg1.length) + 128]
            s = 0
            while s < 32 * _131:
                mem[mem[64] + s + 100] = mem[(32 * arg1.length) + s + 160]
                s = s + 32
                continue 
            require ext_code.size(address(_128))
            staticcall address(_128).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _131) + _129 + -mem[64] + 96]
            if ext_call.success:
                _235 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _243 = mem[_235]
                require mem[_235] <= 4294967296
                require mem[_235] + 32 <= return_data.size
                require mem[mem[_235] + _235] <= 4294967296 and mem[_235] + (32 * mem[mem[_235] + _235]) + 32 <= return_data.size
                mem[_235 + ceil32(return_data.size)] = mem[mem[_235] + _235]
                _253 = mem[_243 + _235]
                s = 0
                while s < 32 * _253:
                    mem[_235 + ceil32(return_data.size) + s + 32] = mem[_243 + _235 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _253) + _235 + ceil32(return_data.size) + 32
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = idx
                require 1 < mem[_235 + ceil32(return_data.size)]
                require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_235 + ceil32(return_data.size) + 64]
            idx = idx + 1
            s = _128
            continue 
        _125 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
        _127 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
        mem[mem[64] + 96 len floor32(mem[(64 * arg1.length) + (32 * arg2.length) + 192])] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len floor32(mem[(64 * arg1.length) + (32 * arg2.length) + 192])]
        mem[mem[64] + 32] = (32 * _127) + 96
        mem[(32 * _127) + _125 + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _218 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[(32 * _127) + _125 + 128 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        return memory
          from mem[64]
           len (32 * _218) + (32 * _127) + _125 + -mem[64] + 128
    mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[96]
        _135 = mem[(32 * idx) + 128]
        _136 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[(32 * arg1.length) + 128]
        _138 = mem[(32 * arg1.length) + 128]
        s = 0
        while s < 32 * _138:
            mem[mem[64] + s + 100] = mem[(32 * arg1.length) + s + 160]
            s = s + 32
            continue 
        require ext_code.size(address(_135))
        staticcall address(_135).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _138) + _136 + -mem[64] + 96]
        if ext_call.success:
            _238 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _245 = mem[_238]
            require mem[_238] <= 4294967296
            require mem[_238] + 32 <= return_data.size
            require mem[mem[_238] + _238] <= 4294967296 and mem[_238] + (32 * mem[mem[_238] + _238]) + 32 <= return_data.size
            mem[_238 + ceil32(return_data.size)] = mem[mem[_238] + _238]
            _254 = mem[_245 + _238]
            s = 0
            while s < 32 * _254:
                mem[_238 + ceil32(return_data.size) + s + 32] = mem[_245 + _238 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _254) + _238 + ceil32(return_data.size) + 32
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = idx
            require 1 < mem[_238 + ceil32(return_data.size)]
            require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
            mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_238 + ceil32(return_data.size) + 64]
        idx = idx + 1
        s = _135
        continue 
    _132 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
    _134 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
    mem[mem[64] + 96 len floor32(mem[(64 * arg1.length) + (32 * arg2.length) + 192])] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len floor32(mem[(64 * arg1.length) + (32 * arg2.length) + 192])]
    mem[mem[64] + 32] = (32 * _134) + 96
    mem[(32 * _134) + _132 + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    _223 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[(32 * _134) + _132 + 128 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
    return memory
      from mem[64]
       len (32 * _223) + (32 * _134) + _132 + -mem[64] + 128
}



}
