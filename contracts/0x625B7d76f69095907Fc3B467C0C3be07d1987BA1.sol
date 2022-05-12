contract main {




// =====================  Runtime code  =====================


#
#  - sub_45cd989b(?)
#
const sub_d5f44b5d(?) = 10000

const VERSION = 0x312e312e30000000000000000000000000000000000000000000000000000000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
uint8 stor151;
uint256 stor201;
array of struct stor202;
mapping of struct sub_1bfa0ee3;
array of uint256 stor204;
mapping of struct order;
address stor206;
address stor207;

function sub_1bfa0ee3(?) payable {
    require calldata.size - 4 >= 32
    return uint8(sub_1bfa0ee3[arg1].field_2080)
}

function getOrder(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(order[arg1].field_1696) > 1:
        revert with 0, 33
    if uint8(order[arg1].field_1704) > 3:
        revert with 0, 33
    if uint8(order[arg1].field_1712) > 6:
        revert with 0, 33
    if uint8(order[arg1].field_1696) >= 2:
        revert with 0, 33
    if uint8(order[arg1].field_1704) >= 4:
        revert with 0, 33
    if uint8(order[arg1].field_1712) >= 7:
        revert with 0, 33
    return order[arg1].field_0, 
           order[arg1].field_256,
           order[arg1].field_512,
           order[arg1].field_768,
           order[arg1].field_1024,
           order[arg1].field_1280,
           address(order[arg1].field_1536),
           uint8(order[arg1].field_1536),
           uint8(order[arg1].field_1536),
           uint8(order[arg1].field_1712)
}

function paused() payable {
    return bool(stor151)
}

function sub_84261ef3(?) payable {
    require calldata.size - 4 >= 32
    return sub_1bfa0ee3[arg1].field_1280
}

function sub_86ce50bf(?) payable {
    require calldata.size - 4 >= 32
    return sub_1bfa0ee3[arg1].field_1024
}

function owner() payable {
    return owner
}

function sub_b46fb3a7(?) payable {
    require calldata.size - 4 >= 32
    return sub_1bfa0ee3[arg1].field_1792
}

function sub_e1f3e8f9(?) payable {
    require calldata.size - 4 >= 32
    return sub_1bfa0ee3[arg1].field_1536
}

function _fallback() payable {
  stop
}

function sub_cfee2bee(?) payable {
    require calldata.size - 4 >= 32
    if not sub_1bfa0ee3[arg1].field_0:
        return 0
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_6b97239e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not arg2:
        return sub_1bfa0ee3[arg1].field_256
    return sub_1bfa0ee3[arg1].field_0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor151:
        revert with 0, 'Pausable: paused'
    stor151 = 1
    emit Paused(msg.sender);
}

function sub_40a89382(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not arg2:
        return uint8(sub_1bfa0ee3[arg1].field_2064)
    return uint8(sub_1bfa0ee3[arg1].field_2048)
}

function sub_7eda3588(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not arg2:
        return uint8(sub_1bfa0ee3[arg1].field_2072)
    return uint8(sub_1bfa0ee3[arg1].field_2056)
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor151:
        revert with 0, 'Pausable: not paused'
    stor151 = 0
    emit Unpaused(msg.sender);
}

function sub_67bd22f5(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(208, 0, sub_1bfa0ee3[arg1].field_2096) = Mask(208, 0, bool(arg2))
}

function sub_bffc38ff(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(216, 0, sub_1bfa0ee3[arg1].field_2088) = Mask(216, 0, bool(arg2))
}

function sub_2ac73988(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(sub_1bfa0ee3[arg1].field_2080) = uint8(arg2)
    emit 0xfed7954b: 'T-SLIPPAGE', uint8(sub_1bfa0ee3[arg1].field_2048), uint8(arg2), arg1
}

function sub_5d51ffbf(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1bfa0ee3[arg1].field_1024 = arg2
    emit 0xfed7954b: 96, sub_1bfa0ee3[arg1].field_1024, arg2, 10, 0x542d4d494e5452414d5400000000000000000000000000000000000000000000, arg1
}

function sub_cd9ff846(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1bfa0ee3[arg1].field_1280 = arg2
    emit 0xfed7954b: 96, sub_1bfa0ee3[arg1].field_1280, arg2, 10, 0x542d4d41585452414d5400000000000000000000000000000000000000000000, arg1
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

function sub_3c4b0a6f(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == uint8(arg2)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        uint8(sub_1bfa0ee3[arg1].field_2072) = uint8(arg2)
    else:
        uint8(sub_1bfa0ee3[arg1].field_2056) = uint8(arg2)
    emit 0xfed7954b: 'T-DISPDEC', uint8(sub_1bfa0ee3[arg1].field_2048), uint8(arg2), arg1
}

function sub_9a08884a(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 3:
        revert with 0, 33
    if not stor204[arg1][1][arg2]:
        stor204[arg1]++
        stor204[arg1][stor204[arg1]] = arg2
        stor204[arg1][1][arg2] = stor204[arg1]
    if arg2 > 3:
        revert with 0, 33
    emit 0xfed7954b: 96, 0, arg2, 9, 0x542d4f5459504144440000000000000000000000000000000000000000000000, arg1
}

function sub_fe918152(?) payable {
    require calldata.size - 4 >= 96
    require arg3 < 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 1:
        revert with 0, 33
    if not arg3:
        sub_1bfa0ee3[arg1].field_1536 = arg2
        emit 0xfed7954b: 'T-MAKERRATE', sub_1bfa0ee3[arg1].field_1536, arg2, arg1
    else:
        if arg3 > 1:
            revert with 0, 33
        if arg3 == 1:
            sub_1bfa0ee3[arg1].field_1792 = arg2
            emit 0xfed7954b: 'T-TAKERRATE', sub_1bfa0ee3[arg1].field_1792, arg2, arg1
}

function sub_6b84b173(?) payable {
    if stor202.length:
        mem[128] = uint256(stor202.field_0)
        idx = 128
        s = 0
        while (32 * stor202.length) + 96 > idx:
            mem[idx + 32] = stor202[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor202.length, data=mem[128 len 32 * stor202.length])
    mem[(32 * stor202.length) + 128] = 32
    mem[(32 * stor202.length) + 160] = stor202.length
    mem[(32 * stor202.length) + 192 len 32 * stor202.length] = mem[128 len 32 * stor202.length]
    return memory
      from (32 * stor202.length) + 128
       len (96 * stor202.length) + 64
}

function sub_82dddfc6(?) payable {
    require calldata.size - 4 >= 32
    if stor204[arg1] > test266151307():
        revert with 0, 65
    if stor204[arg1]:
        mem[128 len 32 * stor204[arg1]] = call.data[calldata.size len 32 * stor204[arg1]]
    idx = 0
    while idx < stor204[arg1]:
        mem[32] = 204
        if idx >= stor204[arg1]:
            revert with 0, 50
        mem[0] = sha3(arg1, 204)
        if idx >= stor204[arg1]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor204[arg1][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=stor204[arg1], data=mem[128 len 32 * stor204[arg1]])
}

function sub_5717f475(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 3:
        revert with 0, 33
    if arg2 == 1:
        revert with 0, 'T-LONR-01'
    if arg2 > 3:
        revert with 0, 33
    if stor204[arg1][1][arg2]:
        if stor204[arg1][1][arg2] < 1:
            revert with 0, 17
        if stor204[arg1] < 1:
            revert with 0, 17
        if stor204[arg1] - 1 != stor204[arg1][1][arg2] - 1:
            if stor204[arg1] - 1 >= stor204[arg1]:
                revert with 0, 50
            if stor204[arg1][1][arg2] - 1 >= stor204[arg1]:
                revert with 0, 50
            stor204[arg1][stor204[arg1][1][arg2]] = stor204[arg1][stor204[arg1]]
            stor204[arg1][1][stor204[arg1][stor204[arg1]]] = stor204[arg1][1][arg2]
        if not stor204[arg1]:
            revert with 0, 49
        stor204[arg1][stor204[arg1]] = 0
        stor204[arg1]--
        stor204[arg1][1][arg2] = 0
    if arg2 > 3:
        revert with 0, 33
    emit 0xfed7954b: 96, 0, arg2, 9, 'T-OTYPREM' << 184, arg1
}

function sub_c21e04ba(?) payable {
    require calldata.size - 4 >= 288
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg6 == uint8(arg6)
    require arg7 == uint8(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_1bfa0ee3[arg1].field_0:
        if not stor204[arg1][1][1]:
            stor204[arg1]++
            stor204[arg1][stor204[arg1]] = 1
            stor204[arg1][1][1] = stor204[arg1]
        sub_1bfa0ee3[arg1].field_0 = arg2
        uint8(sub_1bfa0ee3[arg1].field_2048) = uint8(arg3)
        uint8(sub_1bfa0ee3[arg1].field_2056) = uint8(arg4)
        sub_1bfa0ee3[arg1].field_256 = arg5
        uint8(sub_1bfa0ee3[arg1].field_2064) = uint8(arg6)
        uint8(sub_1bfa0ee3[arg1].field_2072) = uint8(arg7)
        sub_1bfa0ee3[arg1].field_1024 = arg8
        sub_1bfa0ee3[arg1].field_1280 = arg9
        sub_1bfa0ee3[arg1].field_512 = '-BUYBOOK' << 192
        sub_1bfa0ee3[arg1].field_768 = '-SELLBOOK' << 184
        sub_1bfa0ee3[arg1].field_1536 = 10
        sub_1bfa0ee3[arg1].field_1792 = 20
        uint8(sub_1bfa0ee3[arg1].field_2080) = 20
        stor202.length++
        stor202[stor202.length].field_0 = arg1
        emit 0xffdd3775: arg1, arg4 << 248, arg7 << 248, arg8, arg9
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor201 = block.timestamp
        stor206 = arg1
        stor207 = arg2
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor201 = block.timestamp
            stor206 = arg1
            stor207 = arg2
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stor201 = block.timestamp
                stor206 = arg1
                stor207 = arg2
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stor201 = block.timestamp
                    stor206 = arg1
                    stor207 = arg2
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        stor201 = block.timestamp
                        stor206 = arg1
                        stor207 = arg2
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        stor201 = block.timestamp
                        stor206 = arg1
                        stor207 = arg2
                        uint8(stor0.field_8) = 0
}

function sub_2e7c08f6(?) payable {
    require calldata.size - 4 >= 64
    mem[0] = arg1
    mem[32] = 203
    mem[96] = 0xf24bd25200000000000000000000000000000000000000000000000000000000
    mem[100] = sub_1bfa0ee3[arg1].field_768
    mem[132] = arg2
    mem[164] = 0
    require ext_code.size(stor206)
    staticcall stor206.0xf24bd252 with:
            gas gas_remaining wei
           args sub_1bfa0ee3[arg1].field_768, arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _5 = mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_800)
    require mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_800) <= test266151307()
    require mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_800) + 127 < return_data.size + 96
    _6 = mem[mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_800) + 96]
    if mem[mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_800) + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_800) + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_800) + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_800) + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _6
    require _5 + (32 * _6) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _6)] = mem[_5 + 128 len ceil32(32 * _6)]
    require uint32(sub_1bfa0ee3[arg1].field_768), Mask(224, 32, arg2) >> 32 <= test266151307()
    require uint32(sub_1bfa0ee3[arg1].field_768), Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _21 = mem[uint32(sub_1bfa0ee3[arg1].field_768), Mask(224, 32, arg2) >> 32 + 96]
    if mem[uint32(sub_1bfa0ee3[arg1].field_768), Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    _22 = mem[64]
    if mem[64] + ceil32(32 * mem[uint32(sub_1bfa0ee3[arg1].field_768), Mask(224, 32, arg2) >> 32 + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[uint32(sub_1bfa0ee3[arg1].field_768), Mask(224, 32, arg2) >> 32 + 96]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[uint32(sub_1bfa0ee3[arg1].field_768), Mask(224, 32, arg2) >> 32 + 96]) + 1
    mem[_22] = _21
    require uint32(sub_1bfa0ee3[arg1].field_768), Mask(224, 32, arg2) >> 32 + (32 * _21) + 32 <= return_data.size
    mem[_22 + 32 len ceil32(32 * _21)] = mem[uint32(sub_1bfa0ee3[arg1].field_768), Mask(224, 32, arg2) >> 32 + 128 len ceil32(32 * _21)]
    _31 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = _6
    mem[mem[64] + 96 len 32 * _6] = mem[ceil32(return_data.size) + 128 len 32 * _6]
    mem[mem[64] + 32] = (32 * _6) + 96
    mem[_31 + (32 * _6) + 96] = _21
    mem[_31 + (32 * _6) + 128 len 32 * _21] = mem[_22 + 32 len 32 * _21]
    return memory
      from mem[64]
       len _31 + (32 * _6) + (32 * _21) + -mem[64] + 128
}

function sub_d18a3571(?) payable {
    require calldata.size - 4 >= 64
    mem[0] = arg1
    mem[32] = 203
    mem[96] = 0xf24bd25200000000000000000000000000000000000000000000000000000000
    mem[100] = sub_1bfa0ee3[arg1].field_512
    mem[132] = arg2
    mem[164] = 1
    require ext_code.size(stor206)
    staticcall stor206.0xf24bd252 with:
            gas gas_remaining wei
           args sub_1bfa0ee3[arg1].field_512, arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _5 = mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_544)
    require mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_544) <= test266151307()
    require mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_544) + 127 < return_data.size + 96
    _6 = mem[mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_544) + 96]
    if mem[mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_544) + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_544) + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_544) + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, sub_1bfa0ee3[arg1].field_544) + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _6
    require _5 + (32 * _6) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _6)] = mem[_5 + 128 len ceil32(32 * _6)]
    require uint32(sub_1bfa0ee3[arg1].field_512), Mask(224, 32, arg2) >> 32 <= test266151307()
    require uint32(sub_1bfa0ee3[arg1].field_512), Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _21 = mem[uint32(sub_1bfa0ee3[arg1].field_512), Mask(224, 32, arg2) >> 32 + 96]
    if mem[uint32(sub_1bfa0ee3[arg1].field_512), Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    _22 = mem[64]
    if mem[64] + ceil32(32 * mem[uint32(sub_1bfa0ee3[arg1].field_512), Mask(224, 32, arg2) >> 32 + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[uint32(sub_1bfa0ee3[arg1].field_512), Mask(224, 32, arg2) >> 32 + 96]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[uint32(sub_1bfa0ee3[arg1].field_512), Mask(224, 32, arg2) >> 32 + 96]) + 1
    mem[_22] = _21
    require uint32(sub_1bfa0ee3[arg1].field_512), Mask(224, 32, arg2) >> 32 + (32 * _21) + 32 <= return_data.size
    mem[_22 + 32 len ceil32(32 * _21)] = mem[uint32(sub_1bfa0ee3[arg1].field_512), Mask(224, 32, arg2) >> 32 + 128 len ceil32(32 * _21)]
    _31 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = _6
    mem[mem[64] + 96 len 32 * _6] = mem[ceil32(return_data.size) + 128 len 32 * _6]
    mem[mem[64] + 32] = (32 * _6) + 96
    mem[_31 + (32 * _6) + 96] = _21
    mem[_31 + (32 * _6) + 128 len 32 * _21] = mem[_22 + 32 len 32 * _21]
    return memory
      from mem[64]
       len _31 + (32 * _6) + (32 * _21) + -mem[64] + 128
}

function sub_a47d9d33(?) payable {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if stor151:
        revert with 0, 'Pausable: paused'
    if address(order[arg2].field_1536) != msg.sender:
        revert with 0, 'T-OOCC-01'
    if not order[arg2].field_0:
        revert with 0, 'T-EOID-01'
    if uint8(sub_1bfa0ee3[arg1].field_2096):
        revert with 0, 'T-PPAU-02'
    if order[arg2].field_1024 >= order[arg2].field_768:
        revert with 0, 'T-OAEX-01'
    if uint8(order[arg2].field_1712) > 6:
        revert with 0, 33
    if uint8(order[arg2].field_1712) != 2:
        if uint8(order[arg2].field_1712) > 6:
            revert with 0, 33
        if uint8(order[arg2].field_1712):
            revert with 0, 'T-OAEX-01'
    uint8(order[order[arg2].field_0].field_1712) = 4
    if 0 or uint8(order[order[arg2].field_0].field_1696) > 1:
        revert with 0, 33
    require ext_code.size(stor206)
    if not True or bool(uint8(order[order[arg2].field_0].field_1696)):
        call stor206.0x525422cd with:
             gas gas_remaining wei
            args sub_1bfa0ee3[arg1].field_768, order[arg2].field_0, order[order[arg2].field_0].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint8(order[order[arg2].field_0].field_1696) > 1:
            revert with 0, 33
        if uint8(order[order[arg2].field_0].field_1704) > 3:
            revert with 0, 33
        if uint8(order[order[arg2].field_0].field_1712) > 6:
            revert with 0, 33
        if order[order[arg2].field_0].field_768 < order[order[arg2].field_0].field_1024:
            revert with 0, 17
        require ext_code.size(stor207)
        call stor207.0x5a8c6596 with:
             gas gas_remaining wei
            args 3, address(order[order[arg2].field_0].field_1536), sub_1bfa0ee3[arg1].field_0, order[order[arg2].field_0].field_768 - order[order[arg2].field_0].field_1024
    else:
        call stor206.0x525422cd with:
             gas gas_remaining wei
            args sub_1bfa0ee3[arg1].field_512, order[arg2].field_0, order[order[arg2].field_0].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint8(order[order[arg2].field_0].field_1696) > 1:
            revert with 0, 33
        if uint8(order[order[arg2].field_0].field_1704) > 3:
            revert with 0, 33
        if uint8(order[order[arg2].field_0].field_1712) > 6:
            revert with 0, 33
        if order[order[arg2].field_0].field_768 < order[order[arg2].field_0].field_1024:
            revert with 0, 17
        if not uint8(sub_1bfa0ee3[arg1].field_2048):
            if order[order[arg2].field_0].field_256 and order[order[arg2].field_0].field_768 - order[order[arg2].field_0].field_1024 > -1 / order[order[arg2].field_0].field_256:
                revert with 0, 17
            require ext_code.size(stor207)
            call stor207.0x5a8c6596 with:
                 gas gas_remaining wei
                args 3, address(order[order[arg2].field_0].field_1536), sub_1bfa0ee3[arg1].field_256, (order[order[arg2].field_0].field_768 * order[order[arg2].field_0].field_256) - (order[order[arg2].field_0].field_1024 * order[order[arg2].field_0].field_256)
        else:
            if bool(bool(uint8(sub_1bfa0ee3[arg1].field_2048) < 78)) or bool(bool(uint8(sub_1bfa0ee3[arg1].field_2048) < 32)):
                if order[order[arg2].field_0].field_256 and order[order[arg2].field_0].field_768 - order[order[arg2].field_0].field_1024 > -1 / order[order[arg2].field_0].field_256:
                    revert with 0, 17
                if not 10^uint8(sub_1bfa0ee3[arg1].field_2048):
                    revert with 0, 18
                require ext_code.size(stor207)
                call stor207.0x5a8c6596 with:
                     gas gas_remaining wei
                    args 3, address(order[order[arg2].field_0].field_1536), sub_1bfa0ee3[arg1].field_256, (order[order[arg2].field_0].field_768 * order[order[arg2].field_0].field_256) - (order[order[arg2].field_0].field_1024 * order[order[arg2].field_0].field_256) / 10^uint8(sub_1bfa0ee3[arg1].field_2048)
            else:
                s = 10
                t = 1
                idx = uint8(sub_1bfa0ee3[arg1].field_2048)
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if order[order[arg2].field_0].field_256 and order[order[arg2].field_0].field_768 - order[order[arg2].field_0].field_1024 > -1 / order[order[arg2].field_0].field_256:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                require ext_code.size(stor207)
                call stor207.0x5a8c6596 with:
                     gas gas_remaining wei
                    args 3, address(order[order[arg2].field_0].field_1536), sub_1bfa0ee3[arg1].field_256, (order[order[arg2].field_0].field_768 * order[order[arg2].field_0].field_256) - (order[order[arg2].field_0].field_1024 * order[order[arg2].field_0].field_256) / s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(order[order[order[arg2].field_0].field_0].field_1696) >= 2:
        revert with 0, 33
    if uint8(order[order[order[arg2].field_0].field_0].field_1704) >= 4:
        revert with 0, 33
    if uint8(order[order[order[arg2].field_0].field_0].field_1712) >= 7:
        revert with 0, 33
    emit 0x98b85391: order[order[order[arg2].field_0].field_0].field_0, order[order[order[arg2].field_0].field_0].field_256, order[order[order[arg2].field_0].field_0].field_512, order[order[order[arg2].field_0].field_0].field_768, uint8(order[order[order[arg2].field_0].field_0].field_1536), uint8(order[order[order[arg2].field_0].field_0].field_1536), uint8(order[order[order[arg2].field_0].field_0].field_1536), order[order[order[arg2].field_0].field_0].field_1024, order[order[order[arg2].field_0].field_0].field_1280, address(order[order[order[arg2].field_0].field_0].field_1536), arg1
    stor101 = 1
}

function sub_302dc8a0(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if stor151:
        revert with 0, 'Pausable: paused'
    if uint8(sub_1bfa0ee3[cd[4]].field_2096):
        revert with 0, 'T-PPAU-03'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 205
        _163 = sha3(mem[(32 * idx) + 128], 205)
        if address(order[mem[(32 * idx) + 128]].field_1536) != msg.sender:
            revert with 0, 'T-OOCC-02'
        if order[mem[(32 * idx) + 128]].field_0:
            if order[mem[(32 * idx) + 128]].field_1024 < order[mem[(32 * idx) + 128]].field_768:
                if uint8(order[mem[(32 * idx) + 128]].field_1712) > 6:
                    revert with 0, 33
                if uint8(order[mem[(32 * idx) + 128]].field_1712) == 2:
                    mem[0] = order[mem[(32 * idx) + 128]].field_0
                    mem[32] = 205
                    uint8(order[order[mem[(32 * idx) + 128]].field_0].field_1712) = 4
                    if 0 or uint8(order[order[mem[(32 * idx) + 128]].field_0].field_1696) > 1:
                        revert with 0, 33
                    require ext_code.size(stor206)
                    if not True or bool(uint8(order[order[mem[(32 * idx) + 128]].field_0].field_1696)):
                        call stor206.0x525422cd with:
                             gas gas_remaining wei
                            args sub_1bfa0ee3[cd[4]].field_768, order[mem[(32 * idx) + 128]].field_0, order[order[mem[(32 * idx) + 128]].field_0].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _174 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_174] = order[order[mem[(32 * idx) + 128]].field_0].field_0
                        mem[_174 + 32] = order[stor[_163]].field_256
                        mem[_174 + 64] = order[stor[_163]].field_512
                        mem[_174 + 96] = order[stor[_163]].field_768
                        mem[_174 + 128] = order[stor[_163]].field_1024
                        mem[_174 + 160] = order[stor[_163]].field_1280
                        mem[_174 + 192] = address(order[stor[_163]].field_1536)
                        if uint8(order[stor[_163]].field_1696) > 1:
                            revert with 0, 33
                        mem[_174 + 224] = uint8(order[stor[_163]].field_1696)
                        if uint8(order[stor[_163]].field_1704) > 3:
                            revert with 0, 33
                        mem[_174 + 256] = uint8(order[stor[_163]].field_1704)
                        if uint8(order[stor[_163]].field_1712) > 6:
                            revert with 0, 33
                        mem[_174 + 288] = uint8(order[stor[_163]].field_1712)
                        if order[stor[_163]].field_768 < order[stor[_163]].field_1024:
                            revert with 0, 17
                        require ext_code.size(stor207)
                        call stor207.0x5a8c6596 with:
                             gas gas_remaining wei
                            args 3, address(order[stor[_163]].field_1536), sub_1bfa0ee3[cd[4]].field_0, order[stor[_163]].field_768 - order[stor[_163]].field_1024
                    else:
                        call stor206.0x525422cd with:
                             gas gas_remaining wei
                            args sub_1bfa0ee3[cd[4]].field_512, order[mem[(32 * idx) + 128]].field_0, order[order[mem[(32 * idx) + 128]].field_0].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _175 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_175] = order[order[mem[(32 * idx) + 128]].field_0].field_0
                        mem[_175 + 32] = order[stor[_163]].field_256
                        mem[_175 + 64] = order[stor[_163]].field_512
                        mem[_175 + 96] = order[stor[_163]].field_768
                        mem[_175 + 128] = order[stor[_163]].field_1024
                        mem[_175 + 160] = order[stor[_163]].field_1280
                        mem[_175 + 192] = address(order[stor[_163]].field_1536)
                        if uint8(order[stor[_163]].field_1696) > 1:
                            revert with 0, 33
                        mem[_175 + 224] = uint8(order[stor[_163]].field_1696)
                        if uint8(order[stor[_163]].field_1704) > 3:
                            revert with 0, 33
                        mem[_175 + 256] = uint8(order[stor[_163]].field_1704)
                        if uint8(order[stor[_163]].field_1712) > 6:
                            revert with 0, 33
                        mem[_175 + 288] = uint8(order[stor[_163]].field_1712)
                        if order[stor[_163]].field_768 < order[stor[_163]].field_1024:
                            revert with 0, 17
                        if not uint8(sub_1bfa0ee3[cd[4]].field_2048):
                            if order[stor[_163]].field_256 and order[stor[_163]].field_768 - order[stor[_163]].field_1024 > -1 / order[stor[_163]].field_256:
                                revert with 0, 17
                            require ext_code.size(stor207)
                            call stor207.0x5a8c6596 with:
                                 gas gas_remaining wei
                                args 3, address(order[stor[_163]].field_1536), sub_1bfa0ee3[cd[4]].field_256, (order[stor[_163]].field_768 * order[stor[_163]].field_256) - (order[stor[_163]].field_1024 * order[stor[_163]].field_256)
                        else:
                            if bool(bool(uint8(sub_1bfa0ee3[cd[4]].field_2048) < 78)) or bool(bool(uint8(sub_1bfa0ee3[cd[4]].field_2048) < 32)):
                                if order[stor[_163]].field_256 and order[stor[_163]].field_768 - order[stor[_163]].field_1024 > -1 / order[stor[_163]].field_256:
                                    revert with 0, 17
                                if not 10^uint8(sub_1bfa0ee3[cd[4]].field_2048):
                                    revert with 0, 18
                                require ext_code.size(stor207)
                                call stor207.0x5a8c6596 with:
                                     gas gas_remaining wei
                                    args 3, address(order[stor[_163]].field_1536), sub_1bfa0ee3[cd[4]].field_256, (order[stor[_163]].field_768 * order[stor[_163]].field_256) - (order[stor[_163]].field_1024 * order[stor[_163]].field_256) / 10^uint8(sub_1bfa0ee3[cd[4]].field_2048)
                            else:
                                t = 10
                                u = 1
                                s = uint8(sub_1bfa0ee3[cd[4]].field_2048)
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if order[stor[_163]].field_256 and order[stor[_163]].field_768 - order[stor[_163]].field_1024 > -1 / order[stor[_163]].field_256:
                                    revert with 0, 17
                                if not t * u:
                                    revert with 0, 18
                                require ext_code.size(stor207)
                                call stor207.0x5a8c6596 with:
                                     gas gas_remaining wei
                                    args 3, address(order[stor[_163]].field_1536), sub_1bfa0ee3[cd[4]].field_256, (order[stor[_163]].field_768 * order[stor[_163]].field_256) - (order[stor[_163]].field_1024 * order[stor[_163]].field_256) / t * u
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = order[stor[_163]].field_0
                    mem[32] = 205
                    mem[mem[64]] = order[order[stor[_163]].field_0].field_0
                    mem[mem[64] + 32] = order[order[stor[_163]].field_0].field_256
                    mem[mem[64] + 64] = order[order[stor[_163]].field_0].field_512
                    mem[mem[64] + 96] = order[order[stor[_163]].field_0].field_768
                    if uint8(order[order[stor[_163]].field_0].field_1696) >= 2:
                        revert with 0, 33
                    mem[mem[64] + 128] = uint8(order[order[stor[_163]].field_0].field_1696)
                    if uint8(order[order[stor[_163]].field_0].field_1704) >= 4:
                        revert with 0, 33
                    mem[mem[64] + 160] = uint8(order[order[stor[_163]].field_0].field_1704)
                    if uint8(order[order[stor[_163]].field_0].field_1712) >= 7:
                        revert with 0, 33
                    mem[mem[64] + 192] = uint8(order[order[stor[_163]].field_0].field_1712)
                    mem[mem[64] + 224] = order[order[stor[_163]].field_0].field_1024
                    mem[mem[64] + 256] = order[order[stor[_163]].field_0].field_1280
                    emit 0x98b85391: order[order[stor[_163]].field_0].field_0, order[order[stor[_163]].field_0].field_256, order[order[stor[_163]].field_0].field_512, order[order[stor[_163]].field_0].field_768, uint8(order[order[stor[_163]].field_0].field_1536), uint8(order[order[stor[_163]].field_0].field_1536), uint8(order[order[stor[_163]].field_0].field_1536), order[order[stor[_163]].field_0].field_1024, order[order[stor[_163]].field_0].field_1280, address(order[order[stor[_163]].field_0].field_1536), cd[4]
                else:
                    if uint8(order[mem[(32 * idx) + 128]].field_1712) > 6:
                        revert with 0, 33
                    if not uint8(order[mem[(32 * idx) + 128]].field_1712):
                        mem[0] = order[mem[(32 * idx) + 128]].field_0
                        mem[32] = 205
                        uint8(order[order[mem[(32 * idx) + 128]].field_0].field_1712) = 4
                        if 0 or uint8(order[order[mem[(32 * idx) + 128]].field_0].field_1696) > 1:
                            revert with 0, 33
                        require ext_code.size(stor206)
                        if not True or bool(uint8(order[order[mem[(32 * idx) + 128]].field_0].field_1696)):
                            call stor206.0x525422cd with:
                                 gas gas_remaining wei
                                args sub_1bfa0ee3[cd[4]].field_768, order[mem[(32 * idx) + 128]].field_0, order[order[mem[(32 * idx) + 128]].field_0].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _180 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_180] = order[order[mem[(32 * idx) + 128]].field_0].field_0
                            mem[_180 + 32] = order[stor[_163]].field_256
                            mem[_180 + 64] = order[stor[_163]].field_512
                            mem[_180 + 96] = order[stor[_163]].field_768
                            mem[_180 + 128] = order[stor[_163]].field_1024
                            mem[_180 + 160] = order[stor[_163]].field_1280
                            mem[_180 + 192] = address(order[stor[_163]].field_1536)
                            if uint8(order[stor[_163]].field_1696) > 1:
                                revert with 0, 33
                            mem[_180 + 224] = uint8(order[stor[_163]].field_1696)
                            if uint8(order[stor[_163]].field_1704) > 3:
                                revert with 0, 33
                            mem[_180 + 256] = uint8(order[stor[_163]].field_1704)
                            if uint8(order[stor[_163]].field_1712) > 6:
                                revert with 0, 33
                            mem[_180 + 288] = uint8(order[stor[_163]].field_1712)
                            if order[stor[_163]].field_768 < order[stor[_163]].field_1024:
                                revert with 0, 17
                            require ext_code.size(stor207)
                            call stor207.0x5a8c6596 with:
                                 gas gas_remaining wei
                                args 3, address(order[stor[_163]].field_1536), sub_1bfa0ee3[cd[4]].field_0, order[stor[_163]].field_768 - order[stor[_163]].field_1024
                        else:
                            call stor206.0x525422cd with:
                                 gas gas_remaining wei
                                args sub_1bfa0ee3[cd[4]].field_512, order[mem[(32 * idx) + 128]].field_0, order[order[mem[(32 * idx) + 128]].field_0].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _181 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_181] = order[order[mem[(32 * idx) + 128]].field_0].field_0
                            mem[_181 + 32] = order[stor[_163]].field_256
                            mem[_181 + 64] = order[stor[_163]].field_512
                            mem[_181 + 96] = order[stor[_163]].field_768
                            mem[_181 + 128] = order[stor[_163]].field_1024
                            mem[_181 + 160] = order[stor[_163]].field_1280
                            mem[_181 + 192] = address(order[stor[_163]].field_1536)
                            if uint8(order[stor[_163]].field_1696) > 1:
                                revert with 0, 33
                            mem[_181 + 224] = uint8(order[stor[_163]].field_1696)
                            if uint8(order[stor[_163]].field_1704) > 3:
                                revert with 0, 33
                            mem[_181 + 256] = uint8(order[stor[_163]].field_1704)
                            if uint8(order[stor[_163]].field_1712) > 6:
                                revert with 0, 33
                            mem[_181 + 288] = uint8(order[stor[_163]].field_1712)
                            if order[stor[_163]].field_768 < order[stor[_163]].field_1024:
                                revert with 0, 17
                            if not uint8(sub_1bfa0ee3[cd[4]].field_2048):
                                if order[stor[_163]].field_256 and order[stor[_163]].field_768 - order[stor[_163]].field_1024 > -1 / order[stor[_163]].field_256:
                                    revert with 0, 17
                                require ext_code.size(stor207)
                                call stor207.0x5a8c6596 with:
                                     gas gas_remaining wei
                                    args 3, address(order[stor[_163]].field_1536), sub_1bfa0ee3[cd[4]].field_256, (order[stor[_163]].field_768 * order[stor[_163]].field_256) - (order[stor[_163]].field_1024 * order[stor[_163]].field_256)
                            else:
                                if bool(bool(uint8(sub_1bfa0ee3[cd[4]].field_2048) < 78)) or bool(bool(uint8(sub_1bfa0ee3[cd[4]].field_2048) < 32)):
                                    if order[stor[_163]].field_256 and order[stor[_163]].field_768 - order[stor[_163]].field_1024 > -1 / order[stor[_163]].field_256:
                                        revert with 0, 17
                                    if not 10^uint8(sub_1bfa0ee3[cd[4]].field_2048):
                                        revert with 0, 18
                                    require ext_code.size(stor207)
                                    call stor207.0x5a8c6596 with:
                                         gas gas_remaining wei
                                        args 3, address(order[stor[_163]].field_1536), sub_1bfa0ee3[cd[4]].field_256, (order[stor[_163]].field_768 * order[stor[_163]].field_256) - (order[stor[_163]].field_1024 * order[stor[_163]].field_256) / 10^uint8(sub_1bfa0ee3[cd[4]].field_2048)
                                else:
                                    t = 10
                                    u = 1
                                    s = uint8(sub_1bfa0ee3[cd[4]].field_2048)
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if order[stor[_163]].field_256 and order[stor[_163]].field_768 - order[stor[_163]].field_1024 > -1 / order[stor[_163]].field_256:
                                        revert with 0, 17
                                    if not t * u:
                                        revert with 0, 18
                                    require ext_code.size(stor207)
                                    call stor207.0x5a8c6596 with:
                                         gas gas_remaining wei
                                        args 3, address(order[stor[_163]].field_1536), sub_1bfa0ee3[cd[4]].field_256, (order[stor[_163]].field_768 * order[stor[_163]].field_256) - (order[stor[_163]].field_1024 * order[stor[_163]].field_256) / t * u
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[0] = order[stor[_163]].field_0
                        mem[32] = 205
                        mem[mem[64]] = order[order[stor[_163]].field_0].field_0
                        mem[mem[64] + 32] = order[order[stor[_163]].field_0].field_256
                        mem[mem[64] + 64] = order[order[stor[_163]].field_0].field_512
                        mem[mem[64] + 96] = order[order[stor[_163]].field_0].field_768
                        if uint8(order[order[stor[_163]].field_0].field_1696) >= 2:
                            revert with 0, 33
                        mem[mem[64] + 128] = uint8(order[order[stor[_163]].field_0].field_1696)
                        if uint8(order[order[stor[_163]].field_0].field_1704) >= 4:
                            revert with 0, 33
                        mem[mem[64] + 160] = uint8(order[order[stor[_163]].field_0].field_1704)
                        if uint8(order[order[stor[_163]].field_0].field_1712) >= 7:
                            revert with 0, 33
                        mem[mem[64] + 192] = uint8(order[order[stor[_163]].field_0].field_1712)
                        mem[mem[64] + 224] = order[order[stor[_163]].field_0].field_1024
                        mem[mem[64] + 256] = order[order[stor[_163]].field_0].field_1280
                        emit 0x98b85391: order[order[stor[_163]].field_0].field_0, order[order[stor[_163]].field_0].field_256, order[order[stor[_163]].field_0].field_512, order[order[stor[_163]].field_0].field_768, uint8(order[order[stor[_163]].field_0].field_1536), uint8(order[order[stor[_163]].field_0].field_1536), uint8(order[order[stor[_163]].field_0].field_1536), order[order[stor[_163]].field_0].field_1024, order[order[stor[_163]].field_0].field_1280, address(order[order[stor[_163]].field_0].field_1536), cd[4]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor101 = 1
}



}
