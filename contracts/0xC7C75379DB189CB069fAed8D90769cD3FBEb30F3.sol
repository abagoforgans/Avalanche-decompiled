contract main {




// =====================  Runtime code  =====================


#
#  - withdrawTokens(address arg1, uint256 arg2)
#  - approve()
#  - enter(uint256 arg1)
#
uint8 stor0; offset 160
address owner;
uint256 stor1;
uint256 stor2;
uint8 stor3;
uint8 stor3; offset 8
uint256 stor3; offset 8
mapping of uint256 sub_1e989178;
uint256 sub_0ec8ca52;
uint256 sub_ec445abf;
uint256 sub_f06961ce;
uint256 sub_d2265076;
uint256 sub_94e45d0d;
uint256 sub_1ff2cb27;
uint256 sub_f9ba0048;
uint256 sub_8dc35a11;
uint256 sub_321983a2;
uint256 maxReward;
uint8 stor15; offset 48
uint16 stor15;
uint16 stor15; offset 16
uint16 stor15; offset 32
mapping of address tokenOwner;
mapping of uint256 sub_9e2be1d0;
mapping of uint8 levels;
uint256 gameId;
address stor21;
address stor23;
address stor24;
address stor25;

function sub_0ec8ca52(?) payable {
    return sub_0ec8ca52
}

function tokenOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tokenOwner[arg1]
}

function sub_1e989178(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_1e989178[arg1]
}

function sub_1ff2cb27(?) payable {
    return sub_1ff2cb27
}

function sub_321983a2(?) payable {
    return sub_321983a2
}

function paused() payable {
    return bool(stor0)
}

function maxReward() payable {
    return maxReward
}

function owner() payable {
    return owner
}

function sub_8dc35a11(?) payable {
    return sub_8dc35a11
}

function sub_94e45d0d(?) payable {
    return sub_94e45d0d
}

function sub_9e2be1d0(?) payable {
    require calldata.size - 4 >= 32
    return sub_9e2be1d0[arg1]
}

function levels(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return levels[arg1]
}

function sub_d2265076(?) payable {
    return sub_d2265076
}

function gameId() payable {
    return gameId
}

function sub_ec445abf(?) payable {
    return sub_ec445abf
}

function sub_f06961ce(?) payable {
    return sub_f06961ce
}

function sub_f9ba0048(?) payable {
    return sub_f9ba0048
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

function setMaxReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxReward = arg1
}

function setPercentages(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
    stor2 = arg2
}

function sub_d12d1a03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = address(arg1)
}

function sub_decda8b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor24 = address(arg1)
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_0) = uint8(arg1)
}

function sub_cef1464e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor15.field_48) = uint8(arg1)
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor3.field_8) = Mask(248, 0, arg1)
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_072a27da(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(arg2):
        sub_0ec8ca52 = arg1
    else:
        if 1 == uint8(arg2):
            sub_ec445abf = arg1
        else:
            if 2 == uint8(arg2):
                sub_f06961ce = arg1
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

function sub_8765b875(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint16(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(arg1):
        uint16(stor15.field_0) = uint16(arg2)
    else:
        if 1 == uint8(arg1):
            uint16(stor15.field_16) = uint16(arg2)
        else:
            if 2 == uint8(arg1):
                uint16(stor15.field_32) = uint16(arg2)
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens to Brawl directly'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_a6fe7ccb(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 == uint8(arg2):
        sub_d2265076 = arg1
    else:
        if 2 == uint8(arg2):
            sub_94e45d0d = arg1
        else:
            if 3 == uint8(arg2):
                sub_1ff2cb27 = arg1
            else:
                if 4 == uint8(arg2):
                    sub_f9ba0048 = arg1
                else:
                    if 5 == uint8(arg2):
                        sub_8dc35a11 = arg1
                    else:
                        if 6 == uint8(arg2):
                            sub_321983a2 = arg1
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not uint8(stor3.field_8):
        revert with 0, 'Rescue: disabled'
    require msg.sender == tx.origin
    idx = 0
    s = 0
    while idx < arg1.length:
        mem[0] = 0
        mem[32] = 4
        if sub_1e989178[0] == cd[((32 * idx) + arg1 + 36)]:
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 16
            if msg.sender == tokenOwner[cd[((32 * idx) + arg1 + 36)]]:
                sub_1e989178[0] = 0
                mem[132] = msg.sender
                mem[164] = cd[((32 * idx) + arg1 + 36)]
                mem[196] = 128
                mem[228] = 0
                require ext_code.size(stor21)
                call stor21.0xb88d4fde with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)], 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 16
                tokenOwner[cd[((32 * idx) + arg1 + 36)]] = 0
                mem[96] = gameId
                mem[128] = cd[((32 * idx) + arg1 + 36)]
                emit 0x704a4ed5: gameId, cd[((32 * idx) + arg1 + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
}

function sub_750b6f1f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 18
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            if levels[cd[((32 * idx) + cd[4] + 36)]]:
                mem[mem[64] + 36] = levels[cd[((32 * idx) + cd[4] + 36)]]
                require ext_code.size(stor23)
                staticcall stor23.0xcdcf7476 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)], levels[cd[((32 * idx) + cd[4] + 36)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _54 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_54]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = levels[cd[((32 * idx) + cd[4] + 36)]]
                continue 
            require ext_code.size(stor25)
            staticcall stor25.0xb2596a67 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _55 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _62 = mem[_55]
            require mem[_55] == mem[_55 + 31 len 1]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = uint8(_62)
            require ext_code.size(stor23)
            staticcall stor23.0xcdcf7476 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)], uint8(_62)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_72]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _62
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 18
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            if levels[cd[((32 * idx) + cd[4] + 36)]]:
                mem[mem[64] + 36] = levels[cd[((32 * idx) + cd[4] + 36)]]
                require ext_code.size(stor23)
                staticcall stor23.0xcdcf7476 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)], levels[cd[((32 * idx) + cd[4] + 36)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _56 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_56]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = levels[cd[((32 * idx) + cd[4] + 36)]]
                continue 
            require ext_code.size(stor25)
            staticcall stor25.0xb2596a67 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _65 = mem[_57]
            require mem[_57] == mem[_57 + 31 len 1]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = uint8(_65)
            require ext_code.size(stor23)
            staticcall stor23.0xcdcf7476 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)], uint8(_65)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _73 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_73]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _65
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_993e792a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        s = 0
        s = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 18
            if sub_9e2be1d0[cd[((32 * idx) + cd[4] + 36)]]:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + 128]] = sub_9e2be1d0[cd[((32 * idx) + cd[4] + 36)]]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 36] = levels[cd[((32 * idx) + cd[4] + 36)]]
                require ext_code.size(stor23)
                staticcall stor23.0xcdcf7476 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)], levels[cd[((32 * idx) + cd[4] + 36)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _100 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + 128] + 32] = mem[_100]
                mem[0] = 0
                mem[32] = 4
                if idx >= mem[96]:
                    revert with 0, 50
                if sub_1e989178[0] == cd[((32 * idx) + cd[4] + 36)]:
                    mem[mem[(32 * idx) + 128] + 64] = 1
                else:
                    mem[mem[(32 * idx) + 128] + 64] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = levels[cd[((32 * idx) + cd[4] + 36)]]
                s = sub_9e2be1d0[cd[((32 * idx) + cd[4] + 36)]]
                s = cd[((32 * idx) + cd[4] + 36)]
                continue 
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor25)
            staticcall stor25.0x9e2be1d0 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _101 = mem[_97]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor25)
            staticcall stor25.0xb2596a67 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _122 = mem[_114]
            require mem[_114] == mem[_114 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = _101
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = uint8(_122)
            require ext_code.size(stor23)
            staticcall stor23.0xcdcf7476 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)], uint8(_122)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = mem[_146]
            mem[0] = 0
            mem[32] = 4
            if idx >= mem[96]:
                revert with 0, 50
            if sub_1e989178[0] == cd[((32 * idx) + cd[4] + 36)]:
                mem[mem[(32 * idx) + 128] + 64] = 1
            else:
                mem[mem[(32 * idx) + 128] + 64] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _122
            s = _101
            s = cd[((32 * idx) + cd[4] + 36)]
            continue 
        mem[mem[64]] = 32
        _89 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _89:
            u = 0
            v = s
            w = mem[t]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 4
            s = s + 96
            t = t + 32
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + 224
        mem[(32 * ('cd', 4).length) + 128 len 96] = call.data[calldata.size len 96]
        mem[var15001] = (32 * ('cd', 4).length) + 128
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * ('cd', 4).length) + 128 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        s = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 18
            if sub_9e2be1d0[cd[((32 * idx) + cd[4] + 36)]]:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + 128]] = sub_9e2be1d0[cd[((32 * idx) + cd[4] + 36)]]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 36] = levels[cd[((32 * idx) + cd[4] + 36)]]
                require ext_code.size(stor23)
                staticcall stor23.0xcdcf7476 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)], levels[cd[((32 * idx) + cd[4] + 36)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _228 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + 128] + 32] = mem[_228]
                mem[0] = 0
                mem[32] = 4
                if idx >= mem[96]:
                    revert with 0, 50
                if sub_1e989178[0] == cd[((32 * idx) + cd[4] + 36)]:
                    mem[mem[(32 * idx) + 128] + 64] = 1
                else:
                    mem[mem[(32 * idx) + 128] + 64] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = levels[cd[((32 * idx) + cd[4] + 36)]]
                s = sub_9e2be1d0[cd[((32 * idx) + cd[4] + 36)]]
                s = cd[((32 * idx) + cd[4] + 36)]
                continue 
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor25)
            staticcall stor25.0x9e2be1d0 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _229 = mem[_225]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor25)
            staticcall stor25.0xb2596a67 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _234 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _237 = mem[_234]
            require mem[_234] == mem[_234 + 31 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = _229
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = uint8(_237)
            require ext_code.size(stor23)
            staticcall stor23.0xcdcf7476 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)], uint8(_237)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _246 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = mem[_246]
            mem[0] = 0
            mem[32] = 4
            if idx >= mem[96]:
                revert with 0, 50
            if sub_1e989178[0] == cd[((32 * idx) + cd[4] + 36)]:
                mem[mem[(32 * idx) + 128] + 64] = 1
            else:
                mem[mem[(32 * idx) + 128] + 64] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _237
            s = _229
            s = cd[((32 * idx) + cd[4] + 36)]
            continue 
        mem[mem[64]] = 32
        _217 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _217:
            u = 0
            v = s
            w = mem[t]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 4
            s = s + 96
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
