contract main {




// =====================  Runtime code  =====================


const totalAllocPoint = 1000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner; offset 16
uint256 stor0; offset 16
address new_owner;
uint256 sub_be18864e;
mapping of struct stor3;
array of address sub_539efd4b;
array of struct sub_a057af44;
address rewardTokenAddress;
address sub_08dd0faaAddress;
address pancakeRouterAddress;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of struct stor1546678032441257452667456735582814959992782782816731922691272282333561699761;

function sub_08dd0faa(?) payable {
    return sub_08dd0faaAddress
}

function new_owner() payable {
    return new_owner
}

function sub_539efd4b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_539efd4b.length
    return address(sub_539efd4b[arg1])
}

function owner() payable {
    return owner
}

function sub_a057af44(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a057af44.length
    return sub_a057af44[arg1].field_0, sub_a057af44[arg1].field_256, bool(sub_a057af44[arg1].field_416)
}

function sub_be18864e(?) payable {
    return sub_be18864e
}

function pancakeRouter() payable {
    return pancakeRouterAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'JaxOwnable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateOwner() payable {
    if new_owner != msg.sender:
        revert with 0, 'Only new owner'
    if block.timestamp < sub_be18864e:
        revert with 0, 'New admin is not unlocked yet'
    Mask(240, 0, stor0.field_16) = new_owner
    emit OwnershipTransferred(owner, new_owner);
    new_owner = 0
}

function setNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'JaxOwnable: caller is not the owner'
    if not arg1:
        revert with 0, 'New owner cannot be zero address'
    new_owner = arg1
    if 48 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    sub_be18864e = block.timestamp + (48 * 24 * 3600)
    emit 0x8a30e202: address(arg1), block.timestamp + (48 * 24 * 3600)
}

function sub_1466ef84(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Only non-zero address'
    staticcall sub_08dd0faaAddress.0x4d82df06 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only Governor can perform this operation.'
    rewardTokenAddress = address(arg1)
    emit 0x100c6995: address(arg1)
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'Only non-zero address'
    if not arg2:
        revert with 0, 'Only non-zero address'
    if not arg3:
        revert with 0, 'Only non-zero address'
    sub_08dd0faaAddress = arg1
    pancakeRouterAddress = arg2
    rewardTokenAddress = arg3
    Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_c8937d4b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0x4d82df06 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only Governor can perform this operation.'
    sub_539efd4b.length = 0
    mem[0] = 4
    idx = 0
    while sub_539efd4b.length > idx:
        uint256(sub_539efd4b[idx]) = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        sub_539efd4b.length++
        mem[0] = 4
        address(sub_539efd4b[sub_539efd4b.length]) = address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = pancakeRouterAddress
        mem[mem[64] + 36] = -1
        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pancakeRouterAddress, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == bool(mem[_31])
        if not mem[_31]:
            revert with 0, 'yield token pancake router approval failed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _26 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = ('cd', 4).length
    idx = 0
    s = mem[64] + 64
    t = cd[4] + 36
    while idx < ('cd', 4).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xa6917642: mem[mem[64] len _26 + (32 * ('cd', 4).length) + -mem[64] + 64]
}

function sub_64782f09(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0x4d82df06 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only Governor can perform this operation.'
    sub_a057af44.length = 0
    mem[0] = 5
    idx = 0
    while 2 * sub_a057af44.length > idx:
        sub_a057af44[idx].field_0 = 0
        sub_a057af44[idx].field_256 = 0
        idx = idx + 2
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require calldata.size + (-96 * idx) + -cd[4] - 36 >= 96
        _39 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_39] = cd[((96 * idx) + cd[4] + 36)]
        require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
        mem[_39 + 32] = cd[((96 * idx) + cd[4] + 68)]
        require cd[((96 * idx) + cd[4] + 100)] == bool(cd[((96 * idx) + cd[4] + 100)])
        mem[_39 + 64] = cd[((96 * idx) + cd[4] + 100)]
        if s > !cd[((96 * idx) + cd[4] + 36)]:
            revert with 0, 17
        sub_a057af44.length++
        mem[0] = 5
        stor36B6[stor5.length] = cd[((96 * idx) + cd[4] + 36)]
        stor36B6[stor5.length].field_0 = address(cd[((96 * idx) + cd[4] + 68)])
        stor36B6[stor5.length].field_160 = Mask(96, 0, bool(cd[((96 * idx) + cd[4] + 100)]))
        if cd[((96 * idx) + cd[4] + 100)]:
            mem[mem[64] + 4] = address(cd[((96 * idx) + cd[4] + 68)])
            mem[mem[64] + 36] = -1
            call rewardTokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((96 * idx) + cd[4] + 68)]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_48] == bool(mem[_48])
            if not mem[_48]:
                revert with 0, 'reward token yield approval failed)'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + cd[((96 * idx) + cd[4] + 36)]
        continue 
    if s != 1000:
        revert with 0, 'sum of alloc point should be 1000'
    _36 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = mem[64] + 64
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[t + 32] = address(cd[(s + 32)])
        require cd[(s + 64)] == bool(cd[(s + 64)])
        mem[t + 64] = bool(cd[(s + 64)])
        idx = idx + 1
        s = s + 96
        t = t + 96
        continue 
    emit 0x86cbdbc3: mem[mem[64] len _36 + (96 * ('cd', 4).length) + -mem[64] + 64]
}

function sub_487c3580(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0xa8d7bf4c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'Only Admin can perform this operation.'
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
        mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(return_data.size) + 96] = 0
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        mem[ceil32(return_data.size) + 96] = call.func_hash
        mem[ceil32(return_data.size) + 128] = 64
        mem[ceil32(return_data.size) + 160] = calldata.size
        mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
        emit 0x2a5b796b: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    else:
        if msg.sender == stor3[call.func_hash].field_320:
            if stor3[call.func_hash].field_480:
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                revert with 0, 17
            if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x1ccaf8ea: address(arg1), arg2
            stor3[call.func_hash].field_480 = 1
        else:
            stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(return_data.size) + 96] = 0
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            mem[ceil32(return_data.size) + 96] = call.func_hash
            mem[ceil32(return_data.size) + 128] = 64
            mem[ceil32(return_data.size) + 160] = calldata.size
            mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit 0x2a5b796b: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
}

function sub_0ac3303a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0xa8d7bf4c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'Only Admin can perform this operation.'
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
        mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(return_data.size) + 96] = 0
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        mem[ceil32(return_data.size) + 96] = call.func_hash
        mem[ceil32(return_data.size) + 128] = 64
        mem[ceil32(return_data.size) + 160] = calldata.size
        mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
        emit 0x2a5b796b: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    else:
        if msg.sender == stor3[call.func_hash].field_320:
            if stor3[call.func_hash].field_480:
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                revert with 0, 17
            if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            sub_08dd0faaAddress = address(arg1)
            staticcall address(arg1).0x52a70684 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'Invalid jax admin'
            emit 0x78c07766: sub_08dd0faaAddress, address(arg1)
            stor3[call.func_hash].field_480 = 1
        else:
            stor3[call.func_hash].field_320 = Mask(192, 0, msg.sender)
            mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(return_data.size) + 96] = 0
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            mem[ceil32(return_data.size) + 96] = call.func_hash
            mem[ceil32(return_data.size) + 128] = 64
            mem[ceil32(return_data.size) + 160] = calldata.size
            mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit 0x2a5b796b: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
}

function sub_62d5942a(?) payable {
    require calldata.size - 4 >= 96
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0x4d82df06 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only Governor can perform this operation.'
    if arg1 >= sub_539efd4b.length:
        revert with 0, 'Invalid token id'
    if arg1 >= sub_539efd4b.length:
        revert with 0, 50
    if arg2:
        mem[0] = 4
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(sub_539efd4b[arg1])
        mem[ceil32(return_data.size) + 160] = rewardTokenAddress
        mem[ceil32(return_data.size) + 196] = this.address
        staticcall address(sub_539efd4b[arg1]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 > ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 41
            mem[(2 * ceil32(return_data.size)) + 260] = 'Insufficient yield token in this'
            mem[(2 * ceil32(return_data.size)) + 292] = 0x20636f6e74726163740000000000000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 192
               len ceil32(return_data.size) + 132
        mem[(2 * ceil32(return_data.size)) + 192] = 0xc45a015500000000000000000000000000000000000000000000000000000000
        staticcall pancakeRouterAddress.factory() with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size)]
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 196] = address(sub_539efd4b[arg1])
        mem[(4 * ceil32(return_data.size)) + 228] = rewardTokenAddress
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 192] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
               args mem[(6 * ceil32(return_data.size)) + 196 len 8 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 196] = arg2
        if ext_call.return_data[12 len 20] != address(sub_539efd4b[arg1]):
            mem[(8 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
            mem[(8 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
            staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args mem[(8 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 96]
            mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 100 * 10^6 < arg3:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                revert with 0, 17
            if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) and -arg3 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0])) - (1000000000000000000 * 10^18 * arg3 * Mask(112, 0, ext_call.return_data[0])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[32]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / arg2:
                revert with 0, 'Price Impact too high', mem[(10 * ceil32(return_data.size)) + 292 len 17 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(10 * ceil32(return_data.size)) + 196] = arg2
            mem[(10 * ceil32(return_data.size)) + 228] = 0
            mem[(10 * ceil32(return_data.size)) + 260] = 160
            mem[(10 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (10 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(10 * ceil32(return_data.size)) + 292] = this.address
            mem[(10 * ceil32(return_data.size)) + 324] = block.timestamp
            call pancakeRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (10 * ceil32(return_data.size)) + -mem[64] + 448]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _166 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _170 = mem[_166]
            require mem[_166] <= test266151307()
            require _166 + mem[_166] + 31 < _166 + return_data.size
            _174 = mem[_166 + mem[_166]]
            if mem[_166 + mem[_166]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_166 + mem[_166]]) + 1 < 0 or _166 + ceil32(return_data.size) + ceil32(32 * mem[_166 + mem[_166]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _166 + ceil32(return_data.size) + ceil32(32 * mem[_166 + mem[_166]]) + 1
            mem[_166 + ceil32(return_data.size)] = _174
            require _170 + (32 * _174) + 32 <= return_data.size
            mem[_166 + ceil32(return_data.size) + 32 len ceil32(32 * _174)] = mem[_166 + _170 + 32 len ceil32(32 * _174)]
            if 1 >= _174:
                revert with 0, 50
            mem[mem[64]] = mem[_166 + ceil32(return_data.size) + 64]
        else:
            mem[(8 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
            staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args mem[(8 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 96]
            mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 100 * 10^6 < arg3:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                revert with 0, 17
            if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) and -arg3 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32])) - (1000000000000000000 * 10^18 * arg3 * Mask(112, 0, ext_call.return_data[32])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[0]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / arg2:
                revert with 0, 'Price Impact too high', mem[(10 * ceil32(return_data.size)) + 292 len 17 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(10 * ceil32(return_data.size)) + 196] = arg2
            mem[(10 * ceil32(return_data.size)) + 228] = 0
            mem[(10 * ceil32(return_data.size)) + 260] = 160
            mem[(10 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (10 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(10 * ceil32(return_data.size)) + 292] = this.address
            mem[(10 * ceil32(return_data.size)) + 324] = block.timestamp
            call pancakeRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (10 * ceil32(return_data.size)) + -mem[64] + 448]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _167 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _171 = mem[_167]
            require mem[_167] <= test266151307()
            require _167 + mem[_167] + 31 < _167 + return_data.size
            _175 = mem[_167 + mem[_167]]
            if mem[_167 + mem[_167]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_167 + mem[_167]]) + 1 < 0 or _167 + ceil32(return_data.size) + ceil32(32 * mem[_167 + mem[_167]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _167 + ceil32(return_data.size) + ceil32(32 * mem[_167 + mem[_167]]) + 1
            mem[_167 + ceil32(return_data.size)] = _175
            require _171 + (32 * _175) + 32 <= return_data.size
            mem[_167 + ceil32(return_data.size) + 32 len ceil32(32 * _175)] = mem[_167 + _171 + 32 len ceil32(32 * _175)]
            if 1 >= _175:
                revert with 0, 50
            mem[mem[64]] = mem[_167 + ceil32(return_data.size) + 64]
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        staticcall address(sub_539efd4b[arg1]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 >= sub_539efd4b.length:
            revert with 0, 50
        mem[0] = 4
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(sub_539efd4b[arg1])
        mem[(2 * ceil32(return_data.size)) + 160] = rewardTokenAddress
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        staticcall address(sub_539efd4b[arg1]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 41
            mem[(4 * ceil32(return_data.size)) + 260] = 'Insufficient yield token in this'
            mem[(4 * ceil32(return_data.size)) + 292] = 0x20636f6e74726163740000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 192
               len (5 * ceil32(return_data.size)) + 132
        mem[(4 * ceil32(return_data.size)) + 192] = 0xc45a015500000000000000000000000000000000000000000000000000000000
        staticcall pancakeRouterAddress.factory() with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 196] = address(sub_539efd4b[arg1])
        mem[(4 * ceil32(return_data.size)) + 228] = rewardTokenAddress
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 196 len (7 * ceil32(return_data.size)) + 64]
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 192] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
               args mem[(8 * ceil32(return_data.size)) + 196 len 13 * ceil32(return_data.size)]
        mem[(8 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[(9 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
               args mem[(9 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
        mem[(9 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        if ext_call.return_data[12 len 20] != address(sub_539efd4b[arg1]):
            mem[(10 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[32])
            mem[(10 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[0])
            staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, mem[(10 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 100 * 10^6 < arg3:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                revert with 0, 17
            if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) and -arg3 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0])) - (1000000000000000000 * 10^18 * arg3 * Mask(112, 0, ext_call.return_data[0])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[32]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 'Price Impact too high', mem[(12 * ceil32(return_data.size)) + 292 len 20 * ceil32(return_data.size)]
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(12 * ceil32(return_data.size)) + 228] = 0
            mem[(12 * ceil32(return_data.size)) + 260] = 160
            mem[(12 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 388
            t = (2 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(12 * ceil32(return_data.size)) + 292] = this.address
            mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp
            call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _172 = mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _176 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _176
            require _172 + (32 * _176) + 32 <= return_data.size
            mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _176)] = mem[(12 * ceil32(return_data.size)) + _172 + 224 len ceil32(32 * _176)]
            if 1 >= _176:
                revert with 0, 50
        else:
            mem[(10 * ceil32(return_data.size)) + 228] = Mask(112, 0, ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + 260] = Mask(112, 0, ext_call.return_data[32])
            staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, mem[(10 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 100 * 10^6 < arg3:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                revert with 0, 17
            if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) and -arg3 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32])) - (1000000000000000000 * 10^18 * arg3 * Mask(112, 0, ext_call.return_data[32])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[0]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 'Price Impact too high', mem[(12 * ceil32(return_data.size)) + 292 len 20 * ceil32(return_data.size)]
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(12 * ceil32(return_data.size)) + 228] = 0
            mem[(12 * ceil32(return_data.size)) + 260] = 160
            mem[(12 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 388
            t = (2 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(12 * ceil32(return_data.size)) + 292] = this.address
            mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp
            call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _173 = mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _177 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _177
            require _173 + (32 * _177) + 32 <= return_data.size
            mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _177)] = mem[(12 * ceil32(return_data.size)) + _173 + 224 len ceil32(32 * _177)]
            if 1 >= _177:
                revert with 0, 50
        mem[mem[64]] = mem[(13 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_28280d96(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0x4d82df06 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only Governor can perform this operation.'
    idx = 0
    while idx < sub_539efd4b.length:
        mem[0] = 4
        mem[mem[64] + 4] = this.address
        staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _165 = mem[_164]
        if mem[_164]:
            if idx >= sub_539efd4b.length:
                revert with 0, 'Invalid token id'
            if idx >= sub_539efd4b.length:
                revert with 0, 50
            mem[0] = 4
            if mem[_164]:
                _169 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_169]:
                    revert with 0, 50
                mem[_169 + 32] = address(sub_539efd4b[idx])
                if 1 >= mem[_169]:
                    revert with 0, 50
                mem[_169 + 64] = rewardTokenAddress
                mem[_169 + 100] = this.address
                staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_169 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _165 > ext_call.return_data[0]:
                    revert with 0, 'Insufficient yield token in this contract'
                staticcall pancakeRouterAddress.factory() with:
                        gas gas_remaining wei
                mem[_169 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _169 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[_169]:
                    revert with 0, 50
                if 1 >= mem[_169]:
                    revert with 0, 50
                mem[_169 + (2 * ceil32(return_data.size)) + 100] = address(sub_539efd4b[idx])
                mem[_169 + (2 * ceil32(return_data.size)) + 132] = rewardTokenAddress
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(sub_539efd4b[idx]), rewardTokenAddress
                mem[_169 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[_169 + (4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _169 + (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if 0 >= mem[_169]:
                    revert with 0, 50
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[_169 + (6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_169 + (7 * ceil32(return_data.size)) + 100] = _165
                if ext_call.return_data[12 len 20] != address(sub_539efd4b[idx]):
                    mem[_169 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[32])
                    mem[_169 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
                    staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args _165, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    mem[_169 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _169 + (8 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if not _165:
                        revert with 0, 18
                    if 100 * 10^6 < arg1:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[0])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[32]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _165:
                        revert with 0, 'Price Impact too high'
                    mem[_169 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_169 + (8 * ceil32(return_data.size)) + 100] = _165
                    mem[_169 + (8 * ceil32(return_data.size)) + 132] = 0
                    mem[_169 + (8 * ceil32(return_data.size)) + 164] = 160
                    mem[_169 + (8 * ceil32(return_data.size)) + 260] = mem[_169]
                    s = 0
                    t = _169 + (8 * ceil32(return_data.size)) + 292
                    u = _169 + 32
                    while s < mem[_169]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_169 + (8 * ceil32(return_data.size)) + 196] = this.address
                    mem[_169 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                    call pancakeRouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _169 + (8 * ceil32(return_data.size)) + (32 * mem[_169]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _318 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _322 = mem[_318]
                    require mem[_318] <= test266151307()
                    require _318 + mem[_318] + 31 < _318 + return_data.size
                    _326 = mem[_318 + mem[_318]]
                    if mem[_318 + mem[_318]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_318 + mem[_318]]) + 1 < 0 or _318 + ceil32(return_data.size) + ceil32(32 * mem[_318 + mem[_318]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _318 + ceil32(return_data.size) + ceil32(32 * mem[_318 + mem[_318]]) + 1
                    mem[_318 + ceil32(return_data.size)] = _326
                    require _322 + (32 * _326) + 32 <= return_data.size
                    t = _318 + ceil32(return_data.size) + 32
                    s = _318 + _322 + 32
                    while s < _318 + _322 + (32 * _326) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if 1 >= _326:
                        revert with 0, 50
                else:
                    mem[_169 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0])
                    mem[_169 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
                    staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args _165, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    mem[_169 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _169 + (8 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if not _165:
                        revert with 0, 18
                    if 100 * 10^6 < arg1:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[32])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[0]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _165:
                        revert with 0, 'Price Impact too high'
                    mem[_169 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_169 + (8 * ceil32(return_data.size)) + 100] = _165
                    mem[_169 + (8 * ceil32(return_data.size)) + 132] = 0
                    mem[_169 + (8 * ceil32(return_data.size)) + 164] = 160
                    mem[_169 + (8 * ceil32(return_data.size)) + 260] = mem[_169]
                    s = 0
                    t = _169 + (8 * ceil32(return_data.size)) + 292
                    u = _169 + 32
                    while s < mem[_169]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_169 + (8 * ceil32(return_data.size)) + 196] = this.address
                    mem[_169 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                    call pancakeRouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _169 + (8 * ceil32(return_data.size)) + (32 * mem[_169]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _319 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _323 = mem[_319]
                    require mem[_319] <= test266151307()
                    require _319 + mem[_319] + 31 < _319 + return_data.size
                    _327 = mem[_319 + mem[_319]]
                    if mem[_319 + mem[_319]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_319 + mem[_319]]) + 1 < 0 or _319 + ceil32(return_data.size) + ceil32(32 * mem[_319 + mem[_319]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _319 + ceil32(return_data.size) + ceil32(32 * mem[_319 + mem[_319]]) + 1
                    mem[_319 + ceil32(return_data.size)] = _327
                    require _323 + (32 * _327) + 32 <= return_data.size
                    t = _319 + ceil32(return_data.size) + 32
                    s = _319 + _323 + 32
                    while s < _319 + _323 + (32 * _327) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if 1 >= _327:
                        revert with 0, 50
            else:
                mem[mem[64] + 4] = this.address
                staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _176 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _179 = mem[_176]
                if idx >= sub_539efd4b.length:
                    revert with 0, 50
                mem[0] = 4
                _182 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_182]:
                    revert with 0, 50
                mem[_182 + 32] = address(sub_539efd4b[idx])
                if 1 >= mem[_182]:
                    revert with 0, 50
                mem[_182 + 64] = rewardTokenAddress
                mem[_182 + 100] = this.address
                staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_182 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _179 > ext_call.return_data[0]:
                    revert with 0, 'Insufficient yield token in this contract'
                staticcall pancakeRouterAddress.factory() with:
                        gas gas_remaining wei
                mem[_182 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _182 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[_182]:
                    revert with 0, 50
                if 1 >= mem[_182]:
                    revert with 0, 50
                mem[_182 + (2 * ceil32(return_data.size)) + 100] = address(sub_539efd4b[idx])
                mem[_182 + (2 * ceil32(return_data.size)) + 132] = rewardTokenAddress
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(sub_539efd4b[idx]), rewardTokenAddress
                mem[_182 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[_182 + (4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _182 + (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if 0 >= mem[_182]:
                    revert with 0, 50
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[_182 + (6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_182 + (7 * ceil32(return_data.size)) + 100] = _179
                if ext_call.return_data[12 len 20] != address(sub_539efd4b[idx]):
                    mem[_182 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[32])
                    mem[_182 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
                    staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args _179, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    mem[_182 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _182 + (8 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if not _179:
                        revert with 0, 18
                    if 100 * 10^6 < arg1:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[0])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[32]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _179:
                        revert with 0, 'Price Impact too high'
                    mem[_182 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_182 + (8 * ceil32(return_data.size)) + 100] = _179
                    mem[_182 + (8 * ceil32(return_data.size)) + 132] = 0
                    mem[_182 + (8 * ceil32(return_data.size)) + 164] = 160
                    mem[_182 + (8 * ceil32(return_data.size)) + 260] = mem[_182]
                    s = 0
                    t = _182 + (8 * ceil32(return_data.size)) + 292
                    u = _182 + 32
                    while s < mem[_182]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_182 + (8 * ceil32(return_data.size)) + 196] = this.address
                    mem[_182 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _179, 0, 160, address(this.address), block.timestamp, mem[_182 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_182]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_182 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _182 + (10 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _324 = mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32
                    require mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 <= test266151307()
                    require _182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 127 < _182 + (8 * ceil32(return_data.size)) + return_data.size + 96
                    _328 = mem[_182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 96]
                    if mem[_182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 96]) + 1 < 0 or _182 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = _182 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 96]) + 97
                    mem[_182 + (10 * ceil32(return_data.size)) + 96] = _328
                    require _324 + (32 * _328) + 32 <= return_data.size
                    t = _182 + (10 * ceil32(return_data.size)) + 128
                    s = _182 + (8 * ceil32(return_data.size)) + _324 + 128
                    while s < _182 + (8 * ceil32(return_data.size)) + _324 + (32 * _328) + 128:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if 1 >= _328:
                        revert with 0, 50
                else:
                    mem[_182 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0])
                    mem[_182 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
                    staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args _179, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    mem[_182 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _182 + (8 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if not _179:
                        revert with 0, 18
                    if 100 * 10^6 < arg1:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[32])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[0]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _179:
                        revert with 0, 'Price Impact too high'
                    mem[_182 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_182 + (8 * ceil32(return_data.size)) + 100] = _179
                    mem[_182 + (8 * ceil32(return_data.size)) + 132] = 0
                    mem[_182 + (8 * ceil32(return_data.size)) + 164] = 160
                    mem[_182 + (8 * ceil32(return_data.size)) + 260] = mem[_182]
                    s = 0
                    t = _182 + (8 * ceil32(return_data.size)) + 292
                    u = _182 + 32
                    while s < mem[_182]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_182 + (8 * ceil32(return_data.size)) + 196] = this.address
                    mem[_182 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _179, 0, 160, address(this.address), block.timestamp, mem[_182 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_182]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_182 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _182 + (10 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _325 = mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32
                    require mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 <= test266151307()
                    require _182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 127 < _182 + (8 * ceil32(return_data.size)) + return_data.size + 96
                    _329 = mem[_182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 96]
                    if mem[_182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 96]) + 1 < 0 or _182 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = _182 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_182 + (8 * ceil32(return_data.size)) + mem[_182 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _179) >> 32 + 96]) + 97
                    mem[_182 + (10 * ceil32(return_data.size)) + 96] = _329
                    require _325 + (32 * _329) + 32 <= return_data.size
                    t = _182 + (10 * ceil32(return_data.size)) + 128
                    s = _182 + (8 * ceil32(return_data.size)) + _325 + 128
                    while s < _182 + (8 * ceil32(return_data.size)) + _325 + (32 * _329) + 128:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if 1 >= _329:
                        revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _158 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = sub_539efd4b.length
    idx = 0
    s = mem[64] + 64
    t = 0
    while idx < sub_539efd4b.length:
        mem[s] = address(sub_539efd4b[t])
        idx = idx + 1
        s = s + 32
        t = t + 1
        continue 
    emit 0xf7a51762: mem[mem[64] len _158 + (32 * sub_539efd4b.length) + -mem[64] + 64]
}

function sub_aa393f2a(?) payable {
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0x4d82df06 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Only Governor can perform this operation.'
    idx = 0
    while idx < sub_539efd4b.length:
        mem[0] = 4
        mem[mem[64] + 4] = this.address
        staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _183 = mem[_181]
        if mem[_181]:
            if idx >= sub_539efd4b.length:
                revert with 0, 'Invalid token id'
            if idx >= sub_539efd4b.length:
                revert with 0, 50
            mem[0] = 4
            if mem[_181]:
                _190 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_190]:
                    revert with 0, 50
                mem[_190 + 32] = address(sub_539efd4b[idx])
                if 1 >= mem[_190]:
                    revert with 0, 50
                mem[_190 + 64] = rewardTokenAddress
                mem[_190 + 100] = this.address
                staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_190 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _183 > ext_call.return_data[0]:
                    revert with 0, 'Insufficient yield token in this contract'
                staticcall pancakeRouterAddress.factory() with:
                        gas gas_remaining wei
                mem[_190 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _190 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[_190]:
                    revert with 0, 50
                if 1 >= mem[_190]:
                    revert with 0, 50
                mem[_190 + (2 * ceil32(return_data.size)) + 100] = address(sub_539efd4b[idx])
                mem[_190 + (2 * ceil32(return_data.size)) + 132] = rewardTokenAddress
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(sub_539efd4b[idx]), rewardTokenAddress
                mem[_190 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[_190 + (4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _190 + (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if 0 >= mem[_190]:
                    revert with 0, 50
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[_190 + (6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_190 + (7 * ceil32(return_data.size)) + 100] = _183
                if ext_call.return_data[12 len 20] != address(sub_539efd4b[idx]):
                    mem[_190 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[32])
                    mem[_190 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
                    staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args _183, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    mem[_190 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _190 + (8 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if not _183:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[0]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) and 97 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 97000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[32]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _183:
                        revert with 0, 'Price Impact too high'
                    mem[_190 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_190 + (8 * ceil32(return_data.size)) + 100] = _183
                    mem[_190 + (8 * ceil32(return_data.size)) + 132] = 0
                    mem[_190 + (8 * ceil32(return_data.size)) + 164] = 160
                    mem[_190 + (8 * ceil32(return_data.size)) + 260] = mem[_190]
                    s = 0
                    t = _190 + (8 * ceil32(return_data.size)) + 292
                    u = _190 + 32
                    while s < mem[_190]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_190 + (8 * ceil32(return_data.size)) + 196] = this.address
                    mem[_190 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                    call pancakeRouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _190 + (8 * ceil32(return_data.size)) + (32 * mem[_190]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _353 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _358 = mem[_353]
                    require mem[_353] <= test266151307()
                    require _353 + mem[_353] + 31 < _353 + return_data.size
                    _363 = mem[_353 + mem[_353]]
                    if mem[_353 + mem[_353]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_353 + mem[_353]]) + 1 < 0 or _353 + ceil32(return_data.size) + ceil32(32 * mem[_353 + mem[_353]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _353 + ceil32(return_data.size) + ceil32(32 * mem[_353 + mem[_353]]) + 1
                    mem[_353 + ceil32(return_data.size)] = _363
                    require _358 + (32 * _363) + 32 <= return_data.size
                    t = _353 + ceil32(return_data.size) + 32
                    s = _353 + _358 + 32
                    while s < _353 + _358 + (32 * _363) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if 1 >= _363:
                        revert with 0, 50
                else:
                    mem[_190 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0])
                    mem[_190 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
                    staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args _183, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    mem[_190 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _190 + (8 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if not _183:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) and 97 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    if 97000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[0]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _183:
                        revert with 0, 'Price Impact too high'
                    mem[_190 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_190 + (8 * ceil32(return_data.size)) + 100] = _183
                    mem[_190 + (8 * ceil32(return_data.size)) + 132] = 0
                    mem[_190 + (8 * ceil32(return_data.size)) + 164] = 160
                    mem[_190 + (8 * ceil32(return_data.size)) + 260] = mem[_190]
                    s = 0
                    t = _190 + (8 * ceil32(return_data.size)) + 292
                    u = _190 + 32
                    while s < mem[_190]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_190 + (8 * ceil32(return_data.size)) + 196] = this.address
                    mem[_190 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                    call pancakeRouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _190 + (8 * ceil32(return_data.size)) + (32 * mem[_190]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _354 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _359 = mem[_354]
                    require mem[_354] <= test266151307()
                    require _354 + mem[_354] + 31 < _354 + return_data.size
                    _364 = mem[_354 + mem[_354]]
                    if mem[_354 + mem[_354]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_354 + mem[_354]]) + 1 < 0 or _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _354 + ceil32(return_data.size) + ceil32(32 * mem[_354 + mem[_354]]) + 1
                    mem[_354 + ceil32(return_data.size)] = _364
                    require _359 + (32 * _364) + 32 <= return_data.size
                    t = _354 + ceil32(return_data.size) + 32
                    s = _354 + _359 + 32
                    while s < _354 + _359 + (32 * _364) + 32:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if 1 >= _364:
                        revert with 0, 50
            else:
                mem[mem[64] + 4] = this.address
                staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _204 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _207 = mem[_204]
                if idx >= sub_539efd4b.length:
                    revert with 0, 50
                mem[0] = 4
                _210 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_210]:
                    revert with 0, 50
                mem[_210 + 32] = address(sub_539efd4b[idx])
                if 1 >= mem[_210]:
                    revert with 0, 50
                mem[_210 + 64] = rewardTokenAddress
                mem[_210 + 100] = this.address
                staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_210 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _207 > ext_call.return_data[0]:
                    revert with 0, 'Insufficient yield token in this contract'
                staticcall pancakeRouterAddress.factory() with:
                        gas gas_remaining wei
                mem[_210 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _210 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[_210]:
                    revert with 0, 50
                if 1 >= mem[_210]:
                    revert with 0, 50
                mem[_210 + (2 * ceil32(return_data.size)) + 100] = address(sub_539efd4b[idx])
                mem[_210 + (2 * ceil32(return_data.size)) + 132] = rewardTokenAddress
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(sub_539efd4b[idx]), rewardTokenAddress
                mem[_210 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[_210 + (4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _210 + (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if 0 >= mem[_210]:
                    revert with 0, 50
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[_210 + (6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_210 + (7 * ceil32(return_data.size)) + 100] = _207
                if ext_call.return_data[12 len 20] != address(sub_539efd4b[idx]):
                    mem[_210 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[32])
                    mem[_210 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
                    staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args _207, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    mem[_210 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _210 + (8 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if not _207:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[0]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) and 97 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 97000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[32]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _207:
                        revert with 0, 'Price Impact too high'
                    mem[_210 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_210 + (8 * ceil32(return_data.size)) + 100] = _207
                    mem[_210 + (8 * ceil32(return_data.size)) + 132] = 0
                    mem[_210 + (8 * ceil32(return_data.size)) + 164] = 160
                    mem[_210 + (8 * ceil32(return_data.size)) + 260] = mem[_210]
                    s = 0
                    t = _210 + (8 * ceil32(return_data.size)) + 292
                    u = _210 + 32
                    while s < mem[_210]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_210 + (8 * ceil32(return_data.size)) + 196] = this.address
                    mem[_210 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _207, 0, 160, address(this.address), block.timestamp, mem[_210 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_210]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_210 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _210 + (10 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _360 = mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32
                    require mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 <= test266151307()
                    require _210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 127 < _210 + (8 * ceil32(return_data.size)) + return_data.size + 96
                    _365 = mem[_210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 96]
                    if mem[_210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 96]) + 1 < 0 or _210 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = _210 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 96]) + 97
                    mem[_210 + (10 * ceil32(return_data.size)) + 96] = _365
                    require _360 + (32 * _365) + 32 <= return_data.size
                    t = _210 + (10 * ceil32(return_data.size)) + 128
                    s = _210 + (8 * ceil32(return_data.size)) + _360 + 128
                    while s < _210 + (8 * ceil32(return_data.size)) + _360 + (32 * _365) + 128:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if 1 >= _365:
                        revert with 0, 50
                else:
                    mem[_210 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0])
                    mem[_210 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
                    staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args _207, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    mem[_210 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _210 + (8 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if not _207:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                        revert with 0, 17
                    if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) and 97 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    if 97000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[0]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _207:
                        revert with 0, 'Price Impact too high'
                    mem[_210 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_210 + (8 * ceil32(return_data.size)) + 100] = _207
                    mem[_210 + (8 * ceil32(return_data.size)) + 132] = 0
                    mem[_210 + (8 * ceil32(return_data.size)) + 164] = 160
                    mem[_210 + (8 * ceil32(return_data.size)) + 260] = mem[_210]
                    s = 0
                    t = _210 + (8 * ceil32(return_data.size)) + 292
                    u = _210 + 32
                    while s < mem[_210]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_210 + (8 * ceil32(return_data.size)) + 196] = this.address
                    mem[_210 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _207, 0, 160, address(this.address), block.timestamp, mem[_210 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_210]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_210 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _210 + (10 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _361 = mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32
                    require mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 <= test266151307()
                    require _210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 127 < _210 + (8 * ceil32(return_data.size)) + return_data.size + 96
                    _366 = mem[_210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 96]
                    if mem[_210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 96]) + 1 < 0 or _210 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = _210 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_210 + (8 * ceil32(return_data.size)) + mem[_210 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _207) >> 32 + 96]) + 97
                    mem[_210 + (10 * ceil32(return_data.size)) + 96] = _366
                    require _361 + (32 * _366) + 32 <= return_data.size
                    t = _210 + (10 * ceil32(return_data.size)) + 128
                    s = _210 + (8 * ceil32(return_data.size)) + _361 + 128
                    while s < _210 + (8 * ceil32(return_data.size)) + _361 + (32 * _366) + 128:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if 1 >= _366:
                        revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _175 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = sub_539efd4b.length
    mem[0] = 4
    idx = 0
    s = mem[64] + 64
    t = 0
    while idx < sub_539efd4b.length:
        mem[s] = address(sub_539efd4b[t])
        idx = idx + 1
        s = s + 32
        t = t + 1
        continue 
    emit 0xf7a51762: mem[mem[64] len _175 + (32 * sub_539efd4b.length) + -mem[64] + 64]
    mem[mem[64] + 4] = this.address
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _362 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _367 = mem[_362]
    idx = 0
    while idx < sub_a057af44.length:
        mem[0] = 5
        _403 = mem[64]
        mem[64] = mem[64] + 96
        mem[_403] = sub_a057af44[idx].field_0
        mem[_403 + 32] = sub_a057af44[idx].field_256
        mem[_403 + 64] = bool(sub_a057af44[idx].field_416)
        if _367 and sub_a057af44[idx].field_0 > -1 / _367:
            revert with 0, 17
        if sub_a057af44[idx].field_416:
            mem[mem[64]] = 0x94412b3800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _367 * sub_a057af44[idx].field_0 / 1000
            require ext_code.size(sub_a057af44[idx].field_256)
            call sub_a057af44[idx].field_256.0x94412b38 with:
                 gas gas_remaining wei
                args (_367 * sub_a057af44[idx].field_0 / 1000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64] + 4] = sub_a057af44[idx].field_256
            mem[mem[64] + 36] = _367 * sub_a057af44[idx].field_0 / 1000
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_a057af44[idx].field_256, _367 * sub_a057af44[idx].field_0 / 1000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _420 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_420] == bool(mem[_420])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0x77bc16da 
}



}
