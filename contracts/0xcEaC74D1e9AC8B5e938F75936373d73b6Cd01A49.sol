contract main {




// =====================  Runtime code  =====================


#
#  - hatchOut(uint256 arg1)
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
mapping of uint256 stor1;
uint256 stor2;
address sub_0050edd4Address;

function sub_0050edd4(?) payable {
    return sub_0050edd4Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_3453e0ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function sub_4422fb42(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function sub_46bd3687(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function sub_5328c671(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function sub_9e0eb60f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function sub_e2d9d014(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function sub_f994901b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function sub_ff2bc761(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function extractType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function extractReserve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function calculateStats(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function sub_50f204dc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    return uint8(arg1), uint8(arg2), 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_dbd6685a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3)
}

function sub_49d256fc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_5a7112c1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_879529c0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_d053371a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_ddcdcc0c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_70b6dc89(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0050edd4Address = address(arg1)
}

function sub_c62884d1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_fd8022eb(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), uint8(arg4), uint8(arg5), uint8(arg6), 0
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

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_168):
        sub_0050edd4Address = arg1
        owner = arg2
        emit OwnershipTransferred(owner, arg2);
    else:
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_168):
            sub_0050edd4Address = arg1
            owner = arg2
            emit OwnershipTransferred(owner, arg2);
        else:
            Mask(88, 0, stor0.field_168) = 1
            Mask(96, 0, stor0.field_160) = 1
            sub_0050edd4Address = arg1
            owner = arg2
            emit OwnershipTransferred(owner, arg2);
            Mask(88, 0, stor0.field_168) = 0
}

function breed(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if sub_0050edd4Address != msg.sender:
        revert with 0, 'CALLER MUST BE CRABADA'
    require ext_code.size(sub_0050edd4Address)
    call sub_0050edd4Address.getParentsInfo(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    mem[96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if ext_call.return_data[64] <= 0:
        revert with 0, 'NOT ADULT'
    if ext_call.return_data[96] <= 0:
        revert with 0, 'NOT ADULT'
    mem[ceil32(return_data.size) + 128] = block.timestamp
    mem[ceil32(return_data.size) + 160] = '1020e9291906129dd565b60'
    mem[ceil32(return_data.size) + 96] = 55
    if uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 > -1:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 215] = tx.origin
    mem[ceil32(return_data.size) + 183] = 20
    if uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 22 > -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 33) - 1:
        revert with 'NH{q', 17
    if (uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 22) + (uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 33) > -2:
        revert with 'NH{q', 17
    if block.number < uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255:
        revert with 'NH{q', 17
    if block.number - (uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255) < 1:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 267] = Mask(256, -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 22) + -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 33) - 1, block.hash(block.number + -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255) - 1)) << -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 22) + -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 33) - 1
    mem[ceil32(return_data.size) + 235] = 32
    if uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 > -2:
        revert with 'NH{q', 17
    if not (uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255) + 1:
        revert with 'NH{q', 18
    mem[ceil32(return_data.size) + 331] = stor2 / (uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255) + 1
    mem[ceil32(return_data.size) + 299] = 32
    mem[64] = ceil32(return_data.size) + 363
    idx = 3
    s = sha3(mem[ceil32(return_data.size) + 331 len mem[ceil32(return_data.size) + 299]])
    t = sha3(mem[ceil32(return_data.size) + 267])
    u = sha3(mem[ceil32(return_data.size) + 215 len 20])
    while idx >= 1:
        _44 = mem[64]
        mem[mem[64] + 32] = t
        _46 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _48 = sha3(mem[_46 + 32 len mem[_46]])
        mem[_44 + 96] = u
        mem[_44 + 64] = 32
        mem[_44 + 160] = s
        mem[_44 + 128] = 32
        mem[64] = _44 + 192
        idx = idx - 1
        s = sha3(s)
        t = _48
        u = sha3(u)
        continue 
    stor1[arg1] = sha3(Mask(256, -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 22) + -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 33) - 1, block.hash(block.number + -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255) - 1)) << -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 22) + -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 33) - 1) + (3 * _48) xor sha3(tx.origin) + (3 * _52) xor sha3(mem[ceil32(return_data.size) + 331 len mem[ceil32(return_data.size) + 299]]) + (3 * mem[_54 + 32 len mem[_54]])
    stor2 = sha3(Mask(256, -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 22) + -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 33) - 1, block.hash(block.number + -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255) - 1)) << -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 22) + -(uint8(sha3(block.timestamp, '1020e9291906129dd565b60')) >> 232 % 255 % 33) - 1) + (3 * _48) xor sha3(tx.origin) + (3 * _52) xor sha3(mem[ceil32(return_data.size) + 331 len mem[ceil32(return_data.size) + 299]]) + (3 * mem[_54 + 32 len mem[_54]])
    return 0
}



}
