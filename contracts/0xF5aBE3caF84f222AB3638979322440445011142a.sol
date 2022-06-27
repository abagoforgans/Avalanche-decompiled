contract main {




// =====================  Runtime code  =====================


#
#  - sub_bbc3a7f3(?)
#
address owner;
array of struct stor2;
address stor3;

function sub_0a8cd49f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    return stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816
}

function sub_12fa227d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    return stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032
}

function sub_43368b21(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    return stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072
}

function sub_765bab33(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    return stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
}

function isManager(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    return bool(stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(arg2)].field_0)
}

function owner() payable {
    return owner
}

function sub_a745da65(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1.length <= 0:
        revert with 0, 'No base project!'
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if stor1[arg1].field_256 <= 0:
        revert with 0, 'No target project!'
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    return stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024
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

function setTreasuryWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    stor3 = arg1
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

function sub_38cf0b15(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(arg2)].field_0 = 1
    emit 0xe9b52c43: arg1, address(arg2), msg.sender, block.timestamp
}

function sub_114b681d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816 = arg3
    emit 0xb902057b: arg1, arg3, msg.sender, block.timestamp
}

function sub_26484652(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(arg2)].field_0 = 0
    emit 0x1ff5b409: arg1, address(arg2), msg.sender, block.timestamp
    return 1
}

function sub_ab160239(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if owner != msg.sender:
        if not stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(msg.sender)].field_0:
            revert with 0, 'You have no permission.'
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072 = arg3
    emit 0xf9f2f37d: arg1, arg2, arg3, msg.sender, block.timestamp
}

function sub_1460005e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if owner != msg.sender:
        if not stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(msg.sender)].field_0:
            revert with 0, 'You have no permission.'
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536 = address(arg3)
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792 = address(arg3)
}

function sub_14abb968(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if owner != msg.sender:
        if not stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(msg.sender)].field_0:
            revert with 0, 'You have no permission.'
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032 = address(arg3)
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == uint8(arg3)
    if owner != msg.sender:
        if arg1 >= stor1.length:
            revert with 'NH{q', 50
        if not stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(msg.sender)].field_0:
            revert with 0, 'You have no permission.'
    if stor1.length <= 0:
        revert with 0, 'No base project!'
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if stor1[arg1].field_256 <= 0:
        revert with 0, 'No target project!'
    if uint8(arg3) > 1:
        revert with 0, 'Confirm setting value'
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024 = uint8(arg3)
    emit 0xb57e1f60: arg1, arg2, arg3 << 248, msg.sender, block.timestamp
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    require ext_code.size(stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
    staticcall stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0], ext_call.return_data[32]
}

function getUserInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
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

function sub_5d75d4f5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
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
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _21 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _7
        mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
        if ceil32(_7) <= _7:
            return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
        mem[mem[64] + _7 + 64] = 0
        return memory
          from mem[64]
           len _21 + ceil32(_7) + -mem[64] + 64
    mem[ceil32(return_data.size) + _7 + 128] = 0
    _22 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _7
    mem[mem[64] + 64 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        return Array(len=_7, data=mem[mem[64] + 64 len ceil32(_7)])
    mem[mem[64] + _7 + 64] = 0
    return memory
      from mem[64]
       len _22 + ceil32(_7) + -mem[64] + 64
}

function sub_0ed047d4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'You have no permission.'
    stor1.length++
    if stor1[stor1.length].field_0:
        if stor1[stor1.length].field_0 == stor1[stor1.length].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor1[stor1.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor1[stor1.length].field_0 = 0
            idx = 0
            while stor1[stor1.length].field_1 + 31 / 32 > idx:
                stor1[(4 * stor1.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[stor1.length].field_0 == stor1[stor1.length].field_1 < 32:
            revert with 'NH{q', 34
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
        if stor2[stor2.length].field_0 == stor2[stor2.length].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[stor2.length][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor2.length].field_0 = 0
            idx = 0
            while stor2[stor2.length].field_1 + 31 / 32 > idx:
                stor2[stor2.length + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[stor2.length].field_0 == stor2[stor2.length].field_1 < 32:
            revert with 'NH{q', 34
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
        if idx >= stor1.length:
            revert with 'NH{q', 50
        mem[0] = 1
        if var84003 >= stor1[idx].field_256:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        s = var88001
        t = var88004
        while owner == msg.sender:
            if idx >= stor1.length:
                revert with 'NH{q', 50
            if s >= stor1[idx].field_256:
                revert with 'NH{q', 50
            mem[0] = (4 * idx) + sha3(1) + 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor[(13 * s) + sha3((4 * idx) + ('name', 'stor1', 1) + 1)].field_256)
            staticcall stor[(13 * s) + sha3((4 * idx) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _101 = mem[_100]
            require mem[_100] == mem[_100]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _101
            require ext_code.size(stor[(13 * s) + sha3((4 * idx) + ('name', 'stor1', 1) + 1)].field_256)
            call stor[(13 * s) + sha3((4 * idx) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _101
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_104] == bool(mem[_104])
            mem[mem[64]] = idx
            mem[mem[64] + 32] = s
            mem[mem[64] + 64] = _101
            emit Withdraw(idx, s, _101);
            if t == -1:
                revert with 'NH{q', 17
            if idx >= stor1.length:
                revert with 'NH{q', 50
            mem[0] = 1
            if t + 1 < stor1[idx].field_256:
                s = t + 1
                t = t + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        revert with 0, 'You have no permission.'
}

function sub_3d1819f7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor2.length
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_0:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[128 len ceil32(stor2[arg1].field_1)])
                mem[128] = 256 * stor2[arg1].field_8
        else:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[128 len ceil32(stor2[arg1].field_1)])
                mem[128] = 256 * stor2[arg1].field_8
        mem[ceil32(stor2[arg1].field_1) + 192 len ceil32(stor2[arg1].field_1)] = mem[128 len ceil32(stor2[arg1].field_1)]
        if ceil32(stor2[arg1].field_1) > stor2[arg1].field_1:
            mem[ceil32(stor2[arg1].field_1) + stor2[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[128 len ceil32(stor2[arg1].field_1)], mem[(2 * ceil32(stor2[arg1].field_1)) + 192 len 2 * ceil32(stor2[arg1].field_1)]), 
    if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
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

function sub_5880ef34(?) payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if stor2[idx].field_0:
            if stor2[idx].field_0 == stor2[idx].field_1 < 32:
                revert with 'NH{q', 34
            _18 = mem[64]
            mem[64] = mem[64] + ceil32(stor2[idx].field_1) + 32
            mem[_18] = stor2[idx].field_1
            if stor2[idx].field_0:
                if stor2[idx].field_0 == stor2[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor2[idx].field_1:
                    if 31 >= stor2[idx].field_1:
                        mem[_18 + 32] = 256 * stor2[idx].field_8
                    else:
                        mem[0] = sha3(2) + idx
                        mem[_18 + 32] = stor2[idx].field_0
                        t = _18 + 32
                        u = sha3(mem[0])
                        while _18 + stor2[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if stor2[idx].field_0 == stor2[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor2[idx].field_1:
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor2[idx].field_1:
                mem[_18 + 32] = 256 * stor2[idx].field_8
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(2) + idx
            mem[_18 + 32] = stor2[idx].field_0
            t = _18 + 32
            u = sha3(mem[0])
            while _18 + stor2[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _18
            t = t + 32
            u = u + 1
            continue 
        if stor2[idx].field_0 == stor2[idx].field_1 < 32:
            revert with 'NH{q', 34
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].field_1) + 32
        mem[_19] = stor2[idx].field_1
        if stor2[idx].field_0:
            if stor2[idx].field_0 == stor2[idx].field_1 < 32:
                revert with 'NH{q', 34
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
            revert with 'NH{q', 34
        if stor2[idx].field_1:
            if 31 >= stor2[idx].field_1:
                mem[_19 + 32] = 256 * stor2[idx].field_8
            else:
                mem[0] = sha3(2) + idx
                mem[_19 + 32] = stor2[idx].field_0
                t = _19 + 32
                u = sha3(mem[0])
                while _19 + stor2[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _19
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _17:
        mem[u] = t + -_16 - 64
        _28 = mem[s]
        _30 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _30:
            mem[t + v + 32] = mem[_28 + v + 32]
            v = v + 32
            continue 
        if ceil32(_30) > _30:
            mem[t + _30 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_30) + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_6bb52b1b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == uint32(arg2)
    require arg3 == arg3
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if uint32(arg2) >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    if stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024 != 1:
        revert with 0, 'This contract was paused!'
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if uint32(arg2) >= stor1[arg1].field_256:
        revert with 'NH{q', 50
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if arg3 < ext_call.return_data[32]:
        revert with 'NH{q', 17
    require ext_code.size(stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792)
    call stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024, arg3 - ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280)
    call stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280.withdraw(address arg1) with:
         gas gas_remaining wei
        args stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280)
    call stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280.0x7812c10c with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072:
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
            revert with 'NH{q', 50
        if uint32(arg2) >= stor1[arg1].field_256:
            revert with 'NH{q', 50
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)].field_0++
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)].field_0].field_0 = 0
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)].field_0].field_256 = block.timestamp
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)].field_0].field_512 = block.timestamp
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)].field_0].field_768 = uint32(arg2)
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)].field_0].field_1024 = 0
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)].field_0].field_1280 = ext_call.return_data[0]
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)].field_0].field_1536 = stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072
        if stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304 == -1:
            revert with 'NH{q', 17
        stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304++
        if stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048 > -arg3 - 1:
            revert with 'NH{q', 17
        stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048 += arg3
        if stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        stor[(13 * uint32(arg2)) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 += ext_call.return_data[0]
    emit 0x909a6c8e: arg1, arg2 << 224, arg3, msg.sender, block.timestamp
    return 1
}

function sub_9b0e36b5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
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
        _13 = mem[544]
        require mem[544] <= test266151307()
        require mem[544] + 575 < return_data.size + 544
        _16 = mem[mem[544] + 544]
        if mem[mem[544] + 544] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + ceil32(ceil32(mem[mem[544] + 544])) + 545 > test266151307() or ceil32(ceil32(mem[mem[544] + 544])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[544] + 544])) + 545
        mem[ceil32(return_data.size) + 544] = mem[mem[544] + 544]
        require _13 + _16 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 576 len ceil32(_16)] = mem[_13 + 576 len ceil32(_16)]
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
        if not stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(msg.sender)].field_0:
            revert with 0, 'You have no permission.'
        if arg1 >= stor1.length:
            revert with 'NH{q', 50
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
        _15 = mem[544]
        require mem[544] <= test266151307()
        require mem[544] + 575 < return_data.size + 544
        _17 = mem[mem[544] + 544]
        if mem[mem[544] + 544] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + ceil32(ceil32(mem[mem[544] + 544])) + 545 > test266151307() or ceil32(ceil32(mem[mem[544] + 544])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[544] + 544])) + 545
        mem[ceil32(return_data.size) + 544] = mem[mem[544] + 544]
        require _15 + _17 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 576 len ceil32(_17)] = mem[_15 + 576 len ceil32(_17)]
        if ceil32(_17) <= _17:
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
            mem[ceil32(return_data.size) + _17 + 576] = 0
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
        if stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
            revert with 'NH{q', 34
        if mem[ceil32(return_data.size) + 544]:
            stor[sha3((13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)][].field_0 = Array(len=mem[ceil32(return_data.size) + 544], data=mem[ceil32(return_data.size) + 576 len mem[ceil32(return_data.size) + 544]])
        else:
            stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 = 0
            idx = 0
            while stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 + 31 / 32 > idx:
                stor[idx + sha3((13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * stor1[arg1].field_256) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
            revert with 'NH{q', 34
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
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024 != 1:
        revert with 0, 'This contract was paused!'
    if block.timestamp < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512:
        revert with 'NH{q', 17
    if block.timestamp - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512 < stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816:
        revert with 0, 'Redeem Interval Error!'
    if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280 and block.timestamp - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512 > -1 / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280:
        revert with 'NH{q', 17
    if not stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1536:
        revert with 'NH{q', 18
    if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024:
        revert with 'NH{q', 17
    if (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1536 <= stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024:
        require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        staticcall stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1536:
            revert with 0, 'There is no enough token on this contract.'
        require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        call stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1536
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024 > -((block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1536) - 1:
            revert with 'NH{q', 17
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024 += (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1536
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512 = block.timestamp
        if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 < (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1536:
            revert with 'NH{q', 17
        stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 -= (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1536
    else:
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024:
            revert with 'NH{q', 17
        require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        staticcall stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024:
            revert with 0, 'There is no enough token on this contract.'
        require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
        call stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024 > -stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280 + stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024 - 1:
            revert with 'NH{q', 17
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024 = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280
        stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_512 = block.timestamp
        if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024:
            revert with 'NH{q', 17
        stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 = stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280 + stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024
    if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1024 == stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_1280:
        if not stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304:
            revert with 'NH{q', 17
        stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][arg2].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304--
    emit 0xdd2d8631: arg1, arg2, msg.sender, block.timestamp
    return 1
}

function redeemAll(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    mem[0] = msg.sender
    mem[32] = (4 * arg1) + sha3(1) + 3
    idx = 0
    while idx < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)].field_0:
        if arg1 >= stor1.length:
            revert with 'NH{q', 50
        mem[32] = (4 * arg1) + sha3(1) + 3
        if idx >= stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if arg1 >= stor1.length:
            revert with 'NH{q', 50
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768 >= stor1[arg1].field_256:
            revert with 'NH{q', 50
        mem[0] = (4 * arg1) + sha3(1) + 1
        if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024 != 1:
            revert with 0, 'This contract was paused!'
        if block.timestamp < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512:
            revert with 'NH{q', 17
        if block.timestamp - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 < stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816:
            revert with 0, 'Redeem Interval Error!'
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280 and block.timestamp - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 > -1 / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280:
            revert with 'NH{q', 17
        if not stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1536:
            revert with 'NH{q', 18
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024:
            revert with 'NH{q', 17
        if (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1536 <= stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
            staticcall stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_56] == mem[_56]
            if mem[_56] < (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1536:
                revert with 0, 'There is no enough token on this contract.'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1536
            require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
            call stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1536
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_67] == bool(mem[_67])
            if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024 > -((block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1536) - 1:
                revert with 'NH{q', 17
            stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024 += (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1536
            stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 = block.timestamp
            if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 < (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1536:
                revert with 'NH{q', 17
            stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 -= (block.timestamp * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) - (stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280) / stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1536
        else:
            if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
            staticcall stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_59] == mem[_59]
            if mem[_59] < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024:
                revert with 0, 'There is no enough token on this contract.'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024
            require ext_code.size(stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256)
            call stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_71] == bool(mem[_71])
            if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024 > -stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280 + stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024 - 1:
                revert with 'NH{q', 17
            stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024 = stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280
            stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_512 = block.timestamp
            if stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 < stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024:
                revert with 'NH{q', 17
            stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 = stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 - stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280 + stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024
        if stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1024 == stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_1280:
            if not stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304:
                revert with 'NH{q', 17
            stor[(13 * stor[(4 * arg1) + ('name', 'stor1', 1) + 3][address(msg.sender)][idx].field_768) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304--
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = idx
        mem[mem[64] + 64] = msg.sender
        mem[mem[64] + 96] = block.timestamp
        emit 0xdd2d8631: arg1, idx, msg.sender, block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit 0xccc88ece: arg1, msg.sender, block.timestamp
}

function sub_fb29f001(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    mem[0] = 1
    mem[64] = (32 * stor1[arg1].field_256) + 128
    mem[96] = stor1[arg1].field_256
    s = 128
    idx = 0
    while idx < stor1[arg1].field_256:
        mem[0] = (4 * arg1) + sha3(1) + 1
        _43 = mem[64]
        mem[64] = mem[64] + 448
        mem[_43] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0
        mem[_43 + 32] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256
        if stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512:
            if stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                revert with 'NH{q', 34
            _46 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513) + 32
            mem[_46] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513
            if stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512:
                if stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                    revert with 'NH{q', 34
                if stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513:
                    if 31 >= stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513:
                        mem[_46 + 32] = 256 * stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_520
                    else:
                        mem[0] = (13 * idx) + sha3((4 * arg1) + sha3(1) + 1) + 2
                        mem[_46 + 32] = stor[sha3((13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0
                        t = _46 + 32
                        u = sha3(mem[0])
                        while _46 + stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_43 + 64] = _46
                mem[_43 + 96] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768
                mem[_43 + 128] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024
                mem[_43 + 160] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032
                mem[_43 + 192] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280
                mem[_43 + 224] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
                mem[_43 + 256] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792
                mem[_43 + 288] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048
                mem[_43 + 320] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304
                mem[_43 + 352] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560
                mem[_43 + 384] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816
                mem[_43 + 416] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072
                mem[s] = _43
                s = s + 32
                idx = idx + 1
                continue 
            if stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                revert with 'NH{q', 34
            if not stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513:
                mem[_43 + 64] = _46
                mem[_43 + 96] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768
                mem[_43 + 128] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024
                mem[_43 + 160] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032
                mem[_43 + 192] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280
                mem[_43 + 224] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
                mem[_43 + 256] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792
                mem[_43 + 288] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048
                mem[_43 + 320] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304
                mem[_43 + 352] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560
                mem[_43 + 384] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816
                mem[_43 + 416] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072
                mem[s] = _43
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513:
                mem[_46 + 32] = 256 * stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_520
                mem[_43 + 64] = _46
                mem[_43 + 96] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768
                mem[_43 + 128] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024
                mem[_43 + 160] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032
                mem[_43 + 192] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280
                mem[_43 + 224] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
                mem[_43 + 256] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792
                mem[_43 + 288] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048
                mem[_43 + 320] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304
                mem[_43 + 352] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560
                mem[_43 + 384] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816
                mem[_43 + 416] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072
                mem[s] = _43
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (13 * idx) + sha3((4 * arg1) + sha3(1) + 1) + 2
            mem[_46 + 32] = stor[sha3((13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0
            t = _46 + 32
            u = sha3(mem[0])
            while _46 + stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_43 + 64] = _46
            mem[_43 + 96] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768
            mem[_43 + 128] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024
            mem[_43 + 160] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032
            mem[_43 + 192] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280
            mem[_43 + 224] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
            mem[_43 + 256] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792
            mem[_43 + 288] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048
            mem[_43 + 320] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304
            mem[_43 + 352] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560
            mem[_43 + 384] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816
            mem[_43 + 416] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072
            mem[t] = _43
            t = t + 32
            u = u + 1
            continue 
        if stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
            revert with 'NH{q', 34
        _47 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513) + 32
        mem[_47] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513
        if stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512:
            if stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                revert with 'NH{q', 34
            if not stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513:
                mem[_43 + 64] = _47
                mem[_43 + 96] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768
                mem[_43 + 128] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024
                mem[_43 + 160] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032
                mem[_43 + 192] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280
                mem[_43 + 224] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
                mem[_43 + 256] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792
                mem[_43 + 288] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048
                mem[_43 + 320] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304
                mem[_43 + 352] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560
                mem[_43 + 384] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816
                mem[_43 + 416] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072
                mem[s] = _43
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513:
                mem[_47 + 32] = 256 * stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_520
                mem[_43 + 64] = _47
                mem[_43 + 96] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768
                mem[_43 + 128] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024
                mem[_43 + 160] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032
                mem[_43 + 192] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280
                mem[_43 + 224] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
                mem[_43 + 256] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792
                mem[_43 + 288] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048
                mem[_43 + 320] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304
                mem[_43 + 352] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560
                mem[_43 + 384] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816
                mem[_43 + 416] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072
                mem[s] = _43
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (13 * idx) + sha3((4 * arg1) + sha3(1) + 1) + 2
            mem[_47 + 32] = stor[sha3((13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0
            t = _47 + 32
            u = sha3(mem[0])
            while _47 + stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_43 + 64] = _47
            mem[_43 + 96] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768
            mem[_43 + 128] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024
            mem[_43 + 160] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032
            mem[_43 + 192] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280
            mem[_43 + 224] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
            mem[_43 + 256] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792
            mem[_43 + 288] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048
            mem[_43 + 320] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304
            mem[_43 + 352] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560
            mem[_43 + 384] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816
            mem[_43 + 416] = stor[(13 * u) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072
            mem[t] = _43
            t = t + 32
            u = u + 1
            continue 
        if stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
            revert with 'NH{q', 34
        if stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513:
            if 31 >= stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513:
                mem[_47 + 32] = 256 * stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_520
            else:
                mem[0] = (13 * idx) + sha3((4 * arg1) + sha3(1) + 1) + 2
                mem[_47 + 32] = stor[sha3((13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0
                t = _47 + 32
                u = sha3(mem[0])
                while _47 + stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_43 + 64] = _47
        mem[_43 + 96] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768
        mem[_43 + 128] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024
        mem[_43 + 160] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032
        mem[_43 + 192] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280
        mem[_43 + 224] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536
        mem[_43 + 256] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792
        mem[_43 + 288] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048
        mem[_43 + 320] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304
        mem[_43 + 352] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560
        mem[_43 + 384] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816
        mem[_43 + 416] = stor[(13 * idx) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072
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
        _85 = mem[_81 + 64]
        mem[t + 64] = 448
        _86 = mem[_85]
        mem[t + 448] = mem[_85]
        v = 0
        while v < _86:
            mem[t + v + 480] = mem[_85 + v + 32]
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
        t = t + ceil32(_86) + 480
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_08f7d50c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if owner == msg.sender:
        if arg2 >= stor1[arg1].field_256:
            revert with 'NH{q', 50
        stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = address(arg3)
        if arg1 >= stor1.length:
            revert with 'NH{q', 50
        if arg2 >= stor1[arg1].field_256:
            revert with 'NH{q', 50
        stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256 = address(arg3)
        mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _17 = mem[96]
        require mem[96] <= test266151307()
        require mem[96] + 127 < return_data.size + 96
        _21 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _21
        require _17 + _21 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_21)] = mem[_17 + 128 len ceil32(_21)]
        if ceil32(_21) <= _21:
            if arg1 >= stor1.length:
                revert with 'NH{q', 50
            if arg2 >= stor1[arg1].field_256:
                revert with 'NH{q', 50
            if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512:
                if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                    revert with 'NH{q', 34
                mem[0] = (13 * arg2) + sha3((4 * arg1) + sha3(1) + 1) + 2
                if _21:
                    stor[sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)][].field_0 = Array(len=_21, data=mem[ceil32(return_data.size) + 128 len _21])
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2813 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2813] == mem[_2813 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_2813 + 31 len 1]
                else:
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 = 0
                    idx = 0
                    while stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 + 31 / 32 > idx:
                        stor[idx + sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1951 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1951] == mem[_1951 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_1951 + 31 len 1]
            else:
                if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                    revert with 'NH{q', 34
                mem[0] = (13 * arg2) + sha3((4 * arg1) + sha3(1) + 1) + 2
                if _21:
                    stor[sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)][].field_0 = Array(len=_21, data=mem[ceil32(return_data.size) + 128 len _21])
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2814 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2814] == mem[_2814 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_2814 + 31 len 1]
                else:
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 = 0
                    idx = 0
                    while stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 + 31 / 32 > idx:
                        stor[idx + sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1954 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1954] == mem[_1954 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_1954 + 31 len 1]
        else:
            mem[ceil32(return_data.size) + _21 + 128] = 0
            if arg1 >= stor1.length:
                revert with 'NH{q', 50
            if arg2 >= stor1[arg1].field_256:
                revert with 'NH{q', 50
            if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512:
                if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                    revert with 'NH{q', 34
                mem[0] = (13 * arg2) + sha3((4 * arg1) + sha3(1) + 1) + 2
                if _21:
                    stor[sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)][].field_0 = Array(len=_21, data=mem[ceil32(return_data.size) + 128 len _21])
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2815 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2815] == mem[_2815 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_2815 + 31 len 1]
                else:
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 = 0
                    idx = 0
                    while stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 + 31 / 32 > idx:
                        stor[idx + sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1957 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1957] == mem[_1957 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_1957 + 31 len 1]
            else:
                if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                    revert with 'NH{q', 34
                mem[0] = (13 * arg2) + sha3((4 * arg1) + sha3(1) + 1) + 2
                if _21:
                    stor[sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)][].field_0 = Array(len=_21, data=mem[ceil32(return_data.size) + 128 len _21])
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2816 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2816] == mem[_2816 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_2816 + 31 len 1]
                else:
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 = 0
                    idx = 0
                    while stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 + 31 / 32 > idx:
                        stor[idx + sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1960 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1960] == mem[_1960 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_1960 + 31 len 1]
    else:
        mem[32] = (4 * arg1) + sha3(1) + 2
        if not stor[(4 * arg1) + ('name', 'stor1', 1) + 2][address(msg.sender)].field_0:
            revert with 0, 'You have no permission.'
        if arg1 >= stor1.length:
            revert with 'NH{q', 50
        if arg2 >= stor1[arg1].field_256:
            revert with 'NH{q', 50
        stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = address(arg3)
        if arg1 >= stor1.length:
            revert with 'NH{q', 50
        if arg2 >= stor1[arg1].field_256:
            revert with 'NH{q', 50
        stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256 = address(arg3)
        mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _19 = mem[96]
        require mem[96] <= test266151307()
        require mem[96] + 127 < return_data.size + 96
        _22 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _22
        require _19 + _22 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_22)] = mem[_19 + 128 len ceil32(_22)]
        if ceil32(_22) <= _22:
            if arg1 >= stor1.length:
                revert with 'NH{q', 50
            if arg2 >= stor1[arg1].field_256:
                revert with 'NH{q', 50
            if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512:
                if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                    revert with 'NH{q', 34
                mem[0] = (13 * arg2) + sha3((4 * arg1) + sha3(1) + 1) + 2
                if _22:
                    stor[sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)][].field_0 = Array(len=_22, data=mem[ceil32(return_data.size) + 128 len _22])
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2817 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2817] == mem[_2817 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_2817 + 31 len 1]
                else:
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 = 0
                    idx = 0
                    while stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 + 31 / 32 > idx:
                        stor[idx + sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1963 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1963] == mem[_1963 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_1963 + 31 len 1]
            else:
                if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                    revert with 'NH{q', 34
                mem[0] = (13 * arg2) + sha3((4 * arg1) + sha3(1) + 1) + 2
                if _22:
                    stor[sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)][].field_0 = Array(len=_22, data=mem[ceil32(return_data.size) + 128 len _22])
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2818 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2818] == mem[_2818 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_2818 + 31 len 1]
                else:
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 = 0
                    idx = 0
                    while stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 + 31 / 32 > idx:
                        stor[idx + sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1966 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1966] == mem[_1966 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_1966 + 31 len 1]
        else:
            mem[ceil32(return_data.size) + _22 + 128] = 0
            if arg1 >= stor1.length:
                revert with 'NH{q', 50
            if arg2 >= stor1[arg1].field_256:
                revert with 'NH{q', 50
            if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512:
                if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                    revert with 'NH{q', 34
                mem[0] = (13 * arg2) + sha3((4 * arg1) + sha3(1) + 1) + 2
                if _22:
                    stor[sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)][].field_0 = Array(len=_22, data=mem[ceil32(return_data.size) + 128 len _22])
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2819 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2819] == mem[_2819 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_2819 + 31 len 1]
                else:
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 = 0
                    idx = 0
                    while stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 + 31 / 32 > idx:
                        stor[idx + sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1969 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1969] == mem[_1969 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_1969 + 31 len 1]
            else:
                if stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 == stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 < 32:
                    revert with 'NH{q', 34
                mem[0] = (13 * arg2) + sha3((4 * arg1) + sha3(1) + 1) + 2
                if _22:
                    stor[sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)][].field_0 = Array(len=_22, data=mem[ceil32(return_data.size) + 128 len _22])
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2820 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2820] == mem[_2820 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_2820 + 31 len 1]
                else:
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_512 = 0
                    idx = 0
                    while stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_513 + 31 / 32 > idx:
                        stor[idx + sha3((13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1) + 2)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1972 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1972] == mem[_1972 + 31 len 1]
                    if arg1 >= stor1.length:
                        revert with 'NH{q', 50
                    if arg2 >= stor1[arg1].field_256:
                        revert with 'NH{q', 50
                    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_768 = mem[_1972 + 31 len 1]
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_776 = 0
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2048 = 0
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2304 = 0
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2560 = 0
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1032 = 0
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1280 = 0
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1024 = 1
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_3072 = 720 * 24 * 3600
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_2816 = 24 * 3600
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1536 = 0
    if arg1 >= stor1.length:
        revert with 'NH{q', 50
    if arg2 >= stor1[arg1].field_256:
        revert with 'NH{q', 50
    stor[(13 * arg2) + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_1792 = 0
    emit 0xe4782b39: arg1, arg2, address(arg3), msg.sender, block.timestamp
}



}
