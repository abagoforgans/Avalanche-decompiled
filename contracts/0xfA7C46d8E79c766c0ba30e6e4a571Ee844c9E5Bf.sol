contract main {




// =====================  Runtime code  =====================


#
#  - sub_3e095632(?)
#  - attack(uint256 arg1, uint256 arg2, uint256 arg3)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address landAddress;
address sub_c69e4b6eAddress;
address sub_dc7d961eAddress;
address sub_ef929f92Address;
address sub_fad73632Address;
uint256 sub_881dc1a0;
uint256 sub_2333500d;
uint256 sub_304ed0cb;
uint256 sub_d1c7871f;
mapping of struct stor110;
array of struct stor111;
array of struct stor112;
mapping of uint256 capital;
array of uint256 stor114;
mapping of uint256 stor115;

function sub_2333500d(?) payable {
    return sub_2333500d
}

function getCapital(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return capital[arg1]
}

function sub_304ed0cb(?) payable {
    return sub_304ed0cb
}

function sub_393f2686(?) payable {
    return stor114.length
}

function sub_881dc1a0(?) payable {
    return sub_881dc1a0
}

function land() payable {
    return landAddress
}

function owner() payable {
    return owner
}

function sub_c69e4b6e(?) payable {
    return sub_c69e4b6eAddress
}

function sub_d1c7871f(?) payable {
    return sub_d1c7871f
}

function sub_dc7d961e(?) payable {
    return sub_dc7d961eAddress
}

function sub_ef929f92(?) payable {
    return sub_ef929f92Address
}

function sub_fad73632(?) payable {
    return sub_fad73632Address
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

function sub_4337b19b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor110[arg1].field_768:
        return 0
    if stor110[arg1].field_768 > -stor110[arg1].field_1024 - 1:
        revert with 'NH{q', 17
    return (stor110[arg1].field_768 + stor110[arg1].field_1024)
}

function sub_a2a63f4b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor110[arg1].field_768:
        return 1
    if stor110[arg1].field_768 > -stor110[arg1].field_1024 - 1:
        revert with 'NH{q', 17
    return block.timestamp >= stor110[arg1].field_768 + stor110[arg1].field_1024
}

function sub_7abb1d17(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and sub_881dc1a0 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 * sub_881dc1a0 and arg2 > -1 / arg1 * sub_881dc1a0:
        revert with 'NH{q', 17
    return (arg1 * sub_881dc1a0 * arg2)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xe08307600000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x4e2312e000000000000000000000000000000000000000000000000000000000)
}

function sub_c149abbf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor110[arg1].field_768:
        revert with 0, 'Not at war.'
    return stor110[arg1].field_0, 
           stor110[arg1].field_256,
           stor110[arg1].field_512,
           stor110[arg1].field_768,
           stor110[arg1].field_1024,
           arg1
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

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_1f4eb0d6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor112[arg1].field_0:
        mem[128] = stor112[arg1].field_0
        idx = 128
        s = 0
        while (32 * stor112[arg1].field_0) + 96 > idx:
            mem[idx + 32] = stor112[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor112[arg1].field_0, data=mem[128 len 32 * stor112[arg1].field_0])
    mem[(32 * stor112[arg1].field_0) + 128] = 32
    mem[(32 * stor112[arg1].field_0) + 160] = stor112[arg1].field_0
    mem[(32 * stor112[arg1].field_0) + 192 len 32 * stor112[arg1].field_0] = mem[128 len 32 * stor112[arg1].field_0]
    return memory
      from (32 * stor112[arg1].field_0) + 128
       len (96 * stor112[arg1].field_0) + 64
}

function sub_20ac553c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor111[arg1].field_0:
        mem[128] = stor111[arg1].field_0
        idx = 128
        s = 0
        while (32 * stor111[arg1].field_0) + 96 > idx:
            mem[idx + 32] = stor111[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor111[arg1].field_0, data=mem[128 len 32 * stor111[arg1].field_0])
    mem[(32 * stor111[arg1].field_0) + 128] = 32
    mem[(32 * stor111[arg1].field_0) + 160] = stor111[arg1].field_0
    mem[(32 * stor111[arg1].field_0) + 192 len 32 * stor111[arg1].field_0] = mem[128 len 32 * stor111[arg1].field_0]
    return memory
      from (32 * stor111[arg1].field_0) + 128
       len (96 * stor111[arg1].field_0) + 64
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_2333500d = 2
    sub_304ed0cb = arg7
    sub_d1c7871f = arg8
    sub_881dc1a0 = arg6
    landAddress = arg1
    sub_c69e4b6eAddress = arg2
    sub_dc7d961eAddress = arg3
    sub_ef929f92Address = arg4
    sub_fad73632Address = arg5
}

function sub_1369ab9b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xefd2944c00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_ef929f92Address)
    staticcall sub_ef929f92Address.0xefd2944c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < _5:
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        if mem[(32 * idx + 1) + ceil32(return_data.size) + 128] == 4:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            require ext_code.size(sub_fad73632Address)
            staticcall sub_fad73632Address.0x3aa4da72 with:
                    gas gas_remaining wei
                   args arg1, mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _42 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require _42 + 31 < _42 + return_data.size
            _43 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 96
            require 96 <= return_data.size
            s = 0
            t = _42
            u = _43
            while s < 3:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if mem[_43] > -mem[_43 + 32] - 1:
                revert with 'NH{q', 17
            if block.timestamp <= mem[_43] + mem[_43 + 32]:
                if 1 > -mem[_43 + 64] - 1:
                    revert with 'NH{q', 17
        if idx > -3:
            revert with 'NH{q', 17
        idx = idx + 2
        continue 
    return arg1, 1
}

function sub_4aaaba58(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(landAddress)
    staticcall landAddress.0x5944bc02 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(landAddress)
    staticcall landAddress.0x5944bc02 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(landAddress)
    staticcall landAddress.0x5944bc02 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(landAddress)
    staticcall landAddress.0x5944bc02 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg1 % ext_call.return_data[0] <= arg2 % ext_call.return_data[0]:
        if arg2 % ext_call.return_data[0] < arg1 % ext_call.return_data[0]:
            revert with 'NH{q', 17
        if arg1 / ext_call.return_data[0] <= arg2 / ext_call.return_data[0]:
            if arg2 / ext_call.return_data[0] < arg1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if (arg2 % ext_call.return_data[0]) - (arg1 % ext_call.return_data[0]) <= (arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]):
                return ((arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]))
        else:
            if arg1 / ext_call.return_data[0] < arg2 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if (arg2 % ext_call.return_data[0]) - (arg1 % ext_call.return_data[0]) <= (arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]):
                return ((arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]))
        return ((arg2 % ext_call.return_data[0]) - (arg1 % ext_call.return_data[0]))
    if arg1 % ext_call.return_data[0] < arg2 % ext_call.return_data[0]:
        revert with 'NH{q', 17
    if arg1 / ext_call.return_data[0] <= arg2 / ext_call.return_data[0]:
        if arg2 / ext_call.return_data[0] < arg1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if (arg1 % ext_call.return_data[0]) - (arg2 % ext_call.return_data[0]) <= (arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]):
            return ((arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]))
    else:
        if arg1 / ext_call.return_data[0] < arg2 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if (arg1 % ext_call.return_data[0]) - (arg2 % ext_call.return_data[0]) <= (arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]):
            return ((arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]))
    return ((arg1 % ext_call.return_data[0]) - (arg2 % ext_call.return_data[0]))
}

function sub_7ada4181(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 < 0:
        revert with 0, 'Position is wrong.'
    if arg2 <= 0:
        revert with 0, 'Position is wrong.'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > stor114.length:
        revert with 0, 'Position is wrong.'
    if arg2 > test266151307():
        revert with 'NH{q', 65
    if arg2 > test266151307():
        revert with 'NH{q', 65
    if not arg2:
        if not arg2:
            if arg2 > -arg1 - 1:
                revert with 'NH{q', 17
            if var97002 < arg2 + arg1:
                if var103001 >= stor114.length:
                    revert with 'NH{q', 50
                if var119003 < arg1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(64 * arg2) + 160] = 64
                mem[(64 * arg2) + 224] = arg2
                mem[(64 * arg2) + 256 len 32 * arg2] = mem[128 len 32 * arg2]
                mem[(64 * arg2) + 192] = (32 * arg2) + 96
                mem[(98 * arg2) + 256] = arg2
                mem[(98 * arg2) + 288 len 32 * arg2] = mem[(32 * arg2) + 160 len 32 * arg2]
                return memory
                  from (64 * arg2) + 160
                   len (194 * arg2) + 128
        else:
            mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
            if arg2 > -arg1 - 1:
                revert with 'NH{q', 17
            if var98002 < arg2 + arg1:
                if var104001 >= stor114.length:
                    revert with 'NH{q', 50
                if var120003 < arg1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(64 * arg2) + 160] = 64
                mem[(64 * arg2) + 224] = arg2
                mem[(64 * arg2) + 256 len 32 * arg2] = mem[128 len 32 * arg2]
                mem[(64 * arg2) + 192] = (32 * arg2) + 96
                mem[(98 * arg2) + 256] = arg2
                mem[(98 * arg2) + 288 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                return memory
                  from (64 * arg2) + 160
                   len (194 * arg2) + 128
    else:
        if not arg2:
            if arg2 > -arg1 - 1:
                revert with 'NH{q', 17
            if var98002 < arg2 + arg1:
                if var104001 >= stor114.length:
                    revert with 'NH{q', 50
                if var120003 < arg1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(64 * arg2) + 160] = 64
                mem[(64 * arg2) + 224] = arg2
                mem[(64 * arg2) + 256 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                mem[(64 * arg2) + 192] = (32 * arg2) + 96
                mem[(98 * arg2) + 256] = arg2
                mem[(98 * arg2) + 288 len 32 * arg2] = mem[(32 * arg2) + 160 len 32 * arg2]
                return memory
                  from (64 * arg2) + 160
                   len (194 * arg2) + 128
        else:
            mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
            if arg2 > -arg1 - 1:
                revert with 'NH{q', 17
            if var99002 < arg2 + arg1:
                if var105001 >= stor114.length:
                    revert with 'NH{q', 50
                if var121003 < arg1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(64 * arg2) + 160] = 64
                mem[(64 * arg2) + 224] = arg2
                mem[(64 * arg2) + 256 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                mem[(64 * arg2) + 192] = (32 * arg2) + 96
                mem[(98 * arg2) + 256] = arg2
                mem[(98 * arg2) + 288 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
                return memory
                  from (64 * arg2) + 160
                   len (194 * arg2) + 128
}

function sub_1b870fc5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor110[arg1].field_768:
        revert with 0, 'Not at war.'
    if stor110[arg1].field_768:
        if stor110[arg1].field_768 > -stor110[arg1].field_1024 - 1:
            revert with 'NH{q', 17
        if block.timestamp < stor110[arg1].field_768 + stor110[arg1].field_1024:
            revert with 0, 'Not ended'
    require ext_code.size(landAddress)
    staticcall landAddress.0xd3823f2 with:
            gas gas_remaining wei
           args stor110[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require ext_code.size(landAddress)
        staticcall landAddress.0x6352211e with:
                gas gas_remaining wei
               args stor110[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        capital[arg1] = stor110[arg1].field_0
        if not stor112[stor110[arg1].field_0][1][arg1].field_0:
            stor112[stor110[arg1].field_0].field_0++
            stor112[stor110[arg1].field_0][stor112[stor110[arg1].field_0].field_0].field_0 = arg1
            stor112[stor110[arg1].field_0][1][arg1].field_0 = stor112[stor110[arg1].field_0].field_0
        require ext_code.size(landAddress)
        call landAddress.0x2bb9c294 with:
             gas gas_remaining wei
            args arg1, stor110[arg1].field_0
    else:
        if not capital[stor110[arg1].field_0]:
            revert with 0, 'Error'
        require ext_code.size(landAddress)
        staticcall landAddress.0x6352211e with:
                gas gas_remaining wei
               args capital[stor110[arg1].field_0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        capital[arg1] = capital[stor110[arg1].field_0]
        if not stor112[stor113[stor110[arg1].field_0]][1][arg1].field_0:
            stor112[stor113[stor110[arg1].field_0]].field_0++
            stor112[stor113[stor110[arg1].field_0]][stor112[stor113[stor110[arg1].field_0]].field_0].field_0 = arg1
            stor112[stor113[stor110[arg1].field_0]][1][arg1].field_0 = stor112[stor113[stor110[arg1].field_0]].field_0
        require ext_code.size(landAddress)
        call landAddress.0x2bb9c294 with:
             gas gas_remaining wei
            args arg1, capital[stor110[arg1].field_0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor115[arg1]:
        if stor115[arg1] < 1:
            revert with 'NH{q', 17
        if stor114.length < 1:
            revert with 'NH{q', 17
        if stor114.length - 1 != stor115[arg1] - 1:
            if stor114.length - 1 >= stor114.length:
                revert with 'NH{q', 50
            if stor115[arg1] - 1 >= stor114.length:
                revert with 'NH{q', 50
            stor114[stor115[arg1]] = stor114[stor114.length]
            stor115[stor114[stor114.length]] = stor115[arg1]
        if not stor114.length:
            revert with 'NH{q', 49
        stor114[stor114.length] = 0
        stor114.length--
        stor115[arg1] = 0
    require ext_code.size(landAddress)
    staticcall landAddress.0x29560980 with:
            gas gas_remaining wei
           args stor110[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if stor111[ext_call.return_data[0]][1][arg1].field_0:
        if stor111[ext_call.return_data[0]][1][arg1].field_0 < 1:
            revert with 'NH{q', 17
        if stor111[ext_call.return_data[0]].field_0 < 1:
            revert with 'NH{q', 17
        if stor111[ext_call.return_data[0]].field_0 - 1 != stor111[ext_call.return_data[0]][1][arg1].field_0 - 1:
            if stor111[ext_call.return_data[0]].field_0 - 1 >= stor111[ext_call.return_data[0]].field_0:
                revert with 'NH{q', 50
            if stor111[ext_call.return_data[0]][1][arg1].field_0 - 1 >= stor111[ext_call.return_data[0]].field_0:
                revert with 'NH{q', 50
            stor111[ext_call.return_data[0]][stor111[ext_call.return_data[0]][1][arg1].field_0].field_0 = stor111[ext_call.return_data[0]][stor111[ext_call.return_data[0]].field_0].field_0
            stor111[ext_call.return_data[0]][1][stor111[ext_call.return_data[0]][stor111[ext_call.return_data[0]].field_0].field_0].field_0 = stor111[ext_call.return_data[0]][1][arg1].field_0
        if not stor111[ext_call.return_data[0]].field_0:
            revert with 'NH{q', 49
        stor111[ext_call.return_data[0]][stor111[ext_call.return_data[0]].field_0].field_0 = 0
        stor111[ext_call.return_data[0]].field_0--
        stor111[ext_call.return_data[0]][1][arg1].field_0 = 0
    stor110[arg1].field_512 = 0
    stor110[arg1].field_768 = 0
    stor110[arg1].field_0 = 0
    if stor110[arg1].field_512 > 0:
        require ext_code.size(sub_dc7d961eAddress)
        call sub_dc7d961eAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0]), 1, stor110[arg1].field_512, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x3cfead75: msg.sender, arg1
}

function sub_0d9c98b6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(landAddress)
    staticcall landAddress.0xbb181878 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not occupier of this land.'
    if not stor110[arg2].field_768:
        revert with 0, 'Not at war.'
    if arg3 <= 0:
        revert with 0, 'Worrior can not be 0.'
    if not stor110[arg2].field_768:
        revert with 0, 'The war is end.'
    if stor110[arg2].field_768 > -stor110[arg2].field_1024 - 1:
        revert with 'NH{q', 17
    if block.timestamp >= stor110[arg2].field_768 + stor110[arg2].field_1024:
        revert with 0, 'The war is end.'
    require ext_code.size(landAddress)
    staticcall landAddress.0x5944bc02 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(landAddress)
    staticcall landAddress.0x5944bc02 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(landAddress)
    staticcall landAddress.0x5944bc02 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(landAddress)
    staticcall landAddress.0x5944bc02 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg1 % ext_call.return_data[0] <= arg2 % ext_call.return_data[0]:
        if arg2 % ext_call.return_data[0] < arg1 % ext_call.return_data[0]:
            revert with 'NH{q', 17
        if arg1 / ext_call.return_data[0] <= arg2 / ext_call.return_data[0]:
            if arg2 / ext_call.return_data[0] < arg1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if (arg2 % ext_call.return_data[0]) - (arg1 % ext_call.return_data[0]) <= (arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]):
                if (arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]) > sub_2333500d:
                    revert with 0, 'Too far.'
                require ext_code.size(sub_dc7d961eAddress)
                staticcall sub_dc7d961eAddress.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg3:
                    revert with 0, 'Worrior is not enough.'
                if not stor110[arg2].field_768:
                    revert with 0, 'This land is not at war.'
                if stor110[arg2].field_0 != arg1:
                    revert with 0, 'You are not attacker'
                if (arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]) and sub_881dc1a0 > -1 / (arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (arg2 / ext_call.return_data[0] * sub_881dc1a0) - (arg1 / ext_call.return_data[0] * sub_881dc1a0) and arg3 > -1 / (arg2 / ext_call.return_data[0] * sub_881dc1a0) - (arg1 / ext_call.return_data[0] * sub_881dc1a0):
                    revert with 'NH{q', 17
                require ext_code.size(sub_c69e4b6eAddress)
                call sub_c69e4b6eAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, (arg2 / ext_call.return_data[0] * sub_881dc1a0 * arg3) - (arg1 / ext_call.return_data[0] * sub_881dc1a0 * arg3)
            else:
                if (arg2 % ext_call.return_data[0]) - (arg1 % ext_call.return_data[0]) > sub_2333500d:
                    revert with 0, 'Too far.'
                require ext_code.size(sub_dc7d961eAddress)
                staticcall sub_dc7d961eAddress.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg3:
                    revert with 0, 'Worrior is not enough.'
                if not stor110[arg2].field_768:
                    revert with 0, 'This land is not at war.'
                if stor110[arg2].field_0 != arg1:
                    revert with 0, 'You are not attacker'
                if (arg2 % ext_call.return_data[0]) - (arg1 % ext_call.return_data[0]) and sub_881dc1a0 > -1 / (arg2 % ext_call.return_data[0]) - (arg1 % ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (arg2 % ext_call.return_data[0] * sub_881dc1a0) - (arg1 % ext_call.return_data[0] * sub_881dc1a0) and arg3 > -1 / (arg2 % ext_call.return_data[0] * sub_881dc1a0) - (arg1 % ext_call.return_data[0] * sub_881dc1a0):
                    revert with 'NH{q', 17
                require ext_code.size(sub_c69e4b6eAddress)
                call sub_c69e4b6eAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, (arg2 % ext_call.return_data[0] * sub_881dc1a0 * arg3) - (arg1 % ext_call.return_data[0] * sub_881dc1a0 * arg3)
        else:
            if arg1 / ext_call.return_data[0] < arg2 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if (arg2 % ext_call.return_data[0]) - (arg1 % ext_call.return_data[0]) <= (arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]):
                if (arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]) > sub_2333500d:
                    revert with 0, 'Too far.'
                require ext_code.size(sub_dc7d961eAddress)
                staticcall sub_dc7d961eAddress.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg3:
                    revert with 0, 'Worrior is not enough.'
                if not stor110[arg2].field_768:
                    revert with 0, 'This land is not at war.'
                if stor110[arg2].field_0 != arg1:
                    revert with 0, 'You are not attacker'
                if (arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]) and sub_881dc1a0 > -1 / (arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (arg1 / ext_call.return_data[0] * sub_881dc1a0) - (arg2 / ext_call.return_data[0] * sub_881dc1a0) and arg3 > -1 / (arg1 / ext_call.return_data[0] * sub_881dc1a0) - (arg2 / ext_call.return_data[0] * sub_881dc1a0):
                    revert with 'NH{q', 17
                require ext_code.size(sub_c69e4b6eAddress)
                call sub_c69e4b6eAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, (arg1 / ext_call.return_data[0] * sub_881dc1a0 * arg3) - (arg2 / ext_call.return_data[0] * sub_881dc1a0 * arg3)
            else:
                if (arg2 % ext_call.return_data[0]) - (arg1 % ext_call.return_data[0]) > sub_2333500d:
                    revert with 0, 'Too far.'
                require ext_code.size(sub_dc7d961eAddress)
                staticcall sub_dc7d961eAddress.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg3:
                    revert with 0, 'Worrior is not enough.'
                if not stor110[arg2].field_768:
                    revert with 0, 'This land is not at war.'
                if stor110[arg2].field_0 != arg1:
                    revert with 0, 'You are not attacker'
                if (arg2 % ext_call.return_data[0]) - (arg1 % ext_call.return_data[0]) and sub_881dc1a0 > -1 / (arg2 % ext_call.return_data[0]) - (arg1 % ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (arg2 % ext_call.return_data[0] * sub_881dc1a0) - (arg1 % ext_call.return_data[0] * sub_881dc1a0) and arg3 > -1 / (arg2 % ext_call.return_data[0] * sub_881dc1a0) - (arg1 % ext_call.return_data[0] * sub_881dc1a0):
                    revert with 'NH{q', 17
                require ext_code.size(sub_c69e4b6eAddress)
                call sub_c69e4b6eAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, (arg2 % ext_call.return_data[0] * sub_881dc1a0 * arg3) - (arg1 % ext_call.return_data[0] * sub_881dc1a0 * arg3)
    else:
        if arg1 % ext_call.return_data[0] < arg2 % ext_call.return_data[0]:
            revert with 'NH{q', 17
        if arg1 / ext_call.return_data[0] <= arg2 / ext_call.return_data[0]:
            if arg2 / ext_call.return_data[0] < arg1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if (arg1 % ext_call.return_data[0]) - (arg2 % ext_call.return_data[0]) <= (arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]):
                if (arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]) > sub_2333500d:
                    revert with 0, 'Too far.'
                require ext_code.size(sub_dc7d961eAddress)
                staticcall sub_dc7d961eAddress.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg3:
                    revert with 0, 'Worrior is not enough.'
                if not stor110[arg2].field_768:
                    revert with 0, 'This land is not at war.'
                if stor110[arg2].field_0 != arg1:
                    revert with 0, 'You are not attacker'
                if (arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]) and sub_881dc1a0 > -1 / (arg2 / ext_call.return_data[0]) - (arg1 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (arg2 / ext_call.return_data[0] * sub_881dc1a0) - (arg1 / ext_call.return_data[0] * sub_881dc1a0) and arg3 > -1 / (arg2 / ext_call.return_data[0] * sub_881dc1a0) - (arg1 / ext_call.return_data[0] * sub_881dc1a0):
                    revert with 'NH{q', 17
                require ext_code.size(sub_c69e4b6eAddress)
                call sub_c69e4b6eAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, (arg2 / ext_call.return_data[0] * sub_881dc1a0 * arg3) - (arg1 / ext_call.return_data[0] * sub_881dc1a0 * arg3)
            else:
                if (arg1 % ext_call.return_data[0]) - (arg2 % ext_call.return_data[0]) > sub_2333500d:
                    revert with 0, 'Too far.'
                require ext_code.size(sub_dc7d961eAddress)
                staticcall sub_dc7d961eAddress.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg3:
                    revert with 0, 'Worrior is not enough.'
                if not stor110[arg2].field_768:
                    revert with 0, 'This land is not at war.'
                if stor110[arg2].field_0 != arg1:
                    revert with 0, 'You are not attacker'
                if (arg1 % ext_call.return_data[0]) - (arg2 % ext_call.return_data[0]) and sub_881dc1a0 > -1 / (arg1 % ext_call.return_data[0]) - (arg2 % ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (arg1 % ext_call.return_data[0] * sub_881dc1a0) - (arg2 % ext_call.return_data[0] * sub_881dc1a0) and arg3 > -1 / (arg1 % ext_call.return_data[0] * sub_881dc1a0) - (arg2 % ext_call.return_data[0] * sub_881dc1a0):
                    revert with 'NH{q', 17
                require ext_code.size(sub_c69e4b6eAddress)
                call sub_c69e4b6eAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, (arg1 % ext_call.return_data[0] * sub_881dc1a0 * arg3) - (arg2 % ext_call.return_data[0] * sub_881dc1a0 * arg3)
        else:
            if arg1 / ext_call.return_data[0] < arg2 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if (arg1 % ext_call.return_data[0]) - (arg2 % ext_call.return_data[0]) <= (arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]):
                if (arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]) > sub_2333500d:
                    revert with 0, 'Too far.'
                require ext_code.size(sub_dc7d961eAddress)
                staticcall sub_dc7d961eAddress.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg3:
                    revert with 0, 'Worrior is not enough.'
                if not stor110[arg2].field_768:
                    revert with 0, 'This land is not at war.'
                if stor110[arg2].field_0 != arg1:
                    revert with 0, 'You are not attacker'
                if (arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]) and sub_881dc1a0 > -1 / (arg1 / ext_call.return_data[0]) - (arg2 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (arg1 / ext_call.return_data[0] * sub_881dc1a0) - (arg2 / ext_call.return_data[0] * sub_881dc1a0) and arg3 > -1 / (arg1 / ext_call.return_data[0] * sub_881dc1a0) - (arg2 / ext_call.return_data[0] * sub_881dc1a0):
                    revert with 'NH{q', 17
                require ext_code.size(sub_c69e4b6eAddress)
                call sub_c69e4b6eAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, (arg1 / ext_call.return_data[0] * sub_881dc1a0 * arg3) - (arg2 / ext_call.return_data[0] * sub_881dc1a0 * arg3)
            else:
                if (arg1 % ext_call.return_data[0]) - (arg2 % ext_call.return_data[0]) > sub_2333500d:
                    revert with 0, 'Too far.'
                require ext_code.size(sub_dc7d961eAddress)
                staticcall sub_dc7d961eAddress.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg3:
                    revert with 0, 'Worrior is not enough.'
                if not stor110[arg2].field_768:
                    revert with 0, 'This land is not at war.'
                if stor110[arg2].field_0 != arg1:
                    revert with 0, 'You are not attacker'
                if (arg1 % ext_call.return_data[0]) - (arg2 % ext_call.return_data[0]) and sub_881dc1a0 > -1 / (arg1 % ext_call.return_data[0]) - (arg2 % ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (arg1 % ext_call.return_data[0] * sub_881dc1a0) - (arg2 % ext_call.return_data[0] * sub_881dc1a0) and arg3 > -1 / (arg1 % ext_call.return_data[0] * sub_881dc1a0) - (arg2 % ext_call.return_data[0] * sub_881dc1a0):
                    revert with 'NH{q', 17
                require ext_code.size(sub_c69e4b6eAddress)
                call sub_c69e4b6eAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, (arg1 % ext_call.return_data[0] * sub_881dc1a0 * arg3) - (arg2 % ext_call.return_data[0] * sub_881dc1a0 * arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor110[arg2].field_512 > -arg3 - 1:
        revert with 'NH{q', 17
    if stor110[arg2].field_768 > -stor110[arg2].field_1024 - 1:
        revert with 'NH{q', 17
    if stor110[arg2].field_768 + stor110[arg2].field_1024 < block.timestamp:
        revert with 'NH{q', 17
    if stor110[arg2].field_768 + stor110[arg2].field_1024 - block.timestamp <= 0:
        revert with 0, 'You can occupy this land.'
    stor110[arg2].field_512 += arg3
    require ext_code.size(sub_dc7d961eAddress)
    call sub_dc7d961eAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 1, arg3, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor110[arg2].field_768 + stor110[arg2].field_1024 - block.timestamp > sub_304ed0cb:
        if not stor110[arg2].field_512 + arg3:
            if stor110[arg2].field_768 > -sub_d1c7871f - 1:
                revert with 'NH{q', 17
            if stor110[arg2].field_768 + sub_d1c7871f < block.timestamp:
                revert with 'NH{q', 17
            if stor110[arg2].field_768 + sub_d1c7871f - block.timestamp >= sub_304ed0cb:
                stor110[arg2].field_1024 = sub_d1c7871f
            else:
                stor110[arg2].field_1024 = sub_304ed0cb
        else:
            if not stor110[arg2].field_512 + arg3:
                revert with 'NH{q', 18
            if sub_d1c7871f / stor110[arg2].field_512 + arg3 >= sub_304ed0cb:
                if stor110[arg2].field_768 > -(sub_d1c7871f / stor110[arg2].field_512 + arg3) - 1:
                    revert with 'NH{q', 17
                if stor110[arg2].field_768 + (sub_d1c7871f / stor110[arg2].field_512 + arg3) < block.timestamp:
                    revert with 'NH{q', 17
                if stor110[arg2].field_768 + (sub_d1c7871f / stor110[arg2].field_512 + arg3) - block.timestamp >= sub_304ed0cb:
                    stor110[arg2].field_1024 = sub_d1c7871f / stor110[arg2].field_512 + arg3
                else:
                    stor110[arg2].field_1024 = sub_304ed0cb
            else:
                if stor110[arg2].field_768 > -sub_304ed0cb - 1:
                    revert with 'NH{q', 17
                if stor110[arg2].field_768 + sub_304ed0cb < block.timestamp:
                    revert with 'NH{q', 17
                stor110[arg2].field_1024 = sub_304ed0cb
    emit 0x83e4cfa3: arg1, arg2, arg3, stor110[arg2].field_1024, msg.sender
}



}
