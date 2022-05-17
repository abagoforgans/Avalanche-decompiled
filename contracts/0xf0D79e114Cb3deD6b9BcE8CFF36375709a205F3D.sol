contract main {




// =====================  Runtime code  =====================


address owner;
array of uint8 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of struct stakeHolders;
uint256 sub_05973b1d;
array of uint256 sub_7ca4fa11;
mapping of uint256 stor9;
mapping of struct sub_3ed2f772;
uint256 sub_1222b0f1;
array of address sub_4d2224b8;
mapping of uint256 stor13;

function sub_05973b1d(?) payable {
    return sub_05973b1d
}

function sub_116be18e(?) payable {
    return stor4.length
}

function sub_1222b0f1(?) payable {
    return sub_1222b0f1
}

function sub_33873913(?) payable {
    return sub_4d2224b8.length
}

function sub_3ed2f772(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3ed2f772[arg1].field_0, sub_3ed2f772[arg1].field_256, sub_3ed2f772[arg1].field_512, sub_3ed2f772[arg1].field_768
}

function sub_4c1a0012(?) payable {
    return address(stor2.length)
}

function sub_4d2224b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_4d2224b8.length
    return sub_4d2224b8[arg1]
}

function sub_7ca4fa11(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_7ca4fa11.length
    return sub_7ca4fa11[arg1]
}

function owner() payable {
    return owner
}

function sub_902367aa(?) payable {
    return stor5.length
}

function stakeHolders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeHolders[arg1].field_0, 
           stakeHolders[arg1].field_256,
           stakeHolders[arg1].field_512,
           stakeHolders[arg1].field_768,
           stakeHolders[arg1].field_1024,
           stakeHolders[arg1].field_1280,
           stakeHolders[arg1].field_1536
}

function totalStakeHolder() payable {
    return sub_7ca4fa11.length
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[arg1]))
}

function sub_bab3384d(?) payable {
    return stor3.length
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

function sub_5b3ecb00(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5.length = arg1
}

function sub_c00b346e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 / 100 and stor5.length > -1 / arg1 / 100:
        revert with 'NH{q', 17
    return (arg1 / 100 * stor5.length)
}

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    uint8(stor1[address(arg1)]) = 1
}

function sub_bf65360b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3.length = arg1
    stor4.length = arg2
}

function removeAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg1 != msg.sender
    uint8(stor1[address(arg1)]) = 0
}

function sub_dd2dccfb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor1[address(msg.sender)]):
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if arg1 >= sub_4d2224b8.length:
        revert with 'NH{q', 50
    return sub_4d2224b8[arg1]
}

function sub_4e3394a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor1[address(msg.sender)]):
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if not stakeHolders[arg1].field_0:
        revert with 0, 'NOT STAKED'
    stakeHolders[arg1].field_0 = arg1
    stakeHolders[arg1].field_1536 = block.timestamp
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

function sub_921fb252(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor1[address(msg.sender)]):
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if not stakeHolders[arg1].field_0:
        revert with 0, 'NOT STAKED'
    stakeHolders[arg1].field_0 = arg1
    stakeHolders[arg1].field_512 = block.timestamp
    stakeHolders[arg1].field_768 = arg2
}

function sub_36d1f8a1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor1[address(msg.sender)]):
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if not stakeHolders[arg1].field_0:
        revert with 0, 'NOT STAKED'
    if arg2 <= 0:
        revert with 0, 'NOTHING TO FEED'
    if arg2 > -stakeHolders[arg1].field_1024 - 1:
        revert with 'NH{q', 17
    stakeHolders[arg1].field_0 = arg1
    stakeHolders[arg1].field_1024 += arg2
}

function sub_faf54308(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor1[address(msg.sender)]):
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if not address(arg1):
        revert with 0, 'EMPTY ADDRESS'
    if not sub_3ed2f772[address(arg1)].field_0:
        stor13[address(arg1)] = sub_4d2224b8.length
        sub_4d2224b8.length++
        sub_4d2224b8[sub_4d2224b8.length] = address(arg1)
    sub_3ed2f772[address(arg1)].field_0 = address(arg1)
    sub_3ed2f772[address(arg1)].field_256 = arg2
    sub_3ed2f772[address(arg1)].field_512 = block.timestamp
    sub_3ed2f772[address(arg1)].field_768 = arg3
    if sub_1222b0f1 < sub_3ed2f772[address(arg1)].field_256:
        revert with 'NH{q', 17
    if sub_1222b0f1 - sub_3ed2f772[address(arg1)].field_256 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_1222b0f1 = sub_1222b0f1 - sub_3ed2f772[address(arg1)].field_256 + arg2
    emit 0x8cf522f7: address(arg1), arg2
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor1[address(msg.sender)]):
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if not stakeHolders[arg1].field_0:
        revert with 0, 'NOT STAKED'
    if sub_05973b1d < stakeHolders[arg1].field_256:
        revert with 'NH{q', 17
    sub_05973b1d -= stakeHolders[arg1].field_256
    if sub_7ca4fa11.length < 1:
        revert with 'NH{q', 17
    if sub_7ca4fa11.length - 1 >= sub_7ca4fa11.length:
        revert with 'NH{q', 50
    if stor9[arg1] >= sub_7ca4fa11.length:
        revert with 'NH{q', 50
    sub_7ca4fa11[stor9[arg1]] = sub_7ca4fa11[sub_7ca4fa11.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor9[arg1] = 0
    if not sub_7ca4fa11.length:
        revert with 'NH{q', 49
    sub_7ca4fa11[sub_7ca4fa11.length] = 0
    sub_7ca4fa11.length--
    stakeHolders[arg1].field_0 = 0
    stakeHolders[arg1].field_256 = 0
    stakeHolders[arg1].field_512 = 0
    stakeHolders[arg1].field_768 = 0
    stakeHolders[arg1].field_1024 = 0
    stakeHolders[arg1].field_1280 = 0
    stakeHolders[arg1].field_1536 = 0
    emit 0x69f6d6e6: arg1, block.timestamp
}

function sub_7ed25850(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor1[address(msg.sender)]):
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if not sub_3ed2f772[address(arg1)].field_0:
        revert with 0, 'EMPTY ADDRESS'
    if sub_1222b0f1 < sub_3ed2f772[address(arg1)].field_256:
        revert with 'NH{q', 17
    sub_1222b0f1 -= sub_3ed2f772[address(arg1)].field_256
    if sub_4d2224b8.length < 1:
        revert with 'NH{q', 17
    if sub_4d2224b8.length - 1 >= sub_4d2224b8.length:
        revert with 'NH{q', 50
    if stor13[address(arg1)] >= sub_4d2224b8.length:
        revert with 'NH{q', 50
    sub_4d2224b8[stor13[address(arg1)]] = sub_4d2224b8[sub_4d2224b8.length]
    stor13[stor12[stor12.length]] = stor13[address(arg1)]
    stor13[address(arg1)] = 0
    if not sub_4d2224b8.length:
        revert with 'NH{q', 49
    sub_4d2224b8[sub_4d2224b8.length] = 0
    sub_4d2224b8.length--
    sub_3ed2f772[address(arg1)].field_0 = 0
    sub_3ed2f772[address(arg1)].field_256 = 0
    sub_3ed2f772[address(arg1)].field_512 = 0
    sub_3ed2f772[address(arg1)].field_768 = 0
    emit 0x18dd719d: address(arg1), sub_3ed2f772[address(arg1)].field_256
}

function sub_8b100bc5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor4.length:
        if stor3.length and 1 > -1 / stor3.length:
            revert with 'NH{q', 17
        if stor3.length and 10^18 > -1 / stor3.length:
            revert with 'NH{q', 17
        return (10^18 * stor3.length)
    if not arg1 / 100:
        if stor3.length and 0 > -1 / stor3.length:
            revert with 'NH{q', 17
        else:
            return 0
    if arg1 / 100 == 1:
        if stor3.length and 1 > -1 / stor3.length:
            revert with 'NH{q', 17
        if stor3.length and 10^18 > -1 / stor3.length:
            revert with 'NH{q', 17
        return (10^18 * stor3.length)
    if arg1 / 100 == 2:
        if stor4.length > 255:
            revert with 'NH{q', 17
        if 2^stor4.length > -1:
            revert with 'NH{q', 17
        if stor3.length and 2^stor4.length > -1 / stor3.length:
            revert with 'NH{q', 17
        if stor3.length * 2^stor4.length and 10^18 > -1 / stor3.length * 2^stor4.length:
            revert with 'NH{q', 17
        return (10^18 * stor3.length * 2^stor4.length)
    if arg1 / 100 < 11 and stor4.length < 78 or arg1 / 100 < 307 and stor4.length < 32:
        if (arg1 / 100)^stor4.length > -1:
            revert with 'NH{q', 17
        if stor3.length and (arg1 / 100)^stor4.length > -1 / stor3.length:
            revert with 'NH{q', 17
        if stor3.length * (arg1 / 100)^stor4.length and 10^18 > -1 / stor3.length * (arg1 / 100)^stor4.length:
            revert with 'NH{q', 17
        return (10^18 * stor3.length * (arg1 / 100)^stor4.length)
    s = arg1 / 100
    t = 1
    idx = stor4.length
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if stor3.length and t * s > -1 / stor3.length:
        revert with 'NH{q', 17
    if stor3.length * t * s and 10^18 > -1 / stor3.length * t * s:
        revert with 'NH{q', 17
    return (10^18 * stor3.length * t * s)
}

function sub_5a8c2642(?) payable {
    mem[100] = msg.sender
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'NO CHIKN'
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(address(stor2.length))
            staticcall address(stor2.length).0x2f745c59 with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _44 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _46 = mem[_44]
            require mem[_44] == mem[_44]
            mem[0] = mem[_44]
            mem[32] = 6
            _48 = sha3(mem[0], 6)
            _49 = mem[64]
            mem[64] = mem[64] + 224
            mem[_49] = stakeHolders[mem[0]].field_0
            mem[_49 + 32] = uint256(stor1[_48])
            mem[_49 + 64] = uint256(stor2[_48])
            mem[_49 + 96] = stor3[_48]
            mem[_49 + 128] = stor4[_48]
            mem[_49 + 160] = stor5[_48]
            mem[_49 + 192] = stakeHolders[_48].field_0
            if not mem[_49]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * s) + ceil32(return_data.size) + 128] = _46
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _36 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _36] = mem[ceil32(return_data.size) + 128 len 32 * _36]
        return 32, mem[mem[64] + 32 len (32 * _36) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(address(stor2.length))
        staticcall address(stor2.length).0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _47 = mem[_45]
        require mem[_45] == mem[_45]
        mem[0] = mem[_45]
        mem[32] = 6
        _51 = sha3(mem[0], 6)
        _52 = mem[64]
        mem[64] = mem[64] + 224
        mem[_52] = stakeHolders[mem[0]].field_0
        mem[_52 + 32] = uint256(stor1[_51])
        mem[_52 + 64] = uint256(stor2[_51])
        mem[_52 + 96] = stor3[_51]
        mem[_52 + 128] = stor4[_51]
        mem[_52 + 160] = stor5[_51]
        mem[_52 + 192] = stakeHolders[_51].field_0
        if not mem[_52]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * s) + ceil32(return_data.size) + 128] = _47
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    _37 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _37] = mem[ceil32(return_data.size) + 128 len 32 * _37]
    return 32, mem[mem[64] + 32 len (32 * _37) + 32]
}

function sub_f8645753(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor1[address(msg.sender)]):
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if not stakeHolders[arg1].field_0:
        revert with 0, 'NOT STAKED'
    if stakeHolders[arg1].field_256 > -101:
        revert with 'NH{q', 17
    if not stor4.length:
        if stor3.length and 1 > -1 / stor3.length:
            revert with 'NH{q', 17
        if stor3.length and 10^18 > -1 / stor3.length:
            revert with 'NH{q', 17
        if stakeHolders[arg1].field_256 > -101:
            revert with 'NH{q', 17
        if stakeHolders[arg1].field_256 + 100 / 100 and stor5.length > -1 / stakeHolders[arg1].field_256 + 100 / 100:
            revert with 'NH{q', 17
        if stakeHolders[arg1].field_256 > -101:
            revert with 'NH{q', 17
        if block.timestamp > (-1 * stakeHolders[arg1].field_256 + 100 / 100 * stor5.length) - 1:
            revert with 'NH{q', 17
        stakeHolders[arg1].field_0 = arg1
        stakeHolders[arg1].field_256 += 100
        stakeHolders[arg1].field_1024 = 0
        stakeHolders[arg1].field_1280 = 10^18 * stor3.length
    else:
        if not stakeHolders[arg1].field_256 + 100 / 100:
            if stor3.length and 0 > -1 / stor3.length:
                revert with 'NH{q', 17
            if stakeHolders[arg1].field_256 > -101:
                revert with 'NH{q', 17
            if stakeHolders[arg1].field_256 + 100 / 100 and stor5.length > -1 / stakeHolders[arg1].field_256 + 100 / 100:
                revert with 'NH{q', 17
            if stakeHolders[arg1].field_256 > -101:
                revert with 'NH{q', 17
            if block.timestamp > (-1 * stakeHolders[arg1].field_256 + 100 / 100 * stor5.length) - 1:
                revert with 'NH{q', 17
            stakeHolders[arg1].field_0 = arg1
            stakeHolders[arg1].field_256 += 100
            stakeHolders[arg1].field_1024 = 0
            stakeHolders[arg1].field_1280 = 0
        else:
            if stakeHolders[arg1].field_256 + 100 / 100 == 1:
                if stor3.length and 1 > -1 / stor3.length:
                    revert with 'NH{q', 17
                if stor3.length and 10^18 > -1 / stor3.length:
                    revert with 'NH{q', 17
                if stakeHolders[arg1].field_256 > -101:
                    revert with 'NH{q', 17
                if stakeHolders[arg1].field_256 + 100 / 100 and stor5.length > -1 / stakeHolders[arg1].field_256 + 100 / 100:
                    revert with 'NH{q', 17
                if stakeHolders[arg1].field_256 > -101:
                    revert with 'NH{q', 17
                if block.timestamp > (-1 * stakeHolders[arg1].field_256 + 100 / 100 * stor5.length) - 1:
                    revert with 'NH{q', 17
                stakeHolders[arg1].field_0 = arg1
                stakeHolders[arg1].field_256 += 100
                stakeHolders[arg1].field_1024 = 0
                stakeHolders[arg1].field_1280 = 10^18 * stor3.length
            else:
                if stakeHolders[arg1].field_256 + 100 / 100 == 2:
                    if stor4.length > 255:
                        revert with 'NH{q', 17
                    if 2^stor4.length > -1:
                        revert with 'NH{q', 17
                    if stor3.length and 2^stor4.length > -1 / stor3.length:
                        revert with 'NH{q', 17
                    if stor3.length * 2^stor4.length and 10^18 > -1 / stor3.length * 2^stor4.length:
                        revert with 'NH{q', 17
                    if stakeHolders[arg1].field_256 > -101:
                        revert with 'NH{q', 17
                    if stakeHolders[arg1].field_256 + 100 / 100 and stor5.length > -1 / stakeHolders[arg1].field_256 + 100 / 100:
                        revert with 'NH{q', 17
                    if stakeHolders[arg1].field_256 > -101:
                        revert with 'NH{q', 17
                    if block.timestamp > (-1 * stakeHolders[arg1].field_256 + 100 / 100 * stor5.length) - 1:
                        revert with 'NH{q', 17
                    stakeHolders[arg1].field_0 = arg1
                    stakeHolders[arg1].field_256 += 100
                    stakeHolders[arg1].field_1024 = 0
                    stakeHolders[arg1].field_1280 = 10^18 * stor3.length * 2^stor4.length
                else:
                    if stakeHolders[arg1].field_256 + 100 / 100 < 11 and stor4.length < 78 or stakeHolders[arg1].field_256 + 100 / 100 < 307 and stor4.length < 32:
                        if (stakeHolders[arg1].field_256 + 100 / 100)^stor4.length > -1:
                            revert with 'NH{q', 17
                        if stor3.length and (stakeHolders[arg1].field_256 + 100 / 100)^stor4.length > -1 / stor3.length:
                            revert with 'NH{q', 17
                        if stor3.length * (stakeHolders[arg1].field_256 + 100 / 100)^stor4.length and 10^18 > -1 / stor3.length * (stakeHolders[arg1].field_256 + 100 / 100)^stor4.length:
                            revert with 'NH{q', 17
                        if stakeHolders[arg1].field_256 > -101:
                            revert with 'NH{q', 17
                        if stakeHolders[arg1].field_256 + 100 / 100 and stor5.length > -1 / stakeHolders[arg1].field_256 + 100 / 100:
                            revert with 'NH{q', 17
                        if stakeHolders[arg1].field_256 > -101:
                            revert with 'NH{q', 17
                        if block.timestamp > (-1 * stakeHolders[arg1].field_256 + 100 / 100 * stor5.length) - 1:
                            revert with 'NH{q', 17
                        stakeHolders[arg1].field_0 = arg1
                        stakeHolders[arg1].field_256 += 100
                        stakeHolders[arg1].field_1024 = 0
                        stakeHolders[arg1].field_1280 = 10^18 * stor3.length * (stakeHolders[arg1].field_256 + 100 / 100)^stor4.length
                    else:
                        s = stakeHolders[arg1].field_256 + 100 / 100
                        t = 1
                        idx = stor4.length
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        if stor3.length and t * s > -1 / stor3.length:
                            revert with 'NH{q', 17
                        if stor3.length * t * s and 10^18 > -1 / stor3.length * t * s:
                            revert with 'NH{q', 17
                        if stakeHolders[arg1].field_256 > -101:
                            revert with 'NH{q', 17
                        if stakeHolders[arg1].field_256 + 100 / 100 and stor5.length > -1 / stakeHolders[arg1].field_256 + 100 / 100:
                            revert with 'NH{q', 17
                        if stakeHolders[arg1].field_256 > -101:
                            revert with 'NH{q', 17
                        if block.timestamp > (-1 * stakeHolders[arg1].field_256 + 100 / 100 * stor5.length) - 1:
                            revert with 'NH{q', 17
                        stakeHolders[arg1].field_0 = arg1
                        stakeHolders[arg1].field_256 += 100
                        stakeHolders[arg1].field_1024 = 0
                        stakeHolders[arg1].field_1280 = 10^18 * stor3.length * t * s
    stakeHolders[arg1].field_1536 = block.timestamp + (stakeHolders[arg1].field_256 + 100 / 100 * stor5.length)
    if sub_05973b1d > -101:
        revert with 'NH{q', 17
    sub_05973b1d += 100
}

function staking(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor1[address(msg.sender)]):
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if stakeHolders[arg1].field_0:
        revert with 0, 'ALREADY STAKED'
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x7b26b183 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == bool(ext_call.return_data[192])
    require ext_call.return_data[224] == ext_call.return_data[224]
    if not stor4.length:
        if stor3.length and 1 > -1 / stor3.length:
            revert with 'NH{q', 17
        if stor3.length and 10^18 > -1 / stor3.length:
            revert with 'NH{q', 17
        if ext_call.return_data[224] / 100 and stor5.length > -1 / ext_call.return_data[224] / 100:
            revert with 'NH{q', 17
        if block.timestamp > (-1 * ext_call.return_data[224] / 100 * stor5.length) - 1:
            revert with 'NH{q', 17
        stakeHolders[arg1].field_0 = arg1
        stakeHolders[arg1].field_256 = ext_call.return_data[224]
        stakeHolders[arg1].field_512 = block.timestamp
        stakeHolders[arg1].field_768 = 0
        stakeHolders[arg1].field_1024 = 0
        stakeHolders[arg1].field_1280 = 10^18 * stor3.length
    else:
        if not ext_call.return_data[224] / 100:
            if stor3.length and 0 > -1 / stor3.length:
                revert with 'NH{q', 17
            if ext_call.return_data[224] / 100 and stor5.length > -1 / ext_call.return_data[224] / 100:
                revert with 'NH{q', 17
            if block.timestamp > (-1 * ext_call.return_data[224] / 100 * stor5.length) - 1:
                revert with 'NH{q', 17
            stakeHolders[arg1].field_0 = arg1
            stakeHolders[arg1].field_256 = ext_call.return_data[224]
            stakeHolders[arg1].field_512 = block.timestamp
            stakeHolders[arg1].field_768 = 0
            stakeHolders[arg1].field_1024 = 0
            stakeHolders[arg1].field_1280 = 0
        else:
            if ext_call.return_data[224] / 100 == 1:
                if stor3.length and 1 > -1 / stor3.length:
                    revert with 'NH{q', 17
                if stor3.length and 10^18 > -1 / stor3.length:
                    revert with 'NH{q', 17
                if ext_call.return_data[224] / 100 and stor5.length > -1 / ext_call.return_data[224] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > (-1 * ext_call.return_data[224] / 100 * stor5.length) - 1:
                    revert with 'NH{q', 17
                stakeHolders[arg1].field_0 = arg1
                stakeHolders[arg1].field_256 = ext_call.return_data[224]
                stakeHolders[arg1].field_512 = block.timestamp
                stakeHolders[arg1].field_768 = 0
                stakeHolders[arg1].field_1024 = 0
                stakeHolders[arg1].field_1280 = 10^18 * stor3.length
            else:
                if ext_call.return_data[224] / 100 == 2:
                    if stor4.length > 255:
                        revert with 'NH{q', 17
                    if 2^stor4.length > -1:
                        revert with 'NH{q', 17
                    if stor3.length and 2^stor4.length > -1 / stor3.length:
                        revert with 'NH{q', 17
                    if stor3.length * 2^stor4.length and 10^18 > -1 / stor3.length * 2^stor4.length:
                        revert with 'NH{q', 17
                    if ext_call.return_data[224] / 100 and stor5.length > -1 / ext_call.return_data[224] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > (-1 * ext_call.return_data[224] / 100 * stor5.length) - 1:
                        revert with 'NH{q', 17
                    stakeHolders[arg1].field_0 = arg1
                    stakeHolders[arg1].field_256 = ext_call.return_data[224]
                    stakeHolders[arg1].field_512 = block.timestamp
                    stakeHolders[arg1].field_768 = 0
                    stakeHolders[arg1].field_1024 = 0
                    stakeHolders[arg1].field_1280 = 10^18 * stor3.length * 2^stor4.length
                else:
                    if ext_call.return_data[224] / 100 < 11 and stor4.length < 78 or ext_call.return_data[224] / 100 < 307 and stor4.length < 32:
                        if (ext_call.return_data[224] / 100)^stor4.length > -1:
                            revert with 'NH{q', 17
                        if stor3.length and (ext_call.return_data[224] / 100)^stor4.length > -1 / stor3.length:
                            revert with 'NH{q', 17
                        if stor3.length * (ext_call.return_data[224] / 100)^stor4.length and 10^18 > -1 / stor3.length * (ext_call.return_data[224] / 100)^stor4.length:
                            revert with 'NH{q', 17
                        if ext_call.return_data[224] / 100 and stor5.length > -1 / ext_call.return_data[224] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > (-1 * ext_call.return_data[224] / 100 * stor5.length) - 1:
                            revert with 'NH{q', 17
                        stakeHolders[arg1].field_0 = arg1
                        stakeHolders[arg1].field_256 = ext_call.return_data[224]
                        stakeHolders[arg1].field_512 = block.timestamp
                        stakeHolders[arg1].field_768 = 0
                        stakeHolders[arg1].field_1024 = 0
                        stakeHolders[arg1].field_1280 = 10^18 * stor3.length * (ext_call.return_data[224] / 100)^stor4.length
                    else:
                        s = ext_call.return_data[224] / 100
                        t = 1
                        idx = stor4.length
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        if stor3.length and t * s > -1 / stor3.length:
                            revert with 'NH{q', 17
                        if stor3.length * t * s and 10^18 > -1 / stor3.length * t * s:
                            revert with 'NH{q', 17
                        if ext_call.return_data[224] / 100 and stor5.length > -1 / ext_call.return_data[224] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > (-1 * ext_call.return_data[224] / 100 * stor5.length) - 1:
                            revert with 'NH{q', 17
                        stakeHolders[arg1].field_0 = arg1
                        stakeHolders[arg1].field_256 = ext_call.return_data[224]
                        stakeHolders[arg1].field_512 = block.timestamp
                        stakeHolders[arg1].field_768 = 0
                        stakeHolders[arg1].field_1024 = 0
                        stakeHolders[arg1].field_1280 = 10^18 * stor3.length * t * s
    stakeHolders[arg1].field_1536 = block.timestamp + (ext_call.return_data[224] / 100 * stor5.length)
    stor9[arg1] = sub_7ca4fa11.length
    sub_7ca4fa11.length++
    sub_7ca4fa11[sub_7ca4fa11.length] = arg1
    if sub_05973b1d > -ext_call.return_data[224] - 1:
        revert with 'NH{q', 17
    sub_05973b1d += ext_call.return_data[224]
    emit Staked(arg1, block.timestamp);
}



}
