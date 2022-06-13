contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of uint8 stor2;
mapping of uint256 isTokenLocked;
array of struct erc20;

function isTokenLocked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return isTokenLocked[arg1]
}

function owner() payable {
    return owner
}

function erc20(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < erc20.length
    return erc20[arg1].field_0
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function whitelistAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_6a7ab078(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require address(arg1)
    if not stor2[address(msg.sender)]:
        revert with 0, 'Caller is not Admin'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_a527acd0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < stor1[arg1].field_0
    mem[128] = stor[sha3((6 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 5)].field_0
    idx = 128
    s = 0
    while stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 5].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((6 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 5)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor1[arg1][arg2].field_0, 
           stor1[arg1][arg2].field_256,
           stor1[arg1][arg2].field_512,
           stor1[arg1][arg2].field_768,
           stor1[arg1][arg2].field_1024,
           Array(len=stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 5].length, data=mem[128 len ceil32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor1', 1)) + 5].length)])
}

function getTokenList() payable {
    mem[64] = (32 * erc20.length) + 128
    mem[96] = erc20.length
    if not erc20.length:
        mem[(32 * erc20.length) + 128] = 32
        mem[(32 * erc20.length) + 160] = erc20.length
        idx = 0
        s = 128
        t = (32 * erc20.length) + 192
        while idx < erc20.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * erc20.length) + 128
           len (96 * erc20.length) + 64
    mem[128] = address(erc20.field_0)
    idx = 128
    s = 0
    while (32 * erc20.length) + 96 > idx:
        mem[idx + 32] = erc20[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * erc20.length) + 128] = 32
    mem[(32 * erc20.length) + 160] = erc20.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < erc20.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * erc20.length) + -mem[64] + 192
}

function locked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 1
    mem[64] = (32 * stor1[address(arg1)].field_0) + 128
    mem[96] = stor1[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor1[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 1)
        _20 = mem[64]
        mem[64] = mem[64] + 192
        mem[_20] = stor1[address(arg1)][idx].field_0
        mem[_20 + 32] = stor1[address(arg1)][idx].field_256
        mem[_20 + 64] = stor1[address(arg1)][idx].field_512
        mem[_20 + 96] = stor1[address(arg1)][idx].field_768
        mem[_20 + 128] = stor1[address(arg1)][idx].field_1024
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(6 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1)) + 5].length) + 32
        mem[_21] = stor[(6 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1)) + 5].length
        mem[0] = (6 * idx) + sha3(sha3(address(arg1), 1)) + 5
        mem[_21 + 32] = stor[sha3((6 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1)) + 5)].field_0
        t = _21 + 32
        u = sha3(mem[0])
        while _21 + stor[(6 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor1', 1)) + 5].length > t:
            mem[t + 32] = stor1[u].field_0
            t = t + 32
            u = u + 1
            continue 
        mem[_20 + 160] = _21
        mem[s] = _20
        s = s + 32
        idx = idx + 1
        continue 
    _22 = mem[64]
    mem[mem[64]] = 32
    _24 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _24:
        mem[u] = t + -_22 - 64
        _35 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_35 + 32]
        mem[t + 64] = mem[_35 + 64]
        mem[t + 96] = mem[_35 + 96]
        mem[t + 128] = mem[_35 + 128]
        _42 = mem[_35 + 160]
        mem[t + 160] = 192
        _43 = mem[_42]
        mem[t + 192] = mem[_42]
        v = 0
        while v < _43:
            mem[t + v + 224] = mem[_42 + v + 32]
            v = v + 32
            continue 
        if ceil32(_43) > _43:
            mem[t + _43 + 224] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_43) + 224
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_f7c2ec07(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    if arg2 <= 0:
        revert with 0, 'Invalid Amount'
    if arg3 <= 0:
        revert with 0, 'Invalid Duration'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
    if 0, ext_call.return_data[4 len 28] < arg2:
        revert with 0, 'Insufficient balance'
    if not arg3:
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if not isTokenLocked[address(arg1)]:
            if erc20.length <= 0:
                isTokenLocked[address(arg1)] = erc20.length
                erc20.length++
                erc20[erc20.length].field_0 = address(arg1)
            else:
                require 0 < erc20.length
                if address(erc20.field_0) != address(arg1):
                    isTokenLocked[address(arg1)] = erc20.length
                    erc20.length++
                    erc20[erc20.length].field_0 = address(arg1)
        stor1[address(msg.sender)].field_0++
        stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = address(arg1)
        stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_256 = arg2
        stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_512 = arg3
        stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_768 = block.timestamp
        stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_1024 = block.timestamp
    else:
        require arg3
        if 24 * 3600 * arg3 / arg3 != 24 * 3600:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp + (24 * 3600 * arg3) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if not isTokenLocked[address(arg1)]:
            if erc20.length <= 0:
                isTokenLocked[address(arg1)] = erc20.length
                erc20.length++
                erc20[erc20.length].field_0 = address(arg1)
            else:
                require 0 < erc20.length
                if address(erc20.field_0) != address(arg1):
                    isTokenLocked[address(arg1)] = erc20.length
                    erc20.length++
                    erc20[erc20.length].field_0 = address(arg1)
        stor1[address(msg.sender)].field_0++
        stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = address(arg1)
        stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_256 = arg2
        stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_512 = arg3
        stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_768 = block.timestamp
        stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_1024 = block.timestamp + (24 * 3600 * arg3)
    stor[sha3((6 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) + 5)][].field_0 = Array(len=arg4.length, data=arg4[all])
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Lock(address(arg1), msg.sender, arg2, arg3, block.timestamp);
}

function unlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor1[address(msg.sender)].field_0:
        revert with 0, 'Invalid Value for index'
    require arg1 < stor1[address(msg.sender)].field_0
    if stor1[address(msg.sender)][arg1].field_256 <= 0:
        revert with 0, 'Invalid Value'
    require arg1 < stor1[address(msg.sender)].field_0
    if stor1[address(msg.sender)][arg1].field_1024 > block.timestamp:
        revert with 0, 'Unlock Period not elapsed'
    require arg1 < stor1[address(msg.sender)].field_0
    require arg1 < stor1[address(msg.sender)].field_0
    require stor1[address(msg.sender)].field_0 - 1 < stor1[address(msg.sender)].field_0
    require arg1 < stor1[address(msg.sender)].field_0
    stor1[address(msg.sender)][arg1].field_0 = stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0
    stor1[address(msg.sender)][arg1].field_256 = stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0
    stor1[address(msg.sender)][arg1].field_512 = stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0
    stor1[address(msg.sender)][arg1].field_768 = stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0
    stor1[address(msg.sender)][arg1].field_1024 = stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0
    if 31 >= stor[(6 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) - 1].length:
        stor1[address(msg.sender)][arg1].field_1280 = stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0
        idx = 0
        while stor[(6 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) + 5].length + 31 / 32 > idx:
            stor[idx + sha3((6 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor1[address(msg.sender)][arg1].field_1280 = Mask(255, 1, (256 * not stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0) - 1 and stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0) + 1
        if not Mask(255, 1, (256 * not stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0) - 1 and stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0):
            idx = 0
            while stor[(6 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) + 5].length + 31 / 32 > idx:
                stor[idx + sha3((6 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) + 5)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor[(6 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) - 1].length + 31 / 32 > idx:
                stor[s + sha3((6 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) + 5)].field_0 = stor[idx + sha3((6 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) - 1)].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor[(6 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) - 1].length + 31 / 32
            while stor[(6 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) + 5].length + 31 / 32 > idx:
                stor[idx + sha3((6 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) + 5)].field_0 = 0
                idx = idx + 1
                continue 
    require stor1[address(msg.sender)].field_0
    stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = 0
    stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = 0
    stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = 0
    stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = 0
    stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = 0
    stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = 0
    if 31 < stor[(6 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) - 1].length:
        idx = 0
        while stor[(6 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) - 1].length + 31 / 32 > idx:
            stor[idx + sha3((6 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1)) - 1)].field_0 = 0
            idx = idx + 1
            continue 
    stor1[address(msg.sender)].field_0--
    require ext_code.size(stor1[address(msg.sender)][arg1].field_0)
    staticcall stor1[address(msg.sender)][arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] == stor1[address(msg.sender)][arg1].field_256:
        if erc20.length > 0:
            require erc20.length - 1 < erc20.length
            require isTokenLocked[stor1[address(msg.sender)][arg1].field_0] < erc20.length
            erc20[stor3[stor1[address(msg.sender)][arg1].field_0]].field_0 = erc20[erc20.length].field_0
            require erc20.length
            erc20[erc20.length].field_0 = 0
            erc20.length--
    require ext_code.size(stor1[address(msg.sender)][arg1].field_0)
    call stor1[address(msg.sender)][arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor1[address(msg.sender)][arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Unlock(stor1[address(msg.sender)][arg1].field_0, msg.sender, stor1[address(msg.sender)][arg1].field_256, block.timestamp);
}



}
