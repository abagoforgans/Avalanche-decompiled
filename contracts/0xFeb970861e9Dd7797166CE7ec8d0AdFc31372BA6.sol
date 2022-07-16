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
address sub_08dd0faaAddress;
address sub_93ebc164Address;
address sub_c1f441e0Address;
uint256 sub_a9bcf22b;
uint128 sub_0587316c;
mapping of address sub_b4e57f60;
mapping of address sub_3e69fc7f;
mapping of struct stor11;
uint256 storDF7D;
bool storDF7D;
uint8 storDF7D; offset 1
uint256 storDF7D;

function sub_0587316c(?) payable {
    return sub_0587316c
}

function sub_08dd0faa(?) payable {
    return sub_08dd0faaAddress
}

function sub_3e69fc7f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3e69fc7f[address(arg1)]
}

function new_owner() payable {
    return new_owner
}

function owner() payable {
    return owner
}

function sub_93ebc164(?) payable {
    return sub_93ebc164Address
}

function sub_a9bcf22b(?) payable {
    return sub_a9bcf22b
}

function sub_b4e57f60(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b4e57f60[address(arg1)]
}

function sub_be18864e(?) payable {
    return sub_be18864e
}

function sub_c1f441e0(?) payable {
    return sub_c1f441e0Address
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

function sub_ae239f53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_b4e57f60[msg.sender]:
        revert with 0, 'Colony can't be a user'
    if uint128(stor11[msg.sender].field_0):
        revert with 0, 'Colony can't be a user'
    if sub_3e69fc7f[address(arg1)]:
        revert with 0, 'Colony can't be a user'
    if address(arg1) == msg.sender:
        revert with 0, 'Mother Colony is invalid'
    if not uint128(stor11[address(arg1)].field_0):
        revert with 0, 'Mother Colony is invalid'
    sub_3e69fc7f[msg.sender] = address(arg1)
    emit 0x5732ec6f: msg.sender, address(arg1)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        sub_08dd0faaAddress = arg1
        Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
    else:
        uint16(stor0.field_0) = 257
        sub_08dd0faaAddress = arg1
        Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
        uint8(stor0.field_8) = 0
}

function sub_35f9ab24(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint128(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg4 == address(arg4)
    if uint128(arg1) > 20 * 10^6:
        revert with 0, 'Tx tax can't be more than 20%'
    if address(arg4) == msg.sender:
        revert with 0, 'Mother colony can't be set'
    if sub_3e69fc7f[msg.sender]:
        revert with 0, 'Colony can't be a user'
    if not uint128(stor11[address(arg4)].field_0):
        sub_b4e57f60[msg.sender] = 0
        uint8(stor11[msg.sender].field_0) = 2
        Mask(120, 0, stor11[msg.sender].field_8) = 0
    else:
        if uint128(stor11[address(arg4)].field_0) < uint128(stor11[msg.sender].field_0):
            sub_b4e57f60[msg.sender] = address(arg4)
            if 1 > -uint128(stor11[address(arg4)].field_0) + test266151307():
                revert with 0, 17
            uint128(stor11[msg.sender].field_0) = uint128(uint128(stor11[address(arg4)].field_0) + 1)
        else:
            if not uint128(stor11[msg.sender].field_0):
                sub_b4e57f60[msg.sender] = address(arg4)
                if 1 > -uint128(stor11[address(arg4)].field_0) + test266151307():
                    revert with 0, 17
                uint128(stor11[msg.sender].field_0) = uint128(uint128(stor11[address(arg4)].field_0) + 1)
    uint128(stor11[msg.sender].field_128) = uint128(arg1)
    if bool(stor11[msg.sender].field_512):
        if bool(stor11[msg.sender].field_512) == uint255(stor11[msg.sender].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor11[msg.sender][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor11[msg.sender].field_512 = 0
            idx = 0
            while (uint255(stor11[msg.sender].field_512) * 0.5) + 31 / 32 > idx:
                stor11[msg.sender][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11[msg.sender].field_512) == stor11[msg.sender].field_513 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor11[msg.sender][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor11[msg.sender].field_512 = 0
            idx = 0
            while stor11[msg.sender].field_513 % 128 + 31 / 32 > idx:
                stor11[msg.sender][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor11[msg.sender].field_256 = arg3
    emit 0x91ef1d4c: msg.sender, arg1 << 128, Array(len=arg2.length, data=arg2[all]), arg3, address(arg4)
}

function sub_432ff02e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
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
            revert with 0, 'Not_AjaxPrime'
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        Mask(192, 0, stor3[call.func_hash].field_320) = Mask(192, 0, msg.sender)
        mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(return_data.size) + 96] = 0
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        mem[ceil32(return_data.size) + 96] = call.func_hash
        mem[ceil32(return_data.size) + 128] = 64
        mem[ceil32(return_data.size) + 160] = calldata.size
        mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
        emit 0xfe2a5b79: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    else:
        if msg.sender == address(stor3[call.func_hash].field_320):
            if uint8(stor3[call.func_hash].field_480):
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !uint64(stor3[call.func_hash].field_256):
                revert with 0, 17
            if block.timestamp < uint64(stor3[call.func_hash].field_256) + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            if uint128(arg1) > 20 * 10^6:
                revert with 0, 'min transaction tax is higher than 20%'
            sub_0587316c = uint128(arg1)
            emit 0xc07632da: uint128(arg1)
            uint8(stor3[call.func_hash].field_480) = 1
        else:
            Mask(192, 0, stor3[call.func_hash].field_320) = Mask(192, 0, msg.sender)
            mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(return_data.size) + 96] = 0
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            mem[ceil32(return_data.size) + 96] = call.func_hash
            mem[ceil32(return_data.size) + 128] = 64
            mem[ceil32(return_data.size) + 160] = calldata.size
            mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit 0xfe2a5b79: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
}

function sub_88233966(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not address(arg2):
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
            revert with 0, 'Not_AjaxPrime'
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        Mask(192, 0, stor3[call.func_hash].field_320) = Mask(192, 0, msg.sender)
        mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(return_data.size) + 96] = 0
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        mem[ceil32(return_data.size) + 96] = call.func_hash
        mem[ceil32(return_data.size) + 128] = 64
        mem[ceil32(return_data.size) + 160] = calldata.size
        mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
        emit 0xfe2a5b79: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    else:
        if msg.sender == address(stor3[call.func_hash].field_320):
            if uint8(stor3[call.func_hash].field_480):
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !uint64(stor3[call.func_hash].field_256):
                revert with 0, 17
            if block.timestamp < uint64(stor3[call.func_hash].field_256) + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            if arg1 > 10 * 10^6:
                revert with 0, 'UBI tax can't be more than 10.'
            sub_a9bcf22b = arg1
            sub_93ebc164Address = address(arg2)
            emit 0x204b0e86: arg1, address(arg2)
            uint8(stor3[call.func_hash].field_480) = 1
        else:
            Mask(192, 0, stor3[call.func_hash].field_320) = Mask(192, 0, msg.sender)
            mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(return_data.size) + 96] = 0
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            mem[ceil32(return_data.size) + 96] = call.func_hash
            mem[ceil32(return_data.size) + 128] = 64
            mem[ceil32(return_data.size) + 160] = calldata.size
            mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit 0xfe2a5b79: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
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
            revert with 0, 'Not_Admin'
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        Mask(192, 0, stor3[call.func_hash].field_320) = Mask(192, 0, msg.sender)
        mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(return_data.size) + 96] = 0
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        mem[ceil32(return_data.size) + 96] = call.func_hash
        mem[ceil32(return_data.size) + 128] = 64
        mem[ceil32(return_data.size) + 160] = calldata.size
        mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
        emit 0xfe2a5b79: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    else:
        if msg.sender == address(stor3[call.func_hash].field_320):
            if uint8(stor3[call.func_hash].field_480):
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !uint64(stor3[call.func_hash].field_256):
                revert with 0, 17
            if block.timestamp < uint64(stor3[call.func_hash].field_256) + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            sub_08dd0faaAddress = address(arg1)
            staticcall address(arg1).0x52a70684 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'Invalid Jax Admin'
            emit 0x78c07766: sub_08dd0faaAddress, address(arg1)
            uint8(stor3[call.func_hash].field_480) = 1
        else:
            Mask(192, 0, stor3[call.func_hash].field_320) = Mask(192, 0, msg.sender)
            mem[ceil32(return_data.size) + 96 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(return_data.size) + 96] = 0
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            mem[ceil32(return_data.size) + 96] = call.func_hash
            mem[ceil32(return_data.size) + 128] = 64
            mem[ceil32(return_data.size) + 160] = calldata.size
            mem[ceil32(return_data.size) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit 0xfe2a5b79: mem[ceil32(return_data.size) + 96 len calldata.size], 0, mem[ceil32(return_data.size) + calldata.size + 128 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
}

function sub_b5fab8d7(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == uint128(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not address(arg1):
        revert with 0, 'Only non-zero address'
    mem[ceil32(ceil32(arg3.length)) + 101] = msg.sender
    staticcall sub_08dd0faaAddress.0xf5af407c with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'Not_AjaxPrime'
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = 0
    if sha3(call.data[0 len calldata.size]) != stor3[call.func_hash].field_0:
        Mask(192, 0, stor3[call.func_hash].field_320) = Mask(192, 0, msg.sender)
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = 0
        stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
        stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = call.func_hash
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129] = 64
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161] = calldata.size
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193 len calldata.size] = call.data[0 len calldata.size]
        emit 0xfe2a5b79: mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97 len calldata.size], 0, mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + calldata.size + 129 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    else:
        if address(stor3[call.func_hash].field_320) != msg.sender:
            Mask(192, 0, stor3[call.func_hash].field_320) = Mask(192, 0, msg.sender)
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = 0
            stor3[call.func_hash].field_0 = sha3(call.data[0 len calldata.size])
            stor3[call.func_hash].field_256 = 0xffffff00ffffffffffffffffffffffffffffffffffffffff0000000000000000 and stor3[call.func_hash].field_256 or uint64(block.timestamp)
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = call.func_hash
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129] = 64
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 161] = calldata.size
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 193 len calldata.size] = call.data[0 len calldata.size]
            emit 0xfe2a5b79: mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97 len calldata.size], 0, mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + calldata.size + 129 len 64], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
        else:
            if uint8(stor3[call.func_hash].field_480):
                revert with 0, 'Already executed'
            if 48 * 24 * 3600 > !uint64(stor3[call.func_hash].field_256):
                revert with 0, 17
            if block.timestamp < uint64(stor3[call.func_hash].field_256) + (48 * 24 * 3600):
                revert with 0, 'Running is Locked'
            if uint128(arg2) > 20 * 10^6:
                revert with 0, 'Tx tax can't be more than 20%'
            sub_c1f441e0Address = address(arg1)
            uint128(stor11[0].field_128) = uint128(arg2)
            if bool(storDF7D.field_0):
                if bool(storDF7D.field_0) == uint255(uint256(storDF7D.field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not arg3.length:
                    uint256(storDF7D.field_0) = 0
                    idx = sha3(0xdf7de25b7f1fd6d0b5205f0e18f1f35bd7b8d84cce336588d184533ce43a6f78)
                    while sha3(0xdf7de25b7f1fd6d0b5205f0e18f1f35bd7b8d84cce336588d184533ce43a6f78) + ((uint255(uint256(storDF7D.field_0)) * 0.5) + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(storDF7D.field_0) = (2 * arg3.length) + 1
                    s = sha3(0xdf7de25b7f1fd6d0b5205f0e18f1f35bd7b8d84cce336588d184533ce43a6f78)
                    idx = 128
                    while arg3.length + 128 > idx:
                        stor[s] = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(0xdf7de25b7f1fd6d0b5205f0e18f1f35bd7b8d84cce336588d184533ce43a6f78) + (Mask(251, 0, arg3.length + 31) >> 5)
                    while sha3(0xdf7de25b7f1fd6d0b5205f0e18f1f35bd7b8d84cce336588d184533ce43a6f78) + ((uint255(uint256(storDF7D.field_0)) * 0.5) + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(storDF7D.field_0) == storDF7D.field_1 % 128 < 32:
                    revert with 0, 34
                if not arg3.length:
                    uint256(storDF7D.field_0) = 0
                    idx = sha3(0xdf7de25b7f1fd6d0b5205f0e18f1f35bd7b8d84cce336588d184533ce43a6f78)
                    while sha3(0xdf7de25b7f1fd6d0b5205f0e18f1f35bd7b8d84cce336588d184533ce43a6f78) + (storDF7D.field_1 % 128 + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(storDF7D.field_0) = (2 * arg3.length) + 1
                    s = sha3(0xdf7de25b7f1fd6d0b5205f0e18f1f35bd7b8d84cce336588d184533ce43a6f78)
                    idx = 128
                    while arg3.length + 128 > idx:
                        stor[s] = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(0xdf7de25b7f1fd6d0b5205f0e18f1f35bd7b8d84cce336588d184533ce43a6f78) + (Mask(251, 0, arg3.length + 31) >> 5)
                    while sha3(0xdf7de25b7f1fd6d0b5205f0e18f1f35bd7b8d84cce336588d184533ce43a6f78) + (storDF7D.field_1 % 128 + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            storDF7D = arg4
            uint8(stor11[0].field_0) = 1
            Mask(120, 0, stor11[0].field_8) = 0
            emit 0x793d7e65: address(arg1), arg2 << 128, Array(len=arg3.length, data=arg3[all]), arg4
            uint8(stor3[call.func_hash].field_480) = 1
}

function sub_e3d298c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor11[address(arg1)].field_512):
        if bool(stor11[address(arg1)].field_512) == uint255(stor11[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor11[address(arg1)].field_512):
            if bool(stor11[address(arg1)].field_512) == uint255(stor11[address(arg1)].field_512) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor11[address(arg1)].field_512):
                if uint128(stor11[address(arg1)].field_128) >= sub_0587316c:
                    return 32, uint128(stor11[address(arg1)].field_0), 
                           uint128(stor11[address(arg1)].field_0),
                           stor11[address(arg1)].field_256,
                           128,
                           2 * Mask(256, -1, stor11[address(arg1)].field_512),
                           mem[384 len ceil32(uint255(stor11[address(arg1)].field_512) * 0.5)]
            else:
                if 31 >= uint255(stor11[address(arg1)].field_512) * 0.5:
                    mem[384] = 256 * Mask(248, 0, stor11[address(arg1)].field_520)
                    if uint128(stor11[address(arg1)].field_128) >= sub_0587316c:
                        return 32, uint128(stor11[address(arg1)].field_0), 
                               uint128(stor11[address(arg1)].field_0),
                               stor11[address(arg1)].field_256,
                               128,
                               2 * Mask(256, -1, stor11[address(arg1)].field_512),
                               mem[384 len ceil32(uint255(stor11[address(arg1)].field_512) * 0.5)]
                else:
                    mem[384] = stor11[address(arg1)][2].field_0
                    idx = 384
                    s = 0
                    while (uint255(stor11[address(arg1)].field_512) * 0.5) + 352 > idx:
                        mem[idx + 32] = stor11[address(arg1)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint128(stor11[address(arg1)].field_0) >= sub_0587316c:
                        return 32, uint128(stor11[address(arg1)].field_0), 
                               uint128(stor11[address(arg1)].field_0),
                               stor11[address(arg1)].field_256,
                               128,
                               2 * Mask(256, -1, stor11[address(arg1)].field_512),
                               mem[384 len ceil32(uint255(stor11[address(arg1)].field_512) * 0.5)]
        else:
            if bool(stor11[address(arg1)].field_512) == stor11[address(arg1)].field_513 % 128 < 32:
                revert with 0, 34
            if not stor11[address(arg1)].field_513 % 128:
                if uint128(stor11[address(arg1)].field_128) >= sub_0587316c:
                    return 32, uint128(stor11[address(arg1)].field_0), 
                           uint128(stor11[address(arg1)].field_0),
                           stor11[address(arg1)].field_256,
                           128,
                           2 * Mask(256, -1, stor11[address(arg1)].field_512),
                           mem[384 len ceil32(uint255(stor11[address(arg1)].field_512) * 0.5)]
            else:
                if 31 >= stor11[address(arg1)].field_513 % 128:
                    mem[384] = 256 * Mask(248, 0, stor11[address(arg1)].field_520)
                    if uint128(stor11[address(arg1)].field_128) >= sub_0587316c:
                        return 32, uint128(stor11[address(arg1)].field_0), 
                               uint128(stor11[address(arg1)].field_0),
                               stor11[address(arg1)].field_256,
                               128,
                               2 * Mask(256, -1, stor11[address(arg1)].field_512),
                               mem[384 len ceil32(uint255(stor11[address(arg1)].field_512) * 0.5)]
                else:
                    mem[384] = stor11[address(arg1)][2].field_0
                    idx = 384
                    s = 0
                    while stor11[address(arg1)].field_513 % 128 + 352 > idx:
                        mem[idx + 32] = stor11[address(arg1)][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint128(stor11[address(arg1)].field_0) >= sub_0587316c:
                        return 32, uint128(stor11[address(arg1)].field_0), 
                               uint128(stor11[address(arg1)].field_0),
                               stor11[address(arg1)].field_256,
                               128,
                               2 * Mask(256, -1, stor11[address(arg1)].field_512),
                               mem[384 len ceil32(uint255(stor11[address(arg1)].field_512) * 0.5)]
        return 32, uint128(stor11[address(arg1)].field_0), 
               sub_0587316c,
               stor11[address(arg1)].field_256,
               128,
               2 * Mask(256, -1, stor11[address(arg1)].field_512),
               mem[384 len ceil32(uint255(stor11[address(arg1)].field_512) * 0.5)]
    if bool(stor11[address(arg1)].field_512) == stor11[address(arg1)].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor11[address(arg1)].field_512):
        if bool(stor11[address(arg1)].field_512) == uint255(stor11[address(arg1)].field_512) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor11[address(arg1)].field_512):
            if uint128(stor11[address(arg1)].field_128) >= sub_0587316c:
                return 32, uint128(stor11[address(arg1)].field_0), 
                       uint128(stor11[address(arg1)].field_0),
                       stor11[address(arg1)].field_256,
                       128,
                       stor11[address(arg1)].field_512 % 128,
                       mem[384 len ceil32(stor11[address(arg1)].field_513 % 128)]
        else:
            if 31 >= uint255(stor11[address(arg1)].field_512) * 0.5:
                mem[384] = 256 * Mask(248, 0, stor11[address(arg1)].field_520)
                if uint128(stor11[address(arg1)].field_128) >= sub_0587316c:
                    return 32, uint128(stor11[address(arg1)].field_0), 
                           uint128(stor11[address(arg1)].field_0),
                           stor11[address(arg1)].field_256,
                           128,
                           stor11[address(arg1)].field_512 % 128,
                           mem[384 len ceil32(stor11[address(arg1)].field_513 % 128)]
            else:
                mem[384] = stor11[address(arg1)][2].field_0
                idx = 384
                s = 0
                while (uint255(stor11[address(arg1)].field_512) * 0.5) + 352 > idx:
                    mem[idx + 32] = stor11[address(arg1)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if uint128(stor11[address(arg1)].field_0) >= sub_0587316c:
                    return 32, uint128(stor11[address(arg1)].field_0), 
                           uint128(stor11[address(arg1)].field_0),
                           stor11[address(arg1)].field_256,
                           128,
                           stor11[address(arg1)].field_512 % 128,
                           mem[384 len ceil32(stor11[address(arg1)].field_513 % 128)]
    else:
        if bool(stor11[address(arg1)].field_512) == stor11[address(arg1)].field_513 % 128 < 32:
            revert with 0, 34
        if not stor11[address(arg1)].field_513 % 128:
            if uint128(stor11[address(arg1)].field_128) >= sub_0587316c:
                return 32, uint128(stor11[address(arg1)].field_0), 
                       uint128(stor11[address(arg1)].field_0),
                       stor11[address(arg1)].field_256,
                       128,
                       stor11[address(arg1)].field_512 % 128,
                       mem[384 len ceil32(stor11[address(arg1)].field_513 % 128)]
        else:
            if 31 >= stor11[address(arg1)].field_513 % 128:
                mem[384] = 256 * Mask(248, 0, stor11[address(arg1)].field_520)
                if uint128(stor11[address(arg1)].field_128) >= sub_0587316c:
                    return 32, uint128(stor11[address(arg1)].field_0), 
                           uint128(stor11[address(arg1)].field_0),
                           stor11[address(arg1)].field_256,
                           128,
                           stor11[address(arg1)].field_512 % 128,
                           mem[384 len ceil32(stor11[address(arg1)].field_513 % 128)]
            else:
                mem[384] = stor11[address(arg1)][2].field_0
                idx = 384
                s = 0
                while stor11[address(arg1)].field_513 % 128 + 352 > idx:
                    mem[idx + 32] = stor11[address(arg1)][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if uint128(stor11[address(arg1)].field_0) >= sub_0587316c:
                    return 32, uint128(stor11[address(arg1)].field_0), 
                           uint128(stor11[address(arg1)].field_0),
                           stor11[address(arg1)].field_256,
                           128,
                           stor11[address(arg1)].field_512 % 128,
                           mem[384 len ceil32(stor11[address(arg1)].field_513 % 128)]
    return 32, uint128(stor11[address(arg1)].field_0), 
           sub_0587316c,
           stor11[address(arg1)].field_256,
           128,
           stor11[address(arg1)].field_512 % 128,
           mem[384 len ceil32(stor11[address(arg1)].field_513 % 128)]
}



}
