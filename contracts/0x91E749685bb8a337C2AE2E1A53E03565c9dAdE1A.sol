contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor1;
uint256 stor3;

function sub_e30e7038(?) {
    return stor2.length
}

function _fallback() payable {
    revert with 0, '-'
}

function sub_f84a7b10(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, '-'
    stor0 = address(arg1)
}

function sub_a0f46e49(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, '-'
    address(stor1.length) = address(arg1)
}

function sub_97d0fcc4(?) {
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor3:
        revert with 'NH{q', 18
    return (ext_call.return_data[0] / stor3)
}

function sub_7a267a4d(?) {
    if stor0 != msg.sender:
        revert with 0, '-'
    stor2.length = 0
    mem[0] = 2
    idx = 0
    while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
        address(stor[idx + sha3(mem[0])]) = 0
        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
        s = sha3(idx + sha3(mem[0]) + 1)
        while sha3(idx + sha3(mem[0]) + 1) + uint256(stor[idx + sha3(mem[0]) + 1]) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
        mem[0] = idx + sha3(mem[0]) + 2
        s = sha3(s + sha3(mem[0]) + 2)
        while sha3(s + sha3(mem[0]) + 2) + uint256(stor[s + sha3(mem[0]) + 2]) > s + sha3(mem[0]):
            uint256(stor[s + sha3(mem[0])]) = 0
            s = s + 1
            continue 
        s = s + 3
        continue 
    stor3 = 0
}

function sub_84d5847b(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor0 != msg.sender:
        revert with 0, '-'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, '-'
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, '-'
        require ext_code.size(address(arg2))
        call address(arg2).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        if arg1 <= 0:
            revert with 0, '-'
        if arg1 > ext_call.return_data[0]:
            revert with 0, '-'
        require ext_code.size(address(arg2))
        call address(arg2).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2dfdd85b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, '-'
    if arg3.length != arg2.length:
        revert with 0, '-'
    mem[224 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 224] = arg3.length
    mem[(32 * arg2.length) + 256 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 256] = 0
    stor2.length++
    address(stor2[stor2.length].field_0) = address(arg1)
    uint256(stor2[stor2.length].field_256) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor2[stor2.length].field_256) > idx:
            uint256(stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 224
        while (32 * arg2.length) + 224 > idx:
            uint256(stor[s + sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while uint256(stor2[stor2.length].field_256) > idx:
            uint256(stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor2[stor2.length].field_512) = arg3.length
    if not arg3.length:
        idx = 0
        while uint256(stor2[stor2.length].field_512) > idx:
            uint256(stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) + 2)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + 256
        while (32 * arg2.length) + (32 * arg3.length) + 256 > idx:
            address(stor[s + sha3((3 * stor2.length) + ('name', 'stor2', 2) + 2)].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while uint256(stor2[stor2.length].field_512) > idx:
            uint256(stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) + 2)].field_0) = 0
            idx = idx + 1
            continue 
    if stor3 > !arg3.length:
        revert with 'NH{q', 17
    stor3 += arg3.length
}

function sub_1081324f(?) {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _44 = mem[64]
        mem[64] = mem[64] + 96
        mem[_44] = address(stor2[idx].field_0)
        _45 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor2[idx].field_256)) + 32
        mem[_45] = uint256(stor2[idx].field_256)
        if not uint256(stor2[idx].field_256):
            mem[_44 + 32] = _45
            _47 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
            mem[_47] = uint256(stor2[idx].field_512)
            if uint256(stor2[idx].field_512):
                mem[0] = sha3(2) + (3 * idx) + 2
                mem[_47 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                t = _47 + 32
                u = sha3(mem[0])
                while _47 + (32 * uint256(stor2[idx].field_512)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_44 + 64] = _47
        else:
            mem[0] = sha3(2) + (3 * idx) + 1
            mem[_45 + 32] = uint256(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 1)].field_0)
            t = _45 + 32
            u = sha3(mem[0])
            while _45 + (32 * uint256(stor2[idx].field_256)) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_44 + 32] = _45
            _122 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
            mem[_122] = uint256(stor2[idx].field_512)
            if uint256(stor2[idx].field_512):
                mem[0] = sha3(2) + (3 * idx) + 2
                mem[_122 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                t = _122 + 32
                u = sha3(mem[0])
                while _122 + (32 * uint256(stor2[idx].field_512)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_44 + 64] = _122
        mem[s] = _44
        s = s + 32
        idx = idx + 1
        continue 
    if stor3 > test266151307():
        revert with 'NH{q', 65
    _46 = mem[64]
    mem[mem[64]] = stor3
    mem[64] = mem[64] + (32 * stor3) + 32
    if not stor3:
        _84 = mem[96]
        idx = 0
        while idx < _84:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _89 = mem[(32 * idx) + 128]
            _119 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            t = 0
            while s < _119:
                _125 = mem[mem[_89 + 64]]
                _126 = mem[_89]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_126))
                staticcall address(_126).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _137 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _125:
                    revert with 'NH{q', 18
                if t >= mem[_46]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _46 + 32] = mem[_137] / _125
                if t == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _96 = mem[_46]
        mem[mem[64] + 32] = mem[_46]
        mem[mem[64] + 64 len 32 * _96] = mem[_46 + 32 len 32 * _96]
        return 32, mem[mem[64] + 32 len (32 * _96) + 32]
    mem[_46 + 32 len 32 * stor3] = call.data[calldata.size len 32 * stor3]
    _85 = mem[96]
    idx = 0
    while idx < _85:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _91 = mem[(32 * idx) + 128]
        _121 = mem[mem[mem[(32 * idx) + 128] + 64]]
        s = 0
        t = 0
        while s < _121:
            _131 = mem[mem[_91 + 64]]
            _132 = mem[_91]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_132))
            staticcall address(_132).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not _131:
                revert with 'NH{q', 18
            if t >= mem[_46]:
                revert with 'NH{q', 50
            mem[(32 * t) + _46 + 32] = mem[_139] / _131
            if t == -1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = t + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _102 = mem[_46]
    mem[mem[64] + 32] = mem[_46]
    mem[mem[64] + 64 len 32 * _102] = mem[_46 + 32 len 32 * _102]
    return 32, mem[mem[64] + 32 len (32 * _102) + 32]
}

function sub_b433e431(?) {
    mem[100] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = ceil32(return_data.size) + (32 * stor2.length) + 128
    mem[ceil32(return_data.size) + 96] = stor2.length
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _25 = mem[64]
        mem[64] = mem[64] + 96
        mem[_25] = address(stor2[idx].field_0)
        _26 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor2[idx].field_256)) + 32
        mem[_26] = uint256(stor2[idx].field_256)
        if not uint256(stor2[idx].field_256):
            mem[_25 + 32] = _26
            _28 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
            mem[_28] = uint256(stor2[idx].field_512)
            if uint256(stor2[idx].field_512):
                mem[0] = sha3(2) + (3 * idx) + 2
                mem[_28 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                t = _28 + 32
                u = sha3(mem[0])
                while _28 + (32 * uint256(stor2[idx].field_512)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_25 + 64] = _28
        else:
            mem[0] = sha3(2) + (3 * idx) + 1
            mem[_26 + 32] = uint256(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 1)].field_0)
            t = _26 + 32
            u = sha3(mem[0])
            while _26 + (32 * uint256(stor2[idx].field_256)) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_25 + 32] = _26
            _58 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
            mem[_58] = uint256(stor2[idx].field_512)
            if uint256(stor2[idx].field_512):
                mem[0] = sha3(2) + (3 * idx) + 2
                mem[_58 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                t = _58 + 32
                u = sha3(mem[0])
                while _58 + (32 * uint256(stor2[idx].field_512)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_25 + 64] = _58
        mem[s] = _25
        s = s + 32
        idx = idx + 1
        continue 
    _42 = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = 0
    while idx < _42:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _45 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_45))
        staticcall address(_45).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_49]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_49]
        continue 
    if ext_call.return_data[0] > 1000:
        if s * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 > 1000:
            return s * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42, 
                   ext_call.return_data[0]
        return 0, ext_call.return_data[0]
    if s * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 > 1000:
        return s * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42 * _42, 
               0
    return 0
}

function sub_846063d4(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor2.length:
        revert with 0, '-'
    if not uint256(stor2[arg1].field_256):
        if not uint256(stor2[arg1].field_512):
            mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 256] = address(stor2[arg1].field_0)
            mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 288] = 96
            mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 352] = uint256(stor2[arg1].field_256)
            mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 384 len 32 * uint256(stor2[arg1].field_256)] = mem[224 len 32 * uint256(stor2[arg1].field_256)]
            mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 320] = (32 * uint256(stor2[arg1].field_256)) + 128
            mem[(64 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 384] = uint256(stor2[arg1].field_512)
            idx = 0
            s = (64 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 416
            t = (32 * uint256(stor2[arg1].field_256)) + 256
            while idx < uint256(stor2[arg1].field_512):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 256
               len (96 * uint256(stor2[arg1].field_256)) + (96 * uint256(stor2[arg1].field_512)) + 160
        mem[(32 * uint256(stor2[arg1].field_256)) + 256] = address(stor[sha3(('name', 'stor2', 2) + (3 * arg1) + 2)].field_0)
        idx = (32 * uint256(stor2[arg1].field_256)) + 256
        s = 0
        while (32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 224 > idx:
            mem[idx + 32] = address(stor[s + sha3(('name', 'stor2', 2) + (3 * arg1) + 2)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 256] = address(stor2[arg1].field_0)
        mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 288] = 96
        mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 352] = uint256(stor2[arg1].field_256)
        mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 384 len 32 * uint256(stor2[arg1].field_256)] = mem[224 len 32 * uint256(stor2[arg1].field_256)]
    else:
        mem[224] = uint256(stor[sha3(('name', 'stor2', 2) + (3 * arg1) + 1)].field_0)
        idx = 224
        s = 0
        while (32 * uint256(stor2[arg1].field_256)) + 192 > idx:
            mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor2', 2) + (3 * arg1) + 1)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        if not uint256(stor2[arg1].field_512):
            mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 256] = address(stor2[arg1].field_0)
            mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 288] = 96
            mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 352] = uint256(stor2[arg1].field_256)
            mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 384 len 32 * uint256(stor2[arg1].field_256)] = mem[224 len 32 * uint256(stor2[arg1].field_256)]
            mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 320] = (32 * uint256(stor2[arg1].field_256)) + 128
            mem[(64 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 384] = uint256(stor2[arg1].field_512)
            idx = 0
            s = (64 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 416
            t = (32 * uint256(stor2[arg1].field_256)) + 256
            while idx < uint256(stor2[arg1].field_512):
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 256
               len (32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 160
        mem[(32 * uint256(stor2[arg1].field_256)) + 256] = address(stor[sha3(('name', 'stor2', 2) + (3 * arg1) + 2)].field_0)
        idx = (32 * uint256(stor2[arg1].field_256)) + 256
        s = 0
        while (32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 224 > idx:
            mem[idx + 32] = address(stor[s + sha3(('name', 'stor2', 2) + (3 * arg1) + 2)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 256] = address(stor2[arg1].field_0)
        mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 288] = 96
        mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 352] = uint256(stor2[arg1].field_256)
        mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 384 len 32 * uint256(stor2[arg1].field_256)] = mem[224 len 32 * uint256(stor2[arg1].field_256)]
        var24001 = uint256(stor2[arg1].field_256)
    mem[(32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 320] = (32 * uint256(stor2[arg1].field_256)) + 128
    mem[(64 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 384] = uint256(stor2[arg1].field_512)
    idx = 0
    s = (64 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 416
    t = (32 * uint256(stor2[arg1].field_256)) + 256
    while idx < uint256(stor2[arg1].field_512):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * uint256(stor2[arg1].field_256)) + (32 * uint256(stor2[arg1].field_512)) + 256
       len (32 * uint256(stor2[arg1].field_512)) + (32 * uint256(stor2[arg1].field_256)) + 160
}

function sub_56baadb8(?) {
    require calldata.size - 4 >= 32
    if address(stor1.length) != msg.sender:
        revert with 0, '-'
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _47 = mem[64]
        mem[64] = mem[64] + 96
        mem[_47] = address(stor2[idx].field_0)
        _48 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor2[idx].field_256)) + 32
        mem[_48] = uint256(stor2[idx].field_256)
        if not uint256(stor2[idx].field_256):
            mem[_47 + 32] = _48
            _50 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
            mem[_50] = uint256(stor2[idx].field_512)
            if uint256(stor2[idx].field_512):
                mem[0] = sha3(2) + (3 * idx) + 2
                mem[_50 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                t = _50 + 32
                u = sha3(mem[0])
                while _50 + (32 * uint256(stor2[idx].field_512)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_47 + 64] = _50
        else:
            mem[0] = sha3(2) + (3 * idx) + 1
            mem[_48 + 32] = uint256(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 1)].field_0)
            t = _48 + 32
            u = sha3(mem[0])
            while _48 + (32 * uint256(stor2[idx].field_256)) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_47 + 32] = _48
            _126 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
            mem[_126] = uint256(stor2[idx].field_512)
            if uint256(stor2[idx].field_512):
                mem[0] = sha3(2) + (3 * idx) + 2
                mem[_126 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + (32 * uint256(stor2[idx].field_512)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_47 + 64] = _126
        mem[s] = _47
        s = s + 32
        idx = idx + 1
        continue 
    _88 = mem[96]
    idx = 0
    while idx < _88:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _90 = mem[(32 * idx) + 128]
        _125 = mem[mem[mem[(32 * idx) + 128] + 64]]
        s = 0
        while s < _125:
            if s >= mem[mem[_90 + 32]]:
                revert with 'NH{q', 50
            _130 = mem[(32 * s) + mem[_90 + 32] + 32]
            if s >= mem[mem[_90 + 64]]:
                revert with 'NH{q', 50
            _133 = mem[(32 * s) + mem[_90 + 64] + 32]
            _134 = mem[_90]
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * s) + mem[_90 + 64] + 32], arg1
            mem[mem[64] + 68] = ext_call.return_data[0]
            require ext_call.success
            staticcall _133.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] + 4 len 64] = ext_call.return_data[0 len 64]
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 >= _134:
                if _134 >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    _139 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_139 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_139 + 36] = 0
                    mem[_139 + 68] = 0
                    mem[_139 + 100] = this.address
                    mem[_139 + 132] = 128
                    mem[_139 + 164] = mem[_139]
                    idx = 0
                    while idx < mem[_139]:
                        mem[idx + _139 + 196] = mem[idx + _139 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_139]) > mem[_139]:
                        mem[_139 + mem[_139] + 196] = 0
                    require ext_code.size(address(_133))
                    call address(_133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, mem[_139], mem[_139 + 196 len ceil32(mem[_139])]
                else:
                    _141 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_141 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_141 + 36] = _130 * arg1 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_130 * arg1)
                    mem[_141 + 68] = 0
                    mem[_141 + 100] = this.address
                    mem[_141 + 132] = 128
                    mem[_141 + 164] = mem[_141]
                    idx = 0
                    while idx < mem[_141]:
                        mem[idx + _141 + 196] = mem[idx + _141 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_141]) > mem[_141]:
                        mem[_141 + mem[_141] + 196] = 0
                    require ext_code.size(address(_133))
                    call address(_133).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_141]) + _141 + -mem[64] + 192]
            else:
                if _134 >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    _142 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_142 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_142 + 36] = 0
                    mem[_142 + 68] = _130 * arg1 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_130 * arg1)
                    mem[_142 + 100] = this.address
                    mem[_142 + 132] = 128
                    mem[_142 + 164] = mem[_142]
                    idx = 0
                    while idx < mem[_142]:
                        mem[idx + _142 + 196] = mem[idx + _142 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_142]) > mem[_142]:
                        mem[_142 + mem[_142] + 196] = 0
                    require ext_code.size(address(_133))
                    call address(_133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _130 * arg1 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_130 * arg1), address(this.address), 128, mem[_142], mem[_142 + 196 len ceil32(mem[_142])]
                else:
                    _145 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_145 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_145 + 36] = _130 * arg1 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_130 * arg1)
                    mem[_145 + 68] = _130 * arg1 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_130 * arg1)
                    mem[_145 + 100] = this.address
                    mem[_145 + 132] = 128
                    mem[_145 + 164] = mem[_145]
                    idx = 0
                    while idx < mem[_145]:
                        mem[idx + _145 + 196] = mem[idx + _145 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_145]) > mem[_145]:
                        mem[_145 + mem[_145] + 196] = 0
                    require ext_code.size(address(_133))
                    call address(_133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _130 * arg1 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_130 * arg1), _130 * arg1 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_130 * arg1), address(this.address), Array(len=mem[_145], data=mem[_145 + 196 len ceil32(mem[_145])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_08603443(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if address(stor1.length) != msg.sender:
        revert with 0, '-'
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _47 = mem[64]
        mem[64] = mem[64] + 96
        mem[_47] = address(stor2[idx].field_0)
        _48 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor2[idx].field_256)) + 32
        mem[_48] = uint256(stor2[idx].field_256)
        if not uint256(stor2[idx].field_256):
            mem[_47 + 32] = _48
            _50 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
            mem[_50] = uint256(stor2[idx].field_512)
            if uint256(stor2[idx].field_512):
                mem[0] = sha3(2) + (3 * idx) + 2
                mem[_50 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                t = _50 + 32
                u = sha3(mem[0])
                while _50 + (32 * uint256(stor2[idx].field_512)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_47 + 64] = _50
        else:
            mem[0] = sha3(2) + (3 * idx) + 1
            mem[_48 + 32] = uint256(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 1)].field_0)
            t = _48 + 32
            u = sha3(mem[0])
            while _48 + (32 * uint256(stor2[idx].field_256)) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_47 + 32] = _48
            _126 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
            mem[_126] = uint256(stor2[idx].field_512)
            if uint256(stor2[idx].field_512):
                mem[0] = sha3(2) + (3 * idx) + 2
                mem[_126 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                t = _126 + 32
                u = sha3(mem[0])
                while _126 + (32 * uint256(stor2[idx].field_512)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_47 + 64] = _126
        mem[s] = _47
        s = s + 32
        idx = idx + 1
        continue 
    _88 = mem[96]
    idx = 0
    while idx < _88:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _90 = mem[(32 * idx) + 128]
        _125 = mem[mem[mem[(32 * idx) + 128] + 64]]
        s = 0
        t = 0
        while s < _125:
            if t >= ('cd', 4).length:
                revert with 'NH{q', 50
            if s >= mem[mem[_90 + 32]]:
                revert with 'NH{q', 50
            _130 = mem[(32 * s) + mem[_90 + 32] + 32]
            if s >= mem[mem[_90 + 64]]:
                revert with 'NH{q', 50
            _133 = mem[(32 * s) + mem[_90 + 64] + 32]
            _134 = mem[_90]
            call mem[_90].0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * s) + mem[_90 + 64] + 32], cd[((32 * t) + cd[4] + 36)]
            mem[mem[64] + 68] = ext_call.return_data[0]
            require ext_call.success
            staticcall _133.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] + 4 len 64] = ext_call.return_data[0 len 64]
            if _134 >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 >= _134:
                    _139 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_139 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_139 + 36] = 0
                    mem[_139 + 68] = 0
                    mem[_139 + 100] = this.address
                    mem[_139 + 132] = 128
                    mem[_139 + 164] = mem[_139]
                    idx = 0
                    while idx < mem[_139]:
                        mem[idx + _139 + 196] = mem[idx + _139 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_139]) > mem[_139]:
                        mem[_139 + mem[_139] + 196] = 0
                    require ext_code.size(address(_133))
                    call address(_133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, mem[_139], mem[_139 + 196 len ceil32(mem[_139])]
                else:
                    _141 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_141 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_141 + 36] = _130 * cd[((32 * t) + cd[4] + 36)] * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_130 * cd[((32 * t) + cd[4] + 36)])
                    mem[_141 + 68] = 0
                    mem[_141 + 100] = this.address
                    mem[_141 + 132] = 128
                    mem[_141 + 164] = mem[_141]
                    idx = 0
                    while idx < mem[_141]:
                        mem[idx + _141 + 196] = mem[idx + _141 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_141]) > mem[_141]:
                        mem[_141 + mem[_141] + 196] = 0
                    require ext_code.size(address(_133))
                    call address(_133).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_141]) + _141 + -mem[64] + 192]
            else:
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 >= _134:
                    _142 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_142 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_142 + 36] = 0
                    mem[_142 + 68] = _130 * cd[((32 * t) + cd[4] + 36)] * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_130 * cd[((32 * t) + cd[4] + 36)])
                    mem[_142 + 100] = this.address
                    mem[_142 + 132] = 128
                    mem[_142 + 164] = mem[_142]
                    idx = 0
                    while idx < mem[_142]:
                        mem[idx + _142 + 196] = mem[idx + _142 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_142]) > mem[_142]:
                        mem[_142 + mem[_142] + 196] = 0
                    require ext_code.size(address(_133))
                    call address(_133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _130 * cd[((32 * t) + cd[4] + 36)] * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_130 * cd[((32 * t) + cd[4] + 36)]), address(this.address), 128, mem[_142], mem[_142 + 196 len ceil32(mem[_142])]
                else:
                    _145 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_145 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_145 + 36] = _130 * cd[((32 * t) + cd[4] + 36)] * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_130 * cd[((32 * t) + cd[4] + 36)])
                    mem[_145 + 68] = _130 * cd[((32 * t) + cd[4] + 36)] * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_130 * cd[((32 * t) + cd[4] + 36)])
                    mem[_145 + 100] = this.address
                    mem[_145 + 132] = 128
                    mem[_145 + 164] = mem[_145]
                    idx = 0
                    while idx < mem[_145]:
                        mem[idx + _145 + 196] = mem[idx + _145 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_145]) > mem[_145]:
                        mem[_145 + mem[_145] + 196] = 0
                    require ext_code.size(address(_133))
                    call address(_133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _130 * cd[((32 * t) + cd[4] + 36)] * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_130 * cd[((32 * t) + cd[4] + 36)]), _130 * cd[((32 * t) + cd[4] + 36)] * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_130 * cd[((32 * t) + cd[4] + 36)]), address(this.address), Array(len=mem[_145], data=mem[_145 + 196 len ceil32(mem[_145])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if t == -1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = t + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ed040fd4(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(stor1.length) != msg.sender:
        revert with 0, '-'
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _64 = mem[64]
        mem[64] = mem[64] + 96
        mem[_64] = address(stor2[idx].field_0)
        _65 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor2[idx].field_256)) + 32
        mem[_65] = uint256(stor2[idx].field_256)
        if not uint256(stor2[idx].field_256):
            mem[_64 + 32] = _65
            _67 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
            mem[_67] = uint256(stor2[idx].field_512)
            if uint256(stor2[idx].field_512):
                mem[0] = sha3(2) + (3 * idx) + 2
                mem[_67 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                t = _67 + 32
                u = sha3(mem[0])
                while _67 + (32 * uint256(stor2[idx].field_512)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_64 + 64] = _67
        else:
            mem[0] = sha3(2) + (3 * idx) + 1
            mem[_65 + 32] = uint256(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 1)].field_0)
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + (32 * uint256(stor2[idx].field_256)) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_64 + 32] = _65
            _177 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
            mem[_177] = uint256(stor2[idx].field_512)
            if uint256(stor2[idx].field_512):
                mem[0] = sha3(2) + (3 * idx) + 2
                mem[_177 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                t = _177 + 32
                u = sha3(mem[0])
                while _177 + (32 * uint256(stor2[idx].field_512)) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_64 + 64] = _177
        mem[s] = _64
        s = s + 32
        idx = idx + 1
        continue 
    _122 = mem[96]
    idx = 0
    while idx < _122:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _126 = mem[(32 * idx) + 128]
        _176 = mem[mem[mem[(32 * idx) + 128] + 64]]
        s = 0
        t = 0
        while s < _176:
            if t >= ('cd', 36).length:
                revert with 'NH{q', 50
            if s >= mem[mem[_126 + 32]]:
                revert with 'NH{q', 50
            _182 = mem[(32 * s) + mem[_126 + 32] + 32]
            if s >= mem[mem[_126 + 64]]:
                revert with 'NH{q', 50
            _186 = mem[(32 * s) + mem[_126 + 64] + 32]
            _187 = mem[_126]
            call mem[_126].0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * s) + mem[_126 + 64] + 32], cd[((32 * t) + cd[36] + 36)]
            mem[mem[64] + 68] = ext_call.return_data[0]
            require ext_call.success
            staticcall _186.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] + 4 len 64] = ext_call.return_data[0 len 64]
            if _187 >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 >= _187:
                    _203 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_203 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_203 + 36] = 0
                    mem[_203 + 68] = 0
                    mem[_203 + 100] = this.address
                    mem[_203 + 132] = 128
                    mem[_203 + 164] = mem[_203]
                    idx = 0
                    while idx < mem[_203]:
                        mem[idx + _203 + 196] = mem[idx + _203 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_203]) > mem[_203]:
                        mem[_203 + mem[_203] + 196] = 0
                    require ext_code.size(address(_186))
                    call address(_186).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_203]) + _203 + -mem[64] + 192]
                else:
                    _205 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_205 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_205 + 36] = _182 * cd[((32 * t) + cd[36] + 36)] * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_182 * cd[((32 * t) + cd[36] + 36)])
                    mem[_205 + 68] = 0
                    mem[_205 + 100] = this.address
                    mem[_205 + 132] = 128
                    mem[_205 + 164] = mem[_205]
                    idx = 0
                    while idx < mem[_205]:
                        mem[idx + _205 + 196] = mem[idx + _205 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_205]) > mem[_205]:
                        mem[_205 + mem[_205] + 196] = 0
                    require ext_code.size(address(_186))
                    call address(_186).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_205]) + _205 + -mem[64] + 192]
            else:
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 >= _187:
                    _206 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_206 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_206 + 36] = 0
                    mem[_206 + 68] = _182 * cd[((32 * t) + cd[36] + 36)] * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_182 * cd[((32 * t) + cd[36] + 36)])
                    mem[_206 + 100] = this.address
                    mem[_206 + 132] = 128
                    mem[_206 + 164] = mem[_206]
                    idx = 0
                    while idx < mem[_206]:
                        mem[idx + _206 + 196] = mem[idx + _206 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_206]) > mem[_206]:
                        mem[_206 + mem[_206] + 196] = 0
                    require ext_code.size(address(_186))
                    call address(_186).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_206]) + _206 + -mem[64] + 192]
                else:
                    _209 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_209 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_209 + 36] = _182 * cd[((32 * t) + cd[36] + 36)] * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_182 * cd[((32 * t) + cd[36] + 36)])
                    mem[_209 + 68] = _182 * cd[((32 * t) + cd[36] + 36)] * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_182 * cd[((32 * t) + cd[36] + 36)])
                    mem[_209 + 100] = this.address
                    mem[_209 + 132] = 128
                    mem[_209 + 164] = mem[_209]
                    idx = 0
                    while idx < mem[_209]:
                        mem[idx + _209 + 196] = mem[idx + _209 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_209]) > mem[_209]:
                        mem[_209 + mem[_209] + 196] = 0
                    require ext_code.size(address(_186))
                    call address(_186).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_209]) + _209 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if t == -1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = t + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = cd[4]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
         gas gas_remaining wei
        args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _127 = mem[64]
    mem[mem[64]] = 0
    mem[64] = mem[64] + 32
    idx = 0
    while idx < mem[_127]:
        idx = idx + 32
        continue 
    if ceil32(mem[_127]) > mem[_127]:
        mem[_127 + mem[_127] + 32] = 0
    call msg.sender with:
       value cd[4] wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len mem[_127] + _127 + -mem[64] + 28]
    if not ext_call.success:
        revert with 0, '-'
}

function sub_792f6d22(?) {
    require calldata.size - 4 >= 64
    if address(stor1.length) != msg.sender:
        revert with 0, '-'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0
    idx = 0
    while idx < 0:
        idx = idx + 32
        continue 
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '-'
        mem[64] = (32 * stor2.length) + 160
        mem[128] = stor2.length
        s = 160
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            _378 = mem[64]
            mem[64] = mem[64] + 96
            mem[_378] = address(stor2[idx].field_0)
            _379 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_256)) + 32
            mem[_379] = uint256(stor2[idx].field_256)
            if not uint256(stor2[idx].field_256):
                mem[_378 + 32] = _379
                _390 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
                mem[_390] = uint256(stor2[idx].field_512)
                if uint256(stor2[idx].field_512):
                    mem[0] = sha3(2) + (3 * idx) + 2
                    mem[_390 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                    t = _390 + 32
                    u = sha3(mem[0])
                    while _390 + (32 * uint256(stor2[idx].field_512)) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_378 + 64] = _390
            else:
                mem[0] = sha3(2) + (3 * idx) + 1
                mem[_379 + 32] = uint256(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 1)].field_0)
                t = _379 + 32
                u = sha3(mem[0])
                while _379 + (32 * uint256(stor2[idx].field_256)) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_378 + 32] = _379
                _691 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
                mem[_691] = uint256(stor2[idx].field_512)
                if uint256(stor2[idx].field_512):
                    mem[0] = sha3(2) + (3 * idx) + 2
                    mem[_691 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                    t = _691 + 32
                    u = sha3(mem[0])
                    while _691 + (32 * uint256(stor2[idx].field_512)) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_378 + 64] = _691
            mem[s] = _378
            s = s + 32
            idx = idx + 1
            continue 
        _545 = mem[128]
        idx = 0
        while idx < _545:
            if idx >= mem[128]:
                revert with 'NH{q', 50
            _553 = mem[(32 * idx) + 160]
            _690 = mem[mem[mem[(32 * idx) + 160] + 64]]
            s = 0
            while s < _690:
                if s >= mem[mem[_553 + 32]]:
                    revert with 'NH{q', 50
                _713 = mem[(32 * s) + mem[_553 + 32] + 32]
                if s >= mem[mem[_553 + 64]]:
                    revert with 'NH{q', 50
                _725 = mem[(32 * s) + mem[_553 + 64] + 32]
                _726 = mem[_553]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * s) + mem[_553 + 64] + 32], arg2
                mem[mem[64] + 68] = ext_call.return_data[0]
                require ext_call.success
                staticcall _725.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] + 4 len 64] = ext_call.return_data[0 len 64]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 >= _726:
                    if _726 >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        _749 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_749 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_749 + 36] = 0
                        mem[_749 + 68] = 0
                        mem[_749 + 100] = this.address
                        mem[_749 + 132] = 128
                        mem[_749 + 164] = mem[_749]
                        idx = 0
                        while idx < mem[_749]:
                            mem[idx + _749 + 196] = mem[idx + _749 + 32]
                            _545 = mem[128]
                            _690 = mem[mem[_553 + 64]]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_749]) > mem[_749]:
                            mem[_749 + mem[_749] + 196] = 0
                        require ext_code.size(address(_725))
                        call address(_725).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_749]) + _749 + -mem[64] + 192]
                    else:
                        _754 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_754 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_754 + 36] = _713 * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_713 * arg2)
                        mem[_754 + 68] = 0
                        mem[_754 + 100] = this.address
                        mem[_754 + 132] = 128
                        mem[_754 + 164] = mem[_754]
                        idx = 0
                        while idx < mem[_754]:
                            mem[idx + _754 + 196] = mem[idx + _754 + 32]
                            _545 = mem[128]
                            _690 = mem[mem[_553 + 64]]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_754]) > mem[_754]:
                            mem[_754 + mem[_754] + 196] = 0
                        require ext_code.size(address(_725))
                        call address(_725).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_754]) + _754 + -mem[64] + 192]
                else:
                    if _726 >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        _755 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_755 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_755 + 36] = 0
                        mem[_755 + 68] = _713 * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_713 * arg2)
                        mem[_755 + 100] = this.address
                        mem[_755 + 132] = 128
                        mem[_755 + 164] = mem[_755]
                        idx = 0
                        while idx < mem[_755]:
                            mem[idx + _755 + 196] = mem[idx + _755 + 32]
                            _545 = mem[128]
                            _690 = mem[mem[_553 + 64]]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_755]) > mem[_755]:
                            mem[_755 + mem[_755] + 196] = 0
                        require ext_code.size(address(_725))
                        call address(_725).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_755]) + _755 + -mem[64] + 192]
                    else:
                        _767 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_767 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_767 + 36] = _713 * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_713 * arg2)
                        mem[_767 + 68] = _713 * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_713 * arg2)
                        mem[_767 + 100] = this.address
                        mem[_767 + 132] = 128
                        mem[_767 + 164] = mem[_767]
                        idx = 0
                        while idx < mem[_767]:
                            mem[idx + _767 + 196] = mem[idx + _767 + 32]
                            _545 = mem[128]
                            _690 = mem[mem[_553 + 64]]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_767]) > mem[_767]:
                            mem[_767 + mem[_767] + 196] = 0
                        require ext_code.size(address(_725))
                        call address(_725).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_767]) + _767 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if s == -1:
                    revert with 'NH{q', 17
                _545 = mem[128]
                _690 = mem[mem[_553 + 64]]
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            _545 = mem[128]
            idx = idx + 1
            continue 
    else:
        mem[128] = return_data.size
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '-'
        mem[64] = ceil32(return_data.size) + (32 * stor2.length) + 161
        mem[ceil32(return_data.size) + 129] = stor2.length
        s = ceil32(return_data.size) + 161
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            _381 = mem[64]
            mem[64] = mem[64] + 96
            mem[_381] = address(stor2[idx].field_0)
            _382 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor2[idx].field_256)) + 32
            mem[_382] = uint256(stor2[idx].field_256)
            if not uint256(stor2[idx].field_256):
                mem[_381 + 32] = _382
                _393 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
                mem[_393] = uint256(stor2[idx].field_512)
                if uint256(stor2[idx].field_512):
                    mem[0] = sha3(2) + (3 * idx) + 2
                    mem[_393 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                    t = _393 + 32
                    u = sha3(mem[0])
                    while _393 + (32 * uint256(stor2[idx].field_512)) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_381 + 64] = _393
            else:
                mem[0] = sha3(2) + (3 * idx) + 1
                mem[_382 + 32] = uint256(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 1)].field_0)
                t = _382 + 32
                u = sha3(mem[0])
                while _382 + (32 * uint256(stor2[idx].field_256)) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_381 + 32] = _382
                _694 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor2[idx].field_512)) + 32
                mem[_694] = uint256(stor2[idx].field_512)
                if uint256(stor2[idx].field_512):
                    mem[0] = sha3(2) + (3 * idx) + 2
                    mem[_694 + 32] = address(stor[sha3(('name', 'stor2', 2) + (3 * idx) + 2)].field_0)
                    t = _694 + 32
                    u = sha3(mem[0])
                    while _694 + (32 * uint256(stor2[idx].field_512)) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_381 + 64] = _694
            mem[s] = _381
            s = s + 32
            idx = idx + 1
            continue 
        _546 = mem[ceil32(return_data.size) + 129]
        idx = 0
        while idx < _546:
            if idx >= mem[ceil32(return_data.size) + 129]:
                revert with 'NH{q', 50
            _554 = mem[(32 * idx) + ceil32(return_data.size) + 161]
            _693 = mem[mem[mem[(32 * idx) + ceil32(return_data.size) + 161] + 64]]
            s = 0
            while s < _693:
                if s >= mem[mem[_554 + 32]]:
                    revert with 'NH{q', 50
                _716 = mem[(32 * s) + mem[_554 + 32] + 32]
                if s >= mem[mem[_554 + 64]]:
                    revert with 'NH{q', 50
                _727 = mem[(32 * s) + mem[_554 + 64] + 32]
                _728 = mem[_554]
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * s) + mem[_554 + 64] + 32], arg2
                mem[mem[64] + 68] = ext_call.return_data[0]
                require ext_call.success
                staticcall _727.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] + 4 len 64] = ext_call.return_data[0 len 64]
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 >= _728:
                    if _728 >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        _750 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_750 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_750 + 36] = 0
                        mem[_750 + 68] = 0
                        mem[_750 + 100] = this.address
                        mem[_750 + 132] = 128
                        mem[_750 + 164] = mem[_750]
                        idx = 0
                        while idx < mem[_750]:
                            mem[idx + _750 + 196] = mem[idx + _750 + 32]
                            _546 = mem[ceil32(return_data.size) + 129]
                            _693 = mem[mem[_554 + 64]]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_750]) > mem[_750]:
                            mem[_750 + mem[_750] + 196] = 0
                        require ext_code.size(address(_727))
                        call address(_727).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_750]) + _750 + -mem[64] + 192]
                    else:
                        _757 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_757 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_757 + 36] = _716 * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_716 * arg2)
                        mem[_757 + 68] = 0
                        mem[_757 + 100] = this.address
                        mem[_757 + 132] = 128
                        mem[_757 + 164] = mem[_757]
                        idx = 0
                        while idx < mem[_757]:
                            mem[idx + _757 + 196] = mem[idx + _757 + 32]
                            _546 = mem[ceil32(return_data.size) + 129]
                            _693 = mem[mem[_554 + 64]]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_757]) > mem[_757]:
                            mem[_757 + mem[_757] + 196] = 0
                        require ext_code.size(address(_727))
                        call address(_727).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_757]) + _757 + -mem[64] + 192]
                else:
                    if _728 >= 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        _758 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_758 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_758 + 36] = 0
                        mem[_758 + 68] = _716 * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_716 * arg2)
                        mem[_758 + 100] = this.address
                        mem[_758 + 132] = 128
                        mem[_758 + 164] = mem[_758]
                        idx = 0
                        while idx < mem[_758]:
                            mem[idx + _758 + 196] = mem[idx + _758 + 32]
                            _546 = mem[ceil32(return_data.size) + 129]
                            _693 = mem[mem[_554 + 64]]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_758]) > mem[_758]:
                            mem[_758 + mem[_758] + 196] = 0
                        require ext_code.size(address(_727))
                        call address(_727).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _716 * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_716 * arg2), address(this.address), 128, mem[_758], mem[_758 + 196 len ceil32(mem[_758])]
                    else:
                        _770 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_770 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_770 + 36] = _716 * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_716 * arg2)
                        mem[_770 + 68] = _716 * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_716 * arg2)
                        mem[_770 + 100] = this.address
                        mem[_770 + 132] = 128
                        mem[_770 + 164] = mem[_770]
                        idx = 0
                        while idx < mem[_770]:
                            mem[idx + _770 + 196] = mem[idx + _770 + 32]
                            _546 = mem[ceil32(return_data.size) + 129]
                            _693 = mem[mem[_554 + 64]]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_770]) > mem[_770]:
                            mem[_770 + mem[_770] + 196] = 0
                        require ext_code.size(address(_727))
                        call address(_727).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _716 * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (_716 * arg2), _716 * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (_716 * arg2), address(this.address), Array(len=mem[_770], data=mem[_770 + 196 len ceil32(mem[_770])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if s == -1:
                    revert with 'NH{q', 17
                _546 = mem[ceil32(return_data.size) + 129]
                _693 = mem[mem[_554 + 64]]
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            _546 = mem[ceil32(return_data.size) + 129]
            idx = idx + 1
            continue 
}

function sub_81e47af1(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, '-'
    if ('cd', 100).length != ('cd', 36).length:
        revert with 0, '-'
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0, '-'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] > test266151307():
            revert with 'NH{q', 65
        _78 = mem[64]
        mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
        if cd[((32 * idx) + cd[4] + 36)]:
            mem[mem[64] + 32 len 32 * cd[((32 * idx) + cd[4] + 36)]] = call.data[calldata.size len 32 * cd[((32 * idx) + cd[4] + 36)]]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if cd[((32 * idx) + cd[4] + 36)] > test266151307():
                revert with 'NH{q', 65
            mem[mem[64] + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32] = cd[((32 * idx) + cd[4] + 36)]
            mem[64] = mem[64] + (64 * cd[((32 * idx) + cd[4] + 36)]) + 64
            if not cd[((32 * idx) + cd[4] + 36)]:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if var67004 < cd[((32 * idx) + cd[4] + 36)]:
                    if var69005 < ('cd', 100).length:
                        require cd[((32 * var69005) + cd[100] + 36)] == address(cd[((32 * var69005) + cd[100] + 36)])
                        _467 = mem[_78]
                        t = var69005
                        s = var69001
                        u = var69005
                        while s < _467:
                            mem[(32 * s) + _78 + 32] = address(cd[((32 * t) + cd[100] + 36)])
                            if u >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            if s >= mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 64] = cd[((32 * u) + cd[36] + 36)]
                            if u == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            if s + 1 < cd[((32 * idx) + cd[4] + 36)]:
                                if u + 1 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * u + 2) + cd[100] + 36)] == address(cd[((32 * u + 2) + cd[100] + 36)])
                                t = u + 1
                                s = s + 1
                                u = u + 1
                                continue 
                            _479 = mem[64]
                            mem[64] = mem[64] + 96
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            mem[_479] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[_479 + 32] = _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32
                            mem[_479 + 64] = _78
                            stor2.length++
                            address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[68] + 36)])
                            uint256(stor2[stor2.length].field_256) = mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]
                            mem[0] = (3 * stor2.length) + sha3(2) + 1
                            if not mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]:
                                s = sha3((3 * stor2.length) + sha3(2) + 1)
                                while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                                    uint256(stor[s]) = 0
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    s = s + 1
                                    continue 
                                _550 = mem[_78]
                                uint256(stor2[stor2.length].field_512) = mem[_78]
                                mem[0] = (3 * stor2.length) + sha3(2) + 2
                                if not _550:
                                    s = sha3((3 * stor2.length) + sha3(2) + 2)
                                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                        s = s + 1
                                        continue 
                                else:
                                    u = sha3((3 * stor2.length) + sha3(2) + 2)
                                    s = _78 + 32
                                    while _78 + (32 * _550) + 32 > s:
                                        address(stor[u]) = mem[s + 12 len 20]
                                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                        u = u + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _550) + 31) >> 5)
                                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                        s = s + 1
                                        continue 
                            else:
                                s = sha3((3 * stor2.length) + sha3(2) + 1)
                                u = _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 64
                                while _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + (32 * mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]) + 64 > u:
                                    uint256(stor[s]) = mem[u]
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    s = s + 1
                                    u = u + 32
                                    continue 
                                s = sha3((3 * stor2.length) + sha3(2) + 1) + (Mask(251, 0, (32 * mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]) + 31) >> 5)
                                while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                                    uint256(stor[s]) = 0
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    s = s + 1
                                    continue 
                                _586 = mem[_78]
                                uint256(stor2[stor2.length].field_512) = mem[_78]
                                mem[0] = (3 * stor2.length) + sha3(2) + 2
                                if not _586:
                                    s = sha3((3 * stor2.length) + sha3(2) + 2)
                                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                        s = s + 1
                                        continue 
                                else:
                                    u = sha3((3 * stor2.length) + sha3(2) + 2)
                                    s = _78 + 32
                                    while _78 + (32 * _586) + 32 > s:
                                        address(stor[u]) = mem[s + 12 len 20]
                                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                        u = u + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _586) + 31) >> 5)
                                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                        uint256(stor[s]) = 0
                                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                        s = s + 1
                                        continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            idx = idx + 1
                            continue 
                    revert with 'NH{q', 50
                mem[64] = _78 + (64 * cd[((32 * idx) + cd[4] + 36)]) + 160
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[_78 + (64 * cd[((32 * idx) + cd[4] + 36)]) + 64] = address(cd[((32 * idx) + cd[68] + 36)])
                mem[_78 + (64 * cd[((32 * idx) + cd[4] + 36)]) + 96] = _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32
                mem[_78 + (64 * cd[((32 * idx) + cd[4] + 36)]) + 128] = _78
                stor2.length++
                address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[68] + 36)])
                uint256(stor2[stor2.length].field_256) = mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]
                mem[0] = (3 * stor2.length) + sha3(2) + 1
                if not mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]:
                    s = sha3((3 * stor2.length) + sha3(2) + 1)
                    while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    _354 = mem[_78]
                    uint256(stor2[stor2.length].field_512) = mem[_78]
                    mem[0] = (3 * stor2.length) + sha3(2) + 2
                    if not _354:
                        s = sha3((3 * stor2.length) + sha3(2) + 2)
                        while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    else:
                        t = sha3((3 * stor2.length) + sha3(2) + 2)
                        s = _78 + 32
                        while _78 + (32 * _354) + 32 > s:
                            address(stor[t]) = mem[s + 12 len 20]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _354) + 31) >> 5)
                        while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                s = sha3((3 * stor2.length) + sha3(2) + 1)
                t = _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 64
                while _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + (32 * mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]) + 64 > t:
                    uint256(stor[s]) = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3((3 * stor2.length) + sha3(2) + 1) + (Mask(251, 0, (32 * mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]) + 31) >> 5)
                while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                _458 = mem[_78]
                uint256(stor2[stor2.length].field_512) = mem[_78]
                mem[0] = (3 * stor2.length) + sha3(2) + 2
                if not _458:
                    s = sha3((3 * stor2.length) + sha3(2) + 2)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                t = sha3((3 * stor2.length) + sha3(2) + 2)
                s = _78 + 32
                while _78 + (32 * _458) + 32 > s:
                    address(stor[t]) = mem[s + 12 len 20]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _458) + 31) >> 5)
                while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                if sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) == -1:
                    revert with 'NH{q', 17
                s = sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) + 1
                continue 
            mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 64 len 32 * cd[((32 * idx) + cd[4] + 36)]] = call.data[calldata.size len 32 * cd[((32 * idx) + cd[4] + 36)]]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if var68004 < cd[((32 * idx) + cd[4] + 36)]:
                if var70005 < ('cd', 100).length:
                    require cd[((32 * var70005) + cd[100] + 36)] == address(cd[((32 * var70005) + cd[100] + 36)])
                    _468 = mem[_78]
                    t = var70005
                    s = var70001
                    u = var70005
                    while s < _468:
                        mem[(32 * s) + _78 + 32] = address(cd[((32 * t) + cd[100] + 36)])
                        if u >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        if s >= mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 64] = cd[((32 * u) + cd[36] + 36)]
                        if u == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        if s + 1 < cd[((32 * idx) + cd[4] + 36)]:
                            if u + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * u + 2) + cd[100] + 36)] == address(cd[((32 * u + 2) + cd[100] + 36)])
                            t = u + 1
                            s = s + 1
                            u = u + 1
                            continue 
                        _480 = mem[64]
                        mem[64] = mem[64] + 96
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        mem[_480] = address(cd[((32 * idx) + cd[68] + 36)])
                        mem[_480 + 32] = _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32
                        mem[_480 + 64] = _78
                        stor2.length++
                        address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[68] + 36)])
                        uint256(stor2[stor2.length].field_256) = mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]
                        mem[0] = (3 * stor2.length) + sha3(2) + 1
                        if not mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]:
                            s = sha3((3 * stor2.length) + sha3(2) + 1)
                            while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                                uint256(stor[s]) = 0
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                s = s + 1
                                continue 
                            _552 = mem[_78]
                            uint256(stor2[stor2.length].field_512) = mem[_78]
                            mem[0] = (3 * stor2.length) + sha3(2) + 2
                            if not _552:
                                s = sha3((3 * stor2.length) + sha3(2) + 2)
                                while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    s = s + 1
                                    continue 
                            else:
                                u = sha3((3 * stor2.length) + sha3(2) + 2)
                                s = _78 + 32
                                while _78 + (32 * _552) + 32 > s:
                                    address(stor[u]) = mem[s + 12 len 20]
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    u = u + 1
                                    s = s + 32
                                    continue 
                                s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _552) + 31) >> 5)
                                while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    s = s + 1
                                    continue 
                        else:
                            s = sha3((3 * stor2.length) + sha3(2) + 1)
                            u = _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 64
                            while _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + (32 * mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]) + 64 > u:
                                uint256(stor[s]) = mem[u]
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                s = s + 1
                                u = u + 32
                                continue 
                            s = sha3((3 * stor2.length) + sha3(2) + 1) + (Mask(251, 0, (32 * mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]) + 31) >> 5)
                            while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                                uint256(stor[s]) = 0
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                s = s + 1
                                continue 
                            _588 = mem[_78]
                            uint256(stor2[stor2.length].field_512) = mem[_78]
                            mem[0] = (3 * stor2.length) + sha3(2) + 2
                            if not _588:
                                s = sha3((3 * stor2.length) + sha3(2) + 2)
                                while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    s = s + 1
                                    continue 
                            else:
                                u = sha3((3 * stor2.length) + sha3(2) + 2)
                                s = _78 + 32
                                while _78 + (32 * _588) + 32 > s:
                                    address(stor[u]) = mem[s + 12 len 20]
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    u = u + 1
                                    s = s + 32
                                    continue 
                                s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _588) + 31) >> 5)
                                while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    s = s + 1
                                    continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        idx = idx + 1
                        continue 
                revert with 'NH{q', 50
            mem[64] = _78 + (64 * cd[((32 * idx) + cd[4] + 36)]) + 160
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[_78 + (64 * cd[((32 * idx) + cd[4] + 36)]) + 64] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[_78 + (64 * cd[((32 * idx) + cd[4] + 36)]) + 96] = _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32
            mem[_78 + (64 * cd[((32 * idx) + cd[4] + 36)]) + 128] = _78
            stor2.length++
            address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[68] + 36)])
            uint256(stor2[stor2.length].field_256) = mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]
            mem[0] = (3 * stor2.length) + sha3(2) + 1
            if not mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]:
                s = sha3((3 * stor2.length) + sha3(2) + 1)
                while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                _356 = mem[_78]
                uint256(stor2[stor2.length].field_512) = mem[_78]
                mem[0] = (3 * stor2.length) + sha3(2) + 2
                if not _356:
                    s = sha3((3 * stor2.length) + sha3(2) + 2)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                else:
                    t = sha3((3 * stor2.length) + sha3(2) + 2)
                    s = _78 + 32
                    while _78 + (32 * _356) + 32 > s:
                        address(stor[t]) = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _356) + 31) >> 5)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            else:
                s = sha3((3 * stor2.length) + sha3(2) + 1)
                t = _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 64
                while _78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + (32 * mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]) + 64 > t:
                    uint256(stor[s]) = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3((3 * stor2.length) + sha3(2) + 1) + (Mask(251, 0, (32 * mem[_78 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32]) + 31) >> 5)
                while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                _460 = mem[_78]
                uint256(stor2[stor2.length].field_512) = mem[_78]
                mem[0] = (3 * stor2.length) + sha3(2) + 2
                if not _460:
                    s = sha3((3 * stor2.length) + sha3(2) + 2)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                else:
                    t = sha3((3 * stor2.length) + sha3(2) + 2)
                    s = _78 + 32
                    while _78 + (32 * _460) + 32 > s:
                        address(stor[t]) = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _460) + 31) >> 5)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] > test266151307():
            revert with 'NH{q', 65
        _79 = mem[64] + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32
        mem[mem[64] + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32] = cd[((32 * idx) + cd[4] + 36)]
        mem[64] = mem[64] + (64 * cd[((32 * idx) + cd[4] + 36)]) + 64
        if not cd[((32 * idx) + cd[4] + 36)]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if var66004 < cd[((32 * idx) + cd[4] + 36)]:
                if var68005 < ('cd', 100).length:
                    require cd[((32 * var68005) + cd[100] + 36)] == address(cd[((32 * var68005) + cd[100] + 36)])
                    _465 = mem[_78]
                    t = var68005
                    s = var68001
                    u = var68005
                    while s < _465:
                        mem[(32 * s) + _78 + 32] = address(cd[((32 * t) + cd[100] + 36)])
                        if u >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        if s >= mem[_79]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _79 + 32] = cd[((32 * u) + cd[36] + 36)]
                        if u == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        if s + 1 < cd[((32 * idx) + cd[4] + 36)]:
                            if u + 1 >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * u + 2) + cd[100] + 36)] == address(cd[((32 * u + 2) + cd[100] + 36)])
                            t = u + 1
                            s = s + 1
                            u = u + 1
                            continue 
                        _477 = mem[64]
                        mem[64] = mem[64] + 96
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        mem[_477] = address(cd[((32 * idx) + cd[68] + 36)])
                        mem[_477 + 32] = _79
                        mem[_477 + 64] = _78
                        stor2.length++
                        mem[0] = 2
                        address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[68] + 36)])
                        _484 = mem[_79]
                        uint256(stor2[stor2.length].field_256) = mem[_79]
                        mem[0] = (3 * stor2.length) + sha3(2) + 1
                        if not _484:
                            s = sha3((3 * stor2.length) + sha3(2) + 1)
                            while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                                uint256(stor[s]) = 0
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                s = s + 1
                                continue 
                            _546 = mem[_78]
                            uint256(stor2[stor2.length].field_512) = mem[_78]
                            mem[0] = (3 * stor2.length) + sha3(2) + 2
                            if not _546:
                                s = sha3((3 * stor2.length) + sha3(2) + 2)
                                while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    s = s + 1
                                    continue 
                            else:
                                u = sha3((3 * stor2.length) + sha3(2) + 2)
                                s = _78 + 32
                                while _78 + (32 * _546) + 32 > s:
                                    address(stor[u]) = mem[s + 12 len 20]
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    u = u + 1
                                    s = s + 32
                                    continue 
                                s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _546) + 31) >> 5)
                                while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    s = s + 1
                                    continue 
                        else:
                            u = sha3((3 * stor2.length) + sha3(2) + 1)
                            s = _79 + 32
                            while _79 + (32 * _484) + 32 > s:
                                uint256(stor[u]) = mem[s]
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                u = u + 1
                                s = s + 32
                                continue 
                            s = sha3((3 * stor2.length) + sha3(2) + 1) + (Mask(251, 0, (32 * _484) + 31) >> 5)
                            while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                                uint256(stor[s]) = 0
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                s = s + 1
                                continue 
                            _582 = mem[_78]
                            uint256(stor2[stor2.length].field_512) = mem[_78]
                            mem[0] = (3 * stor2.length) + sha3(2) + 2
                            if not _582:
                                s = sha3((3 * stor2.length) + sha3(2) + 2)
                                while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    s = s + 1
                                    continue 
                            else:
                                u = sha3((3 * stor2.length) + sha3(2) + 2)
                                s = _78 + 32
                                while _78 + (32 * _582) + 32 > s:
                                    address(stor[u]) = mem[s + 12 len 20]
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    u = u + 1
                                    s = s + 32
                                    continue 
                                s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _582) + 31) >> 5)
                                while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                    uint256(stor[s]) = 0
                                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                    s = s + 1
                                    continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        idx = idx + 1
                        continue 
                revert with 'NH{q', 50
            mem[64] = _79 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 128
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[_79 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[_79 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 64] = _79
            mem[_79 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 96] = _78
            stor2.length++
            mem[0] = 2
            address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[68] + 36)])
            _224 = mem[_79]
            uint256(stor2[stor2.length].field_256) = mem[_79]
            mem[0] = (3 * stor2.length) + sha3(2) + 1
            if not _224:
                s = sha3((3 * stor2.length) + sha3(2) + 1)
                while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                _350 = mem[_78]
                uint256(stor2[stor2.length].field_512) = mem[_78]
                mem[0] = (3 * stor2.length) + sha3(2) + 2
                if not _350:
                    s = sha3((3 * stor2.length) + sha3(2) + 2)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                else:
                    t = sha3((3 * stor2.length) + sha3(2) + 2)
                    s = _78 + 32
                    while _78 + (32 * _350) + 32 > s:
                        address(stor[t]) = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _350) + 31) >> 5)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            else:
                t = sha3((3 * stor2.length) + sha3(2) + 1)
                s = _79 + 32
                while _79 + (32 * _224) + 32 > s:
                    uint256(stor[t]) = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((3 * stor2.length) + sha3(2) + 1) + (Mask(251, 0, (32 * _224) + 31) >> 5)
                while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                _454 = mem[_78]
                uint256(stor2[stor2.length].field_512) = mem[_78]
                mem[0] = (3 * stor2.length) + sha3(2) + 2
                if not _454:
                    s = sha3((3 * stor2.length) + sha3(2) + 2)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                else:
                    t = sha3((3 * stor2.length) + sha3(2) + 2)
                    s = _78 + 32
                    while _78 + (32 * _454) + 32 > s:
                        address(stor[t]) = mem[s + 12 len 20]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _454) + 31) >> 5)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[_79 + 32 len 32 * cd[((32 * idx) + cd[4] + 36)]] = call.data[calldata.size len 32 * cd[((32 * idx) + cd[4] + 36)]]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if var67004 < cd[((32 * idx) + cd[4] + 36)]:
            if var69005 < ('cd', 100).length:
                require cd[((32 * var69005) + cd[100] + 36)] == address(cd[((32 * var69005) + cd[100] + 36)])
                _466 = mem[_78]
                t = var69005
                s = var69001
                u = var69005
                while s < _466:
                    mem[(32 * s) + _78 + 32] = address(cd[((32 * t) + cd[100] + 36)])
                    if u >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if s >= mem[_79]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _79 + 32] = cd[((32 * u) + cd[36] + 36)]
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    if s + 1 < cd[((32 * idx) + cd[4] + 36)]:
                        if u + 1 >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * u + 2) + cd[100] + 36)] == address(cd[((32 * u + 2) + cd[100] + 36)])
                        t = u + 1
                        s = s + 1
                        u = u + 1
                        continue 
                    _478 = mem[64]
                    mem[64] = mem[64] + 96
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    mem[_478] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[_478 + 32] = _79
                    mem[_478 + 64] = _78
                    stor2.length++
                    mem[0] = 2
                    address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[68] + 36)])
                    _488 = mem[_79]
                    uint256(stor2[stor2.length].field_256) = mem[_79]
                    mem[0] = (3 * stor2.length) + sha3(2) + 1
                    if not _488:
                        s = sha3((3 * stor2.length) + sha3(2) + 1)
                        while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                            uint256(stor[s]) = 0
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            s = s + 1
                            continue 
                        _548 = mem[_78]
                        uint256(stor2[stor2.length].field_512) = mem[_78]
                        mem[0] = (3 * stor2.length) + sha3(2) + 2
                        if not _548:
                            s = sha3((3 * stor2.length) + sha3(2) + 2)
                            while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                uint256(stor[s]) = 0
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                s = s + 1
                                continue 
                        else:
                            u = sha3((3 * stor2.length) + sha3(2) + 2)
                            s = _78 + 32
                            while _78 + (32 * _548) + 32 > s:
                                address(stor[u]) = mem[s + 12 len 20]
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                u = u + 1
                                s = s + 32
                                continue 
                            s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _548) + 31) >> 5)
                            while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                uint256(stor[s]) = 0
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                s = s + 1
                                continue 
                    else:
                        u = sha3((3 * stor2.length) + sha3(2) + 1)
                        s = _79 + 32
                        while _79 + (32 * _488) + 32 > s:
                            uint256(stor[u]) = mem[s]
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            u = u + 1
                            s = s + 32
                            continue 
                        s = sha3((3 * stor2.length) + sha3(2) + 1) + (Mask(251, 0, (32 * _488) + 31) >> 5)
                        while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                            uint256(stor[s]) = 0
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            s = s + 1
                            continue 
                        _584 = mem[_78]
                        uint256(stor2[stor2.length].field_512) = mem[_78]
                        mem[0] = (3 * stor2.length) + sha3(2) + 2
                        if not _584:
                            s = sha3((3 * stor2.length) + sha3(2) + 2)
                            while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                uint256(stor[s]) = 0
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                s = s + 1
                                continue 
                        else:
                            u = sha3((3 * stor2.length) + sha3(2) + 2)
                            s = _78 + 32
                            while _78 + (32 * _584) + 32 > s:
                                address(stor[u]) = mem[s + 12 len 20]
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                u = u + 1
                                s = s + 32
                                continue 
                            s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _584) + 31) >> 5)
                            while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                                uint256(stor[s]) = 0
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                s = s + 1
                                continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                    idx = idx + 1
                    continue 
            revert with 'NH{q', 50
        mem[64] = _79 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 128
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[_79 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 32] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[_79 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 64] = _79
        mem[_79 + (32 * cd[((32 * idx) + cd[4] + 36)]) + 96] = _78
        stor2.length++
        mem[0] = 2
        address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[68] + 36)])
        _229 = mem[_79]
        uint256(stor2[stor2.length].field_256) = mem[_79]
        mem[0] = (3 * stor2.length) + sha3(2) + 1
        if not _229:
            s = sha3((3 * stor2.length) + sha3(2) + 1)
            while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            _352 = mem[_78]
            uint256(stor2[stor2.length].field_512) = mem[_78]
            mem[0] = (3 * stor2.length) + sha3(2) + 2
            if not _352:
                s = sha3((3 * stor2.length) + sha3(2) + 2)
                while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                t = sha3((3 * stor2.length) + sha3(2) + 2)
                s = _78 + 32
                while _78 + (32 * _352) + 32 > s:
                    address(stor[t]) = mem[s + 12 len 20]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _352) + 31) >> 5)
                while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        t = sha3((3 * stor2.length) + sha3(2) + 1)
        s = _79 + 32
        while _79 + (32 * _229) + 32 > s:
            uint256(stor[t]) = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3((3 * stor2.length) + sha3(2) + 1) + (Mask(251, 0, (32 * _229) + 31) >> 5)
        while sha3((3 * stor2.length) + sha3(2) + 1) + uint256(stor2[stor2.length].field_256) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        _456 = mem[_78]
        uint256(stor2[stor2.length].field_512) = mem[_78]
        mem[0] = (3 * stor2.length) + sha3(2) + 2
        if not _456:
            s = sha3((3 * stor2.length) + sha3(2) + 2)
            while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        t = sha3((3 * stor2.length) + sha3(2) + 2)
        s = _78 + 32
        while _78 + (32 * _456) + 32 > s:
            address(stor[t]) = mem[s + 12 len 20]
            t = t + 1
            s = s + 32
            continue 
        s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, (32 * _456) + 31) >> 5)
        while sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        if sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) == -1:
            revert with 'NH{q', 17
        s = sha3((3 * stor2.length) + sha3(2) + 2) + uint256(stor2[stor2.length].field_512) + 1
        continue 
    if stor3 > !('cd', 100).length:
        revert with 'NH{q', 17
    stor3 += ('cd', 100).length
}



}
