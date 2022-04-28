contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(ext_code.size(arg1))
}

function sub_dfd15878(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_e4452978(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_740e3f34(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ac42a4eb(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        return eth.balance(arg2)
    if not ext_code.size(arg1):
        return 0
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_442c1a06(?) payable {
    require calldata.size - 4 >= 32
    if not ext_code.size(arg1):
        return 0
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        return 3
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 1
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 3
    return 2
}

function sub_6e0a6117(?) payable {
    require calldata.size - 4 >= 32
    if not ext_code.size(arg1):
        return 0
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 1
    require ext_code.size(arg1)
    staticcall arg1.supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 3
    return 2
}

function sub_1badbbe3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[9335 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if ext_code.size(mem[(32 * idx) + 128]):
            require idx < arg1.length
            require idx < arg1.length
            mem[(32 * idx) + (32 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (161 * arg1.length) + 64
}

function sub_7b4184a1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _36 = mem[(32 * idx) + 128]
            mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            staticcall arg1.ownerOf(uint256 rg1) with:
                    gas gas_remaining wei
                   args _36
            mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = 0
            else:
                require return_data.size >= 32
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[9335 len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _37 = mem[(32 * idx) + 128]
            mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            staticcall arg1.ownerOf(uint256 rg1) with:
                    gas gas_remaining wei
                   args _37
            mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = 0
            else:
                require return_data.size >= 32
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = mem[(32 * arg2.length) + 128]
    mem[(64 * arg2.length) + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[(64 * arg2.length) + 192 len (32 * mem[(32 * arg2.length) + 128]) + 32]
}

function sub_db70c9e0(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length * ('cd', 4).length:
        mem[128 len 32 * ('cd', 36).length * ('cd', 4).length] = code.data[9335 len 32 * ('cd', 36).length * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 36).length:
        s = 0
        while s < ('cd', 4).length:
            require idx < ('cd', 36).length
            if not address(cd[((32 * s) + cd[4] + 36)]):
                require s + (idx * ('cd', 4).length) < ('cd', 36).length * ('cd', 4).length
                mem[(32 * s + (idx * ('cd', 4).length)) + 128] = eth.balance(cd[((32 * idx) + cd[36] + 36)])
            else:
                if not ext_code.size(address(cd[((32 * s) + cd[4] + 36)])):
                    require s + (idx * ('cd', 4).length) < ('cd', 36).length * ('cd', 4).length
                    mem[(32 * s + (idx * ('cd', 4).length)) + 128] = 0
                else:
                    mem[(32 * ('cd', 36).length * ('cd', 4).length) + 132] = address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((32 * s) + cd[4] + 36)]))
                    staticcall address(cd[((32 * s) + cd[4] + 36)]).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[36] + 36)])
                    mem[(32 * ('cd', 36).length * ('cd', 4).length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require s + (idx * ('cd', 4).length) < ('cd', 36).length * ('cd', 4).length
                    mem[(32 * s + (idx * ('cd', 4).length)) + 128] = ext_call.return_data[0]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length * ('cd', 4).length) + 128] = 32
    mem[(32 * ('cd', 36).length * ('cd', 4).length) + 160] = ('cd', 36).length * ('cd', 4).length
    mem[(32 * ('cd', 36).length * ('cd', 4).length) + 192 len floor32(('cd', 36).length * ('cd', 4).length)] = mem[128 len floor32(('cd', 36).length * ('cd', 4).length)]
    return Array(len=('cd', 36).length * ('cd', 4).length, data=mem[(32 * ('cd', 36).length * ('cd', 4).length) + 192 len 32 * ('cd', 36).length * ('cd', 4).length]), 
}

function sub_c90b5c5d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _38 = mem[(32 * idx) + 128]
            if not arg1:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(mem[(32 * idx) + 128])
            else:
                if not ext_code.size(arg1):
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                else:
                    mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_38)
                    mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[9335 len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _39 = mem[(32 * idx) + 128]
            if not arg1:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(mem[(32 * idx) + 128])
            else:
                if not ext_code.size(arg1):
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                else:
                    mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    staticcall arg1.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(_39)
                    mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = mem[(32 * arg2.length) + 128]
    mem[(64 * arg2.length) + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[(64 * arg2.length) + 192 len (32 * mem[(32 * arg2.length) + 128]) + 32]
}

function sub_af30f10f(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < mem[(32 * arg2.length) + 128]
            _49 = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(64 * arg2.length) + (32 * arg3.length) + 196] = mem[(32 * idx) + 140 len 20]
            mem[(64 * arg2.length) + (32 * arg3.length) + 228] = _49
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg2.length) + (32 * arg3.length) + 196], _49
            mem[(64 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg2.length] = code.data[9335 len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < mem[(32 * arg2.length) + 128]
            _50 = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(64 * arg2.length) + (32 * arg3.length) + 196] = mem[(32 * idx) + 140 len 20]
            mem[(64 * arg2.length) + (32 * arg3.length) + 228] = _50
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args mem[(64 * arg2.length) + (32 * arg3.length) + 196], _50
            mem[(64 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(64 * arg2.length) + (32 * arg3.length) + 192] = 32
    mem[(64 * arg2.length) + (32 * arg3.length) + 224] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
    mem[(64 * arg2.length) + (32 * arg3.length) + 256 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
    return 32, mem[(64 * arg2.length) + (32 * arg3.length) + 224 len (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32], 
}

function sub_067660fc(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[_7 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_7 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _7 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _103 = mem[_7 + ceil32(return_data.size) + 128]
        require mem[_7 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require return_data.size >= mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128] + mem[_7 + ceil32(return_data.size) + 128] + 32 and mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128] <= 4294967296
        mem[_7 + (2 * ceil32(return_data.size)) + 128] = mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128]
        _109 = mem[_7 + ceil32(return_data.size) + _103 + 128]
        mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + ceil32(return_data.size) + _103 + 128])] = mem[_7 + ceil32(return_data.size) + _103 + 160 len ceil32(mem[_7 + ceil32(return_data.size) + _103 + 128])]
        if not _109 % 32:
            mem[64] = _109 + _7 + (2 * ceil32(return_data.size)) + 160
            mem[_109 + _7 + (2 * ceil32(return_data.size)) + 160] = 64
            mem[_109 + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96]
            mem[_109 + _7 + (2 * ceil32(return_data.size)) + 256 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 96
                mem[mem[ceil32(return_data.size) + 96] + _109 + _7 + (2 * ceil32(return_data.size)) + 256] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _109 + _7 + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 64, 
                           mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 96]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _109 + _7 + (2 * ceil32(return_data.size)) + 288] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _109 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 320 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return Array(len=mem[_7 + (2 * ceil32(return_data.size)) + 128], data=mem[_109 + _7 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 288 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]), 
                       mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192 len mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + 256] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 288 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 128
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + 288] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 64, 
                       mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _109 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return Array(len=mem[_7 + (2 * ceil32(return_data.size)) + 128], data=mem[_109 + _7 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 320 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]), 
                   mem[_109 + _7 + (2 * ceil32(return_data.size)) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + -(_109 % 32) + 192 len _109 % 32]
        mem[64] = floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 192
        mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 192] = 64
        mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 96
            mem[mem[ceil32(return_data.size) + 96] + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 288] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 64, 
                       mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return Array(len=mem[_7 + (2 * ceil32(return_data.size)) + 128], data=mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 320 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]), 
                   mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224 len mem[ceil32(return_data.size) + 96] + 64]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 288] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 320 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 128
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 320] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
            return 64, 
                   mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
        mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_109) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
        return Array(len=mem[_7 + (2 * ceil32(return_data.size)) + 128], data=mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]), 
               mem[floor32(_109) + _7 + (2 * ceil32(return_data.size)) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 96]
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_7) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_7) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _106 = mem[floor32(_7) + ceil32(return_data.size) + 160]
    require mem[floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require return_data.size >= mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160] <= 4294967296
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160]
    _111 = mem[floor32(_7) + ceil32(return_data.size) + _106 + 160]
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + ceil32(return_data.size) + _106 + 160])] = mem[floor32(_7) + ceil32(return_data.size) + _106 + 192 len ceil32(mem[floor32(_7) + ceil32(return_data.size) + _106 + 160])]
    if not _111 % 32:
        mem[64] = _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 192
        mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 64
        mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
        mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 96
            mem[mem[ceil32(return_data.size) + 96] + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 64, 
                       mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 96]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 352 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return Array(len=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], data=mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 320 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
                   mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224 len mem[ceil32(return_data.size) + 96] + 64]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 320 len mem[ceil32(return_data.size) + 96] % 32]
        mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 128
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 64, 
                   mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _111 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return Array(len=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], data=mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 352 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
               mem[_111 + floor32(_7) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 96]
    mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + -(_111 % 32) + 224 len _111 % 32]
    mem[64] = floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 224
    mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 64
    mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 96
        mem[mem[ceil32(return_data.size) + 96] + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 64, 
                   mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return Array(len=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], data=mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 352 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
               mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256 len mem[ceil32(return_data.size) + 96] + 64]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 352 len mem[ceil32(return_data.size) + 96] % 32]
    mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 128
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
    if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
        return 64, 
               mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 128]
    mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
    return Array(len=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], data=mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
           mem[floor32(_111) + floor32(_7) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[ceil32(return_data.size) + 96]) + 96]
}

function sub_bbd83ac3(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[_7 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_7 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _7 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _119 = mem[_7 + ceil32(return_data.size) + 128]
        require mem[_7 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require return_data.size >= mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128] + mem[_7 + ceil32(return_data.size) + 128] + 32 and mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128] <= 4294967296
        mem[_7 + (2 * ceil32(return_data.size)) + 128] = mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128]
        _125 = mem[_7 + ceil32(return_data.size) + _119 + 128]
        mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + ceil32(return_data.size) + _119 + 128])] = mem[_7 + ceil32(return_data.size) + _119 + 160 len ceil32(mem[_7 + ceil32(return_data.size) + _119 + 128])]
        if not _125 % 32:
            mem[64] = _125 + _7 + (2 * ceil32(return_data.size)) + 160
            require ext_code.size(arg1)
            staticcall arg1.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 160] = 96
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 128
                mem[mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 288] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 96, 
                           mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0],
                           mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return Array(len=mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256 len mem[ceil32(return_data.size) + 96] + 32], data=mem[_7 + (2 * ceil32(return_data.size)) + 128], mem[_125 + _7 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 320 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]), 
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 288] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 320 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 160
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 320] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 96, 
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0],
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return Array(len=mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256 len floor32(mem[ceil32(return_data.size) + 96]) + 64], data=mem[_7 + (2 * ceil32(return_data.size)) + 128], mem[_125 + _7 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]), 
                   mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                   ext_call.return_data[0]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(_125 % 32) + 192 len _125 % 32]
        mem[64] = floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 192
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 192] = 96
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 128
            mem[mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 320] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 96, 
                       mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return Array(len=mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288 len mem[ceil32(return_data.size) + 96] + 32], data=mem[_7 + (2 * ceil32(return_data.size)) + 128], mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 352 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]), 
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 352 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 160
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 352] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
            return 96, 
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0],
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 416 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
        return Array(len=mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288 len floor32(mem[ceil32(return_data.size) + 96]) + 64], data=mem[_7 + (2 * ceil32(return_data.size)) + 128], mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 384 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]), 
               mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
               ext_call.return_data[0]
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_7) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_7) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _122 = mem[floor32(_7) + ceil32(return_data.size) + 160]
    require mem[floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require return_data.size >= mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160] <= 4294967296
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160]
    _127 = mem[floor32(_7) + ceil32(return_data.size) + _122 + 160]
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + ceil32(return_data.size) + _122 + 160])] = mem[floor32(_7) + ceil32(return_data.size) + _122 + 192 len ceil32(mem[floor32(_7) + ceil32(return_data.size) + _122 + 160])]
    if not _127 % 32:
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 96
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 128
            mem[mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 96, 
                       mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return Array(len=mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288 len mem[ceil32(return_data.size) + 96] + 32], data=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 352 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 352 len mem[ceil32(return_data.size) + 96] % 32]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 160
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 96, 
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0],
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return Array(len=mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[ceil32(return_data.size) + 96]) + 64], data=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
               mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
               ext_call.return_data[0]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(_127 % 32) + 224 len _127 % 32]
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 96
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 128
        mem[mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 96, 
                   mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0],
                   mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return Array(len=mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len mem[ceil32(return_data.size) + 96] + 32], data=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 384 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 384 len mem[ceil32(return_data.size) + 96] % 32]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 160
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
    if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
        return 96, 
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0],
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
    mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 448 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
    return Array(len=mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[ceil32(return_data.size) + 96]) + 64], data=mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160], mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 416 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]), 
           mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
           ext_call.return_data[0]
}

function sub_6863d2e5(?) payable {
    require calldata.size - 4 >= 64
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[_7 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_7 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _7 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _119 = mem[_7 + ceil32(return_data.size) + 128]
        require mem[_7 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_7 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require return_data.size >= mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128] + mem[_7 + ceil32(return_data.size) + 128] + 32 and mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128] <= 4294967296
        mem[_7 + (2 * ceil32(return_data.size)) + 128] = mem[_7 + ceil32(return_data.size) + mem[_7 + ceil32(return_data.size) + 128] + 128]
        _125 = mem[_7 + ceil32(return_data.size) + _119 + 128]
        mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + ceil32(return_data.size) + _119 + 128])] = mem[_7 + ceil32(return_data.size) + _119 + 160 len ceil32(mem[_7 + ceil32(return_data.size) + _119 + 128])]
        if not _125 % 32:
            mem[64] = _125 + _7 + (2 * ceil32(return_data.size)) + 160
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 164] = arg2
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 224] = 0
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 256] = 1
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 320] = 0
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 160] = 192
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                           0,
                           1,
                           ext_call.return_data[0],
                           0,
                           mem[_125 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
                mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                       0,
                       1,
                       ext_call.return_data[0],
                       0,
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[ceil32(return_data.size) + 96] + 32],
                       mem[_7 + (2 * ceil32(return_data.size)) + 128],
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 416 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                       0,
                       1,
                       ext_call.return_data[0],
                       0,
                       mem[_125 + _7 + (2 * ceil32(return_data.size)) + 352 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _125 + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[_125 + _7 + (2 * ceil32(return_data.size)) + 192],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[_125 + _7 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
                   mem[_7 + (2 * ceil32(return_data.size)) + 128],
                   mem[_125 + _7 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 448 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(_125 % 32) + 192 len _125 % 32]
        mem[64] = floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 192
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 196] = arg2
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 256] = 0
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 288] = 1
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 352] = 0
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 192] = 192
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                       0,
                       1,
                       ext_call.return_data[0],
                       0,
                       mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 32],
                   mem[_7 + (2 * ceil32(return_data.size)) + 128],
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 448] = mem[_7 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])] = mem[_7 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_7 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32:
            return 192, 
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384 len mem[_7 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_125) + _7 + (2 * ceil32(return_data.size)) + -(mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_7 + (2 * ceil32(return_data.size)) + 128] % 32]
        return 192, 
               mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 224],
               0,
               1,
               ext_call.return_data[0],
               0,
               mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
               mem[_7 + (2 * ceil32(return_data.size)) + 128],
               mem[floor32(_125) + _7 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 480 len floor32(mem[_7 + (2 * ceil32(return_data.size)) + 128]) + 32]
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_7) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_7) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _122 = mem[floor32(_7) + ceil32(return_data.size) + 160]
    require mem[floor32(_7) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require return_data.size >= mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_7) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160] <= 4294967296
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_7) + ceil32(return_data.size) + mem[floor32(_7) + ceil32(return_data.size) + 160] + 160]
    _127 = mem[floor32(_7) + ceil32(return_data.size) + _122 + 160]
    mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + ceil32(return_data.size) + _122 + 160])] = mem[floor32(_7) + ceil32(return_data.size) + _122 + 192 len ceil32(mem[floor32(_7) + ceil32(return_data.size) + _122 + 160])]
    if not _127 % 32:
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 196] = arg2
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = 0
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = 1
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = 0
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = 192
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                       0,
                       1,
                       ext_call.return_data[0],
                       0,
                       mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 32],
                   mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160],
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _127 + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 224],
               0,
               1,
               ext_call.return_data[0],
               0,
               mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
               mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160],
               mem[_127 + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 480 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(_127 % 32) + 224 len _127 % 32]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 228] = arg2
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 288] = 0
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 320] = 1
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 384] = 0
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 224] = 192
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 224
        mem[mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
                   0,
                   1,
                   ext_call.return_data[0],
                   0,
                   mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
        mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               0,
               1,
               ext_call.return_data[0],
               0,
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[ceil32(return_data.size) + 96] + 32],
               mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160],
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 480 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
    mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 256
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_7) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160])]
    if not mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32:
        return 192, 
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
               0,
               1,
               ext_call.return_data[0],
               0,
               mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
    mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + -(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160] % 32]
    return 192, 
           mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 256],
           0,
           1,
           ext_call.return_data[0],
           0,
           mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
           mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160],
           mem[floor32(_127) + floor32(_7) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 512 len floor32(mem[floor32(_7) + (2 * ceil32(return_data.size)) + 160]) + 32]
}

function sub_ee805915(?) payable {
    require calldata.size - 4 >= 128
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if 1 == arg2:
        _10 = mem[96]
        require mem[96] <= 4294967296
        require mem[96] + 32 <= return_data.size
        require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
        mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
        _19 = mem[_10 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[_10 + 96])] = mem[_10 + 128 len ceil32(mem[_10 + 96])]
        if not _19 % 32:
            mem[_19 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.symbol() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_19 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _409 = mem[_19 + ceil32(return_data.size) + 128]
            require mem[_19 + ceil32(return_data.size) + 128] <= 4294967296
            require mem[_19 + ceil32(return_data.size) + 128] + 32 <= return_data.size
            require return_data.size >= mem[_19 + ceil32(return_data.size) + mem[_19 + ceil32(return_data.size) + 128] + 128] + mem[_19 + ceil32(return_data.size) + 128] + 32 and mem[_19 + ceil32(return_data.size) + mem[_19 + ceil32(return_data.size) + 128] + 128] <= 4294967296
            mem[_19 + (2 * ceil32(return_data.size)) + 128] = mem[_19 + ceil32(return_data.size) + mem[_19 + ceil32(return_data.size) + 128] + 128]
            _425 = mem[_19 + ceil32(return_data.size) + _409 + 128]
            mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + ceil32(return_data.size) + _409 + 128])] = mem[_19 + ceil32(return_data.size) + _409 + 160 len ceil32(mem[_19 + ceil32(return_data.size) + _409 + 128])]
            if not _425 % 32:
                require ext_code.size(arg1)
                staticcall arg1.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_425 + _19 + (2 * ceil32(return_data.size)) + 164] = arg3
                require ext_code.size(arg1)
                staticcall arg1.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_425 + _19 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[_425 + _19 + (2 * ceil32(return_data.size)) + 256] = 0
                mem[_425 + _19 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                mem[_425 + _19 + (2 * ceil32(return_data.size)) + 320] = 0
                mem[_425 + _19 + (2 * ceil32(return_data.size)) + 160] = 192
                mem[_425 + _19 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
                mem[_425 + _19 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                if not mem[ceil32(return_data.size) + 96] % 32:
                    mem[_425 + _19 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 224
                    mem[mem[ceil32(return_data.size) + 96] + _425 + _19 + (2 * ceil32(return_data.size)) + 384] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
                    mem[mem[ceil32(return_data.size) + 96] + _425 + _19 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
                    if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                        return 192, 
                               mem[_425 + _19 + (2 * ceil32(return_data.size)) + 192],
                               ext_call.return_data[0],
                               0,
                               ext_call.return_data[0],
                               0,
                               mem[_425 + _19 + (2 * ceil32(return_data.size)) + 352 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
                    mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _425 + _19 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _425 + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
                    return 192, 
                           mem[_425 + _19 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0],
                           0,
                           ext_call.return_data[0],
                           0,
                           mem[_425 + _19 + (2 * ceil32(return_data.size)) + 352 len mem[ceil32(return_data.size) + 96] + 32],
                           mem[_19 + (2 * ceil32(return_data.size)) + 128],
                           mem[_425 + _19 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 416 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _425 + _19 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _425 + _19 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
                mem[_425 + _19 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 256
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _425 + _19 + (2 * ceil32(return_data.size)) + 416] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _425 + _19 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[_425 + _19 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0],
                           0,
                           ext_call.return_data[0],
                           0,
                           mem[_425 + _19 + (2 * ceil32(return_data.size)) + 352 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
                mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _425 + _19 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _425 + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[_425 + _19 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       0,
                       mem[_425 + _19 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
                       mem[_19 + (2 * ceil32(return_data.size)) + 128],
                       mem[_425 + _19 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 448 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]
            mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + -(_425 % 32) + 192 len _425 % 32]
            require ext_code.size(arg1)
            staticcall arg1.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 196] = arg3
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 288] = 0
            mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
            mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 352] = 0
            mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 192] = 192
            mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 416] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0],
                           0,
                           ext_call.return_data[0],
                           0,
                           mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 384 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
                mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_425) + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       0,
                       mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 32],
                       mem[_19 + (2 * ceil32(return_data.size)) + 128],
                       mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_425) + _19 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 448] = mem[_19 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])] = mem[_19 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_19 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       0,
                       mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 384 len mem[_19 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
            mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_425) + _19 + (2 * ceil32(return_data.size)) + -(mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_19 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   0,
                   mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
                   mem[_19 + (2 * ceil32(return_data.size)) + 128],
                   mem[floor32(_425) + _19 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 480 len floor32(mem[_19 + (2 * ceil32(return_data.size)) + 128]) + 32]
        mem[floor32(_19) + ceil32(return_data.size) + 128] = mem[floor32(_19) + ceil32(return_data.size) + -(_19 % 32) + 160 len _19 % 32]
        mem[floor32(_19) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_19) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_19) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _416 = mem[floor32(_19) + ceil32(return_data.size) + 160]
        require mem[floor32(_19) + ceil32(return_data.size) + 160] <= 4294967296
        require mem[floor32(_19) + ceil32(return_data.size) + 160] + 32 <= return_data.size
        require return_data.size >= mem[floor32(_19) + ceil32(return_data.size) + mem[floor32(_19) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_19) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_19) + ceil32(return_data.size) + mem[floor32(_19) + ceil32(return_data.size) + 160] + 160] <= 4294967296
        mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_19) + ceil32(return_data.size) + mem[floor32(_19) + ceil32(return_data.size) + 160] + 160]
        _429 = mem[floor32(_19) + ceil32(return_data.size) + _416 + 160]
        mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + ceil32(return_data.size) + _416 + 160])] = mem[floor32(_19) + ceil32(return_data.size) + _416 + 192 len ceil32(mem[floor32(_19) + ceil32(return_data.size) + _416 + 160])]
        if not _429 % 32:
            require ext_code.size(arg1)
            staticcall arg1.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 196] = arg3
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 288] = 0
            mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
            mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = 0
            mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 192] = 192
            mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _429 + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + _429 + floor32(_19) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
                    return 192, 
                           mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0],
                           0,
                           ext_call.return_data[0],
                           0,
                           mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
                mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _429 + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _429 + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
                return 192, 
                       mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       0,
                       mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 32],
                       mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160],
                       mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + 32]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _429 + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _429 + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _429 + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _429 + floor32(_19) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       0,
                       mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
            mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _429 + floor32(_19) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _429 + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   0,
                   mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
                   mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160],
                   mem[_429 + floor32(_19) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 480 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + 32]
        mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + -(_429 % 32) + 224 len _429 % 32]
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 228] = arg3
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 320] = 0
        mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
        mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 384] = 0
        mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 224] = 192
        mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 256],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       0,
                       mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   0,
                   mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 416 len mem[ceil32(return_data.size) + 96] + 32],
                   mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160],
                   mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 480 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_19) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   0,
                   mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + -(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0],
               0,
               ext_call.return_data[0],
               0,
               mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
               mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160],
               mem[floor32(_429) + floor32(_19) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 512 len floor32(mem[floor32(_19) + (2 * ceil32(return_data.size)) + 160]) + 32]
    if arg2 != 2:
        _12 = mem[96]
        require mem[96] <= 4294967296
        require mem[96] + 32 <= return_data.size
        require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
        mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
        _20 = mem[_12 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[_12 + 96])] = mem[_12 + 128 len ceil32(mem[_12 + 96])]
        if _20 % 32:
            mem[floor32(_20) + ceil32(return_data.size) + 128] = mem[floor32(_20) + ceil32(return_data.size) + -(_20 % 32) + 160 len _20 % 32]
            mem[floor32(_20) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.symbol() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_20) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_20) + (2 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _412 = mem[floor32(_20) + ceil32(return_data.size) + 160]
            require mem[floor32(_20) + ceil32(return_data.size) + 160] <= 4294967296
            require mem[floor32(_20) + ceil32(return_data.size) + 160] + 32 <= return_data.size
            require return_data.size >= mem[floor32(_20) + ceil32(return_data.size) + mem[floor32(_20) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_20) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_20) + ceil32(return_data.size) + mem[floor32(_20) + ceil32(return_data.size) + 160] + 160] <= 4294967296
            mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_20) + ceil32(return_data.size) + mem[floor32(_20) + ceil32(return_data.size) + 160] + 160]
            _427 = mem[floor32(_20) + ceil32(return_data.size) + _412 + 160]
            mem[floor32(_20) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_20) + ceil32(return_data.size) + _412 + 160])] = mem[floor32(_20) + ceil32(return_data.size) + _412 + 192 len ceil32(mem[floor32(_20) + ceil32(return_data.size) + _412 + 160])]
            if not _427 % 32:
                require ext_code.size(arg1)
                staticcall arg1.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 288] = 0
                mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 320] = 0
                mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 352] = 0
                mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 192] = 192
                mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
                mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
                if not mem[ceil32(return_data.size) + 96] % 32:
                    mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                    mem[mem[ceil32(return_data.size) + 96] + _427 + floor32(_20) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]
                    mem[mem[ceil32(return_data.size) + 96] + _427 + floor32(_20) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])]
                    if not mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32:
                        return 192, 
                               mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 224],
                               ext_call.return_data[0],
                               0,
                               0,
                               0,
                               mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
                    mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _427 + floor32(_20) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _427 + floor32(_20) + (2 * ceil32(return_data.size)) + -(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32]
                    return 192, 
                           mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0],
                           0,
                           0,
                           0,
                           mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 32],
                           mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160],
                           mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + 32]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _427 + floor32(_20) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _427 + floor32(_20) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
                mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _427 + floor32(_20) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _427 + floor32(_20) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32:
                    return 192, 
                           mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0],
                           0,
                           0,
                           0,
                           mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
                mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _427 + floor32(_20) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _427 + floor32(_20) + (2 * ceil32(return_data.size)) + -(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32]
                return 192, 
                       mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       0,
                       0,
                       0,
                       mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
                       mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160],
                       mem[_427 + floor32(_20) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 480 len floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + 32]
            mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + -(_427 % 32) + 224 len _427 % 32]
            require ext_code.size(arg1)
            staticcall arg1.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 320] = 0
            mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 352] = 0
            mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 384] = 0
            mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 224] = 192
            mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
            mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32:
                    return 192, 
                           mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 256],
                           ext_call.return_data[0],
                           0,
                           0,
                           0,
                           mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
                mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + -(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32]
                return 192, 
                       mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 256],
                       ext_call.return_data[0],
                       0,
                       0,
                       0,
                       mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 416 len mem[ceil32(return_data.size) + 96] + 32],
                       mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160],
                       mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 480 len floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + 32]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
            mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_20) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 256],
                       ext_call.return_data[0],
                       0,
                       0,
                       0,
                       mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
            mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + -(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0],
                   0,
                   0,
                   0,
                   mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
                   mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160],
                   mem[floor32(_427) + floor32(_20) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 512 len floor32(mem[floor32(_20) + (2 * ceil32(return_data.size)) + 160]) + 32]
        mem[_20 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_20 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _20 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _403 = mem[_20 + ceil32(return_data.size) + 128]
        require mem[_20 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_20 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require return_data.size >= mem[_20 + ceil32(return_data.size) + mem[_20 + ceil32(return_data.size) + 128] + 128] + mem[_20 + ceil32(return_data.size) + 128] + 32 and mem[_20 + ceil32(return_data.size) + mem[_20 + ceil32(return_data.size) + 128] + 128] <= 4294967296
        mem[_20 + (2 * ceil32(return_data.size)) + 128] = mem[_20 + ceil32(return_data.size) + mem[_20 + ceil32(return_data.size) + 128] + 128]
        _421 = mem[_20 + ceil32(return_data.size) + _403 + 128]
        mem[_20 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_20 + ceil32(return_data.size) + _403 + 128])] = mem[_20 + ceil32(return_data.size) + _403 + 160 len ceil32(mem[_20 + ceil32(return_data.size) + _403 + 128])]
        if not _421 % 32:
            mem[64] = _421 + _20 + (2 * ceil32(return_data.size)) + 160
            require ext_code.size(arg1)
            staticcall arg1.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_421 + _20 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[_421 + _20 + (2 * ceil32(return_data.size)) + 256] = 0
            mem[_421 + _20 + (2 * ceil32(return_data.size)) + 288] = 0
            mem[_421 + _20 + (2 * ceil32(return_data.size)) + 320] = 0
            mem[_421 + _20 + (2 * ceil32(return_data.size)) + 160] = 192
            mem[_421 + _20 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
            mem[_421 + _20 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_421 + _20 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _421 + _20 + (2 * ceil32(return_data.size)) + 384] = mem[_20 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _421 + _20 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])] = mem[_20 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32:
                    return 192, 
                           mem[_421 + _20 + (2 * ceil32(return_data.size)) + 192],
                           ext_call.return_data[0],
                           0,
                           0,
                           0,
                           mem[_421 + _20 + (2 * ceil32(return_data.size)) + 352 len mem[_20 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
                mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _421 + _20 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _421 + _20 + (2 * ceil32(return_data.size)) + -(mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32]
                return 192, 
                       mem[_421 + _20 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0],
                       0,
                       0,
                       0,
                       mem[_421 + _20 + (2 * ceil32(return_data.size)) + 352 len mem[ceil32(return_data.size) + 96] + 32],
                       mem[_20 + (2 * ceil32(return_data.size)) + 128],
                       mem[_421 + _20 + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 416 len floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + 32]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _421 + _20 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _421 + _20 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_421 + _20 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _421 + _20 + (2 * ceil32(return_data.size)) + 416] = mem[_20 + (2 * ceil32(return_data.size)) + 128]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _421 + _20 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])] = mem[_20 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[_421 + _20 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0],
                       0,
                       0,
                       0,
                       mem[_421 + _20 + (2 * ceil32(return_data.size)) + 352 len mem[_20 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
            mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _421 + _20 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _421 + _20 + (2 * ceil32(return_data.size)) + -(mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[_421 + _20 + (2 * ceil32(return_data.size)) + 192],
                   ext_call.return_data[0],
                   0,
                   0,
                   0,
                   mem[_421 + _20 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
                   mem[_20 + (2 * ceil32(return_data.size)) + 128],
                   mem[_421 + _20 + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 448 len floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + 32]
        mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + -(_421 % 32) + 192 len _421 % 32]
        mem[64] = floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 192
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 288] = 0
        mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 320] = 0
        mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 352] = 0
        mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 192] = 192
        mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
        _830 = mem[ceil32(return_data.size) + 96]
        mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 416] = mem[_20 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])] = mem[_20 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       0,
                       0,
                       0,
                       mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 384 len mem[_20 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_421) + _20 + (2 * ceil32(return_data.size)) + -(mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0],
                   0,
                   0,
                   0,
                   mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + _830 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_421) + _20 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 448] = mem[_20 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])] = mem[_20 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_20 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32:
            return 192, 
                   mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0],
                   0,
                   0,
                   0,
                   mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 384 len mem[_20 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_421) + _20 + (2 * ceil32(return_data.size)) + -(mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_20 + (2 * ceil32(return_data.size)) + 128] % 32]
        return 192, 
               mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 224],
               ext_call.return_data[0],
               0,
               0,
               0,
               mem[floor32(_421) + _20 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_20 + (2 * ceil32(return_data.size)) + 128]) + floor32(_830) + 128]
    _14 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _21 = mem[_14 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_14 + 96])] = mem[_14 + 128 len ceil32(mem[_14 + 96])]
    if _21 % 32:
        mem[floor32(_21) + ceil32(return_data.size) + 128] = mem[floor32(_21) + ceil32(return_data.size) + -(_21 % 32) + 160 len _21 % 32]
        mem[floor32(_21) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.symbol() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_21) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_21) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _414 = mem[floor32(_21) + ceil32(return_data.size) + 160]
        require mem[floor32(_21) + ceil32(return_data.size) + 160] <= 4294967296
        require mem[floor32(_21) + ceil32(return_data.size) + 160] + 32 <= return_data.size
        require return_data.size >= mem[floor32(_21) + ceil32(return_data.size) + mem[floor32(_21) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_21) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_21) + ceil32(return_data.size) + mem[floor32(_21) + ceil32(return_data.size) + 160] + 160] <= 4294967296
        mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_21) + ceil32(return_data.size) + mem[floor32(_21) + ceil32(return_data.size) + 160] + 160]
        _428 = mem[floor32(_21) + ceil32(return_data.size) + _414 + 160]
        mem[floor32(_21) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_21) + ceil32(return_data.size) + _414 + 160])] = mem[floor32(_21) + ceil32(return_data.size) + _414 + 192 len ceil32(mem[floor32(_21) + ceil32(return_data.size) + _414 + 160])]
        if not _428 % 32:
            require ext_code.size(arg1)
            staticcall arg1.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 196] = arg3
            mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 228] = arg4
            require ext_code.size(arg1)
            staticcall arg1.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 288] = 0
            mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
            mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
            mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 192] = 192
            mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
            mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
                mem[mem[ceil32(return_data.size) + 96] + _428 + floor32(_21) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + _428 + floor32(_21) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_21) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32:
                    return 192, 
                           mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 224],
                           ext_call.return_data[0],
                           0,
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
                mem[floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _428 + floor32(_21) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _428 + floor32(_21) + (2 * ceil32(return_data.size)) + -(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32) + 480 len mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32]
                return 192, 
                       mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 32],
                       mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160],
                       mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 448 len floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + 32]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _428 + floor32(_21) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _428 + floor32(_21) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
            mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _428 + floor32(_21) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _428 + floor32(_21) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_21) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 224],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 384 len mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
            mem[floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _428 + floor32(_21) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _428 + floor32(_21) + (2 * ceil32(return_data.size)) + -(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
                   mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160],
                   mem[_428 + floor32(_21) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 480 len floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + 32]
        mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + -(_428 % 32) + 224 len _428 % 32]
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 228] = arg3
        mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 260] = arg4
        require ext_code.size(arg1)
        staticcall arg1.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 320] = 0
        mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
        mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
        mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 224] = 192
        mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]
            mem[mem[ceil32(return_data.size) + 96] + floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_21) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160])]
            if not mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32:
                return 192, 
                       mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 256],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + -(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32) + 512 len mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32]
            return 192, 
                   mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 416 len mem[ceil32(return_data.size) + 96] + 32],
                   mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160],
                   mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + mem[ceil32(return_data.size) + 96] + 480 len floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
        mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_21) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160])]
        if not mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32:
            return 192, 
                   mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 256],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 416 len mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + -(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32) + 544 len mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160] % 32]
        return 192, 
               mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 256],
               ext_call.return_data[0],
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[ceil32(return_data.size) + 96]) + 64],
               mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160],
               mem[floor32(_428) + floor32(_21) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + 96]) + 512 len floor32(mem[floor32(_21) + (2 * ceil32(return_data.size)) + 160]) + 32]
    mem[_21 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_21 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _21 + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _406 = mem[_21 + ceil32(return_data.size) + 128]
    require mem[_21 + ceil32(return_data.size) + 128] <= 4294967296
    require mem[_21 + ceil32(return_data.size) + 128] + 32 <= return_data.size
    require return_data.size >= mem[_21 + ceil32(return_data.size) + mem[_21 + ceil32(return_data.size) + 128] + 128] + mem[_21 + ceil32(return_data.size) + 128] + 32 and mem[_21 + ceil32(return_data.size) + mem[_21 + ceil32(return_data.size) + 128] + 128] <= 4294967296
    mem[_21 + (2 * ceil32(return_data.size)) + 128] = mem[_21 + ceil32(return_data.size) + mem[_21 + ceil32(return_data.size) + 128] + 128]
    _423 = mem[_21 + ceil32(return_data.size) + _406 + 128]
    mem[_21 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_21 + ceil32(return_data.size) + _406 + 128])] = mem[_21 + ceil32(return_data.size) + _406 + 160 len ceil32(mem[_21 + ceil32(return_data.size) + _406 + 128])]
    if not _423 % 32:
        mem[64] = _423 + _21 + (2 * ceil32(return_data.size)) + 160
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_423 + _21 + (2 * ceil32(return_data.size)) + 164] = arg3
        mem[_423 + _21 + (2 * ceil32(return_data.size)) + 196] = arg4
        require ext_code.size(arg1)
        staticcall arg1.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_423 + _21 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        mem[_423 + _21 + (2 * ceil32(return_data.size)) + 256] = 0
        mem[_423 + _21 + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        mem[_423 + _21 + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        mem[_423 + _21 + (2 * ceil32(return_data.size)) + 160] = 192
        mem[_423 + _21 + (2 * ceil32(return_data.size)) + 352] = mem[ceil32(return_data.size) + 96]
        _912 = mem[ceil32(return_data.size) + 96]
        mem[_423 + _21 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            mem[_423 + _21 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 224
            mem[mem[ceil32(return_data.size) + 96] + _423 + _21 + (2 * ceil32(return_data.size)) + 384] = mem[_21 + (2 * ceil32(return_data.size)) + 128]
            mem[mem[ceil32(return_data.size) + 96] + _423 + _21 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[_21 + (2 * ceil32(return_data.size)) + 128])] = mem[_21 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_21 + (2 * ceil32(return_data.size)) + 128])]
            if not mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32:
                return 192, 
                       mem[_423 + _21 + (2 * ceil32(return_data.size)) + 192],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       mem[_423 + _21 + (2 * ceil32(return_data.size)) + 352 len mem[_21 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
            mem[floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _423 + _21 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _423 + _21 + (2 * ceil32(return_data.size)) + -(mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32) + 448 len mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32]
            return 192, 
                   mem[_423 + _21 + (2 * ceil32(return_data.size)) + 192],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[_423 + _21 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + _912 + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _423 + _21 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _423 + _21 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
        mem[_423 + _21 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 256
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _423 + _21 + (2 * ceil32(return_data.size)) + 416] = mem[_21 + (2 * ceil32(return_data.size)) + 128]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _423 + _21 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_21 + (2 * ceil32(return_data.size)) + 128])] = mem[_21 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_21 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32:
            return 192, 
                   mem[_423 + _21 + (2 * ceil32(return_data.size)) + 192],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[_423 + _21 + (2 * ceil32(return_data.size)) + 352 len mem[_21 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
        mem[floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _423 + _21 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _423 + _21 + (2 * ceil32(return_data.size)) + -(mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32]
        return 192, 
               mem[_423 + _21 + (2 * ceil32(return_data.size)) + 192],
               ext_call.return_data[0],
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               mem[_423 + _21 + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + floor32(_912) + 128]
    mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + -(_423 % 32) + 192 len _423 % 32]
    mem[64] = floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 192
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 196] = arg3
    mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 228] = arg4
    require ext_code.size(arg1)
    staticcall arg1.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 288] = 0
    mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
    mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 192] = 192
    mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 384] = mem[ceil32(return_data.size) + 96]
    _938 = mem[ceil32(return_data.size) + 96]
    mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 224
        mem[mem[ceil32(return_data.size) + 96] + floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 416] = mem[_21 + (2 * ceil32(return_data.size)) + 128]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_21 + (2 * ceil32(return_data.size)) + 128])] = mem[_21 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_21 + (2 * ceil32(return_data.size)) + 128])]
        if not mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32:
            return 192, 
                   mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 224],
                   ext_call.return_data[0],
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 384 len mem[_21 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64]
        mem[floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_423) + _21 + (2 * ceil32(return_data.size)) + -(mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32) + 480 len mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32]
        return 192, 
               mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 224],
               ext_call.return_data[0],
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + _938 + 96]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_423) + _21 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
    mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 256
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 448] = mem[_21 + (2 * ceil32(return_data.size)) + 128]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[_21 + (2 * ceil32(return_data.size)) + 128])] = mem[_21 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_21 + (2 * ceil32(return_data.size)) + 128])]
    if not mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32:
        return 192, 
               mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 224],
               ext_call.return_data[0],
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 384 len mem[_21 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96]
    mem[floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_423) + _21 + (2 * ceil32(return_data.size)) + -(mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32) + 512 len mem[_21 + (2 * ceil32(return_data.size)) + 128] % 32]
    return 192, 
           mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 224],
           ext_call.return_data[0],
           0,
           ext_call.return_data[0],
           ext_call.return_data[0],
           mem[floor32(_423) + _21 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_21 + (2 * ceil32(return_data.size)) + 128]) + floor32(_938) + 128]
}



}
