contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function collect(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 2 * arg1.length
    mem[64] = (98 * arg1.length) + 160
    if not uint255(arg1.length):
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require 2 * idx < mem[(32 * arg1.length) + 128]
            require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
            mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[(64 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        _40 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _40) + 32]
    mem[(32 * arg1.length) + 160 len 64 * arg1.length] = code.data[2481 len 64 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 2 * idx < mem[(32 * arg1.length) + 128]
        require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
        mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
        mem[(64 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    _46 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _46) + 32]
}

function sub_ba1beb82(?) payable {
    require calldata.size - 4 >= 96
    mem[96] = 2 * arg3
    if not uint255(arg3):
        mem[(64 * arg3) + 128] = arg3
        mem[64] = (98 * arg3) + 160
        if not arg3:
            idx = 0
            while idx < arg3:
                mem[mem[64] + 4] = idx + arg2
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (idx + arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * arg3) + 128]
                mem[(32 * idx) + (64 * arg3) + 160] = address(ext_call.return_data[0])
                require idx < mem[(64 * arg3) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require 2 * idx < mem[96]
                require (2 * idx) + 1 < mem[96]
                mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
                mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _100 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(64 * arg3) + 128]
            _102 = mem[(64 * arg3) + 128]
            mem[mem[64] + 96 len floor32(mem[(64 * arg3) + 128])] = mem[(64 * arg3) + 160 len floor32(mem[(64 * arg3) + 128])]
            mem[mem[64] + 32] = (32 * _102) + 96
            mem[(32 * _102) + _100 + 96] = mem[96]
            mem[(32 * _102) + _100 + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _102) + _100 + -mem[64] + 128
        mem[(64 * arg3) + 160 len 32 * arg3] = code.data[2481 len 32 * arg3]
        idx = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx + arg2
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args (idx + arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * arg3) + 128]
            mem[(32 * idx) + (64 * arg3) + 160] = address(ext_call.return_data[0])
            require idx < mem[(64 * arg3) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require 2 * idx < mem[96]
            require (2 * idx) + 1 < mem[96]
            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
            mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _103 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(64 * arg3) + 128]
        _105 = mem[(64 * arg3) + 128]
        mem[mem[64] + 96 len floor32(mem[(64 * arg3) + 128])] = mem[(64 * arg3) + 160 len floor32(mem[(64 * arg3) + 128])]
        mem[mem[64] + 32] = (32 * _105) + 96
        mem[(32 * _105) + _103 + 96] = mem[96]
        mem[(32 * _105) + _103 + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return memory
          from mem[64]
           len (32 * mem[96]) + (32 * _105) + _103 + -mem[64] + 128
    mem[128 len 64 * arg3] = code.data[2481 len 64 * arg3]
    mem[(64 * arg3) + 128] = arg3
    mem[64] = (98 * arg3) + 160
    if not arg3:
        idx = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx + arg2
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args (idx + arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * arg3) + 128]
            mem[(32 * idx) + (64 * arg3) + 160] = address(ext_call.return_data[0])
            require idx < mem[(64 * arg3) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require 2 * idx < mem[96]
            require (2 * idx) + 1 < mem[96]
            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
            mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _106 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(64 * arg3) + 128]
        _108 = mem[(64 * arg3) + 128]
        mem[mem[64] + 96 len floor32(mem[(64 * arg3) + 128])] = mem[(64 * arg3) + 160 len floor32(mem[(64 * arg3) + 128])]
        mem[mem[64] + 32] = (32 * _108) + 96
        mem[(32 * _108) + _106 + 96] = mem[96]
        mem[(32 * _108) + _106 + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return memory
          from mem[64]
           len (32 * mem[96]) + (32 * _108) + _106 + -mem[64] + 128
    mem[(64 * arg3) + 160 len 32 * arg3] = code.data[2481 len 32 * arg3]
    idx = 0
    while idx < arg3:
        mem[mem[64] + 4] = idx + arg2
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args (idx + arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(64 * arg3) + 128]
        mem[(32 * idx) + (64 * arg3) + 160] = address(ext_call.return_data[0])
        require idx < mem[(64 * arg3) + 128]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 2 * idx < mem[96]
        require (2 * idx) + 1 < mem[96]
        mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
        mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    _109 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(64 * arg3) + 128]
    _111 = mem[(64 * arg3) + 128]
    mem[mem[64] + 96 len floor32(mem[(64 * arg3) + 128])] = mem[(64 * arg3) + 160 len floor32(mem[(64 * arg3) + 128])]
    mem[mem[64] + 32] = (32 * _111) + 96
    mem[(32 * _111) + _109 + 96] = mem[96]
    mem[(32 * _111) + _109 + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return memory
      from mem[64]
       len (32 * mem[96]) + (32 * _111) + _109 + -mem[64] + 128
}

function sub_23a36d6c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2 * ext_call.return_data[0]
    if not uint255(ext_call.return_data[0]):
        mem[(64 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[64] = (98 * ext_call.return_data[0]) + 160
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                require idx < mem[(64 * ext_call.return_data[0]) + 128]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require 2 * idx < mem[96]
                require (2 * idx) + 1 < mem[96]
                mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
                mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _104 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[(64 * ext_call.return_data[0]) + 128]
            _106 = mem[(64 * ext_call.return_data[0]) + 128]
            mem[mem[64] + 96 len floor32(mem[(64 * ext_call.return_data[0]) + 128])] = mem[(64 * ext_call.return_data[0]) + 160 len floor32(mem[(64 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 32] = (32 * _106) + 96
            mem[(32 * _106) + _104 + 96] = mem[96]
            mem[(32 * _106) + _104 + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            return memory
              from mem[64]
               len (32 * mem[96]) + (32 * _106) + _104 + -mem[64] + 128
        mem[(64 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[2481 len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
            require idx < mem[(64 * ext_call.return_data[0]) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require 2 * idx < mem[96]
            require (2 * idx) + 1 < mem[96]
            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
            mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _108 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(64 * ext_call.return_data[0]) + 128]
        _110 = mem[(64 * ext_call.return_data[0]) + 128]
        mem[mem[64] + 96 len floor32(mem[(64 * ext_call.return_data[0]) + 128])] = mem[(64 * ext_call.return_data[0]) + 160 len floor32(mem[(64 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 32] = (32 * _110) + 96
        mem[(32 * _110) + _108 + 96] = mem[96]
        mem[(32 * _110) + _108 + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return memory
          from mem[64]
           len (32 * mem[96]) + (32 * _110) + _108 + -mem[64] + 128
    mem[128 len 64 * ext_call.return_data[0]] = code.data[2481 len 64 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[64] = (98 * ext_call.return_data[0]) + 160
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
            require idx < mem[(64 * ext_call.return_data[0]) + 128]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require 2 * idx < mem[96]
            require (2 * idx) + 1 < mem[96]
            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
            mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _112 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(64 * ext_call.return_data[0]) + 128]
        _114 = mem[(64 * ext_call.return_data[0]) + 128]
        mem[mem[64] + 96 len floor32(mem[(64 * ext_call.return_data[0]) + 128])] = mem[(64 * ext_call.return_data[0]) + 160 len floor32(mem[(64 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 32] = (32 * _114) + 96
        mem[(32 * _114) + _112 + 96] = mem[96]
        mem[(32 * _114) + _112 + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        return memory
          from mem[64]
           len (32 * mem[96]) + (32 * _114) + _112 + -mem[64] + 128
    mem[(64 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[2481 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(64 * ext_call.return_data[0]) + 128]
        mem[(32 * idx) + (64 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
        require idx < mem[(64 * ext_call.return_data[0]) + 128]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 2 * idx < mem[96]
        require (2 * idx) + 1 < mem[96]
        mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
        mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    _116 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(64 * ext_call.return_data[0]) + 128]
    _118 = mem[(64 * ext_call.return_data[0]) + 128]
    mem[mem[64] + 96 len floor32(mem[(64 * ext_call.return_data[0]) + 128])] = mem[(64 * ext_call.return_data[0]) + 160 len floor32(mem[(64 * ext_call.return_data[0]) + 128])]
    mem[mem[64] + 32] = (32 * _118) + 96
    mem[(32 * _118) + _116 + 96] = mem[96]
    mem[(32 * _118) + _116 + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return memory
      from mem[64]
       len (32 * mem[96]) + (32 * _118) + _116 + -mem[64] + 128
}

function sub_f6f151f0(?) payable {
    require calldata.size - 4 >= 96
    mem[96] = 2 * arg3
    if not uint255(arg3):
        mem[(64 * arg3) + 128] = arg3
        if not arg3:
            mem[(98 * arg3) + 160] = arg3
            mem[64] = (131 * arg3) + 192
            idx = 0
            while idx < arg3:
                mem[mem[64] + 4] = idx + arg2
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (idx + arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(98 * arg3) + 160]
                mem[(32 * idx) + (98 * arg3) + 192] = address(ext_call.return_data[0])
                require idx < mem[(98 * arg3) + 160]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require 2 * idx < mem[96]
                require (2 * idx) + 1 < mem[96]
                mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
                mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
                require idx < mem[(98 * arg3) + 160]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).swapFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * arg3) + 128]
                mem[(32 * idx) + (64 * arg3) + 160] = uint32(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _144 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[(98 * arg3) + 160]
            _146 = mem[(98 * arg3) + 160]
            mem[mem[64] + 128 len floor32(mem[(98 * arg3) + 160])] = mem[(98 * arg3) + 192 len floor32(mem[(98 * arg3) + 160])]
            mem[_144 + 32] = (32 * _146) + 128
            mem[(32 * _146) + _144 + 128] = mem[96]
            _265 = mem[96]
            mem[(32 * _146) + _144 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_144 + 64] = (32 * mem[96]) + (32 * _146) + 160
            mem[(32 * _265) + (32 * _146) + _144 + 160] = mem[(64 * arg3) + 128]
            _297 = mem[(64 * arg3) + 128]
            mem[(32 * _265) + (32 * _146) + _144 + 192 len floor32(mem[(64 * arg3) + 128])] = mem[(64 * arg3) + 160 len floor32(mem[(64 * arg3) + 128])]
            return memory
              from mem[64]
               len (32 * _297) + (32 * _265) + (32 * _146) + _144 + -mem[64] + 192
        mem[(64 * arg3) + 160 len 32 * arg3] = code.data[2481 len 32 * arg3]
        mem[(98 * arg3) + 160] = arg3
        mem[64] = (131 * arg3) + 192
        mem[(98 * arg3) + 192 len 32 * arg3] = code.data[2481 len 32 * arg3]
        idx = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx + arg2
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args (idx + arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * arg3) + 160]
            mem[(32 * idx) + (98 * arg3) + 192] = address(ext_call.return_data[0])
            require idx < mem[(98 * arg3) + 160]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require 2 * idx < mem[96]
            require (2 * idx) + 1 < mem[96]
            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
            mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[(98 * arg3) + 160]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).swapFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * arg3) + 128]
            mem[(32 * idx) + (64 * arg3) + 160] = uint32(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _147 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(98 * arg3) + 160]
        _149 = mem[(98 * arg3) + 160]
        mem[mem[64] + 128 len floor32(mem[(98 * arg3) + 160])] = mem[(98 * arg3) + 192 len floor32(mem[(98 * arg3) + 160])]
        mem[_147 + 32] = (32 * _149) + 128
        mem[(32 * _149) + _147 + 128] = mem[96]
        _268 = mem[96]
        mem[(32 * _149) + _147 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_147 + 64] = (32 * mem[96]) + (32 * _149) + 160
        mem[(32 * _268) + (32 * _149) + _147 + 160] = mem[(64 * arg3) + 128]
        _300 = mem[(64 * arg3) + 128]
        mem[(32 * _268) + (32 * _149) + _147 + 192 len floor32(mem[(64 * arg3) + 128])] = mem[(64 * arg3) + 160 len floor32(mem[(64 * arg3) + 128])]
        return memory
          from mem[64]
           len (32 * _300) + (32 * _268) + (32 * _149) + _147 + -mem[64] + 192
    mem[128 len 64 * arg3] = code.data[2481 len 64 * arg3]
    mem[(64 * arg3) + 128] = arg3
    if not arg3:
        mem[(98 * arg3) + 160] = arg3
        mem[64] = (131 * arg3) + 192
        idx = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx + arg2
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args (idx + arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * arg3) + 160]
            mem[(32 * idx) + (98 * arg3) + 192] = address(ext_call.return_data[0])
            require idx < mem[(98 * arg3) + 160]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require 2 * idx < mem[96]
            require (2 * idx) + 1 < mem[96]
            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
            mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[(98 * arg3) + 160]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).swapFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * arg3) + 128]
            mem[(32 * idx) + (64 * arg3) + 160] = uint32(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _150 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(98 * arg3) + 160]
        _152 = mem[(98 * arg3) + 160]
        mem[mem[64] + 128 len floor32(mem[(98 * arg3) + 160])] = mem[(98 * arg3) + 192 len floor32(mem[(98 * arg3) + 160])]
        mem[mem[64] + 32] = (32 * _152) + 128
        mem[(32 * _152) + _150 + 128] = mem[96]
        _271 = mem[96]
        mem[(32 * _152) + _150 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_150 + 64] = (32 * mem[96]) + (32 * _152) + 160
        mem[(32 * _271) + (32 * _152) + _150 + 160] = mem[(64 * arg3) + 128]
        _303 = mem[(64 * arg3) + 128]
        mem[(32 * _271) + (32 * _152) + _150 + 192 len floor32(mem[(64 * arg3) + 128])] = mem[(64 * arg3) + 160 len floor32(mem[(64 * arg3) + 128])]
        return memory
          from mem[64]
           len (32 * _303) + (32 * _271) + (32 * _152) + _150 + -mem[64] + 192
    mem[(64 * arg3) + 160 len 32 * arg3] = code.data[2481 len 32 * arg3]
    mem[(98 * arg3) + 160] = arg3
    mem[64] = (131 * arg3) + 192
    mem[(98 * arg3) + 192 len 32 * arg3] = code.data[2481 len 32 * arg3]
    idx = 0
    while idx < arg3:
        mem[mem[64] + 4] = idx + arg2
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args (idx + arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(98 * arg3) + 160]
        mem[(32 * idx) + (98 * arg3) + 192] = address(ext_call.return_data[0])
        require idx < mem[(98 * arg3) + 160]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 2 * idx < mem[96]
        require (2 * idx) + 1 < mem[96]
        mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
        mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
        require idx < mem[(98 * arg3) + 160]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).swapFee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(64 * arg3) + 128]
        mem[(32 * idx) + (64 * arg3) + 160] = uint32(ext_call.return_data[0])
        idx = idx + 1
        continue 
    _153 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[(98 * arg3) + 160]
    _155 = mem[(98 * arg3) + 160]
    mem[mem[64] + 128 len floor32(mem[(98 * arg3) + 160])] = mem[(98 * arg3) + 192 len floor32(mem[(98 * arg3) + 160])]
    mem[mem[64] + 32] = (32 * _155) + 128
    mem[(32 * _155) + _153 + 128] = mem[96]
    _274 = mem[96]
    mem[(32 * _155) + _153 + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_153 + 64] = (32 * mem[96]) + (32 * _155) + 160
    mem[(32 * _274) + (32 * _155) + _153 + 160] = mem[(64 * arg3) + 128]
    _306 = mem[(64 * arg3) + 128]
    mem[(32 * _274) + (32 * _155) + _153 + 192 len floor32(mem[(64 * arg3) + 128])] = mem[(64 * arg3) + 160 len floor32(mem[(64 * arg3) + 128])]
    return memory
      from mem[64]
       len (32 * _306) + (32 * _274) + (32 * _155) + _153 + -mem[64] + 192
}



}
