contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address sub_51bfcdbdAddress;
address NEXUSAddress;

function NEXUS() payable {
    return NEXUSAddress
}

function sub_51bfcdbd(?) payable {
    return sub_51bfcdbdAddress
}

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function migrate() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[100] = msg.sender
    require ext_code.size(sub_51bfcdbdAddress)
    staticcall sub_51bfcdbdAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Migration: zero old NFT balance'
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(sub_51bfcdbdAddress)
            staticcall sub_51bfcdbdAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_25]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _76 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _76
            require ext_code.size(sub_51bfcdbdAddress)
            call sub_51bfcdbdAddress.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _76
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _84 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if not mem[(32 * idx) + ceil32(return_data.size) + 128]:
                _86 = mem[64]
                mem[64] = mem[64] + 64
                mem[_86] = 1
                mem[_86 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _88 = mem[64]
                mem[mem[64] + 32] = 'Migrated Node #' << 136
                s = 0
                while s < 1:
                    mem[s + _88 + 47] = mem[s + _86 + 32]
                    s = s + 32
                    continue 
                mem[_88 + 48] = 0
                _127 = mem[64]
                mem[64] = _88 + 48
                mem[_88 + 48] = 0xd3fc986400000000000000000000000000000000000000000000000000000000
                mem[_88 + 52] = msg.sender
                mem[_88 + 84] = 0
                mem[_88 + 116] = 96
                _133 = mem[_127]
                mem[_88 + 148] = mem[_127]
                s = 0
                while s < _133:
                    mem[s + _88 + 180] = mem[s + _127 + 32]
                    s = s + 32
                    continue 
                if ceil32(_133) > _133:
                    mem[_88 + _133 + 180] = 0
                require ext_code.size(NEXUSAddress)
                call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                     gas gas_remaining wei
                    args msg.sender, 0, 96, mem[_88 + 148 len ceil32(_133) + 32]
            else:
                t = 0
                s = mem[(32 * idx) + ceil32(return_data.size) + 128]
                while s:
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 0, 65
                _120 = mem[64]
                mem[mem[64]] = t
                mem[64] = mem[64] + ceil32(t) + 32
                if not t:
                    u = t
                    s = _84
                    while s:
                        if u < 1:
                            revert with 0, 17
                        if 48 > !(s % 10):
                            revert with 0, 17
                        if u - 1 >= mem[_120]:
                            revert with 0, 50
                        mem[u + _120 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _214 = mem[64]
                    mem[mem[64] + 32] = 'Migrated Node #' << 136
                    _218 = mem[_120]
                    s = 0
                    while s < _218:
                        mem[s + _214 + 47] = mem[s + _120 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_218) <= _218:
                        _290 = mem[64]
                        mem[64] = _218 + _214 + 47
                        mem[_218 + _214 + 47] = 0xd3fc986400000000000000000000000000000000000000000000000000000000
                        mem[_218 + _214 + 51] = msg.sender
                        mem[_218 + _214 + 83] = 0
                        mem[_218 + _214 + 115] = 96
                        _298 = mem[_290]
                        mem[_218 + _214 + 147] = mem[_290]
                        s = 0
                        while s < _298:
                            mem[s + _218 + _214 + 179] = mem[s + _290 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_298) > _298:
                            mem[_218 + _214 + _298 + 179] = 0
                        require ext_code.size(NEXUSAddress)
                        call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, 96, mem[_218 + _214 + 147 len ceil32(_298) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ceil32(_298) == -1:
                            revert with 0, 17
                        s = ceil32(_298) + 1
                        continue 
                    mem[_214 + _218 + 47] = 0
                    _299 = mem[64]
                    mem[64] = _218 + _214 + 47
                    mem[_218 + _214 + 47] = 0xd3fc986400000000000000000000000000000000000000000000000000000000
                    mem[_218 + _214 + 51] = msg.sender
                    mem[_218 + _214 + 83] = 0
                    mem[_218 + _214 + 115] = 96
                    _310 = mem[_299]
                    mem[_218 + _214 + 147] = mem[_299]
                    s = 0
                    while s < _310:
                        mem[s + _218 + _214 + 179] = mem[s + _299 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_310) > _310:
                        mem[_218 + _214 + _310 + 179] = 0
                    require ext_code.size(NEXUSAddress)
                    call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, 96, mem[_218 + _214 + 147 len ceil32(_310) + 32]
                else:
                    mem[_120 + 32 len t] = call.data[calldata.size len t]
                    u = t
                    s = _84
                    while s:
                        if u < 1:
                            revert with 0, 17
                        if 48 > !(s % 10):
                            revert with 0, 17
                        if u - 1 >= mem[_120]:
                            revert with 0, 50
                        mem[u + _120 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _215 = mem[64]
                    mem[mem[64] + 32] = 'Migrated Node #' << 136
                    _219 = mem[_120]
                    s = 0
                    while s < _219:
                        mem[s + _215 + 47] = mem[s + _120 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_219) <= _219:
                        _292 = mem[64]
                        mem[64] = _219 + _215 + 47
                        mem[_219 + _215 + 47] = 0xd3fc986400000000000000000000000000000000000000000000000000000000
                        mem[_219 + _215 + 51] = msg.sender
                        mem[_219 + _215 + 83] = 0
                        mem[_219 + _215 + 115] = 96
                        _301 = mem[_292]
                        mem[_219 + _215 + 147] = mem[_292]
                        s = 0
                        while s < _301:
                            mem[s + _219 + _215 + 179] = mem[s + _292 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_301) > _301:
                            mem[_219 + _215 + _301 + 179] = 0
                        require ext_code.size(NEXUSAddress)
                        call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, 96, mem[_219 + _215 + 147 len ceil32(_301) + 32]
                    else:
                        mem[_215 + _219 + 47] = 0
                        _302 = mem[64]
                        mem[64] = _219 + _215 + 47
                        mem[_219 + _215 + 47] = 0xd3fc986400000000000000000000000000000000000000000000000000000000
                        mem[_219 + _215 + 51] = msg.sender
                        mem[_219 + _215 + 83] = 0
                        mem[_219 + _215 + 115] = 96
                        _311 = mem[_302]
                        mem[_219 + _215 + 147] = mem[_302]
                        s = 0
                        while s < _311:
                            mem[s + _219 + _215 + 179] = mem[s + _302 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_311) > _311:
                            mem[_219 + _215 + _311 + 179] = 0
                        require ext_code.size(NEXUSAddress)
                        call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, 96, mem[_219 + _215 + 147 len ceil32(_311) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(sub_51bfcdbdAddress)
            staticcall sub_51bfcdbdAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_27]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _79 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _79
            require ext_code.size(sub_51bfcdbdAddress)
            call sub_51bfcdbdAddress.0x42842e0e with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _79
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _85 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if not mem[(32 * idx) + ceil32(return_data.size) + 128]:
                _87 = mem[64]
                mem[64] = mem[64] + 64
                mem[_87] = 1
                mem[_87 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _89 = mem[64]
                mem[mem[64] + 32] = 'Migrated Node #' << 136
                s = 0
                while s < 1:
                    mem[s + _89 + 47] = mem[s + _87 + 32]
                    s = s + 32
                    continue 
                mem[_89 + 48] = 0
                _130 = mem[64]
                mem[64] = _89 + 48
                mem[_89 + 48] = 0xd3fc986400000000000000000000000000000000000000000000000000000000
                mem[_89 + 52] = msg.sender
                mem[_89 + 84] = 0
                mem[_89 + 116] = 96
                _135 = mem[_130]
                mem[_89 + 148] = mem[_130]
                s = 0
                while s < _135:
                    mem[s + _89 + 180] = mem[s + _130 + 32]
                    s = s + 32
                    continue 
                if ceil32(_135) > _135:
                    mem[_89 + _135 + 180] = 0
                require ext_code.size(NEXUSAddress)
                call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                     gas gas_remaining wei
                    args msg.sender, 0, 96, mem[_89 + 148 len ceil32(_135) + 32]
            else:
                t = 0
                s = mem[(32 * idx) + ceil32(return_data.size) + 128]
                while s:
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 0, 65
                _121 = mem[64]
                mem[mem[64]] = t
                mem[64] = mem[64] + ceil32(t) + 32
                if not t:
                    u = t
                    s = _85
                    while s:
                        if u < 1:
                            revert with 0, 17
                        if 48 > !(s % 10):
                            revert with 0, 17
                        if u - 1 >= mem[_121]:
                            revert with 0, 50
                        mem[u + _121 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _216 = mem[64]
                    mem[mem[64] + 32] = 'Migrated Node #' << 136
                    _220 = mem[_121]
                    s = 0
                    while s < _220:
                        mem[s + _216 + 47] = mem[s + _121 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_220) <= _220:
                        _294 = mem[64]
                        mem[64] = _220 + _216 + 47
                        mem[_220 + _216 + 47] = 0xd3fc986400000000000000000000000000000000000000000000000000000000
                        mem[_220 + _216 + 51] = msg.sender
                        mem[_220 + _216 + 83] = 0
                        mem[_220 + _216 + 115] = 96
                        _304 = mem[_294]
                        mem[_220 + _216 + 147] = mem[_294]
                        s = 0
                        while s < _304:
                            mem[s + _220 + _216 + 179] = mem[s + _294 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_304) > _304:
                            mem[_220 + _216 + _304 + 179] = 0
                        require ext_code.size(NEXUSAddress)
                        call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, 96, mem[_220 + _216 + 147 len ceil32(_304) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ceil32(_304) == -1:
                            revert with 0, 17
                        s = ceil32(_304) + 1
                        continue 
                    mem[_216 + _220 + 47] = 0
                    _305 = mem[64]
                    mem[64] = _220 + _216 + 47
                    mem[_220 + _216 + 47] = 0xd3fc986400000000000000000000000000000000000000000000000000000000
                    mem[_220 + _216 + 51] = msg.sender
                    mem[_220 + _216 + 83] = 0
                    mem[_220 + _216 + 115] = 96
                    _312 = mem[_305]
                    mem[_220 + _216 + 147] = mem[_305]
                    s = 0
                    while s < _312:
                        mem[s + _220 + _216 + 179] = mem[s + _305 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_312) > _312:
                        mem[_220 + _216 + _312 + 179] = 0
                    require ext_code.size(NEXUSAddress)
                    call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args msg.sender, 0, 96, mem[_220 + _216 + 147 len ceil32(_312) + 32]
                else:
                    mem[_121 + 32 len t] = call.data[calldata.size len t]
                    u = t
                    s = _85
                    while s:
                        if u < 1:
                            revert with 0, 17
                        if 48 > !(s % 10):
                            revert with 0, 17
                        if u - 1 >= mem[_121]:
                            revert with 0, 50
                        mem[u + _121 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _217 = mem[64]
                    mem[mem[64] + 32] = 'Migrated Node #' << 136
                    _221 = mem[_121]
                    s = 0
                    while s < _221:
                        mem[s + _217 + 47] = mem[s + _121 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_221) <= _221:
                        _296 = mem[64]
                        mem[64] = _221 + _217 + 47
                        mem[_221 + _217 + 47] = 0xd3fc986400000000000000000000000000000000000000000000000000000000
                        mem[_221 + _217 + 51] = msg.sender
                        mem[_221 + _217 + 83] = 0
                        mem[_221 + _217 + 115] = 96
                        _307 = mem[_296]
                        mem[_221 + _217 + 147] = mem[_296]
                        s = 0
                        while s < _307:
                            mem[s + _221 + _217 + 179] = mem[s + _296 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_307) > _307:
                            mem[_221 + _217 + _307 + 179] = 0
                        require ext_code.size(NEXUSAddress)
                        call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, 96, mem[_221 + _217 + 147 len ceil32(_307) + 32]
                    else:
                        mem[_217 + _221 + 47] = 0
                        _308 = mem[64]
                        mem[64] = _221 + _217 + 47
                        mem[_221 + _217 + 47] = 0xd3fc986400000000000000000000000000000000000000000000000000000000
                        mem[_221 + _217 + 51] = msg.sender
                        mem[_221 + _217 + 83] = 0
                        mem[_221 + _217 + 115] = 96
                        _313 = mem[_308]
                        mem[_221 + _217 + 147] = mem[_308]
                        s = 0
                        while s < _313:
                            mem[s + _221 + _217 + 179] = mem[s + _308 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_313) > _313:
                            mem[_221 + _217 + _313 + 179] = 0
                        require ext_code.size(NEXUSAddress)
                        call NEXUSAddress.mint(address arg1, uint256 arg2, string arg3) with:
                             gas gas_remaining wei
                            args msg.sender, 0, 96, mem[_221 + _217 + 147 len ceil32(_313) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
