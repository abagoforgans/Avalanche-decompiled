contract main {




// =====================  Runtime code  =====================


#
#  - getPair(address arg1)
#
function _fallback() payable {
    revert
}

function sub_190dd250(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = arg3.length
    if not arg3.length:
        require arg3.length <= test266151307()
        mem[(64 * arg3.length) + 160] = arg3.length
        mem[64] = (98 * arg3.length) + 192
        if not arg3.length:
            idx = 0
            while idx < arg3.length:
                _139 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_139 + 32 len 64] = call.data[calldata.size len 64]
                require idx < mem[96]
                require 0 < mem[_139]
                mem[_139 + 32] = mem[(32 * idx) + 140 len 20]
                require 1 < mem[_139]
                mem[_139 + 64] = arg2
                mem[_139 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_139 + 100] = 10^18
                mem[_139 + 132] = 64
                mem[_139 + 164] = mem[_139]
                s = 0
                while s < 32 * mem[_139]:
                    mem[_139 + s + 196] = mem[_139 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg1)
                staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 10^18, 64, mem[_139 + 164 len (32 * mem[_139]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_139 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _139 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _288 = mem[_139 + 96 len 4], 232830643
                require mem[_139 + 96 len 4], 232830643 <= 4294967296
                require mem[_139 + 96 len 4], 232830643 + 32 <= return_data.size
                require mem[mem[_139 + 96 len 4], 232830643 + _139 + 96] <= 4294967296 and mem[_139 + 96 len 4], 232830643 + (32 * mem[mem[_139 + 96 len 4], 232830643 + _139 + 96]) + 32 <= return_data.size
                mem[_139 + ceil32(return_data.size) + 96] = mem[mem[_139 + 96 len 4], 232830643 + _139 + 96]
                _300 = mem[_288 + _139 + 96]
                s = 0
                while s < 32 * _300:
                    mem[_139 + ceil32(return_data.size) + s + 128] = mem[_288 + _139 + s + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _300) + _139 + ceil32(return_data.size) + 128
                require 1 < mem[_139 + ceil32(return_data.size) + 96]
                require idx < mem[(64 * arg3.length) + 160]
                mem[(32 * idx) + (64 * arg3.length) + 192] = mem[_139 + ceil32(return_data.size) + 160]
                require idx < mem[96]
                require idx < mem[(32 * arg3.length) + 128]
                mem[(32 * idx) + (32 * arg3.length) + 160] = mem[(32 * idx) + 140 len 20]
                idx = idx + 1
                continue 
            _136 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(32 * arg3.length) + 128]
            _138 = mem[(32 * arg3.length) + 128]
            mem[mem[64] + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
            mem[mem[64] + 32] = (32 * _138) + 96
            mem[(32 * _138) + _136 + 96] = mem[(64 * arg3.length) + 160]
            _257 = mem[(64 * arg3.length) + 160]
            mem[(32 * _138) + _136 + 128 len floor32(mem[(64 * arg3.length) + 160])] = mem[(64 * arg3.length) + 192 len floor32(mem[(64 * arg3.length) + 160])]
            return memory
              from mem[64]
               len (32 * _257) + (32 * _138) + _136 + -mem[64] + 128
        mem[(64 * arg3.length) + 192 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        idx = 0
        while idx < arg3.length:
            _143 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_143 + 32 len 64] = call.data[calldata.size len 64]
            require idx < mem[96]
            require 0 < mem[_143]
            mem[_143 + 32] = mem[(32 * idx) + 140 len 20]
            require 1 < mem[_143]
            mem[_143 + 64] = arg2
            mem[_143 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_143 + 100] = 10^18
            mem[_143 + 132] = 64
            mem[_143 + 164] = mem[_143]
            s = 0
            while s < 32 * mem[_143]:
                mem[_143 + s + 196] = mem[_143 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(arg1)
            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^18, 64, mem[_143 + 164 len (32 * mem[_143]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_143 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _143 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _290 = mem[_143 + 96 len 4], 232830643
            require mem[_143 + 96 len 4], 232830643 <= 4294967296
            require mem[_143 + 96 len 4], 232830643 + 32 <= return_data.size
            require mem[mem[_143 + 96 len 4], 232830643 + _143 + 96] <= 4294967296 and mem[_143 + 96 len 4], 232830643 + (32 * mem[mem[_143 + 96 len 4], 232830643 + _143 + 96]) + 32 <= return_data.size
            mem[_143 + ceil32(return_data.size) + 96] = mem[mem[_143 + 96 len 4], 232830643 + _143 + 96]
            _301 = mem[_290 + _143 + 96]
            s = 0
            while s < 32 * _301:
                mem[_143 + ceil32(return_data.size) + s + 128] = mem[_290 + _143 + s + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _301) + _143 + ceil32(return_data.size) + 128
            require 1 < mem[_143 + ceil32(return_data.size) + 96]
            require idx < mem[(64 * arg3.length) + 160]
            mem[(32 * idx) + (64 * arg3.length) + 192] = mem[_143 + ceil32(return_data.size) + 160]
            require idx < mem[96]
            require idx < mem[(32 * arg3.length) + 128]
            mem[(32 * idx) + (32 * arg3.length) + 160] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        _140 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg3.length) + 128]
        _142 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 32] = (32 * _142) + 96
        mem[(32 * _142) + _140 + 96] = mem[(64 * arg3.length) + 160]
        _262 = mem[(64 * arg3.length) + 160]
        mem[(32 * _142) + _140 + 128 len floor32(mem[(64 * arg3.length) + 160])] = mem[(64 * arg3.length) + 192 len floor32(mem[(64 * arg3.length) + 160])]
        return memory
          from mem[64]
           len (32 * _262) + (32 * _142) + _140 + -mem[64] + 128
    mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
    require arg3.length <= test266151307()
    mem[(64 * arg3.length) + 160] = arg3.length
    mem[64] = (98 * arg3.length) + 192
    if not arg3.length:
        idx = 0
        while idx < arg3.length:
            _147 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_147 + 32 len 64] = call.data[calldata.size len 64]
            require idx < mem[96]
            require 0 < mem[_147]
            mem[_147 + 32] = mem[(32 * idx) + 140 len 20]
            require 1 < mem[_147]
            mem[_147 + 64] = arg2
            mem[_147 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_147 + 100] = 10^18
            mem[_147 + 132] = 64
            mem[_147 + 164] = mem[_147]
            s = 0
            while s < 32 * mem[_147]:
                mem[_147 + s + 196] = mem[_147 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(arg1)
            staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 10^18, 64, mem[_147 + 164 len (32 * mem[_147]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_147 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _147 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _292 = mem[_147 + 96 len 4], 232830643
            require mem[_147 + 96 len 4], 232830643 <= 4294967296
            require mem[_147 + 96 len 4], 232830643 + 32 <= return_data.size
            require mem[mem[_147 + 96 len 4], 232830643 + _147 + 96] <= 4294967296 and mem[_147 + 96 len 4], 232830643 + (32 * mem[mem[_147 + 96 len 4], 232830643 + _147 + 96]) + 32 <= return_data.size
            mem[_147 + ceil32(return_data.size) + 96] = mem[mem[_147 + 96 len 4], 232830643 + _147 + 96]
            _302 = mem[_292 + _147 + 96]
            s = 0
            while s < 32 * _302:
                mem[_147 + ceil32(return_data.size) + s + 128] = mem[_292 + _147 + s + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _302) + _147 + ceil32(return_data.size) + 128
            require 1 < mem[_147 + ceil32(return_data.size) + 96]
            require idx < mem[(64 * arg3.length) + 160]
            mem[(32 * idx) + (64 * arg3.length) + 192] = mem[_147 + ceil32(return_data.size) + 160]
            require idx < mem[96]
            require idx < mem[(32 * arg3.length) + 128]
            mem[(32 * idx) + (32 * arg3.length) + 160] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        _144 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg3.length) + 128]
        _146 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 32] = (32 * _146) + 96
        mem[(32 * _146) + _144 + 96] = mem[(64 * arg3.length) + 160]
        _267 = mem[(64 * arg3.length) + 160]
        mem[(32 * _146) + _144 + 128 len floor32(mem[(64 * arg3.length) + 160])] = mem[(64 * arg3.length) + 192 len floor32(mem[(64 * arg3.length) + 160])]
        return memory
          from mem[64]
           len (32 * _267) + (32 * _146) + _144 + -mem[64] + 128
    mem[(64 * arg3.length) + 192 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        _151 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_151 + 32 len 64] = call.data[calldata.size len 64]
        require idx < mem[96]
        require 0 < mem[_151]
        mem[_151 + 32] = mem[(32 * idx) + 140 len 20]
        require 1 < mem[_151]
        mem[_151 + 64] = arg2
        mem[_151 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_151 + 100] = 10^18
        mem[_151 + 132] = 64
        mem[_151 + 164] = mem[_151]
        s = 0
        while s < 32 * mem[_151]:
            mem[_151 + s + 196] = mem[_151 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(arg1)
        staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args 10^18, 64, mem[_151 + 164 len (32 * mem[_151]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_151 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _151 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _294 = mem[_151 + 96 len 4], 232830643
        require mem[_151 + 96 len 4], 232830643 <= 4294967296
        require mem[_151 + 96 len 4], 232830643 + 32 <= return_data.size
        require mem[mem[_151 + 96 len 4], 232830643 + _151 + 96] <= 4294967296 and mem[_151 + 96 len 4], 232830643 + (32 * mem[mem[_151 + 96 len 4], 232830643 + _151 + 96]) + 32 <= return_data.size
        mem[_151 + ceil32(return_data.size) + 96] = mem[mem[_151 + 96 len 4], 232830643 + _151 + 96]
        _303 = mem[_294 + _151 + 96]
        s = 0
        while s < 32 * _303:
            mem[_151 + ceil32(return_data.size) + s + 128] = mem[_294 + _151 + s + 128]
            s = s + 32
            continue 
        mem[64] = (32 * _303) + _151 + ceil32(return_data.size) + 128
        require 1 < mem[_151 + ceil32(return_data.size) + 96]
        require idx < mem[(64 * arg3.length) + 160]
        mem[(32 * idx) + (64 * arg3.length) + 192] = mem[_151 + ceil32(return_data.size) + 160]
        require idx < mem[96]
        require idx < mem[(32 * arg3.length) + 128]
        mem[(32 * idx) + (32 * arg3.length) + 160] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    _148 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(32 * arg3.length) + 128]
    _150 = mem[(32 * arg3.length) + 128]
    mem[mem[64] + 96 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[mem[64] + 32] = (32 * _150) + 96
    mem[(32 * _150) + _148 + 96] = mem[(64 * arg3.length) + 160]
    _272 = mem[(64 * arg3.length) + 160]
    mem[(32 * _150) + _148 + 128 len floor32(mem[(64 * arg3.length) + 160])] = mem[(64 * arg3.length) + 192 len floor32(mem[(64 * arg3.length) + 160])]
    return memory
      from mem[64]
       len (32 * _272) + (32 * _150) + _148 + -mem[64] + 128
}

function getToken(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        if not return_data.size:
            mem[128] = 'err'
            mem[160] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return address(arg1), 160, 224, ext_call.return_data[0] << 248, ext_call.return_data[0], 3, 'err' << 232, 3, 'err' % 16777216
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _18 = mem[160]
            require mem[160] <= 4294967296
            require mem[160] + 32 <= return_data.size
            require mem[mem[160] + 160] <= 4294967296 and mem[160] + mem[mem[160] + 160] + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[mem[160] + 160]
            _35 = mem[_18 + 160]
            mem[ceil32(return_data.size) + 192 len ceil32(mem[_18 + 160])] = mem[_18 + 192 len ceil32(mem[_18 + 160])]
            if not _35 % 32:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_35 + ceil32(return_data.size) + 192] = arg1
                mem[_35 + ceil32(return_data.size) + 288] = uint8(ext_call.return_data[0])
                mem[_35 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                mem[_35 + ceil32(return_data.size) + 224] = 160
                mem[_35 + ceil32(return_data.size) + 352] = mem[ceil32(return_data.size) + 160]
                mem[_35 + ceil32(return_data.size) + 384 len ceil32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 160])]
                mem[mem[ceil32(return_data.size) + 160] + _35 + ceil32(return_data.size) + 384] = 3
                return address(arg1), 
                       Array(len=mem[ceil32(return_data.size) + 160], data=mem[_35 + ceil32(return_data.size) + 384 len mem[ceil32(return_data.size) + 160] + 32], 'err' << 232),
                       mem[ceil32(return_data.size) + 160] + 192,
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0]
            mem[floor32(_35) + ceil32(return_data.size) + 192] = mem[floor32(_35) + ceil32(return_data.size) + -(_35 % 32) + 224 len _35 % 32]
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_35) + ceil32(return_data.size) + 224] = arg1
            mem[floor32(_35) + ceil32(return_data.size) + 320] = uint8(ext_call.return_data[0])
            mem[floor32(_35) + ceil32(return_data.size) + 352] = ext_call.return_data[0]
            mem[floor32(_35) + ceil32(return_data.size) + 256] = 160
            mem[floor32(_35) + ceil32(return_data.size) + 384] = mem[ceil32(return_data.size) + 160]
            mem[floor32(_35) + ceil32(return_data.size) + 416 len ceil32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 160])]
            mem[mem[ceil32(return_data.size) + 160] + floor32(_35) + ceil32(return_data.size) + 416] = 3
            return address(arg1), 
                   Array(len=mem[ceil32(return_data.size) + 160], data=mem[floor32(_35) + ceil32(return_data.size) + 416 len mem[ceil32(return_data.size) + 160] + 32], 'err' << 232),
                   mem[ceil32(return_data.size) + 160] + 192,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0]
        mem[ceil32(return_data.size) + 129] = 'err'
        mem[ceil32(return_data.size) + 161] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.name() with:
                gas gas_remaining wei
        if not ext_call.success:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return address(arg1), 160, 224, ext_call.return_data[0] << 248, ext_call.return_data[0], 3, 'err' << 232, 3, 'err' % 16777216
        mem[ceil32(return_data.size) + 161 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _20 = mem[ceil32(return_data.size) + 161]
        require mem[ceil32(return_data.size) + 161] <= 4294967296
        require mem[ceil32(return_data.size) + 161] + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 161] + ceil32(return_data.size) + 161] <= 4294967296 and mem[ceil32(return_data.size) + 161] + mem[mem[ceil32(return_data.size) + 161] + ceil32(return_data.size) + 161] + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 161] = mem[mem[ceil32(return_data.size) + 161] + ceil32(return_data.size) + 161]
        _40 = mem[_20 + ceil32(return_data.size) + 161]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 193 len ceil32(mem[_20 + ceil32(return_data.size) + 161])] = mem[_20 + ceil32(return_data.size) + 193 len ceil32(mem[_20 + ceil32(return_data.size) + 161])]
        if not _40 % 32:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_40 + ceil32(return_data.size) + ceil32(return_data.size) + 193] = arg1
            mem[_40 + ceil32(return_data.size) + ceil32(return_data.size) + 289] = uint8(ext_call.return_data[0])
            mem[_40 + ceil32(return_data.size) + ceil32(return_data.size) + 321] = ext_call.return_data[0]
            mem[_40 + ceil32(return_data.size) + ceil32(return_data.size) + 225] = 160
            mem[_40 + ceil32(return_data.size) + ceil32(return_data.size) + 353] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 161]
            mem[_40 + ceil32(return_data.size) + ceil32(return_data.size) + 385 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 161])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 161])]
            mem[mem[ceil32(return_data.size) + ceil32(return_data.size) + 161] + _40 + ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
            return address(arg1), 
                   Array(len=mem[ceil32(return_data.size) + ceil32(return_data.size) + 161], data=mem[_40 + ceil32(return_data.size) + ceil32(return_data.size) + 385 len mem[ceil32(return_data.size) + ceil32(return_data.size) + 161] + 32], 'err' << 232),
                   mem[ceil32(return_data.size) + ceil32(return_data.size) + 161] + 192,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0]
        mem[floor32(_40) + ceil32(return_data.size) + ceil32(return_data.size) + 193] = mem[floor32(_40) + ceil32(return_data.size) + ceil32(return_data.size) + -(_40 % 32) + 225 len _40 % 32]
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_40) + ceil32(return_data.size) + ceil32(return_data.size) + 225] = arg1
        mem[floor32(_40) + ceil32(return_data.size) + ceil32(return_data.size) + 321] = uint8(ext_call.return_data[0])
        mem[floor32(_40) + ceil32(return_data.size) + ceil32(return_data.size) + 353] = ext_call.return_data[0]
        mem[floor32(_40) + ceil32(return_data.size) + ceil32(return_data.size) + 257] = 160
        mem[floor32(_40) + ceil32(return_data.size) + ceil32(return_data.size) + 385] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 161]
        mem[floor32(_40) + ceil32(return_data.size) + ceil32(return_data.size) + 417 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 161])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 161])]
        mem[mem[ceil32(return_data.size) + ceil32(return_data.size) + 161] + floor32(_40) + ceil32(return_data.size) + ceil32(return_data.size) + 417] = 3
        return address(arg1), 
               Array(len=mem[ceil32(return_data.size) + ceil32(return_data.size) + 161], data=mem[floor32(_40) + ceil32(return_data.size) + ceil32(return_data.size) + 417 len mem[ceil32(return_data.size) + ceil32(return_data.size) + 161] + 32], 'err' << 232),
               mem[ceil32(return_data.size) + ceil32(return_data.size) + 161] + 192,
               ext_call.return_data[0] << 248,
               ext_call.return_data[0]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _14 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _14 % 32:
        mem[_14 + ceil32(return_data.size) + 128] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.name() with:
                gas gas_remaining wei
        if not ext_call.success:
            if not return_data.size:
                mem[64] = _14 + ceil32(return_data.size) + 192
                mem[_14 + ceil32(return_data.size) + 128] = 3
                mem[_14 + ceil32(return_data.size) + 160] = 'err'
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_14 + ceil32(return_data.size) + 192] = arg1
                mem[_14 + ceil32(return_data.size) + 288] = uint8(ext_call.return_data[0])
                mem[_14 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
                mem[_14 + ceil32(return_data.size) + 224] = 160
                mem[_14 + ceil32(return_data.size) + 352] = 3
                mem[_14 + ceil32(return_data.size) + 384] = 'err' % 16777216
                mem[_14 + ceil32(return_data.size) + 256] = 224
                mem[_14 + ceil32(return_data.size) + 416] = mem[ceil32(return_data.size) + 96]
                mem[_14 + ceil32(return_data.size) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                if not mem[ceil32(return_data.size) + 96] % 32:
                    return address(arg1), 
                           160,
                           224,
                           ext_call.return_data[0] << 248,
                           ext_call.return_data[0],
                           3,
                           'err' << 232,
                           mem[_14 + ceil32(return_data.size) + 416 len mem[ceil32(return_data.size) + 96] + 32]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _14 + ceil32(return_data.size) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _14 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
                return address(arg1), 
                       160,
                       224,
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       3,
                       'err' << 232,
                       mem[ceil32(return_data.size) + 96],
                       mem[_14 + ceil32(return_data.size) + 448 len floor32(mem[ceil32(return_data.size) + 96]) + 32]
            mem[_14 + ceil32(return_data.size) + 128] = return_data.size
            mem[_14 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _14 + ceil32(return_data.size) + ceil32(return_data.size) + 193
            mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 129] = 3
            mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 161] = 'err'
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 193] = arg1
            mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 289] = uint8(ext_call.return_data[0])
            mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 321] = ext_call.return_data[0]
            mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 225] = 160
            mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 353] = 3
            mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 385] = 'err' % 16777216
            mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 257] = 224
            mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 417] = mem[ceil32(return_data.size) + 96]
            mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 449 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                return address(arg1), 
                       160,
                       224,
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       3,
                       'err' << 232,
                       mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 417 len mem[ceil32(return_data.size) + 96] + 32]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _14 + ceil32(return_data.size) + ceil32(return_data.size) + 449] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _14 + ceil32(return_data.size) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 481 len mem[ceil32(return_data.size) + 96] % 32]
            return address(arg1), 
                   160,
                   224,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   3,
                   'err' << 232,
                   mem[_14 + ceil32(return_data.size) + ceil32(return_data.size) + 417 len floor32(mem[ceil32(return_data.size) + 96]) + 64]
        mem[_14 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _14 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _546 = mem[_14 + ceil32(return_data.size) + 128]
        require mem[_14 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_14 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require mem[mem[_14 + ceil32(return_data.size) + 128] + _14 + ceil32(return_data.size) + 128] <= 4294967296 and mem[_14 + ceil32(return_data.size) + 128] + mem[mem[_14 + ceil32(return_data.size) + 128] + _14 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        mem[_14 + (2 * ceil32(return_data.size)) + 128] = mem[mem[_14 + ceil32(return_data.size) + 128] + _14 + ceil32(return_data.size) + 128]
        _572 = mem[_546 + _14 + ceil32(return_data.size) + 128]
        mem[_14 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_546 + _14 + ceil32(return_data.size) + 128])] = mem[_546 + _14 + ceil32(return_data.size) + 160 len ceil32(mem[_546 + _14 + ceil32(return_data.size) + 128])]
        if not _572 % 32:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_572 + _14 + (2 * ceil32(return_data.size)) + 160] = arg1
            mem[_572 + _14 + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
            mem[_572 + _14 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            mem[_572 + _14 + (2 * ceil32(return_data.size)) + 192] = 160
            mem[_572 + _14 + (2 * ceil32(return_data.size)) + 320] = mem[_14 + (2 * ceil32(return_data.size)) + 128]
            mem[_572 + _14 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_14 + (2 * ceil32(return_data.size)) + 128])] = mem[_14 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_14 + (2 * ceil32(return_data.size)) + 128])]
            mem[_572 + _14 + (2 * ceil32(return_data.size)) + 224] = mem[_14 + (2 * ceil32(return_data.size)) + 128] + 192
            mem[mem[_14 + (2 * ceil32(return_data.size)) + 128] + _572 + _14 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
            _1140 = mem[ceil32(return_data.size) + 96]
            mem[mem[_14 + (2 * ceil32(return_data.size)) + 128] + _572 + _14 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not _1140 % 32:
                return address(arg1), 
                       Array(len=mem[_14 + (2 * ceil32(return_data.size)) + 128], data=mem[_572 + _14 + (2 * ceil32(return_data.size)) + 352 len _1140 + mem[_14 + (2 * ceil32(return_data.size)) + 128] + 32]),
                       mem[_14 + (2 * ceil32(return_data.size)) + 128] + 192,
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0]
            mem[floor32(_1140) + mem[_14 + (2 * ceil32(return_data.size)) + 128] + _572 + _14 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_1140) + mem[_14 + (2 * ceil32(return_data.size)) + 128] + _572 + _14 + (2 * ceil32(return_data.size)) + -(_1140 % 32) + 416 len _1140 % 32]
            return address(arg1), 
                   Array(len=mem[_14 + (2 * ceil32(return_data.size)) + 128], data=mem[_572 + _14 + (2 * ceil32(return_data.size)) + 352 len floor32(_1140) + mem[_14 + (2 * ceil32(return_data.size)) + 128] + 64]),
                   mem[_14 + (2 * ceil32(return_data.size)) + 128] + 192,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0]
        mem[floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_572) + _14 + (2 * ceil32(return_data.size)) + -(_572 % 32) + 192 len _572 % 32]
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 192] = arg1
        mem[floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 288] = uint8(ext_call.return_data[0])
        mem[floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 224] = 160
        mem[floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 352] = mem[_14 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_14 + (2 * ceil32(return_data.size)) + 128])] = mem[_14 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_14 + (2 * ceil32(return_data.size)) + 128])]
        mem[floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 256] = mem[_14 + (2 * ceil32(return_data.size)) + 128] + 192
        mem[mem[_14 + (2 * ceil32(return_data.size)) + 128] + floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        _1143 = mem[ceil32(return_data.size) + 96]
        mem[mem[_14 + (2 * ceil32(return_data.size)) + 128] + floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not _1143 % 32:
            return address(arg1), 
                   Array(len=mem[_14 + (2 * ceil32(return_data.size)) + 128], data=mem[floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 384 len _1143 + mem[_14 + (2 * ceil32(return_data.size)) + 128] + 32]),
                   mem[_14 + (2 * ceil32(return_data.size)) + 128] + 192,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0]
        mem[floor32(_1143) + mem[_14 + (2 * ceil32(return_data.size)) + 128] + floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_1143) + mem[_14 + (2 * ceil32(return_data.size)) + 128] + floor32(_572) + _14 + (2 * ceil32(return_data.size)) + -(_1143 % 32) + 448 len _1143 % 32]
        return address(arg1), 
               Array(len=mem[_14 + (2 * ceil32(return_data.size)) + 128], data=mem[floor32(_572) + _14 + (2 * ceil32(return_data.size)) + 384 len floor32(_1143) + mem[_14 + (2 * ceil32(return_data.size)) + 128] + 64]),
               mem[_14 + (2 * ceil32(return_data.size)) + 128] + 192,
               ext_call.return_data[0] << 248,
               ext_call.return_data[0]
    mem[floor32(_14) + ceil32(return_data.size) + 128] = mem[floor32(_14) + ceil32(return_data.size) + -(_14 % 32) + 160 len _14 % 32]
    mem[floor32(_14) + ceil32(return_data.size) + 160] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        if not return_data.size:
            mem[64] = floor32(_14) + ceil32(return_data.size) + 224
            mem[floor32(_14) + ceil32(return_data.size) + 160] = 3
            mem[floor32(_14) + ceil32(return_data.size) + 192] = 'err'
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_14) + ceil32(return_data.size) + 224] = arg1
            mem[floor32(_14) + ceil32(return_data.size) + 320] = uint8(ext_call.return_data[0])
            mem[floor32(_14) + ceil32(return_data.size) + 352] = ext_call.return_data[0]
            mem[floor32(_14) + ceil32(return_data.size) + 256] = 160
            mem[floor32(_14) + ceil32(return_data.size) + 384] = 3
            mem[floor32(_14) + ceil32(return_data.size) + 416] = 'err' % 16777216
            mem[floor32(_14) + ceil32(return_data.size) + 288] = 224
            mem[floor32(_14) + ceil32(return_data.size) + 448] = mem[ceil32(return_data.size) + 96]
            mem[floor32(_14) + ceil32(return_data.size) + 480 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                return address(arg1), 
                       160,
                       224,
                       ext_call.return_data[0] << 248,
                       ext_call.return_data[0],
                       3,
                       'err' << 232,
                       mem[floor32(_14) + ceil32(return_data.size) + 448 len mem[ceil32(return_data.size) + 96] + 32]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_14) + ceil32(return_data.size) + 480] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_14) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 512 len mem[ceil32(return_data.size) + 96] % 32]
            return address(arg1), 
                   160,
                   224,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   3,
                   'err' << 232,
                   mem[ceil32(return_data.size) + 96],
                   mem[floor32(_14) + ceil32(return_data.size) + 480 len floor32(mem[ceil32(return_data.size) + 96]) + 32]
        mem[floor32(_14) + ceil32(return_data.size) + 160] = return_data.size
        mem[floor32(_14) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 225
        mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 161] = 3
        mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 193] = 'err'
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 225] = arg1
        mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 321] = uint8(ext_call.return_data[0])
        mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 353] = ext_call.return_data[0]
        mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 257] = 160
        mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 385] = 3
        mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 417] = 'err' % 16777216
        mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 289] = 224
        mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 449] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 481 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return address(arg1), 
                   160,
                   224,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0],
                   3,
                   'err' << 232,
                   mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 449 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 481] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 513 len mem[ceil32(return_data.size) + 96] % 32]
        return address(arg1), 
               160,
               224,
               ext_call.return_data[0] << 248,
               ext_call.return_data[0],
               3,
               'err' << 232,
               mem[floor32(_14) + ceil32(return_data.size) + ceil32(return_data.size) + 449 len floor32(mem[ceil32(return_data.size) + 96]) + 64]
    mem[floor32(_14) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _556 = mem[floor32(_14) + ceil32(return_data.size) + 160]
    require mem[floor32(_14) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_14) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require mem[mem[floor32(_14) + ceil32(return_data.size) + 160] + floor32(_14) + ceil32(return_data.size) + 160] <= 4294967296 and mem[floor32(_14) + ceil32(return_data.size) + 160] + mem[mem[floor32(_14) + ceil32(return_data.size) + 160] + floor32(_14) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] = mem[mem[floor32(_14) + ceil32(return_data.size) + 160] + floor32(_14) + ceil32(return_data.size) + 160]
    _588 = mem[_556 + floor32(_14) + ceil32(return_data.size) + 160]
    mem[floor32(_14) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_556 + floor32(_14) + ceil32(return_data.size) + 160])] = mem[_556 + floor32(_14) + ceil32(return_data.size) + 192 len ceil32(mem[_556 + floor32(_14) + ceil32(return_data.size) + 160])]
    if not _588 % 32:
        mem[64] = _588 + floor32(_14) + (2 * ceil32(return_data.size)) + 192
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_588 + floor32(_14) + (2 * ceil32(return_data.size)) + 192] = arg1
        mem[_588 + floor32(_14) + (2 * ceil32(return_data.size)) + 288] = uint8(ext_call.return_data[0])
        mem[_588 + floor32(_14) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[_588 + floor32(_14) + (2 * ceil32(return_data.size)) + 224] = 160
        mem[_588 + floor32(_14) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160]
        mem[_588 + floor32(_14) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_14) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160])]
        mem[_588 + floor32(_14) + (2 * ceil32(return_data.size)) + 256] = mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + 192
        mem[mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + _588 + floor32(_14) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        _1154 = mem[ceil32(return_data.size) + 96]
        mem[mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + _588 + floor32(_14) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return address(arg1), 
                   Array(len=mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160], data=mem[_588 + floor32(_14) + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + 32]),
                   mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + 192,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + _588 + floor32(_14) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + _588 + floor32(_14) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        return address(arg1), 
               Array(len=mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160], data=mem[_588 + floor32(_14) + (2 * ceil32(return_data.size)) + 384 len floor32(_1154) + mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + 64]),
               mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + 192,
               ext_call.return_data[0] << 248,
               ext_call.return_data[0]
    mem[floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + -(_588 % 32) + 224 len _588 % 32]
    mem[64] = floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 224
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 224] = arg1
    mem[floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 320] = uint8(ext_call.return_data[0])
    mem[floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    mem[floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 256] = 160
    mem[floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160]
    mem[floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_14) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160])]
    mem[floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 288] = mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + 192
    mem[mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
    _1157 = mem[ceil32(return_data.size) + 96]
    mem[mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return address(arg1), 
               Array(len=mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160], data=mem[floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 416 len mem[ceil32(return_data.size) + 96] + mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + 32]),
               mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + 192,
               ext_call.return_data[0] << 248,
               ext_call.return_data[0]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
    return address(arg1), 
           Array(len=mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160], data=mem[floor32(_588) + floor32(_14) + (2 * ceil32(return_data.size)) + 416 len floor32(_1157) + mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + 64]),
           mem[floor32(_14) + (2 * ceil32(return_data.size)) + 160] + 192,
           ext_call.return_data[0] << 248,
           ext_call.return_data[0]
}



}
