contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
mapping of uint256 sub_56e2039a;
mapping of uint128 sub_284dd0e2;
uint256 sub_09f13758;
uint256 sub_cda84ae8;
uint8 stor5;
address sub_9e19916dAddress; offset 8
mapping of uint8 stor6;
uint8 antiBotEnabled;
mapping of uint256 sub_96da4873;
uint8 stor9;
address gameContractAddress; offset 8
uint256 sub_2926d34a;
uint256 stor4DB6;
uint256 stor59DD;
uint256 stor6797;
uint256 stor7DFE;
uint256 stor8860;
uint256 stor8F33;
uint256 storB98B;
uint256 storD9D1;
uint256 storDC68;
uint256 storE268;
uint256 storEDC9;
uint256 storEE60;

function sub_09f13758(?) payable {
    return sub_09f13758
}

function sub_263d6f07(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function sub_284dd0e2(?) payable {
    require calldata.size - 4 >= 32
    return uint128(sub_284dd0e2[arg1]), uint128(sub_284dd0e2[arg1])
}

function sub_2926d34a(?) payable {
    return sub_2926d34a
}

function sub_56e2039a(?) payable {
    require calldata.size - 4 >= 32
    return sub_56e2039a[arg1]
}

function sub_5a112a60(?) payable {
    return bool(stor9)
}

function owner() payable {
    return owner
}

function sub_96da4873(?) payable {
    require calldata.size - 4 >= 32
    return sub_96da4873[arg1]
}

function sub_9e19916d(?) payable {
    return sub_9e19916dAddress
}

function sub_cda84ae8(?) payable {
    return sub_cda84ae8
}

function gameContract() payable {
    return gameContractAddress
}

function antiBotEnabled() payable {
    return bool(antiBotEnabled)
}

function sub_d99a2d0a(?) payable {
    return bool(stor5)
}

function _fallback() payable {
    revert
}

function sub_9e0eb60f(?) payable {
    require calldata.size - 4 >= 32
    return 0
}

function sub_ef237823(?) payable {
    require calldata.size - 4 >= 64
    return arg1
}

function sub_0627e598(?) payable {
    require calldata.size - 4 >= 32
    revert with 0, 17
}

function sub_4422fb42(?) payable {
    require calldata.size - 4 >= 32
    return 0, 0, arg1
}

function extractType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function extractReserve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function sub_3453e0ed(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1
}

function sub_46bd3687(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1
}

function sub_e2d9d014(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1
}

function sub_f994901b(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1
}

function sub_ff2bc761(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1
}

function sub_ab87c531(?) payable {
    require calldata.size - 4 >= 32
    return Mask(256, -128, arg1) << 128, uint128(arg1)
}

function sub_5328c671(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 248, arg1 << 248, arg1 << 248, arg1 << 248, arg1, 0, 0
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

function sub_29e13f49(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2926d34a = arg1
}

function sub_22190adf(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_09f13758 = arg1
    sub_cda84ae8 = arg2
}

function sub_2a752f26(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(sub_284dd0e2[arg1]) = arg3 or arg2 << 128
}

function sub_26680d00(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = uint8(bool(arg1))
}

function sub_4074009b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = uint8(bool(arg1))
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

function setGameContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gameContractAddress = arg1
}

function setAntiBotEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    antiBotEnabled = uint8(arg1)
}

function sub_574d283a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9e19916dAddress = address(arg1)
}

function sub_b629287f(?) payable {
    require calldata.size - 4 >= 64
    if 10000 < arg1:
        revert with 0, 17
    if arg2 and -arg1 + 10000 > -1 / arg2:
        revert with 0, 17
    return uint16((10000 * arg2) - (arg1 * arg2) / 10000)
}

function sub_c62884d1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    return 0, uint8(arg1), uint8(arg2), uint8(arg3), uint8(arg1), uint8(arg2), uint8(arg3), 0
}

function sub_6e0443a6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(bool(arg2))
    emit 0x4be06ef8: address(arg1), bool(arg2)
}

function sub_fd8022eb(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    return 0, uint8(arg1), uint8(arg1), uint8(arg2), uint8(arg3), uint8(arg4), uint8(arg5), 0
}

function sub_3171f40f(?) payable {
    require calldata.size - 4 >= 32
    if gameContractAddress != msg.sender:
        revert with 0, 'F:ONLY GAME CONTRACT'
    if sub_96da4873[arg1] > !sub_2926d34a:
        revert with 0, 17
    if sub_96da4873[arg1] + sub_2926d34a <= 12:
        sub_96da4873[arg1] += sub_2926d34a
    else:
        sub_96da4873[arg1] = 12
}

function sub_098e4fd3(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_9e19916dAddress)
    staticcall sub_9e19916dAddress.getDNA(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    revert with 0, 17
}

function sub_3b7bf2ee(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_9e19916dAddress)
    staticcall sub_9e19916dAddress.getDNA(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    revert with 0, 17
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

function sub_7fa23435(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 8
        sub_96da4873[cd[((32 * idx) + cd[4] + 36)]] = 4
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f7c3575e(?) payable {
    require calldata.size - 4 >= 608
    require calldata.size >= 164
    require calldata.size >= 260
    require calldata.size >= 356
    require calldata.size >= 452
    require arg4 == bool(arg4)
    require calldata.size >= 612
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require ext_code.size(sub_9e19916dAddress)
    staticcall sub_9e19916dAddress.getDNA(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    revert with 0, 17
}

function sub_bad8b17a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'FACTION: diff len'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 1
        sub_56e2039a[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f717d8ea(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 8
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_96da4873[cd[((32 * idx) + cd[4] + 36)]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 128] = 32
    mem[(32 * ('cd', 4).length) + 160] = ('cd', 4).length
    s = 0
    s = mem[64] + 64
    t = 128
    while ('cd', 4).length < ('cd', 4).length:
        mem[s] = mem[t]
        s = ('cd', 4).length + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_2e8facba(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor9:
        if not sub_96da4873[arg2]:
            revert with 0, 'GAME:LOOTING POINT'
        if sub_96da4873[arg2] < 1:
            revert with 0, 17
        sub_96da4873[arg2]--
    if antiBotEnabled:
        if arg3 < block.timestamp:
            revert with 0, 'GAME:EXPIRED CERT'
        mem[256 len arg4.length] = arg4[all]
        mem[arg4.length + 256] = 0
        mem[ceil32(arg4.length) + 288] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg4.length) + 316] = sha3(arg1, arg2, arg3)
        mem[ceil32(arg4.length) + 256] = 60
        if 65 == arg4.length:
            if mem[288] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if arg4.length != 64:
            revert with 0, 'ECDSA: invalid signature length'
        if uint255(mem[288]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if uint8((bool(mem[288]) >> 255) + 27) != 27:
            if uint8((bool(mem[288]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
        signer = erecover(sha3(mem[ceil32(arg4.length) + 288 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)]]), (bool(mem[288]) >> 255) + 27 << 248, mem[256], uint255(mem[288])) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if not stor6[address(signer)]:
            revert with 0, 'GAME:WRONG CERT'
}

function initialize() payable {
    if uint8(stor0.field_168):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        uint256(sub_284dd0e2[1]) = 0x200000000000000000000000000000005
        stor6797 = 0x400000000000000000000000000000005
        stor8860 = 0x100000000000000000000000000000002
        storEE60 = 0x300000000000000000000000000000006
        storB98B = 0x400000000000000000000000000000006
        stor59DD = 0x300000000000000000000000000000001
        sub_09f13758 = 700
        sub_cda84ae8 = 300
        sub_56e2039a[1] = 3
        storD9D1 = 2
        stor7DFE = 4
        storEDC9 = 3
        storE268 = 5
        stor8F33 = 1
        storDC68 = 4
        stor4DB6 = 6
        stor5 = 1
        antiBotEnabled = 1
    else:
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_168):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            uint256(sub_284dd0e2[1]) = 0x200000000000000000000000000000005
            stor6797 = 0x400000000000000000000000000000005
            stor8860 = 0x100000000000000000000000000000002
            storEE60 = 0x300000000000000000000000000000006
            storB98B = 0x400000000000000000000000000000006
            stor59DD = 0x300000000000000000000000000000001
            sub_09f13758 = 700
            sub_cda84ae8 = 300
            sub_56e2039a[1] = 3
            storD9D1 = 2
            stor7DFE = 4
            storEDC9 = 3
            storE268 = 5
            stor8F33 = 1
            storDC68 = 4
            stor4DB6 = 6
            stor5 = 1
            antiBotEnabled = 1
        else:
            uint16(stor0.field_160) = 257
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            uint256(sub_284dd0e2[1]) = 0x200000000000000000000000000000005
            stor6797 = 0x400000000000000000000000000000005
            stor8860 = 0x100000000000000000000000000000002
            storEE60 = 0x300000000000000000000000000000006
            storB98B = 0x400000000000000000000000000000006
            stor59DD = 0x300000000000000000000000000000001
            sub_09f13758 = 700
            sub_cda84ae8 = 300
            sub_56e2039a[1] = 3
            storD9D1 = 2
            stor7DFE = 4
            storEDC9 = 3
            storE268 = 5
            stor8F33 = 1
            storDC68 = 4
            stor4DB6 = 6
            stor5 = 1
            antiBotEnabled = 1
            uint8(stor0.field_168) = 0
}

function sub_1e791de5(?) payable {
    require calldata.size - 4 >= 128
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    if not stor5:
        return arg3 << 240, uint16(arg4)
    if arg1:
        if not arg2:
            if 10000 < sub_cda84ae8:
                revert with 0, 17
            if uint16(arg4) and -sub_cda84ae8 + 10000 > -1 / uint16(arg4):
                revert with 0, 17
            return arg3 << 240, uint16((10000 * uint16(arg4)) - (sub_cda84ae8 * uint16(arg4)) / 10000)
        if not arg1:
            if arg2:
                if 10000 < sub_cda84ae8:
                    revert with 0, 17
                if uint16(arg3) and -sub_cda84ae8 + 10000 > -1 / uint16(arg3):
                    revert with 0, 17
                return (10000 * uint16(arg3)) - (sub_cda84ae8 * uint16(arg3)) / 10000 << 240, uint16(arg4)
    else:
        if not arg2:
            return arg3 << 240, uint16(arg4)
        if not arg1:
            if arg2:
                if 10000 < sub_cda84ae8:
                    revert with 0, 17
                if uint16(arg3) and -sub_cda84ae8 + 10000 > -1 / uint16(arg3):
                    revert with 0, 17
                return (10000 * uint16(arg3)) - (sub_cda84ae8 * uint16(arg3)) / 10000 << 240, uint16(arg4)
        else:
            if not arg2:
                if 10000 < sub_cda84ae8:
                    revert with 0, 17
                if uint16(arg4) and -sub_cda84ae8 + 10000 > -1 / uint16(arg4):
                    revert with 0, 17
                return arg3 << 240, uint16((10000 * uint16(arg4)) - (sub_cda84ae8 * uint16(arg4)) / 10000)
            if not arg1:
                if arg2:
                    if 10000 < sub_cda84ae8:
                        revert with 0, 17
                    if uint16(arg3) and -sub_cda84ae8 + 10000 > -1 / uint16(arg3):
                        revert with 0, 17
                    return (10000 * uint16(arg3)) - (sub_cda84ae8 * uint16(arg3)) / 10000 << 240, uint16(arg4)
    if uint128(uint256(sub_284dd0e2[arg1])) >> 128 == arg2:
        if 10000 < sub_09f13758:
            revert with 0, 17
        if uint16(arg4) and -sub_09f13758 + 10000 > -1 / uint16(arg4):
            revert with 0, 17
        return arg3 << 240, uint16((10000 * uint16(arg4)) - (sub_09f13758 * uint16(arg4)) / 10000)
    if uint128(sub_284dd0e2[arg1]) == arg2:
        if 10000 < sub_09f13758:
            revert with 0, 17
        if uint16(arg4) and -sub_09f13758 + 10000 > -1 / uint16(arg4):
            revert with 0, 17
        return arg3 << 240, uint16((10000 * uint16(arg4)) - (sub_09f13758 * uint16(arg4)) / 10000)
    if uint128(uint256(sub_284dd0e2[arg2])) >> 128 != arg1:
        if uint128(sub_284dd0e2[arg2]) != arg1:
            return arg3 << 240, uint16(arg4)
    if 10000 < sub_09f13758:
        revert with 0, 17
    if uint16(arg3) and -sub_09f13758 + 10000 > -1 / uint16(arg3):
        revert with 0, 17
    return (10000 * uint16(arg3)) - (sub_09f13758 * uint16(arg3)) / 10000 << 240, uint16(arg4)
}

function sub_09b090bd(?) payable {
    require calldata.size - 4 >= 224
    if arg3 / 5 <= arg4:
        if arg7 > -1:
            revert with 0, 17
        if arg1 <= arg2:
            if arg6 > !(arg7 / 100):
                revert with 0, 17
            if arg6 + (arg7 / 100) > !arg5:
                revert with 0, 17
            if arg6 + (arg7 / 100) + arg5 <= 40:
                return (arg6 + (arg7 / 100) + arg5)
        else:
            if arg1 < arg2:
                revert with 0, 17
            if arg1 - arg2 <= 3:
                if not arg1 - arg2:
                    revert with 0, 18
                if arg6 > !(arg7 / 100):
                    revert with 0, 17
                if arg6 + (arg7 / 100) > !arg5:
                    revert with 0, 17
                if arg6 + (arg7 / 100) + arg5 <= 40:
                    return (arg6 + (arg7 / 100) + arg5)
            else:
                if 1 > !(arg1 - arg2 / 2):
                    revert with 0, 17
                s = (arg1 - arg2 / 2) + 1
                t = arg1 - arg2
                while s < t:
                    if not s:
                        revert with 0, 18
                    if arg1 - arg2 / s > !s:
                        revert with 0, 17
                    s = (arg1 - arg2 / s) + s / 2
                    t = s
                    continue 
                if not t:
                    revert with 0, 18
                if arg6 > !(arg7 / 100):
                    revert with 0, 17
                if arg6 + (arg7 / 100) > !(arg5 / t):
                    revert with 0, 17
                if arg6 + (arg7 / 100) + (arg5 / t) <= 40:
                    return (arg6 + (arg7 / 100) + (arg5 / t))
    else:
        if arg3 / 5 < arg4:
            revert with 0, 17
        if (arg3 / 5) - arg4 and arg7 > -1 / (arg3 / 5) - arg4:
            revert with 0, 17
        if arg1 <= arg2:
            if arg6 > !((arg3 / 5 * arg7) - (arg4 * arg7) / 100):
                revert with 0, 17
            if arg6 + ((arg3 / 5 * arg7) - (arg4 * arg7) / 100) > !arg5:
                revert with 0, 17
            if arg6 + ((arg3 / 5 * arg7) - (arg4 * arg7) / 100) + arg5 <= 40:
                return (arg6 + ((arg3 / 5 * arg7) - (arg4 * arg7) / 100) + arg5)
        else:
            if arg1 < arg2:
                revert with 0, 17
            if arg1 - arg2 <= 3:
                if not arg1 - arg2:
                    revert with 0, 18
                if arg6 > !((arg3 / 5 * arg7) - (arg4 * arg7) / 100):
                    revert with 0, 17
                if arg6 + ((arg3 / 5 * arg7) - (arg4 * arg7) / 100) > !arg5:
                    revert with 0, 17
                if arg6 + ((arg3 / 5 * arg7) - (arg4 * arg7) / 100) + arg5 <= 40:
                    return (arg6 + ((arg3 / 5 * arg7) - (arg4 * arg7) / 100) + arg5)
            else:
                if 1 > !(arg1 - arg2 / 2):
                    revert with 0, 17
                s = (arg1 - arg2 / 2) + 1
                t = arg1 - arg2
                while s < t:
                    if not s:
                        revert with 0, 18
                    if arg1 - arg2 / s > !s:
                        revert with 0, 17
                    s = (arg1 - arg2 / s) + s / 2
                    t = s
                    continue 
                if not t:
                    revert with 0, 18
                if arg6 > !((arg3 / 5 * arg7) - (arg4 * arg7) / 100):
                    revert with 0, 17
                if arg6 + ((arg3 / 5 * arg7) - (arg4 * arg7) / 100) > !(arg5 / t):
                    revert with 0, 17
                if arg6 + ((arg3 / 5 * arg7) - (arg4 * arg7) / 100) + (arg5 / t) <= 40:
                    return (arg6 + ((arg3 / 5 * arg7) - (arg4 * arg7) / 100) + (arg5 / t))
    return 40
}



}
