contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner; offset 16
uint256 stor0; offset 16
address new_owner;
uint256 sub_be18864e;
mapping of struct stor3;
array of address sub_539efd4b;
address rewardTokenAddress;
address sub_08dd0faaAddress;
address pancakeRouterAddress;

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

function sub_1466ef84(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Only non-zero address'
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0xf5af407c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'Only AjaxPrime can perform this operation.'
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
            rewardTokenAddress = address(arg1)
            emit 0x100c6995: address(arg1)
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

function sub_487c3580(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0xf5af407c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'Only AjaxPrime can perform this operation.'
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
    staticcall sub_08dd0faaAddress.0xf5af407c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'Only AjaxPrime can perform this operation.'
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

function sub_c8937d4b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0xf5af407c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        mem[32] = 3
        mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(return_data.size) + 96] = 0
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
            if stor3[call.func_hash].field_320 != msg.sender:
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
                if stor3[call.func_hash].field_480:
                    revert with 0, 'Already executed'
                if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                    revert with 0, 17
                if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                    revert with 0, 'Running is Locked'
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
                    _87 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_87] == bool(mem[_87])
                    if not mem[_87]:
                        revert with 0, 'yield token pancake router approval failed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _77 = mem[64]
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
                emit 0xa6917642: mem[mem[64] len _77 + (32 * ('cd', 4).length) + -mem[64] + 64]
                stor3[call.func_hash].field_480 = 1
    else:
        if owner != msg.sender:
            revert with 0, 'Only AjaxPrime can perform this operation.'
        mem[32] = 3
        mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(return_data.size) + 96] = 0
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
            if stor3[call.func_hash].field_320 != msg.sender:
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
                if stor3[call.func_hash].field_480:
                    revert with 0, 'Already executed'
                if 48 * 24 * 3600 > !stor3[call.func_hash].field_256:
                    revert with 0, 17
                if block.timestamp < stor3[call.func_hash].field_256 + (48 * 24 * 3600):
                    revert with 0, 'Running is Locked'
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
                    _88 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_88] == bool(mem[_88])
                    if not mem[_88]:
                        revert with 0, 'yield token pancake router approval failed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _78 = mem[64]
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
                emit 0xa6917642: mem[mem[64] len _78 + (32 * ('cd', 4).length) + -mem[64] + 64]
                stor3[call.func_hash].field_480 = 1
}

function sub_62d5942a(?) payable {
    require calldata.size - 4 >= 96
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0xf5af407c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
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
                _325 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _333 = mem[_325]
                require mem[_325] <= test266151307()
                require _325 + mem[_325] + 31 < _325 + return_data.size
                _341 = mem[_325 + mem[_325]]
                if mem[_325 + mem[_325]] > test266151307():
                    revert with 0, 65
                if _325 + ceil32(return_data.size) + ceil32(32 * mem[_325 + mem[_325]]) + 1 > test266151307() or ceil32(32 * mem[_325 + mem[_325]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _325 + ceil32(return_data.size) + ceil32(32 * mem[_325 + mem[_325]]) + 1
                mem[_325 + ceil32(return_data.size)] = _341
                require (32 * _341) + _333 + 32 <= return_data.size
                mem[_325 + ceil32(return_data.size) + 32 len ceil32(32 * _341)] = mem[_325 + _333 + 32 len ceil32(32 * _341)]
                if 1 >= _341:
                    revert with 0, 50
                mem[mem[64]] = mem[_325 + ceil32(return_data.size) + 64]
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
                _326 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _334 = mem[_326]
                require mem[_326] <= test266151307()
                require _326 + mem[_326] + 31 < _326 + return_data.size
                _342 = mem[_326 + mem[_326]]
                if mem[_326 + mem[_326]] > test266151307():
                    revert with 0, 65
                if _326 + ceil32(return_data.size) + ceil32(32 * mem[_326 + mem[_326]]) + 1 > test266151307() or ceil32(32 * mem[_326 + mem[_326]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _326 + ceil32(return_data.size) + ceil32(32 * mem[_326 + mem[_326]]) + 1
                mem[_326 + ceil32(return_data.size)] = _342
                require (32 * _342) + _334 + 32 <= return_data.size
                mem[_326 + ceil32(return_data.size) + 32 len ceil32(32 * _342)] = mem[_326 + _334 + 32 len ceil32(32 * _342)]
                if 1 >= _342:
                    revert with 0, 50
                mem[mem[64]] = mem[_326 + ceil32(return_data.size) + 64]
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
                _335 = mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _343 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _343
                require (32 * _343) + _335 + 32 <= return_data.size
                mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _343)] = mem[(12 * ceil32(return_data.size)) + _335 + 224 len ceil32(32 * _343)]
                if 1 >= _343:
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
                _336 = mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _344 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _344
                require (32 * _344) + _336 + 32 <= return_data.size
                mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _344)] = mem[(12 * ceil32(return_data.size)) + _336 + 224 len ceil32(32 * _344)]
                if 1 >= _344:
                    revert with 0, 50
            mem[mem[64]] = mem[(13 * ceil32(return_data.size)) + 256]
    else:
        if owner != msg.sender:
            revert with 0, 'Only AjaxPrime can perform this operation.'
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
                _329 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _337 = mem[_329]
                require mem[_329] <= test266151307()
                require _329 + mem[_329] + 31 < _329 + return_data.size
                _345 = mem[_329 + mem[_329]]
                if mem[_329 + mem[_329]] > test266151307():
                    revert with 0, 65
                if _329 + ceil32(return_data.size) + ceil32(32 * mem[_329 + mem[_329]]) + 1 > test266151307() or ceil32(32 * mem[_329 + mem[_329]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _329 + ceil32(return_data.size) + ceil32(32 * mem[_329 + mem[_329]]) + 1
                mem[_329 + ceil32(return_data.size)] = _345
                require (32 * _345) + _337 + 32 <= return_data.size
                mem[_329 + ceil32(return_data.size) + 32 len ceil32(32 * _345)] = mem[_329 + _337 + 32 len ceil32(32 * _345)]
                if 1 >= _345:
                    revert with 0, 50
                mem[mem[64]] = mem[_329 + ceil32(return_data.size) + 64]
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
                _330 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _338 = mem[_330]
                require mem[_330] <= test266151307()
                require _330 + mem[_330] + 31 < _330 + return_data.size
                _346 = mem[_330 + mem[_330]]
                if mem[_330 + mem[_330]] > test266151307():
                    revert with 0, 65
                if _330 + ceil32(return_data.size) + ceil32(32 * mem[_330 + mem[_330]]) + 1 > test266151307() or ceil32(32 * mem[_330 + mem[_330]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _330 + ceil32(return_data.size) + ceil32(32 * mem[_330 + mem[_330]]) + 1
                mem[_330 + ceil32(return_data.size)] = _346
                require (32 * _346) + _338 + 32 <= return_data.size
                mem[_330 + ceil32(return_data.size) + 32 len ceil32(32 * _346)] = mem[_330 + _338 + 32 len ceil32(32 * _346)]
                if 1 >= _346:
                    revert with 0, 50
                mem[mem[64]] = mem[_330 + ceil32(return_data.size) + 64]
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
                _339 = mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _347 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _347
                require (32 * _347) + _339 + 32 <= return_data.size
                mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _347)] = mem[(12 * ceil32(return_data.size)) + _339 + 224 len ceil32(32 * _347)]
                if 1 >= _347:
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
                _340 = mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _348 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _348
                require (32 * _348) + _340 + 32 <= return_data.size
                mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _348)] = mem[(12 * ceil32(return_data.size)) + _340 + 224 len ceil32(32 * _348)]
                if 1 >= _348:
                    revert with 0, 50
            mem[mem[64]] = mem[(13 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_28280d96(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    staticcall sub_08dd0faaAddress.0xf5af407c with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
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
            _320 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _323 = mem[_320]
            if mem[_320]:
                if idx >= sub_539efd4b.length:
                    revert with 0, 'Invalid token id'
                if idx >= sub_539efd4b.length:
                    revert with 0, 50
                mem[0] = 4
                if mem[_320]:
                    _330 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_330]:
                        revert with 0, 50
                    mem[_330 + 32] = address(sub_539efd4b[idx])
                    if 1 >= mem[_330]:
                        revert with 0, 50
                    mem[_330 + 64] = rewardTokenAddress
                    mem[_330 + 100] = this.address
                    staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_330 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _323 > ext_call.return_data[0]:
                        revert with 0, 'Insufficient yield token in this contract'
                    staticcall pancakeRouterAddress.factory() with:
                            gas gas_remaining wei
                    mem[_330 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _330 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[_330]:
                        revert with 0, 50
                    if 1 >= mem[_330]:
                        revert with 0, 50
                    mem[_330 + (2 * ceil32(return_data.size)) + 100] = address(sub_539efd4b[idx])
                    mem[_330 + (2 * ceil32(return_data.size)) + 132] = rewardTokenAddress
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(sub_539efd4b[idx]), rewardTokenAddress
                    mem[_330 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[_330 + (4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _330 + (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_330]:
                        revert with 0, 50
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[_330 + (6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_330 + (7 * ceil32(return_data.size)) + 100] = _323
                    if ext_call.return_data[12 len 20] != address(sub_539efd4b[idx]):
                        mem[_330 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[32])
                        mem[_330 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
                        staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args _323, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        mem[_330 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _330 + (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if not _323:
                            revert with 0, 18
                        if 100 * 10^6 < arg1:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[0])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[32]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _323:
                            revert with 0, 'Price Impact too high'
                        mem[_330 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_330 + (8 * ceil32(return_data.size)) + 100] = _323
                        mem[_330 + (8 * ceil32(return_data.size)) + 132] = 0
                        mem[_330 + (8 * ceil32(return_data.size)) + 164] = 160
                        mem[_330 + (8 * ceil32(return_data.size)) + 260] = mem[_330]
                        s = 0
                        t = _330 + (8 * ceil32(return_data.size)) + 292
                        u = _330 + 32
                        while s < mem[_330]:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_330 + (8 * ceil32(return_data.size)) + 196] = this.address
                        mem[_330 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _323, 0, 160, address(this.address), block.timestamp, mem[_330 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_330]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_330 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _330 + (10 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _637 = mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32
                        require mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 <= test266151307()
                        require _330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 127 < _330 + (8 * ceil32(return_data.size)) + return_data.size + 96
                        _645 = mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96]
                        if mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if _330 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _330 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96]) + 97
                        mem[_330 + (10 * ceil32(return_data.size)) + 96] = mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96]
                        require (32 * _645) + _637 + 32 <= return_data.size
                        t = _330 + (10 * ceil32(return_data.size)) + 128
                        s = _330 + (8 * ceil32(return_data.size)) + _637 + 128
                        while s < (32 * _645) + _330 + (8 * ceil32(return_data.size)) + _637 + 128:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if 1 >= _645:
                            revert with 0, 50
                    else:
                        mem[_330 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0])
                        mem[_330 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
                        staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args _323, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                        mem[_330 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _330 + (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if not _323:
                            revert with 0, 18
                        if 100 * 10^6 < arg1:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[32])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[0]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _323:
                            revert with 0, 'Price Impact too high'
                        mem[_330 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_330 + (8 * ceil32(return_data.size)) + 100] = _323
                        mem[_330 + (8 * ceil32(return_data.size)) + 132] = 0
                        mem[_330 + (8 * ceil32(return_data.size)) + 164] = 160
                        mem[_330 + (8 * ceil32(return_data.size)) + 260] = mem[_330]
                        s = 0
                        t = _330 + (8 * ceil32(return_data.size)) + 292
                        u = _330 + 32
                        while s < mem[_330]:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_330 + (8 * ceil32(return_data.size)) + 196] = this.address
                        mem[_330 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _323, 0, 160, address(this.address), block.timestamp, mem[_330 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_330]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_330 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _330 + (10 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _638 = mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32
                        require mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 <= test266151307()
                        require _330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 127 < _330 + (8 * ceil32(return_data.size)) + return_data.size + 96
                        _646 = mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96]
                        if mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if _330 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _330 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96]) + 97
                        mem[_330 + (10 * ceil32(return_data.size)) + 96] = mem[_330 + (8 * ceil32(return_data.size)) + mem[_330 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _323) >> 32 + 96]
                        require (32 * _646) + _638 + 32 <= return_data.size
                        t = _330 + (10 * ceil32(return_data.size)) + 128
                        s = _330 + (8 * ceil32(return_data.size)) + _638 + 128
                        while s < (32 * _646) + _330 + (8 * ceil32(return_data.size)) + _638 + 128:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if 1 >= _646:
                            revert with 0, 50
                else:
                    mem[mem[64] + 4] = this.address
                    staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _350 = mem[_345]
                    if idx >= sub_539efd4b.length:
                        revert with 0, 50
                    mem[0] = 4
                    _356 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_356]:
                        revert with 0, 50
                    mem[_356 + 32] = address(sub_539efd4b[idx])
                    if 1 >= mem[_356]:
                        revert with 0, 50
                    mem[_356 + 64] = rewardTokenAddress
                    mem[_356 + 100] = this.address
                    staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_356 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _350 > ext_call.return_data[0]:
                        revert with 0, 'Insufficient yield token in this contract'
                    staticcall pancakeRouterAddress.factory() with:
                            gas gas_remaining wei
                    mem[_356 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _356 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[_356]:
                        revert with 0, 50
                    if 1 >= mem[_356]:
                        revert with 0, 50
                    mem[_356 + (2 * ceil32(return_data.size)) + 100] = address(sub_539efd4b[idx])
                    mem[_356 + (2 * ceil32(return_data.size)) + 132] = rewardTokenAddress
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(sub_539efd4b[idx]), rewardTokenAddress
                    mem[_356 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[_356 + (4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _356 + (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_356]:
                        revert with 0, 50
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[_356 + (6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_356 + (7 * ceil32(return_data.size)) + 100] = _350
                    if ext_call.return_data[12 len 20] != address(sub_539efd4b[idx]):
                        mem[_356 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[32])
                        mem[_356 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
                        staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args _350, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        mem[_356 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _356 + (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if not _350:
                            revert with 0, 18
                        if 100 * 10^6 < arg1:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[0])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[32]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _350:
                            revert with 0, 'Price Impact too high'
                        mem[_356 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_356 + (8 * ceil32(return_data.size)) + 100] = _350
                        mem[_356 + (8 * ceil32(return_data.size)) + 132] = 0
                        mem[_356 + (8 * ceil32(return_data.size)) + 164] = 160
                        mem[_356 + (8 * ceil32(return_data.size)) + 260] = mem[_356]
                        s = 0
                        t = _356 + (8 * ceil32(return_data.size)) + 292
                        u = _356 + 32
                        while s < mem[_356]:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_356 + (8 * ceil32(return_data.size)) + 196] = this.address
                        mem[_356 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _350, 0, 160, address(this.address), block.timestamp, mem[_356 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_356]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_356 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _356 + (10 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _639 = mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32
                        require mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 <= test266151307()
                        require _356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 127 < _356 + (8 * ceil32(return_data.size)) + return_data.size + 96
                        _647 = mem[_356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 96]
                        if mem[_356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if _356 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _356 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 96]) + 97
                        mem[_356 + (10 * ceil32(return_data.size)) + 96] = _647
                        require (32 * _647) + _639 + 32 <= return_data.size
                        t = _356 + (10 * ceil32(return_data.size)) + 128
                        s = _356 + (8 * ceil32(return_data.size)) + _639 + 128
                        while s < (32 * _647) + _356 + (8 * ceil32(return_data.size)) + _639 + 128:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if 1 >= _647:
                            revert with 0, 50
                    else:
                        mem[_356 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0])
                        mem[_356 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
                        staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args _350, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                        mem[_356 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _356 + (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if not _350:
                            revert with 0, 18
                        if 100 * 10^6 < arg1:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[32])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[0]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _350:
                            revert with 0, 'Price Impact too high'
                        mem[_356 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_356 + (8 * ceil32(return_data.size)) + 100] = _350
                        mem[_356 + (8 * ceil32(return_data.size)) + 132] = 0
                        mem[_356 + (8 * ceil32(return_data.size)) + 164] = 160
                        mem[_356 + (8 * ceil32(return_data.size)) + 260] = mem[_356]
                        s = 0
                        t = _356 + (8 * ceil32(return_data.size)) + 292
                        u = _356 + 32
                        while s < mem[_356]:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_356 + (8 * ceil32(return_data.size)) + 196] = this.address
                        mem[_356 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _350, 0, 160, address(this.address), block.timestamp, mem[_356 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_356]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_356 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _356 + (10 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _640 = mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32
                        require mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 <= test266151307()
                        require _356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 127 < _356 + (8 * ceil32(return_data.size)) + return_data.size + 96
                        _648 = mem[_356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 96]
                        if mem[_356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if _356 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _356 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_356 + (8 * ceil32(return_data.size)) + mem[_356 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _350) >> 32 + 96]) + 97
                        mem[_356 + (10 * ceil32(return_data.size)) + 96] = _648
                        require (32 * _648) + _640 + 32 <= return_data.size
                        t = _356 + (10 * ceil32(return_data.size)) + 128
                        s = _356 + (8 * ceil32(return_data.size)) + _640 + 128
                        while s < (32 * _648) + _356 + (8 * ceil32(return_data.size)) + _640 + 128:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if 1 >= _648:
                            revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _309 = mem[64]
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
        emit 0xf7a51762: mem[mem[64] len _309 + (32 * sub_539efd4b.length) + -mem[64] + 64]
    else:
        if owner != msg.sender:
            revert with 0, 'Only AjaxPrime can perform this operation.'
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
            _322 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _324 = mem[_322]
            if mem[_322]:
                if idx >= sub_539efd4b.length:
                    revert with 0, 'Invalid token id'
                if idx >= sub_539efd4b.length:
                    revert with 0, 50
                mem[0] = 4
                if mem[_322]:
                    _335 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_335]:
                        revert with 0, 50
                    mem[_335 + 32] = address(sub_539efd4b[idx])
                    if 1 >= mem[_335]:
                        revert with 0, 50
                    mem[_335 + 64] = rewardTokenAddress
                    mem[_335 + 100] = this.address
                    staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_335 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _324 > ext_call.return_data[0]:
                        revert with 0, 'Insufficient yield token in this contract'
                    staticcall pancakeRouterAddress.factory() with:
                            gas gas_remaining wei
                    mem[_335 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _335 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[_335]:
                        revert with 0, 50
                    if 1 >= mem[_335]:
                        revert with 0, 50
                    mem[_335 + (2 * ceil32(return_data.size)) + 100] = address(sub_539efd4b[idx])
                    mem[_335 + (2 * ceil32(return_data.size)) + 132] = rewardTokenAddress
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(sub_539efd4b[idx]), rewardTokenAddress
                    mem[_335 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[_335 + (4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _335 + (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_335]:
                        revert with 0, 50
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[_335 + (6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_335 + (7 * ceil32(return_data.size)) + 100] = _324
                    if ext_call.return_data[12 len 20] != address(sub_539efd4b[idx]):
                        mem[_335 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[32])
                        mem[_335 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
                        staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args _324, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        mem[_335 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _335 + (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if not _324:
                            revert with 0, 18
                        if 100 * 10^6 < arg1:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[0])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[32]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _324:
                            revert with 0, 'Price Impact too high'
                        mem[_335 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_335 + (8 * ceil32(return_data.size)) + 100] = _324
                        mem[_335 + (8 * ceil32(return_data.size)) + 132] = 0
                        mem[_335 + (8 * ceil32(return_data.size)) + 164] = 160
                        mem[_335 + (8 * ceil32(return_data.size)) + 260] = mem[_335]
                        s = 0
                        t = _335 + (8 * ceil32(return_data.size)) + 292
                        u = _335 + 32
                        while s < mem[_335]:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_335 + (8 * ceil32(return_data.size)) + 196] = this.address
                        mem[_335 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _324, 0, 160, address(this.address), block.timestamp, mem[_335 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_335]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_335 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _335 + (10 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _641 = mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32
                        require mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 <= test266151307()
                        require _335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 127 < _335 + (8 * ceil32(return_data.size)) + return_data.size + 96
                        _649 = mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96]
                        if mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if _335 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _335 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96]) + 97
                        mem[_335 + (10 * ceil32(return_data.size)) + 96] = mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96]
                        require (32 * _649) + _641 + 32 <= return_data.size
                        t = _335 + (10 * ceil32(return_data.size)) + 128
                        s = _335 + (8 * ceil32(return_data.size)) + _641 + 128
                        while s < (32 * _649) + _335 + (8 * ceil32(return_data.size)) + _641 + 128:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if 1 >= _649:
                            revert with 0, 50
                    else:
                        mem[_335 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0])
                        mem[_335 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
                        staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args _324, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                        mem[_335 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _335 + (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if not _324:
                            revert with 0, 18
                        if 100 * 10^6 < arg1:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[32])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[0]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _324:
                            revert with 0, 'Price Impact too high'
                        mem[_335 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_335 + (8 * ceil32(return_data.size)) + 100] = _324
                        mem[_335 + (8 * ceil32(return_data.size)) + 132] = 0
                        mem[_335 + (8 * ceil32(return_data.size)) + 164] = 160
                        mem[_335 + (8 * ceil32(return_data.size)) + 260] = mem[_335]
                        s = 0
                        t = _335 + (8 * ceil32(return_data.size)) + 292
                        u = _335 + 32
                        while s < mem[_335]:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_335 + (8 * ceil32(return_data.size)) + 196] = this.address
                        mem[_335 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _324, 0, 160, address(this.address), block.timestamp, mem[_335 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_335]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_335 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _335 + (10 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _642 = mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32
                        require mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 <= test266151307()
                        require _335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 127 < _335 + (8 * ceil32(return_data.size)) + return_data.size + 96
                        _650 = mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96]
                        if mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if _335 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _335 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96]) + 97
                        mem[_335 + (10 * ceil32(return_data.size)) + 96] = mem[_335 + (8 * ceil32(return_data.size)) + mem[_335 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _324) >> 32 + 96]
                        require (32 * _650) + _642 + 32 <= return_data.size
                        t = _335 + (10 * ceil32(return_data.size)) + 128
                        s = _335 + (8 * ceil32(return_data.size)) + _642 + 128
                        while s < (32 * _650) + _335 + (8 * ceil32(return_data.size)) + _642 + 128:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if 1 >= _650:
                            revert with 0, 50
                else:
                    mem[mem[64] + 4] = this.address
                    staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _346 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _352 = mem[_346]
                    if idx >= sub_539efd4b.length:
                        revert with 0, 50
                    mem[0] = 4
                    _359 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_359]:
                        revert with 0, 50
                    mem[_359 + 32] = address(sub_539efd4b[idx])
                    if 1 >= mem[_359]:
                        revert with 0, 50
                    mem[_359 + 64] = rewardTokenAddress
                    mem[_359 + 100] = this.address
                    staticcall address(sub_539efd4b[idx]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_359 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if _352 > ext_call.return_data[0]:
                        revert with 0, 'Insufficient yield token in this contract'
                    staticcall pancakeRouterAddress.factory() with:
                            gas gas_remaining wei
                    mem[_359 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _359 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[_359]:
                        revert with 0, 50
                    if 1 >= mem[_359]:
                        revert with 0, 50
                    mem[_359 + (2 * ceil32(return_data.size)) + 100] = address(sub_539efd4b[idx])
                    mem[_359 + (2 * ceil32(return_data.size)) + 132] = rewardTokenAddress
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(sub_539efd4b[idx]), rewardTokenAddress
                    mem[_359 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[_359 + (4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _359 + (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_359]:
                        revert with 0, 50
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[_359 + (6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_359 + (7 * ceil32(return_data.size)) + 100] = _352
                    if ext_call.return_data[12 len 20] != address(sub_539efd4b[idx]):
                        mem[_359 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[32])
                        mem[_359 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0])
                        staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args _352, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        mem[_359 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _359 + (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if not _352:
                            revert with 0, 18
                        if 100 * 10^6 < arg1:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[0])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[32]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _352:
                            revert with 0, 'Price Impact too high'
                        mem[_359 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_359 + (8 * ceil32(return_data.size)) + 100] = _352
                        mem[_359 + (8 * ceil32(return_data.size)) + 132] = 0
                        mem[_359 + (8 * ceil32(return_data.size)) + 164] = 160
                        mem[_359 + (8 * ceil32(return_data.size)) + 260] = mem[_359]
                        s = 0
                        t = _359 + (8 * ceil32(return_data.size)) + 292
                        u = _359 + 32
                        while s < mem[_359]:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_359 + (8 * ceil32(return_data.size)) + 196] = this.address
                        mem[_359 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _352, 0, 160, address(this.address), block.timestamp, mem[_359 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_359]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_359 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _359 + (10 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _643 = mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32
                        require mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 <= test266151307()
                        require _359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 127 < _359 + (8 * ceil32(return_data.size)) + return_data.size + 96
                        _651 = mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96]
                        if mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if _359 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _359 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96]) + 97
                        mem[_359 + (10 * ceil32(return_data.size)) + 96] = mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96]
                        require (32 * _651) + _643 + 32 <= return_data.size
                        t = _359 + (10 * ceil32(return_data.size)) + 128
                        s = _359 + (8 * ceil32(return_data.size)) + _643 + 128
                        while s < (32 * _651) + _359 + (8 * ceil32(return_data.size)) + _643 + 128:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if 1 >= _651:
                            revert with 0, 50
                    else:
                        mem[_359 + (7 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0])
                        mem[_359 + (7 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32])
                        staticcall pancakeRouterAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args _352, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                        mem[_359 + (7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _359 + (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if not _352:
                            revert with 0, 18
                        if 100 * 10^6 < arg1:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) > 0x154484932d2e725a5bbca17a3aba173d3d5:
                            revert with 0, 17
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) and -arg1 + 100 * 10^6 > -1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        if (100000000000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32])) - (1000000000000000000 * 10^18 * arg1 * Mask(112, 0, ext_call.return_data[32])) / 100 * 10^6 / Mask(112, 0, ext_call.return_data[0]) > 1000000000000000000 * 10^18 * ext_call.return_data[0] / _352:
                            revert with 0, 'Price Impact too high'
                        mem[_359 + (8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_359 + (8 * ceil32(return_data.size)) + 100] = _352
                        mem[_359 + (8 * ceil32(return_data.size)) + 132] = 0
                        mem[_359 + (8 * ceil32(return_data.size)) + 164] = 160
                        mem[_359 + (8 * ceil32(return_data.size)) + 260] = mem[_359]
                        s = 0
                        t = _359 + (8 * ceil32(return_data.size)) + 292
                        u = _359 + 32
                        while s < mem[_359]:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_359 + (8 * ceil32(return_data.size)) + 196] = this.address
                        mem[_359 + (8 * ceil32(return_data.size)) + 228] = block.timestamp
                        call pancakeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _352, 0, 160, address(this.address), block.timestamp, mem[_359 + (8 * ceil32(return_data.size)) + 260 len (32 * mem[_359]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_359 + (8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _359 + (10 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _644 = mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32
                        require mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 <= test266151307()
                        require _359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 127 < _359 + (8 * ceil32(return_data.size)) + return_data.size + 96
                        _652 = mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96]
                        if mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if _359 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _359 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96]) + 97
                        mem[_359 + (10 * ceil32(return_data.size)) + 96] = mem[_359 + (8 * ceil32(return_data.size)) + mem[_359 + (8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _352) >> 32 + 96]
                        require (32 * _652) + _644 + 32 <= return_data.size
                        t = _359 + (10 * ceil32(return_data.size)) + 128
                        s = _359 + (8 * ceil32(return_data.size)) + _644 + 128
                        while s < (32 * _652) + _359 + (8 * ceil32(return_data.size)) + _644 + 128:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if 1 >= _652:
                            revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _310 = mem[64]
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
        emit 0xf7a51762: mem[mem[64] len _310 + (32 * sub_539efd4b.length) + -mem[64] + 64]
}



}
