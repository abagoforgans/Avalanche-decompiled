contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor2;
mapping of uint256 sub_247692e6;
address stor4;

function sub_0a8cd49f(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    return stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816
}

function sub_12fa227d(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    return stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032
}

function sub_247692e6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_247692e6[address(arg1)]
}

function sub_43368b21(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    return stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072
}

function sub_765bab33(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    return stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
}

function isManager(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= stor1.length:
        revert with 0, 50
    return bool(stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(arg2)].field_0)
}

function owner() payable {
    return owner
}

function sub_a745da65(?) payable {
    require calldata.size - 4 >= 64
    if not stor1.length:
        revert with 0, 'No base project!'
    if arg1 >= stor1.length:
        revert with 0, 50
    if stor1[arg1].field_256 <= 0:
        revert with 0, 'No target project!'
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    return stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024
}

function _fallback() payable {
    revert
}

function sub_c4f5f722(?) payable {
    require calldata.size - 4 >= 64
    emit 0x6d427884: arg1, arg2, msg.sender, block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTreasuryWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    stor4 = arg1
}

function sub_308ef610(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    sub_247692e6[address(arg1)] = 0
    emit 0xee038c68: address(arg1), msg.sender, block.timestamp
}

function addWhiteList(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    sub_247692e6[address(arg1)] = arg2
    emit 0x2a716fe2: address(arg1), arg2, msg.sender, block.timestamp
}

function sub_114b681d(?) payable {
    require calldata.size - 4 >= 96
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816 = arg3
    emit 0xb902057b: arg1, arg3, msg.sender, block.timestamp
}

function sub_ab160239(?) payable {
    require calldata.size - 4 >= 96
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072 = arg3
    emit 0xf9f2f37d: arg1, arg2, arg3, msg.sender, block.timestamp
}

function sub_38cf0b15(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    if arg1 >= stor1.length:
        revert with 0, 50
    stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(arg2)].field_0 = 1
    emit 0xe9b52c43: arg1, address(arg2), msg.sender, block.timestamp
}

function sub_26484652(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    if arg1 >= stor1.length:
        revert with 0, 50
    stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(arg2)].field_0 = 0
    emit 0x1ff5b409: arg1, address(arg2), msg.sender, block.timestamp
    return 1
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

function sub_1460005e(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536 = address(arg3)
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792 = address(arg3)
}

function sub_14abb968(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if not stor[(4 * arg1) + ('name', 'stor1', 1) + 2][msg.sender].field_0:
            revert with 0, 'You have no permission.'
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032 = address(arg3)
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280 = address(arg3)
    emit 0xdcc17f1a: arg1, arg2, address(arg3), msg.sender, block.timestamp
    return 1
}

function sub_6e2e8243(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b4589625(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == uint8(arg3)
    if owner != msg.sender:
        if arg1 >= stor1.length:
            revert with 0, 50
        if not stor[(4 * arg1) + ('name', 'stor1', 1) + 2][msg.sender].field_0:
            revert with 0, 'You have no permission.'
    if not stor1.length:
        revert with 0, 'No base project!'
    if arg1 >= stor1.length:
        revert with 0, 50
    if stor1[arg1].field_256 <= 0:
        revert with 0, 'No target project!'
    if uint8(arg3) > 1:
        revert with 0, 'Confirm setting value'
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024 = uint8(arg3)
    emit 0xb57e1f60: arg1, arg2, arg3 << 248, msg.sender, block.timestamp
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    require ext_code.size(stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
    staticcall stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
    call stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Withdraw(arg1, arg2, ext_call.return_data[0]);
}

function sub_d5b8928c(?) payable {
    require calldata.size - 4 >= 128
    require arg4 == address(arg4)
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    if not stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032:
        revert with 0, 'Not set reward maker address!'
    require ext_code.size(stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792)
    staticcall stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280)
    staticcall stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280.getAmount(address arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg4), arg3, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_5d75d4f5(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor1[arg1].field_256:
        revert with 0, 50
    mem[0] = (4 * arg1) + sha3(1) + 1
    mem[96] = 0x1a09254100000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280)
    staticcall stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280.getDescription() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[ceil32(return_data.size) + _7 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[mem[64] + _7 + 64] = 0
    return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
}

function getUserInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= stor1.length:
        revert with 0, 50
    mem[0] = arg2
    mem[32] = (4 * arg1) + sha3(1) + 3
    mem[64] = (32 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(arg2)].field_0) + 128
    mem[96] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(arg2)].field_0
    s = 128
    idx = 0
    while idx < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(arg2)].field_0:
        mem[0] = sha3(address(arg2), (4 * arg1) + sha3(1) + 3)
        _18 = mem[64]
        mem[64] = mem[64] + 224
        mem[_18] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(arg2)][idx].field_0
        mem[_18 + 32] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(arg2)][idx].field_256
        mem[_18 + 64] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(arg2)][idx].field_512
        mem[_18 + 96] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(arg2)][idx].field_768
        mem[_18 + 128] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(arg2)][idx].field_1024
        mem[_18 + 160] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(arg2)][idx].field_1280
        mem[_18 + 192] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(arg2)][idx].field_1536
        mem[s] = _18
        s = s + 32
        idx = idx + 1
        continue 
    _19 = mem[64]
    mem[mem[64]] = 32
    _20 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _20:
        _30 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_30 + 32]
        mem[t + 64] = mem[_30 + 64]
        mem[t + 96] = mem[_30 + 124 len 4]
        mem[t + 128] = mem[_30 + 128]
        mem[t + 160] = mem[_30 + 160]
        mem[t + 192] = mem[_30 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _19 + (224 * _20) + -mem[64] + 64
}

function sub_0ed047d4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    stor1.length++
    if stor1[stor1.length].field_0:
        if stor1[stor1.length].field_0 == uint255(stor1[stor1.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor1[stor1.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor1[stor1.length].field_0 = 0
            idx = 0
            while (uint255(stor1[stor1.length].field_0) * 0.5) + 31 / 32 > idx:
                stor1[(4 * stor1.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[stor1.length].field_0 == stor1[stor1.length].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor1[stor1.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor1[stor1.length].field_0 = 0
            idx = 0
            while stor1[stor1.length].field_1 + 31 / 32 > idx:
                stor1[(4 * stor1.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    stor2.length++
    if stor2[stor2.length].field_0:
        if stor2[stor2.length].field_0 == uint255(stor2[stor2.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor2[stor2.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor2.length].field_0 = 0
            idx = 0
            while (uint255(stor2[stor2.length].field_0) * 0.5) + 31 / 32 > idx:
                stor2[stor2.length + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[stor2.length].field_0 == stor2[stor2.length].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor2[stor2.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor2.length].field_0 = 0
            idx = 0
            while stor2[stor2.length].field_1 + 31 / 32 > idx:
                stor2[stor2.length + idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0x239844f3: Array(len=arg1.length, data=arg1[all]), msg.sender, block.timestamp
}

function withdrawAll() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    idx = 0
    while idx < stor1.length:
        if idx < stor1.length:
            mem[0] = 1
            if var34003 >= stor1[idx].field_256:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if owner != msg.sender:
                revert with 0, 'You have no permission.'
            if idx < stor1.length:
                mem[0] = 1
                s = var42001
                t = var42004
                while s < stor1[idx].field_256:
                    mem[0] = (4 * idx) + sha3(1) + 1
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor[(13 * s) + sha3((4 * idx) + ('name', 'stor1', 1) + 1)].field_256)
                    staticcall stor[(13 * s) + sha3((4 * idx) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _130 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _131 = mem[_130]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _131
                    require ext_code.size(stor[(13 * s) + sha3((4 * idx) + ('name', 'stor1', 1) + 1)].field_256)
                    call stor[(13 * s) + sha3((4 * idx) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _131
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_134] == bool(mem[_134])
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = s
                    mem[mem[64] + 64] = _131
                    emit Withdraw(idx, s, _131);
                    if t == -1:
                        revert with 0, 17
                    if idx >= stor1.length:
                        revert with 0, 50
                    if t + 1 >= stor1[idx].field_256:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = 1
                        idx = idx + 1
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'You have no permission.'
                    if idx >= stor1.length:
                        revert with 0, 50
                    mem[0] = 1
                    s = t + 1
                    t = t + 1
                    continue 
        revert with 0, 50
}

function sub_3d1819f7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor2.length
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor2[arg1].field_0:
            if stor2[arg1].field_0 == uint255(stor2[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2[arg1].field_0):
                if 31 < uint255(stor2[arg1].field_0) * 0.5:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor2[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_0), data=mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor2[arg1].field_8
        else:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 0, 34
            if stor2[arg1].field_1:
                if 31 < stor2[arg1].field_1:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_0), data=mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor2[arg1].field_8
        mem[ceil32(uint255(stor2[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor2[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor2[arg1].field_0) * 0.5) > uint255(stor2[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor2[arg1].field_0) * 0.5) + (uint255(stor2[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2[arg1].field_0), data=mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor2[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor2[arg1].field_0) * 0.5)]), 
    if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
        revert with 0, 34
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2[arg1].field_0):
            if 31 < uint255(stor2[arg1].field_0) * 0.5:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor2[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)])
            mem[128] = 256 * stor2[arg1].field_8
    else:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 0, 34
        if stor2[arg1].field_1:
            if 31 < stor2[arg1].field_1:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor2[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)])
            mem[128] = 256 * stor2[arg1].field_8
    mem[ceil32(stor2[arg1].field_1) + 192 len ceil32(stor2[arg1].field_1)] = mem[128 len ceil32(stor2[arg1].field_1)]
    if ceil32(stor2[arg1].field_1) > stor2[arg1].field_1:
        mem[ceil32(stor2[arg1].field_1) + stor2[arg1].field_1 + 192] = 0
    return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)], mem[(2 * ceil32(stor2[arg1].field_1)) + 192 len 2 * ceil32(stor2[arg1].field_1)]), 
}

function sub_bbc3a7f3(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    if cd[4] >= stor2.length:
        revert with 0, 50
    if stor2[cd[4]].field_0:
        if stor2[cd[4]].field_0 == uint255(stor2[cd[4]].field_0) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor2[cd[4]].field_0 = 0
            idx = 0
            while (uint255(stor2[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                stor2[cd[4] + idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor2[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor2[cd[4] + s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor2[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                stor2[cd[4] + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[cd[4]].field_0 == stor2[cd[4]].field_1 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor2[cd[4]].field_0 = 0
            idx = 0
            while stor2[cd[4]].field_1 + 31 / 32 > idx:
                stor2[cd[4] + idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor2[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor2[cd[4] + s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor2[cd[4]].field_1 + 31 / 32 > idx:
                stor2[cd[4] + idx].field_0 = 0
                idx = idx + 1
                continue 
    if cd[4] >= stor1.length:
        revert with 0, 50
    if stor1[cd[4]].field_0:
        if stor1[cd[4]].field_0 == uint255(stor1[cd[4]].field_0) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor1[cd[4]].field_0 = 0
            idx = 0
            while (uint255(stor1[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                stor1[(4 * cd[4]) + idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor1[(4 * cd[4]) + s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor1[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                stor1[(4 * cd[4]) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[cd[4]].field_0 == stor1[cd[4]].field_1 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor1[cd[4]].field_0 = 0
            idx = 0
            while stor1[cd[4]].field_1 + 31 / 32 > idx:
                stor1[(4 * cd[4]) + idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor1[(4 * cd[4]) + s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor1[cd[4]].field_1 + 31 / 32 > idx:
                stor1[(4 * cd[4]) + idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xe1e97eb3: cd[4], Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length]), msg.sender, block.timestamp
}

function sub_5880ef34(?) payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if stor2[idx].field_0:
            if stor2[idx].field_0 == uint255(stor2[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_0) * 0.5) + 32
            mem[_19] = uint255(stor2[idx].field_0) * 0.5
            if stor2[idx].field_0:
                if stor2[idx].field_0 == uint255(stor2[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor2[idx].field_0):
                    if 31 >= uint255(stor2[idx].field_0) * 0.5:
                        mem[_19 + 32] = 256 * stor2[idx].field_8
                    else:
                        mem[0] = sha3(2) + idx
                        mem[_19 + 32] = stor2[idx].field_0
                        t = _19 + 32
                        u = sha3(mem[0])
                        while _19 + (uint255(stor2[idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            if stor2[idx].field_0 == stor2[idx].field_1 < 32:
                revert with 0, 34
            if not stor2[idx].field_1:
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor2[idx].field_1:
                mem[_19 + 32] = 256 * stor2[idx].field_8
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(2) + idx
            mem[_19 + 32] = stor2[idx].field_0
            t = _19 + 32
            u = sha3(mem[0])
            while _19 + stor2[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _19
            t = t + 32
            u = u + 1
            continue 
        if stor2[idx].field_0 == stor2[idx].field_1 < 32:
            revert with 0, 34
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].field_1) + 32
        mem[_22] = stor2[idx].field_1
        if stor2[idx].field_0:
            if stor2[idx].field_0 == uint255(stor2[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor2[idx].field_0):
                mem[s] = _22
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor2[idx].field_0) * 0.5:
                mem[_22 + 32] = 256 * stor2[idx].field_8
                mem[s] = _22
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(2) + idx
            mem[_22 + 32] = stor2[idx].field_0
            t = _22 + 32
            u = sha3(mem[0])
            while _22 + (uint255(stor2[u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _22
            t = t + 32
            u = u + 1
            continue 
        if stor2[idx].field_0 == stor2[idx].field_1 < 32:
            revert with 0, 34
        if stor2[idx].field_1:
            if 31 >= stor2[idx].field_1:
                mem[_22 + 32] = 256 * stor2[idx].field_8
            else:
                mem[0] = sha3(2) + idx
                mem[_22 + 32] = stor2[idx].field_0
                t = _22 + 32
                u = sha3(mem[0])
                while _22 + stor2[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _22
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    t = 0
    s = 128
    u = mem[64] + 64
    v = mem[64] + (32 * mem[96]) + 64
    while t < _17:
        mem[u] = v + -_16 - 64
        _28 = mem[s]
        _30 = mem[mem[s]]
        mem[v] = mem[mem[s]]
        idx = 0
        while idx < _30:
            mem[idx + v + 32] = mem[idx + _28 + 32]
            idx = idx + 32
            continue 
        if ceil32(_30) > _30:
            mem[v + _30 + 32] = 0
        t = t + 1
        s = s + 32
        u = u + 32
        v = ceil32(_30) + v + 32
        continue 
    return memory
      from mem[64]
       len v - mem[64]
}

function sub_6bb52b1b(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == uint32(arg2)
    if arg1 >= stor1.length:
        revert with 0, 50
    if uint32(arg2) >= stor1[arg1].field_256:
        revert with 0, 50
    if stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024 != 1:
        revert with 0, 'This contract was paused!'
    if arg1 >= stor1.length:
        revert with 0, 50
    if uint32(arg2) >= stor1[arg1].field_256:
        revert with 0, 50
    if not stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032:
        revert with 0, 'Not set reward maker address!'
    require ext_code.size(stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792)
    staticcall stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280)
    staticcall stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280.getAmount(address arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args msg.sender, arg3, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg3 < ext_call.return_data[32]:
        revert with 0, 17
    require ext_code.size(stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792)
    call stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024, arg3 - ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280)
    call stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280.0x51cff8d9 with:
         gas gas_remaining wei
        args stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 == stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072:
        require ext_code.size(stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        call stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if arg1 >= stor1.length:
            revert with 0, 50
        if uint32(arg2) >= stor1[arg1].field_256:
            revert with 0, 50
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender].field_0++
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender].field_0].field_0 = 0
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender].field_0].field_256 = block.timestamp
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender].field_0].field_512 = block.timestamp
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender].field_0].field_768 = uint32(arg2)
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender].field_0].field_1024 = 0
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender].field_0].field_1280 = ext_call.return_data[0]
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender].field_0].field_1536 = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * uint32(arg2))].field_3072
        if stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304 == -1:
            revert with 0, 17
        stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304++
        if stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048 > !arg3:
            revert with 0, 17
        stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048 += arg3
        if stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 > !ext_call.return_data[0]:
            revert with 0, 17
        stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 += ext_call.return_data[0]
    emit 0x909a6c8e: arg1, arg2 << 224, arg3, msg.sender, block.timestamp
    return 1
}

function sub_9b0e36b5(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner == msg.sender:
        mem[0] = 1
        mem[96] = address(arg2)
        mem[128] = address(arg2)
        mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _14 = mem[544]
        require mem[544] <= test266151307()
        require return_data.size + 544 > mem[544] + 575
        _16 = mem[mem[544] + 544]
        if mem[mem[544] + 544] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[544] + 544])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[544] + 544])) + 545 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[544] + 544])) + 545
        mem[ceil32(return_data.size) + 544] = mem[mem[544] + 544]
        require _14 + _16 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 576 len ceil32(_16)] = mem[_14 + 576 len ceil32(_16)]
        if ceil32(_16) <= _16:
            mem[160] = ceil32(return_data.size) + 544
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _509 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_509] == mem[_509 + 31 len 1]
            mem[192] = mem[_509 + 31 len 1]
        else:
            mem[ceil32(return_data.size) + _16 + 576] = 0
            mem[160] = ceil32(return_data.size) + 544
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _511 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_511] == mem[_511 + 31 len 1]
            mem[192] = mem[_511 + 31 len 1]
    else:
        mem[32] = (4 * arg1) + sha3(1) + 2
        if not stor[(4 * arg1) + ('name', 'stor1', 1) + 2][msg.sender].field_0:
            revert with 0, 'You have no permission.'
        if arg1 >= stor1.length:
            revert with 0, 50
        mem[0] = 1
        mem[96] = address(arg2)
        mem[128] = address(arg2)
        mem[544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _17 = mem[544]
        require mem[544] <= test266151307()
        require return_data.size + 544 > mem[544] + 575
        _18 = mem[mem[544] + 544]
        if mem[mem[544] + 544] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[544] + 544])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[544] + 544])) + 545 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[544] + 544])) + 545
        mem[ceil32(return_data.size) + 544] = mem[mem[544] + 544]
        require _17 + _18 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 576 len ceil32(_18)] = mem[_17 + 576 len ceil32(_18)]
        if ceil32(_18) <= _18:
            mem[160] = ceil32(return_data.size) + 544
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _510 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_510] == mem[_510 + 31 len 1]
            mem[192] = mem[_510 + 31 len 1]
        else:
            mem[ceil32(return_data.size) + _18 + 576] = 0
            mem[160] = ceil32(return_data.size) + 544
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _512 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_512] == mem[_512 + 31 len 1]
            mem[192] = mem[_512 + 31 len 1]
    stor1[arg1].field_256++
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = uint64(arg2) << 96
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256 = uint64(arg2) << 96
    if stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512:
        if stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == uint255(stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if mem[ceil32(return_data.size) + 544]:
            stor[sha3((13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)][].field_0 = Array(len=mem[ceil32(return_data.size) + 544], data=mem[ceil32(return_data.size) + 576 len mem[ceil32(return_data.size) + 544]])
        else:
            stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 = 0
            idx = 0
            while (uint255(stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
            revert with 0, 34
        if mem[ceil32(return_data.size) + 544]:
            stor[sha3((13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)][].field_0 = Array(len=mem[ceil32(return_data.size) + 544], data=mem[ceil32(return_data.size) + 576 len mem[ceil32(return_data.size) + 544]])
        else:
            stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 = 0
            idx = 0
            while stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 + 31 / 32 > idx:
                stor[idx + sha3((13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[192]
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024 = 1
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032 = 0
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280 = 0
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280 = 0
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536 = 0
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536 = 0
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792 = 0
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792 = 0
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048 = 0
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048 = 0
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304 = 0
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 = 0
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816 = 24 * 3600
    stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072 = 720 * 24 * 3600
    emit 0x6d8c1481: arg1, address(arg2), msg.sender, block.timestamp
}

function redeem(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= stor1.length:
        revert with 0, 50
    if arg2 >= stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender].field_0:
        revert with 0, 50
    if arg1 >= stor1.length:
        revert with 0, 50
    if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768 >= stor1[arg1].field_256:
        revert with 0, 50
    if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024 != 1:
        revert with 0, 'This contract was paused!'
    if block.timestamp < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512:
        revert with 0, 17
    if block.timestamp - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512 < stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816:
        revert with 0, 'Redeem Interval Error!'
    if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280 and block.timestamp - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512 > -1 / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280:
        revert with 0, 17
    if not stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1536:
        revert with 0, 18
    if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024:
        revert with 0, 17
    if (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1536 <= stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024:
        require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        staticcall stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1536:
            revert with 0, 'There is no enough token on this contract.'
        require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        call stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1536
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024 > !((block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1536):
            revert with 0, 17
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024 += (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1536
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512 = block.timestamp
        if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 < (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1536:
            revert with 0, 17
        stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 -= (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1536
    else:
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024:
            revert with 0, 17
        require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        staticcall stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024:
            revert with 0, 'There is no enough token on this contract.'
        require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        call stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024 > !(stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024):
            revert with 0, 17
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024 = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_512 = block.timestamp
        if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024:
            revert with 0, 17
        stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 = stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280 + stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024
    if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1024 == stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_1280:
        if not stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304:
            revert with 0, 17
        stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304--
    emit 0xdd2d8631: arg1, arg2, msg.sender, block.timestamp
    return 1
}

function redeemAll(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if arg1 >= stor1.length:
        revert with 0, 50
    mem[0] = msg.sender
    mem[32] = (4 * arg1) + sha3(1) + 3
    idx = 0
    while idx < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender].field_0:
        if arg1 >= stor1.length:
            revert with 0, 50
        mem[32] = (4 * arg1) + sha3(1) + 3
        if idx >= stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender].field_0:
            revert with 0, 50
        if arg1 >= stor1.length:
            revert with 0, 50
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768 >= stor1[arg1].field_256:
            revert with 0, 50
        mem[0] = (4 * arg1) + sha3(1) + 1
        if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024 != 1:
            revert with 0, 'This contract was paused!'
        if block.timestamp < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512:
            revert with 0, 17
        if block.timestamp - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 < stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816:
            revert with 0, 'Redeem Interval Error!'
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280 and block.timestamp - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 > -1 / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280:
            revert with 0, 17
        if not stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1536:
            revert with 0, 18
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024:
            revert with 0, 17
        if (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1536 <= stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
            staticcall stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_57] < (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1536:
                revert with 0, 'There is no enough token on this contract.'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1536
            require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
            call stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1536
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] == bool(mem[_68])
            if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024 > !((block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1536):
                revert with 0, 17
            stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024 += (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1536
            stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 = block.timestamp
            if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 < (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1536:
                revert with 0, 17
            stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 -= (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1536
        else:
            if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024:
                revert with 0, 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
            staticcall stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_58] < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024:
                revert with 0, 'There is no enough token on this contract.'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024
            require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
            call stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_70] == bool(mem[_70])
            if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024 > !(stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024):
                revert with 0, 17
            stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024 = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280
            stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_512 = block.timestamp
            if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024:
                revert with 0, 17
            stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 = stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280 + stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1024 == stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_1280:
            if not stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304:
                revert with 0, 17
            stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][msg.sender][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304--
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = idx
        mem[mem[64] + 64] = msg.sender
        mem[mem[64] + 96] = block.timestamp
        emit 0xdd2d8631: arg1, idx, msg.sender, block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0xccc88ece: arg1, msg.sender, block.timestamp
}

function sub_fb29f001(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor1.length:
        revert with 0, 50
    mem[0] = 1
    mem[64] = (32 * stor1[arg1].field_256) + 128
    mem[96] = stor1[arg1].field_256
    s = 128
    idx = 0
    while idx < stor1[arg1].field_256:
        mem[0] = (4 * arg1) + sha3(1) + 1
        _43 = mem[64]
        mem[64] = mem[64] + 448
        mem[_43] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_0
        mem[_43 + 32] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_256
        if stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512:
            if stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512 == uint255(stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512) * 0.5 < 32:
                revert with 0, 34
            _50 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512) * 0.5) + 32
            mem[_50] = uint255(stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512) * 0.5
            if stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512:
                if stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512 == uint255(stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512):
                    if 31 >= uint255(stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512) * 0.5:
                        mem[_50 + 32] = 256 * stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_520
                    else:
                        mem[0] = sha3((4 * arg1) + sha3(1) + 1) + (13 * idx) + 2
                        mem[_50 + 32] = stor[sha3(sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx) + 2)].field_0
                        t = _50 + 32
                        u = sha3(mem[0])
                        while _50 + (uint255(stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512) * 0.5) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_43 + 64] = _50
                mem[_43 + 96] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_768
                mem[_43 + 128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1024
                mem[_43 + 160] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1032
                mem[_43 + 192] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1280
                mem[_43 + 224] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1536
                mem[_43 + 256] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1792
                mem[_43 + 288] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2048
                mem[_43 + 320] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2304
                mem[_43 + 352] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2560
                mem[_43 + 384] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2816
                mem[_43 + 416] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_3072
                mem[s] = _43
                s = s + 32
                idx = idx + 1
                continue 
            if stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512 == stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_513 < 32:
                revert with 0, 34
            if not stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_513:
                mem[_43 + 64] = _50
                mem[_43 + 96] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_768
                mem[_43 + 128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1024
                mem[_43 + 160] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1032
                mem[_43 + 192] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1280
                mem[_43 + 224] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1536
                mem[_43 + 256] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1792
                mem[_43 + 288] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2048
                mem[_43 + 320] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2304
                mem[_43 + 352] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2560
                mem[_43 + 384] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2816
                mem[_43 + 416] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_3072
                mem[s] = _43
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_513:
                mem[_50 + 32] = 256 * stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_520
                mem[_43 + 64] = _50
                mem[_43 + 96] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_768
                mem[_43 + 128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1024
                mem[_43 + 160] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1032
                mem[_43 + 192] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1280
                mem[_43 + 224] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1536
                mem[_43 + 256] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1792
                mem[_43 + 288] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2048
                mem[_43 + 320] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2304
                mem[_43 + 352] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2560
                mem[_43 + 384] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2816
                mem[_43 + 416] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_3072
                mem[s] = _43
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3((4 * arg1) + sha3(1) + 1) + (13 * idx) + 2
            mem[_50 + 32] = stor[sha3(sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx) + 2)].field_0
            t = _50 + 32
            u = sha3(mem[0])
            while _50 + stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_513 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_43 + 64] = _50
            mem[_43 + 96] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_768
            mem[_43 + 128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_1024
            mem[_43 + 160] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_1032
            mem[_43 + 192] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_1280
            mem[_43 + 224] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_1536
            mem[_43 + 256] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_1792
            mem[_43 + 288] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_2048
            mem[_43 + 320] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_2304
            mem[_43 + 352] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_2560
            mem[_43 + 384] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_2816
            mem[_43 + 416] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_3072
            mem[t] = _43
            t = t + 32
            u = u + 1
            continue 
        if stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512 == stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_513 < 32:
            revert with 0, 34
        _53 = mem[64]
        mem[64] = mem[64] + ceil32(stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_513) + 32
        mem[_53] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_513
        if stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512:
            if stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512 == uint255(stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512):
                mem[_43 + 64] = _53
                mem[_43 + 96] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_768
                mem[_43 + 128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1024
                mem[_43 + 160] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1032
                mem[_43 + 192] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1280
                mem[_43 + 224] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1536
                mem[_43 + 256] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1792
                mem[_43 + 288] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2048
                mem[_43 + 320] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2304
                mem[_43 + 352] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2560
                mem[_43 + 384] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2816
                mem[_43 + 416] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_3072
                mem[s] = _43
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512) * 0.5:
                mem[_53 + 32] = 256 * stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_520
                mem[_43 + 64] = _53
                mem[_43 + 96] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_768
                mem[_43 + 128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1024
                mem[_43 + 160] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1032
                mem[_43 + 192] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1280
                mem[_43 + 224] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1536
                mem[_43 + 256] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1792
                mem[_43 + 288] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2048
                mem[_43 + 320] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2304
                mem[_43 + 352] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2560
                mem[_43 + 384] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2816
                mem[_43 + 416] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_3072
                mem[s] = _43
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3((4 * arg1) + sha3(1) + 1) + (13 * idx) + 2
            mem[_53 + 32] = stor[sha3(sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx) + 2)].field_0
            t = _53 + 32
            u = sha3(mem[0])
            while _53 + (uint255(stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_512) * 0.5) > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_43 + 64] = _53
            mem[_43 + 96] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_768
            mem[_43 + 128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_1024
            mem[_43 + 160] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_1032
            mem[_43 + 192] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_1280
            mem[_43 + 224] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_1536
            mem[_43 + 256] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_1792
            mem[_43 + 288] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_2048
            mem[_43 + 320] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_2304
            mem[_43 + 352] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_2560
            mem[_43 + 384] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_2816
            mem[_43 + 416] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * u)].field_3072
            mem[t] = _43
            t = t + 32
            u = u + 1
            continue 
        if stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_512 == stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_513 < 32:
            revert with 0, 34
        if stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_513:
            if 31 >= stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_513:
                mem[_53 + 32] = 256 * stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_520
            else:
                mem[0] = sha3((4 * arg1) + sha3(1) + 1) + (13 * idx) + 2
                mem[_53 + 32] = stor[sha3(sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx) + 2)].field_0
                t = _53 + 32
                u = sha3(mem[0])
                while _53 + stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_513 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_43 + 64] = _53
        mem[_43 + 96] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_768
        mem[_43 + 128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1024
        mem[_43 + 160] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1032
        mem[_43 + 192] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1280
        mem[_43 + 224] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1536
        mem[_43 + 256] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_1792
        mem[_43 + 288] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2048
        mem[_43 + 320] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2304
        mem[_43 + 352] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2560
        mem[_43 + 384] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_2816
        mem[_43 + 416] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + (13 * idx)].field_3072
        mem[s] = _43
        s = s + 32
        idx = idx + 1
        continue 
    _44 = mem[64]
    mem[mem[64]] = 32
    _45 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _45:
        mem[u] = t + -_44 - 64
        _81 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_81 + 44 len 20]
        _84 = mem[_81 + 64]
        mem[t + 64] = 448
        _86 = mem[_84]
        mem[t + 448] = mem[_84]
        v = 0
        while v < _86:
            mem[v + t + 480] = mem[v + _84 + 32]
            v = v + 32
            continue 
        if ceil32(_86) > _86:
            mem[t + _86 + 480] = 0
        mem[t + 96] = mem[_81 + 96]
        mem[t + 128] = mem[_81 + 159 len 1]
        mem[t + 160] = mem[_81 + 172 len 20]
        mem[t + 192] = mem[_81 + 204 len 20]
        mem[t + 224] = mem[_81 + 236 len 20]
        mem[t + 256] = mem[_81 + 268 len 20]
        mem[t + 288] = mem[_81 + 288]
        mem[t + 320] = mem[_81 + 320]
        mem[t + 352] = mem[_81 + 352]
        mem[t + 384] = mem[_81 + 384]
        mem[t + 416] = mem[_81 + 416]
        idx = idx + 1
        s = s + 32
        t = ceil32(_86) + t + 480
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
