contract main {




// =====================  Runtime code  =====================


address owner;
address sub_6251be71Address;
address sub_07961693Address;
address sub_9c69fb53Address;
uint64 stor4;
uint256 stor4; offset 64
uint256 claimTime;
uint64 stor5;
uint256 stor5; offset 64
uint256 reward;
uint32 stor6;
uint256 stor6; offset 32
uint256 precision;
mapping of struct stor7;

function sub_07961693(?) payable {
    return sub_07961693Address
}

function reward() payable {
    return reward
}

function claimTime() payable {
    return claimTime
}

function sub_6251be71(?) payable {
    return sub_6251be71Address
}

function owner() payable {
    return owner
}

function sub_9c69fb53(?) payable {
    return sub_9c69fb53Address
}

function precision() payable {
    return precision
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

function sub_718a5417(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6251be71Address = address(arg1)
}

function sub_825771b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_07961693Address = address(arg1)
}

function sub_b0af8d47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9c69fb53Address = address(arg1)
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

function sub_ff86a373(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint64(arg1)
    require arg2 == uint64(arg2)
    require arg3 == uint32(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint64(stor5.field_0) = uint64(arg1)
    Mask(192, 0, stor5.field_64) = 0
    uint64(stor4.field_0) = uint64(arg2)
    Mask(192, 0, stor4.field_64) = 0
    uint32(stor6.field_0) = uint32(arg3)
    Mask(224, 0, stor6.field_32) = 0
}

function claim(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = arg2
    require ext_code.size(sub_9c69fb53Address)
    staticcall sub_9c69fb53Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    mem[ceil32(return_data.size) + 100] = arg2
    require ext_code.size(sub_9c69fb53Address)
    staticcall sub_9c69fb53Address.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0, 'MANAGER: You are not the owner'
    mem[(2 * ceil32(return_data.size)) + 96] = 0xd42819a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg2
    require ext_code.size(sub_9c69fb53Address)
    staticcall sub_9c69fb53Address.0xd42819a0 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _16 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 >= 160
    if not bool((4 * ceil32(return_data.size)) + 256 <= test266151307()):
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + 256
    _18 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _19 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] + 96])) + 161 < 160 or (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] + 96])) + 257 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] + 96])) + 257
    mem[(4 * ceil32(return_data.size)) + 256] = _19
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + _18 + _19 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 288 len ceil32(_19)] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + _18 + 128 len ceil32(_19)]
    if ceil32(_19) <= _19:
        mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 256
        _3187 = mem[(2 * ceil32(return_data.size)) + _16 + 128]
        require mem[(2 * ceil32(return_data.size)) + _16 + 128] <= test266151307()
        require (2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _3189 = mem[(2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 96]
        if mem[(2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 96] > test266151307():
            revert with 0, 65
        _3191 = mem[64]
        if mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 96])) + 1
        mem[_3191] = _3189
        require _16 + _3187 + _3189 + 32 <= return_data.size
        mem[_3191 + 32 len ceil32(_3189)] = mem[(2 * ceil32(return_data.size)) + _16 + _3187 + 128 len ceil32(_3189)]
        if ceil32(_3189) <= _3189:
            mem[(4 * ceil32(return_data.size)) + 128] = _3191
            mem[(4 * ceil32(return_data.size)) + 160] = mem[(2 * ceil32(return_data.size)) + _16 + 160]
            require mem[(2 * ceil32(return_data.size)) + _16 + 192] == mem[(2 * ceil32(return_data.size)) + _16 + 216 len 8]
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + _16 + 192]
            require mem[(2 * ceil32(return_data.size)) + _16 + 224] == mem[(2 * ceil32(return_data.size)) + _16 + 248 len 8]
            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + _16 + 224]
            _6365 = mem[(4 * ceil32(return_data.size)) + 224]
            if block.timestamp < mem[(4 * ceil32(return_data.size)) + 248 len 8]:
                revert with 0, 17
            if not claimTime:
                revert with 0, 18
            if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime <= 1:
                revert with 0, 'MANAGER: Not enough time has passed between claims'
            if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime and reward > -1 / block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime:
                revert with 0, 17
            if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime * reward > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not precision:
                revert with 0, 18
            if 10^18 * block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime * reward / precision <= 1:
                revert with 0, 'MANAGER: You don't have enough reward'
            mem[mem[64] + 4] = arg1
            require ext_code.size(sub_07961693Address)
            staticcall sub_07961693Address.0xc5e22f3f with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6391 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6397 = mem[_6391]
            mem[32] = 7
            if stor7[arg2].field_0:
                if stor7[arg2].field_0 == uint255(stor7[arg2].field_0) * 0.5 < 32:
                    revert with 0, 34
                if _19:
                    stor7[arg2][].field_0 = Array(len=_19, data=mem[(4 * ceil32(return_data.size)) + 288 len _19])
                else:
                    stor7[arg2].field_0 = 0
                    idx = 0
                    while (uint255(stor7[arg2].field_0) * 0.5) + 31 / 32 > idx:
                        stor7[arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor7[arg2].field_0 == stor7[arg2].field_1 < 32:
                    revert with 0, 34
                if _19:
                    stor7[arg2][].field_0 = Array(len=_19, data=mem[(4 * ceil32(return_data.size)) + 288 len _19])
                else:
                    stor7[arg2].field_0 = 0
                    idx = 0
                    while stor7[arg2].field_1 + 31 / 32 > idx:
                        stor7[arg2][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            if stor7[arg2].field_256:
                if stor7[arg2].field_256 == uint255(stor7[arg2].field_256) * 0.5 < 32:
                    revert with 0, 34
                if _3189:
                    stor7[arg2][1][].field_0 = Array(len=_3189, data=mem[_3191 + 32 len _3189])
                else:
                    stor7[arg2].field_256 = 0
                    idx = 0
                    while (uint255(stor7[arg2].field_256) * 0.5) + 31 / 32 > idx:
                        stor7[arg2][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor7[arg2].field_256 == stor7[arg2].field_257 < 32:
                    revert with 0, 34
                if _3189:
                    stor7[arg2][1][].field_0 = Array(len=_3189, data=mem[_3191 + 32 len _3189])
                else:
                    stor7[arg2].field_256 = 0
                    idx = 0
                    while stor7[arg2].field_257 + 31 / 32 > idx:
                        stor7[arg2][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            stor7[arg2].field_512 = mem[(4 * ceil32(return_data.size)) + 160]
            stor7[arg2].field_768 = mem[(4 * ceil32(return_data.size)) + 216 len 8]
            stor7[arg2].field_832 = mem[(4 * ceil32(return_data.size)) + 248 len 8]
            if not 10^18 * block.timestamp - uint64(_6365) / claimTime * reward / precision:
                return 0
            if _6397 <= 0:
                if not 10^18 * block.timestamp - uint64(_6365) / claimTime * reward / precision:
                    return 0
                return (10^18 * block.timestamp - uint64(_6365) / claimTime * reward / precision)
            if 10^18 * block.timestamp - uint64(_6365) / claimTime * reward / precision and _6397 > -1 / 10^18 * block.timestamp - uint64(_6365) / claimTime * reward / precision:
                revert with 0, 17
            if 10^18 * block.timestamp - uint64(_6365) / claimTime * reward / precision > !(10^18 * block.timestamp - uint64(_6365) / claimTime * reward / precision * _6397 / 1000):
                revert with 0, 17
            return ((10^18 * block.timestamp - uint64(_6365) / claimTime * reward / precision) + (10^18 * block.timestamp - uint64(_6365) / claimTime * reward / precision * _6397 / 1000))
        mem[_3191 + _3189 + 32] = 0
        mem[(4 * ceil32(return_data.size)) + 128] = _3191
        mem[(4 * ceil32(return_data.size)) + 160] = mem[(2 * ceil32(return_data.size)) + _16 + 160]
        require mem[(2 * ceil32(return_data.size)) + _16 + 192] == mem[(2 * ceil32(return_data.size)) + _16 + 216 len 8]
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + _16 + 192]
        require mem[(2 * ceil32(return_data.size)) + _16 + 224] == mem[(2 * ceil32(return_data.size)) + _16 + 248 len 8]
        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + _16 + 224]
        _6367 = mem[(4 * ceil32(return_data.size)) + 224]
        if block.timestamp < mem[(4 * ceil32(return_data.size)) + 248 len 8]:
            revert with 0, 17
        if not claimTime:
            revert with 0, 18
        if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime <= 1:
            revert with 0, 'MANAGER: Not enough time has passed between claims'
        if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime and reward > -1 / block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime:
            revert with 0, 17
        if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime * reward > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not precision:
            revert with 0, 18
        if 10^18 * block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime * reward / precision <= 1:
            revert with 0, 'MANAGER: You don't have enough reward'
        mem[mem[64] + 4] = arg1
        require ext_code.size(sub_07961693Address)
        staticcall sub_07961693Address.0xc5e22f3f with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _6395 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _6402 = mem[_6395]
        mem[32] = 7
        if stor7[arg2].field_0:
            if stor7[arg2].field_0 == uint255(stor7[arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if _19:
                stor7[arg2][].field_0 = Array(len=_19, data=mem[(4 * ceil32(return_data.size)) + 288 len _19])
            else:
                stor7[arg2].field_0 = 0
                idx = 0
                while (uint255(stor7[arg2].field_0) * 0.5) + 31 / 32 > idx:
                    stor7[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor7[arg2].field_0 == stor7[arg2].field_1 < 32:
                revert with 0, 34
            if _19:
                stor7[arg2][].field_0 = Array(len=_19, data=mem[(4 * ceil32(return_data.size)) + 288 len _19])
            else:
                stor7[arg2].field_0 = 0
                idx = 0
                while stor7[arg2].field_1 + 31 / 32 > idx:
                    stor7[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if stor7[arg2].field_256:
            if stor7[arg2].field_256 == uint255(stor7[arg2].field_256) * 0.5 < 32:
                revert with 0, 34
            if _3189:
                stor7[arg2][1][].field_0 = Array(len=_3189, data=mem[_3191 + 32 len _3189])
            else:
                stor7[arg2].field_256 = 0
                idx = 0
                while (uint255(stor7[arg2].field_256) * 0.5) + 31 / 32 > idx:
                    stor7[arg2][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor7[arg2].field_256 == stor7[arg2].field_257 < 32:
                revert with 0, 34
            if _3189:
                stor7[arg2][1][].field_0 = Array(len=_3189, data=mem[_3191 + 32 len _3189])
            else:
                stor7[arg2].field_256 = 0
                idx = 0
                while stor7[arg2].field_257 + 31 / 32 > idx:
                    stor7[arg2][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        stor7[arg2].field_512 = mem[(4 * ceil32(return_data.size)) + 160]
        stor7[arg2].field_768 = mem[(4 * ceil32(return_data.size)) + 216 len 8]
        stor7[arg2].field_832 = mem[(4 * ceil32(return_data.size)) + 248 len 8]
        if not 10^18 * block.timestamp - uint64(_6367) / claimTime * reward / precision:
            return 0
        if _6402 <= 0:
            if not 10^18 * block.timestamp - uint64(_6367) / claimTime * reward / precision:
                return 0
            return (10^18 * block.timestamp - uint64(_6367) / claimTime * reward / precision)
        if 10^18 * block.timestamp - uint64(_6367) / claimTime * reward / precision and _6402 > -1 / 10^18 * block.timestamp - uint64(_6367) / claimTime * reward / precision:
            revert with 0, 17
        if 10^18 * block.timestamp - uint64(_6367) / claimTime * reward / precision > !(10^18 * block.timestamp - uint64(_6367) / claimTime * reward / precision * _6402 / 1000):
            revert with 0, 17
        return ((10^18 * block.timestamp - uint64(_6367) / claimTime * reward / precision) + (10^18 * block.timestamp - uint64(_6367) / claimTime * reward / precision * _6402 / 1000))
    mem[(4 * ceil32(return_data.size)) + _19 + 288] = 0
    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 256
    _3188 = mem[(2 * ceil32(return_data.size)) + _16 + 128]
    require mem[(2 * ceil32(return_data.size)) + _16 + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _3190 = mem[(2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 96]
    if mem[(2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 96] > test266151307():
        revert with 0, 65
    _3192 = mem[64]
    if mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 96])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _16 + mem[(2 * ceil32(return_data.size)) + _16 + 128] + 96])) + 1
    mem[_3192] = _3190
    require _16 + _3188 + _3190 + 32 <= return_data.size
    mem[_3192 + 32 len ceil32(_3190)] = mem[(2 * ceil32(return_data.size)) + _16 + _3188 + 128 len ceil32(_3190)]
    if ceil32(_3190) <= _3190:
        mem[(4 * ceil32(return_data.size)) + 128] = _3192
        mem[(4 * ceil32(return_data.size)) + 160] = mem[(2 * ceil32(return_data.size)) + _16 + 160]
        require mem[(2 * ceil32(return_data.size)) + _16 + 192] == mem[(2 * ceil32(return_data.size)) + _16 + 216 len 8]
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + _16 + 192]
        require mem[(2 * ceil32(return_data.size)) + _16 + 224] == mem[(2 * ceil32(return_data.size)) + _16 + 248 len 8]
        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + _16 + 224]
        _6366 = mem[(4 * ceil32(return_data.size)) + 224]
        if block.timestamp < mem[(4 * ceil32(return_data.size)) + 248 len 8]:
            revert with 0, 17
        if not claimTime:
            revert with 0, 18
        if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime <= 1:
            revert with 0, 'MANAGER: Not enough time has passed between claims'
        if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime and reward > -1 / block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime:
            revert with 0, 17
        if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime * reward > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not precision:
            revert with 0, 18
        if 10^18 * block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime * reward / precision <= 1:
            revert with 0, 'MANAGER: You don't have enough reward'
        mem[mem[64] + 4] = arg1
        require ext_code.size(sub_07961693Address)
        staticcall sub_07961693Address.0xc5e22f3f with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _6393 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _6398 = mem[_6393]
        mem[32] = 7
        if stor7[arg2].field_0:
            if stor7[arg2].field_0 == uint255(stor7[arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if _19:
                stor7[arg2][].field_0 = Array(len=_19, data=mem[(4 * ceil32(return_data.size)) + 288 len _19])
            else:
                stor7[arg2].field_0 = 0
                idx = 0
                while (uint255(stor7[arg2].field_0) * 0.5) + 31 / 32 > idx:
                    stor7[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor7[arg2].field_0 == stor7[arg2].field_1 < 32:
                revert with 0, 34
            if _19:
                stor7[arg2][].field_0 = Array(len=_19, data=mem[(4 * ceil32(return_data.size)) + 288 len _19])
            else:
                stor7[arg2].field_0 = 0
                idx = 0
                while stor7[arg2].field_1 + 31 / 32 > idx:
                    stor7[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        if stor7[arg2].field_256:
            if stor7[arg2].field_256 == uint255(stor7[arg2].field_256) * 0.5 < 32:
                revert with 0, 34
            if _3190:
                stor7[arg2][1][].field_0 = Array(len=_3190, data=mem[_3192 + 32 len _3190])
            else:
                stor7[arg2].field_256 = 0
                idx = 0
                while (uint255(stor7[arg2].field_256) * 0.5) + 31 / 32 > idx:
                    stor7[arg2][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor7[arg2].field_256 == stor7[arg2].field_257 < 32:
                revert with 0, 34
            if _3190:
                stor7[arg2][1][].field_0 = Array(len=_3190, data=mem[_3192 + 32 len _3190])
            else:
                stor7[arg2].field_256 = 0
                idx = 0
                while stor7[arg2].field_257 + 31 / 32 > idx:
                    stor7[arg2][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        stor7[arg2].field_512 = mem[(4 * ceil32(return_data.size)) + 160]
        stor7[arg2].field_768 = mem[(4 * ceil32(return_data.size)) + 216 len 8]
        stor7[arg2].field_832 = mem[(4 * ceil32(return_data.size)) + 248 len 8]
        if not 10^18 * block.timestamp - uint64(_6366) / claimTime * reward / precision:
            return 0
        if _6398 <= 0:
            if not 10^18 * block.timestamp - uint64(_6366) / claimTime * reward / precision:
                return 0
            return (10^18 * block.timestamp - uint64(_6366) / claimTime * reward / precision)
        if 10^18 * block.timestamp - uint64(_6366) / claimTime * reward / precision and _6398 > -1 / 10^18 * block.timestamp - uint64(_6366) / claimTime * reward / precision:
            revert with 0, 17
        if 10^18 * block.timestamp - uint64(_6366) / claimTime * reward / precision > !(10^18 * block.timestamp - uint64(_6366) / claimTime * reward / precision * _6398 / 1000):
            revert with 0, 17
        return ((10^18 * block.timestamp - uint64(_6366) / claimTime * reward / precision) + (10^18 * block.timestamp - uint64(_6366) / claimTime * reward / precision * _6398 / 1000))
    mem[_3192 + _3190 + 32] = 0
    mem[(4 * ceil32(return_data.size)) + 128] = _3192
    mem[(4 * ceil32(return_data.size)) + 160] = mem[(2 * ceil32(return_data.size)) + _16 + 160]
    require mem[(2 * ceil32(return_data.size)) + _16 + 192] == mem[(2 * ceil32(return_data.size)) + _16 + 216 len 8]
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + _16 + 192]
    require mem[(2 * ceil32(return_data.size)) + _16 + 224] == mem[(2 * ceil32(return_data.size)) + _16 + 248 len 8]
    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + _16 + 224]
    _6368 = mem[(4 * ceil32(return_data.size)) + 224]
    if block.timestamp < mem[(4 * ceil32(return_data.size)) + 248 len 8]:
        revert with 0, 17
    if not claimTime:
        revert with 0, 18
    if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime <= 1:
        revert with 0, 'MANAGER: Not enough time has passed between claims'
    if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime and reward > -1 / block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime:
        revert with 0, 17
    if block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime * reward > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not precision:
        revert with 0, 18
    if 10^18 * block.timestamp - mem[(4 * ceil32(return_data.size)) + 248 len 8] / claimTime * reward / precision <= 1:
        revert with 0, 'MANAGER: You don't have enough reward'
    mem[mem[64] + 4] = arg1
    require ext_code.size(sub_07961693Address)
    staticcall sub_07961693Address.0xc5e22f3f with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _6396 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _6406 = mem[_6396]
    mem[32] = 7
    if stor7[arg2].field_0:
        if stor7[arg2].field_0 == uint255(stor7[arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if _19:
            stor7[arg2][].field_0 = Array(len=_19, data=mem[(4 * ceil32(return_data.size)) + 288 len _19])
        else:
            stor7[arg2].field_0 = 0
            idx = 0
            while (uint255(stor7[arg2].field_0) * 0.5) + 31 / 32 > idx:
                stor7[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[arg2].field_0 == stor7[arg2].field_1 < 32:
            revert with 0, 34
        if _19:
            stor7[arg2][].field_0 = Array(len=_19, data=mem[(4 * ceil32(return_data.size)) + 288 len _19])
        else:
            stor7[arg2].field_0 = 0
            idx = 0
            while stor7[arg2].field_1 + 31 / 32 > idx:
                stor7[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    if stor7[arg2].field_256:
        if stor7[arg2].field_256 == uint255(stor7[arg2].field_256) * 0.5 < 32:
            revert with 0, 34
        if _3190:
            stor7[arg2][1][].field_0 = Array(len=_3190, data=mem[_3192 + 32 len _3190])
        else:
            stor7[arg2].field_256 = 0
            idx = 0
            while (uint255(stor7[arg2].field_256) * 0.5) + 31 / 32 > idx:
                stor7[arg2][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[arg2].field_256 == stor7[arg2].field_257 < 32:
            revert with 0, 34
        if _3190:
            stor7[arg2][1][].field_0 = Array(len=_3190, data=mem[_3192 + 32 len _3190])
        else:
            stor7[arg2].field_256 = 0
            idx = 0
            while stor7[arg2].field_257 + 31 / 32 > idx:
                stor7[arg2][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor7[arg2].field_512 = mem[(4 * ceil32(return_data.size)) + 160]
    stor7[arg2].field_768 = mem[(4 * ceil32(return_data.size)) + 216 len 8]
    stor7[arg2].field_832 = mem[(4 * ceil32(return_data.size)) + 248 len 8]
    if not 10^18 * block.timestamp - uint64(_6368) / claimTime * reward / precision:
        return 0
    if _6406 <= 0:
        if not 10^18 * block.timestamp - uint64(_6368) / claimTime * reward / precision:
            return 0
        return (10^18 * block.timestamp - uint64(_6368) / claimTime * reward / precision)
    if 10^18 * block.timestamp - uint64(_6368) / claimTime * reward / precision and _6406 > -1 / 10^18 * block.timestamp - uint64(_6368) / claimTime * reward / precision:
        revert with 0, 17
    if 10^18 * block.timestamp - uint64(_6368) / claimTime * reward / precision > !(10^18 * block.timestamp - uint64(_6368) / claimTime * reward / precision * _6406 / 1000):
        revert with 0, 17
    return ((10^18 * block.timestamp - uint64(_6368) / claimTime * reward / precision) + (10^18 * block.timestamp - uint64(_6368) / claimTime * reward / precision * _6406 / 1000))
}



}
