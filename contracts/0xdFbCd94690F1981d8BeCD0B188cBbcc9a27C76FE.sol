contract main {




// =====================  Runtime code  =====================


#
#  - addLiquidity(address arg1, uint256 arg2, address arg3)
#  - sub_715ec45c(?)
#  - sub_81660f5d(?)
#
const CROSSER_ROLE = ('CROSSER_ROLE' << 160)

const DEFAULT_ADMIN_ROLE = 0


mapping of uint256 threshold;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint256 stor3;
mapping of struct roleAdmin;
mapping of uint256 sub_64078943;
mapping of uint256 sub_9c8d70be;
mapping of uint256 sub_0b19993f;
mapping of address sub_db697be4;
address sub_100be3bdAddress;
mapping of address sub_d692f4c5;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of address pairs;
mapping of uint8 stor15;
uint256 chainid;
mapping of uint8 stor99;

function sub_0b19993f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0b19993f[arg1]
}

function sub_100be3bd(?) payable {
    return sub_100be3bdAddress
}

function txMinted(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor11[arg1[all]])
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function calculateRemoveFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 <= sub_0b19993f[address(arg1)]:
        revert with 0, 'not enough token'
    if arg2 < sub_0b19993f[address(arg1)]:
        revert with 0, 17
    return sub_0b19993f[address(arg1)], arg2 - sub_0b19993f[address(arg1)]
}

function sub_53ad72e5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor13[arg1[all]])
}

function sub_64078943(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_64078943[arg1][arg2]
}

function sub_68b1188f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor15[arg1][arg2])
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function txUnlocked(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor12[arg1[all]])
}

function sub_9c8d70be(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_9c8d70be[arg1][arg2]
}

function threshold(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return threshold[arg1]
}

function chainid() payable {
    return chainid
}

function sub_d692f4c5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_d692f4c5[arg1][arg2]
}

function sub_db697be4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_db697be4[arg1][arg2]
}

function pairs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pairs[arg1]
}

function _fallback() payable {
    revert
}

function setRemoveFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not admin'
    sub_0b19993f[address(arg1)] = arg2
}

function setFeeToDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not admin'
    if not arg1:
        revert with 0, 'zero address'
    sub_100be3bdAddress = arg1
}

function removePair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not admin'
    if not pairs[address(arg1)]:
        revert with 0, 'token not supported'
    pairs[address(arg1)] = 0
}

function setThreshold(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not admin'
    threshold[address(arg1)] = arg2
    emit ThresholdChanged(address(arg1), threshold[address(arg1)], arg2);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function removeSupportToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not admin'
    if not sub_d692f4c5[address(arg1)][arg2]:
        revert with 0, 'TwoWay: toke not supported'
    sub_d692f4c5[address(arg1)][arg2] = 0
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function addSupportToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not admin'
    if sub_d692f4c5[address(arg1)][arg3]:
        revert with 0, 'TwoWay: Toke already Supported'
    sub_d692f4c5[address(arg1)][arg3] = arg2
    stor15[address(arg1)][arg3] = 1
}

function setFee(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not admin'
    if arg4 > 10^18:
        revert with 0, 'fee ratio not correct'
    sub_64078943[address(arg1)][arg2] = arg3
    sub_9c8d70be[address(arg1)][arg2] = arg4
    emit FeeChange(address(arg1), arg2, arg3, arg4);
}

function getMaxToken0AmountOut(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(pairs[address(arg1)])
    staticcall pairs[address(arg1)].getReserves(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function getMaxToken1AmountOut(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(pairs[address(arg1)])
    staticcall pairs[address(arg1)].getReserves(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[32]
}

function setUnlockFeeOn(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not admin'
    if not sub_d692f4c5[address(arg1)][arg2]:
        revert with 0, 'TwoWay: not support this token'
    if arg3 == bool(stor15[address(arg1)][arg2]):
        revert with 0, 'dont need change'
    stor15[address(arg1)][arg2] = uint8(arg3)
}

function calculateFee(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg3 and sub_9c8d70be[address(arg1)][arg2] > -1 / arg3:
        revert with 0, 17
    if sub_64078943[address(arg1)][arg2] > !(arg3 * sub_9c8d70be[address(arg1)][arg2] / 10^18):
        revert with 0, 17
    if arg3 >= sub_64078943[address(arg1)][arg2] + (arg3 * sub_9c8d70be[address(arg1)][arg2] / 10^18):
        if arg3 < sub_64078943[address(arg1)][arg2]:
            revert with 0, 17
        if arg3 - sub_64078943[address(arg1)][arg2] < arg3 * sub_9c8d70be[address(arg1)][arg2] / 10^18:
            revert with 0, 17
        return sub_64078943[address(arg1)][arg2], 
               arg3 * sub_9c8d70be[address(arg1)][arg2] / 10^18,
               arg3 - sub_64078943[address(arg1)][arg2] - (arg3 * sub_9c8d70be[address(arg1)][arg2] / 10^18)
    if arg3 < 0:
        revert with 0, 17
    if arg3 < arg3 * sub_9c8d70be[address(arg1)][arg2] / 10^18:
        revert with 0, 17
    return 0, arg3 * sub_9c8d70be[address(arg1)][arg2] / 10^18, arg3 - (arg3 * sub_9c8d70be[address(arg1)][arg2] / 10^18)
}

function sub_27f8dd9b(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not admin'
    if not pairs[address(cd[4])]:
        revert with 0, 'not support token'
    mem[ceil32(32 * ('cd', 36).length) + 97] = 0x19301e7500000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 36).length) + 101] = 32
    require ext_code.size(pairs[address(cd[4])])
    call pairs[address(cd[4])].0x19301e75 with:
         gas gas_remaining wei
        args Array(len=('cd', 36).length, data=mem[128 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_32d476fa(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not admin'
    if not pairs[address(cd[4])]:
        revert with 0, 'not support token'
    mem[ceil32(32 * ('cd', 36).length) + 97] = 0x2da0e0f800000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 36).length) + 101] = 32
    require ext_code.size(pairs[address(cd[4])])
    call pairs[address(cd[4])].0x2da0e0f8 with:
         gas gas_remaining wei
        args Array(len=('cd', 36).length, data=mem[128 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_31b9e5a3(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not admin'
    if pairs[address(cd[4])]:
        revert with 0, 'token already supported'
    if not address(cd[36]):
        revert with 0, 'zero address'
    pairs[address(cd[4])] = address(cd[36])
    mem[ceil32(32 * ('cd', 68).length) + 97] = 0x19301e7500000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 68).length) + 101] = 32
    require ext_code.size(address(cd[36]))
    call address(cd[36]).0x19301e75 with:
         gas gas_remaining wei
        args Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = uint256(roleAdmin[arg1].field_256)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = uint256(roleAdmin[arg1].field_256)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_03507ba5(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'TwoWay: chainIDs length not match'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0, 'TwoWay: caller is not admin'
        if not sub_d692f4c5[address(mem[(32 * idx) + 128])][mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
            revert with 0, 'TwoWay: toke not supported'
        mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        mem[32] = sha3(address(mem[(32 * idx) + 128]), 10)
        sub_d692f4c5[address(mem[(32 * idx) + 128])][mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ee8a6acf(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'TwoWay: token length not match'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'TwoWay: chainIDs length not match'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0, 'TwoWay: caller is not admin'
        if sub_d692f4c5[address(mem[(32 * idx) + 128])][mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]]:
            revert with 0, 'TwoWay: Toke already Supported'
        sub_d692f4c5[address(mem[(32 * idx) + 128])][mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
        mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        mem[32] = sha3(address(mem[(32 * idx) + 128]), 15)
        stor15[address(mem[(32 * idx) + 128])][mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a5389e0b(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 100 < 99 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 100 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 100
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 131
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'len not match'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'len not match'
    if ('cd', 4).length != ('cd', 100).length:
        revert with 0, 'len not match'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _180 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
            revert with 0, 50
        _182 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99]:
            revert with 0, 50
        _184 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 131]
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0, 'TwoWay: caller is not admin'
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 131] > 10^18:
            revert with 0, 'fee ratio not correct'
        sub_64078943[address(mem[(32 * idx) + 128])][mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        mem[32] = sha3(address(mem[(32 * idx) + 128]), 6)
        sub_9c8d70be[address(mem[(32 * idx) + 128])][mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 131]
        mem[mem[64]] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 32] = _180
        mem[mem[64] + 64] = _182
        mem[mem[64] + 96] = _184
        emit FeeChange(mem[mem[64]], _180, _182, _184);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function removeLiquidity(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if arg2 <= 0:
        revert with 0, 'zero lp'
    if not pairs[address(arg1)]:
        revert with 0, 'not soupport pair'
    mem[100] = msg.sender
    require ext_code.size(pairs[address(arg1)])
    staticcall pairs[address(arg1)].0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Not enough lp'
    mem[0] = arg1
    mem[32] = 7
    mem[ceil32(return_data.size) + 96] = 0x779afa3700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = arg3
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 196] = sub_100be3bdAddress
    mem[ceil32(return_data.size) + 228] = sub_0b19993f[address(arg1)]
    require ext_code.size(pairs[address(arg1)])
    call pairs[address(arg1)].burn(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg3), arg2, sub_100be3bdAddress, sub_0b19993f[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 96
    _16 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require uint32(msg.sender), address(arg3) << 64 <= test266151307()
    require ceil32(return_data.size) + uint32(msg.sender), address(arg3) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
    _18 = mem[ceil32(return_data.size) + uint32(msg.sender), address(arg3) << 64 + 96]
    if mem[ceil32(return_data.size) + uint32(msg.sender), address(arg3) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + uint32(msg.sender), address(arg3) << 64 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + uint32(msg.sender), address(arg3) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + uint32(msg.sender), address(arg3) << 64 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _18
    require uint32(msg.sender), address(arg3) << 64 + (32 * _18) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _18] = mem[ceil32(return_data.size) + uint32(msg.sender), address(arg3) << 64 + 128 len 32 * _18]
    require 0, Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _46 = mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 96]
    if mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 0, 65
    _47 = mem[64]
    if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 96]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 96]) + 1
    mem[_47] = _46
    require 0, Mask(224, 32, arg2) >> 32 + (32 * _46) + 32 <= return_data.size
    mem[_47 + 32 len 32 * _46] = mem[ceil32(return_data.size) + 0, Mask(224, 32, arg2) >> 32 + 128 len 32 * _46]
    idx = 0
    while idx < _18:
        if idx >= mem[_47]:
            revert with 0, 50
        if mem[(32 * idx) + _47 + 32] > 0:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[32] = sha3(address(arg1), 10)
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            _98 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            if idx >= mem[_47]:
                revert with 0, 50
            _100 = mem[(32 * idx) + _47 + 32]
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = sub_d692f4c5[address(arg1)][mem[0]]
            mem[mem[64] + 64] = chainid
            mem[mem[64] + 96] = _98
            mem[mem[64] + 128] = msg.sender
            mem[mem[64] + 160] = arg3
            mem[mem[64] + 192] = _100
            emit CrossBurn(address(arg1), mem[mem[64] + 32], chainid, _98, msg.sender, address(arg3), _100);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _91 = mem[64]
    mem[mem[64]] = _16
    mem[mem[64] + 32] = 96
    _97 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 128 len 32 * _97] = mem[(2 * ceil32(return_data.size)) + 128 len 32 * _97]
    mem[mem[64] + 64] = (32 * _97) + 128
    _108 = mem[_47]
    mem[_91 + (32 * _97) + 128] = mem[_47]
    mem[_91 + (32 * _97) + 160 len 32 * _108] = mem[_47 + 32 len 32 * _108]
    return memory
      from mem[64]
       len _91 + (32 * _97) + (32 * _108) + -mem[64] + 160
}

function sub_cf28f67c(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 97 < 96 or ceil32(ceil32(arg6.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[128 len arg6.length] = arg6[all]
    mem[arg6.length + 128] = 0
    if not roleAdmin['CROSSER_ROLE'][address(msg.sender)].field_0:
        revert with 0, 'TwoWay: caller is not crosser'
    mem[ceil32(ceil32(arg6.length)) + 97 len ceil32(arg6.length)] = arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]
    mem[arg6.length + ceil32(ceil32(arg6.length)) + 97] = 11
    if stor[sha3(mem[ceil32(ceil32(arg6.length)) + 97 len arg6.length + 32])]:
        revert with 0, 'TwoWay: tx minted'
    if not threshold[address(arg1)]:
        revert with 0, 'ProposalVote: threshold should be greater than 0'
    mem[ceil32(ceil32(arg6.length)) + 221 len ceil32(arg6.length)] = arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]
    if stor1[address(arg1)][address(arg3)][address(arg4)][arg5][Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * arg6.length) - 256]:
        revert with 0, '_vote::proposal finished'
    if stor2[address(arg1)][address(arg3)][address(arg4)][arg5][Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * arg6.length) - 256][msg.sender]:
        revert with 0, '_vote::msg.sender voted'
    if stor3[address(arg1)][address(arg3)][address(arg4)][arg5][Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * arg6.length) - 256] > -2:
        revert with 0, 17
    stor3[address(arg1)][address(arg3)][address(arg4)][arg5][Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * arg6.length) - 256]++
    stor2[address(arg1)][address(arg3)][address(arg4)][arg5][Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * arg6.length) - 256][msg.sender] = 1
    if threshold[address(arg1)] > stor3[address(arg1)][address(arg3)][address(arg4)][arg5][Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * arg6.length) - 256]:
        emit ProposalVoted(address(arg1), address(arg3), address(arg4), arg5, msg.sender, stor3[address(arg1)][address(arg3)][address(arg4)][arg5][Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * arg6.length) - 256], threshold[address(arg1)]);
    else:
        stor1[address(arg1)][address(arg3)][address(arg4)][arg5][Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * arg6.length) - 256] = 1
        mem[arg6.length + ceil32(ceil32(arg6.length)) + 221] = address(arg1)
        mem[arg6.length + ceil32(ceil32(arg6.length)) + 253] = address(arg3)
        mem[arg6.length + ceil32(ceil32(arg6.length)) + 285] = address(arg4)
        mem[arg6.length + ceil32(ceil32(arg6.length)) + 317] = arg5
        mem[arg6.length + ceil32(ceil32(arg6.length)) + 349] = msg.sender
        mem[arg6.length + ceil32(ceil32(arg6.length)) + 381] = stor3[address(arg1)][address(arg3)][address(arg4)][arg5][Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * arg6.length) - 256]
        mem[arg6.length + ceil32(ceil32(arg6.length)) + 413] = threshold[address(arg1)]
        emit ProposalVoted(address(arg1), address(arg3), address(arg4), arg5, msg.sender, stor3[address(arg1)][address(arg3)][address(arg4)][arg5][Mask(8 * arg6.length, -(8 * arg6.length) + 256, arg6[all], mem[arg6.length + 128 len ceil32(arg6.length) - arg6.length]) << (8 * arg6.length) - 256], threshold[address(arg1)]);
        mem[arg6.length + ceil32(ceil32(arg6.length)) + 221 len ceil32(arg6.length)] = arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg6.length + 92) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256
        mem[(2 * arg6.length) + ceil32(ceil32(arg6.length)) + 221] = 11
        stor[mem[arg6.length + ceil32(ceil32(arg6.length)) + ceil32(arg6.length) + 221 len arg6.length + -ceil32(arg6.length) + 32]][Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg6.length + 92) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg6.length)) + (8 * ceil32(ceil32(arg6.length))) + 256) << (8 * ceil32(arg6.length)) - 256] = 1
        require ext_code.size(pairs[address(arg1)])
        call pairs[address(arg1)].diff0() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(pairs[address(arg1)])
        staticcall pairs[address(arg1)].getReserves(uint256 rg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if arg5 / ext_call.return_data[0] > ext_call.return_data[0]:
            emit Rollback(address(arg1), sub_d692f4c5[address(arg1)][arg2], chainid, arg2, address(arg3), address(arg4), arg5, Array(len=arg6.length, data=arg6[all]));
        else:
            if arg5 / ext_call.return_data[0] and sub_9c8d70be[address(arg1)][arg2] > -1 / arg5 / ext_call.return_data[0]:
                revert with 0, 17
            if sub_64078943[address(arg1)][arg2] > !(arg5 / ext_call.return_data[0] * sub_9c8d70be[address(arg1)][arg2] / 10^18):
                revert with 0, 17
            if arg5 / ext_call.return_data[0] >= sub_64078943[address(arg1)][arg2] + (arg5 / ext_call.return_data[0] * sub_9c8d70be[address(arg1)][arg2] / 10^18):
                if arg5 / ext_call.return_data[0] < sub_64078943[address(arg1)][arg2]:
                    revert with 0, 17
                if (arg5 / ext_call.return_data[0]) - sub_64078943[address(arg1)][arg2] < arg5 / ext_call.return_data[0] * sub_9c8d70be[address(arg1)][arg2] / 10^18:
                    revert with 0, 17
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].0x79f658ba with:
                     gas gas_remaining wei
                    args address(arg4), arg5 / ext_call.return_data[0], sub_64078943[address(arg1)][arg2], (arg5 / ext_call.return_data[0]) - sub_64078943[address(arg1)][arg2] - (arg5 / ext_call.return_data[0] * sub_9c8d70be[address(arg1)][arg2] / 10^18), sub_100be3bdAddress, arg2
            else:
                if arg5 / ext_call.return_data[0] < 0:
                    revert with 0, 17
                if arg5 / ext_call.return_data[0] < arg5 / ext_call.return_data[0] * sub_9c8d70be[address(arg1)][arg2] / 10^18:
                    revert with 0, 17
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].0x79f658ba with:
                     gas gas_remaining wei
                    args address(arg4), arg5 / ext_call.return_data[0], 0, (arg5 / ext_call.return_data[0]) - (arg5 / ext_call.return_data[0] * sub_9c8d70be[address(arg1)][arg2] / 10^18), sub_100be3bdAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function crossOut(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    if not sub_d692f4c5[address(arg1)][arg2]:
        revert with 0, 'TwoWay: not support this token'
    if arg4 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TwoWay: amount must be greater than 0'
    if not arg3:
        revert with 0, 'TwoWay: to is empty'
    require ext_code.size(pairs[address(arg1)])
    call pairs[address(arg1)].diff0() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairs[address(arg1)])
    staticcall pairs[address(arg1)].getReserves(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    mem[ceil32(return_data.size) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 18
    if arg4 < ext_call.return_data[32] / ext_call.return_data[0]:
        if not arg4:
            if arg4 > ext_call.return_data[32] / ext_call.return_data[0]:
                if arg4 < arg4:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = this.address
                mem[(2 * ceil32(return_data.size)) + 196] = 0
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                        if not mem[(2 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].diff0() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg4 < arg4:
                    revert with 0, 17
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                emit Lock(address(arg1), sub_d692f4c5[address(arg1)][arg2], chainid, arg2, msg.sender, address(arg3), 0);
        else:
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = pairs[address(arg1)]
            mem[(2 * ceil32(return_data.size)) + 196] = arg4
            mem[(2 * ceil32(return_data.size)) + 96] = 100
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 228] = 32
            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, pairs[address(arg1)], arg4, 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, pairs[address(arg1)], arg4, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, pairs[address(arg1)], arg4, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + 296] = arg3
                mem[(2 * ceil32(return_data.size)) + 328] = arg4
                mem[(2 * ceil32(return_data.size)) + 360] = arg2
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].swapOut(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg3), arg4, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].diff0() with:
                     gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg4 and ext_call.return_data[0] > -1 / arg4:
                    revert with 0, 17
                emit CrossBurn(address(arg1), sub_d692f4c5[address(arg1)][arg2], chainid, arg2, msg.sender, address(arg3), arg4 * ext_call.return_data[0]);
                if arg4 > ext_call.return_data[32] / ext_call.return_data[0]:
                    if arg4 < arg4:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 328] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 360] = this.address
                    mem[(4 * ceil32(return_data.size)) + 392] = 0
                    mem[(4 * ceil32(return_data.size)) + 292] = 100
                    mem[(4 * ceil32(return_data.size)) + 324 len 4] = unknown_0x23b872dd(?????)
                    mem[(4 * ceil32(return_data.size)) + 424] = 32
                    mem[(4 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 488 len 128] = 0, msg.sender, address(this.address), 0, 0
                    mem[(4 * ceil32(return_data.size)) + 588] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, msg.sender, address(this.address), 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, 0, msg.sender, address(this.address), 0, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(pairs[address(arg1)])
                        call pairs[address(arg1)].diff0() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 < arg4:
                            revert with 0, 17
                        if False and ext_call.return_data[0] > 0:
                            revert with 0, 17
                        emit Lock(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5, address rg6, uint256 rg7):
                                  address(arg1),
                                  sub_d692f4c5[address(arg1)][arg2],
                                  chainid,
                                  arg2,
                                  msg.sender,
                                  address(arg3),
                                  0,
                                  mem[(6 * ceil32(return_data.size)) + 712 len 9 * ceil32(return_data.size)],
                    else:
                        mem[(4 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 520] == bool(mem[(4 * ceil32(return_data.size)) + 520])
                            if not mem[(4 * ceil32(return_data.size)) + 520]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(pairs[address(arg1)])
                        call pairs[address(arg1)].diff0() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 < arg4:
                            revert with 0, 17
                        if False and ext_call.return_data[0] > 0:
                            revert with 0, 17
                        emit Lock(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5, address rg6, uint256 rg7):
                                  address(arg1),
                                  sub_d692f4c5[address(arg1)][arg2],
                                  chainid,
                                  arg2,
                                  msg.sender,
                                  address(arg3),
                                  0,
                                  mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 9 * ceil32(return_data.size)],
            else:
                mem[(2 * ceil32(return_data.size)) + 292] = return_data.size
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg4
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].swapOut(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg3), arg4, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].diff0() with:
                     gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg4 and ext_call.return_data[0] > -1 / arg4:
                    revert with 0, 17
                emit CrossBurn(address(arg1), sub_d692f4c5[address(arg1)][arg2], chainid, arg2, msg.sender, address(arg3), arg4 * ext_call.return_data[0]);
                if arg4 > ext_call.return_data[32] / ext_call.return_data[0]:
                    if arg4 < arg4:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 100
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0x23b872dd(?????)
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 128] = 0, msg.sender, address(this.address), 0, 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, msg.sender, address(this.address), 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, 0, msg.sender, address(this.address), 0, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(pairs[address(arg1)])
                        call pairs[address(arg1)].diff0() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 < arg4:
                            revert with 0, 17
                        if False and ext_call.return_data[0] > 0:
                            revert with 0, 17
                        emit Lock(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5, address rg6, uint256 rg7):
                                  address(arg1),
                                  sub_d692f4c5[address(arg1)][arg2],
                                  chainid,
                                  arg2,
                                  msg.sender,
                                  address(arg3),
                                  0,
                                  mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 9 * ceil32(return_data.size)],
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 494] = 32
                            mem[(8 * ceil32(return_data.size)) + 526] = 32
                            mem[(8 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 490
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                            if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                mem[(8 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 494] = 32
                                mem[(8 * ceil32(return_data.size)) + 526] = 42
                                mem[(8 * ceil32(return_data.size)) + 558] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 590] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 490
                                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        require ext_code.size(pairs[address(arg1)])
                        call pairs[address(arg1)].diff0() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 < arg4:
                            revert with 0, 17
                        if False and ext_call.return_data[0] > 0:
                            revert with 0, 17
                        emit Lock(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5, address rg6, uint256 rg7):
                                  address(arg1),
                                  sub_d692f4c5[address(arg1)][arg2],
                                  chainid,
                                  arg2,
                                  msg.sender,
                                  address(arg3),
                                  0,
                                  mem[(9 * ceil32(return_data.size)) + 714 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
    else:
        if not ext_call.return_data[32] / ext_call.return_data[0]:
            if arg4 > ext_call.return_data[32] / ext_call.return_data[0]:
                if arg4 < ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = this.address
                mem[(2 * ceil32(return_data.size)) + 196] = arg4 - (ext_call.return_data[32] / ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4 - (ext_call.return_data[32] / ext_call.return_data[0]), 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4 - (ext_call.return_data[32] / ext_call.return_data[0]), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4 - (ext_call.return_data[32] / ext_call.return_data[0]), 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                        if not mem[(2 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].diff0() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg4 < ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 0, 17
                if arg4 - (ext_call.return_data[32] / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / arg4 - (ext_call.return_data[32] / ext_call.return_data[0]):
                    revert with 0, 17
                emit Lock(address(arg1), sub_d692f4c5[address(arg1)][arg2], chainid, arg2, msg.sender, address(arg3), (arg4 * ext_call.return_data[0]) - (ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]));
        else:
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = pairs[address(arg1)]
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[32] / ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = 100
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 228] = 32
            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, pairs[address(arg1)], ext_call.return_data[32] / ext_call.return_data[0], 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, pairs[address(arg1)], ext_call.return_data[32] / ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, pairs[address(arg1)], ext_call.return_data[32] / ext_call.return_data[0], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + 296] = arg3
                mem[(2 * ceil32(return_data.size)) + 328] = ext_call.return_data[32] / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 360] = arg2
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].swapOut(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg3), ext_call.return_data[32] / ext_call.return_data[0], arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].diff0() with:
                     gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 0, 17
                emit CrossBurn(address(arg1), sub_d692f4c5[address(arg1)][arg2], chainid, arg2, msg.sender, address(arg3), ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]);
                if arg4 > ext_call.return_data[32] / ext_call.return_data[0]:
                    if arg4 < ext_call.return_data[32] / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 328] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 360] = this.address
                    mem[(4 * ceil32(return_data.size)) + 392] = arg4 - (ext_call.return_data[32] / ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 292] = 100
                    mem[(4 * ceil32(return_data.size)) + 324 len 4] = unknown_0x23b872dd(?????)
                    mem[(4 * ceil32(return_data.size)) + 424] = 32
                    mem[(4 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 488 len 128] = 0, msg.sender, address(this.address), arg4 - (ext_call.return_data[32] / ext_call.return_data[0]), 0
                    mem[(4 * ceil32(return_data.size)) + 588] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, msg.sender, address(this.address), arg4 - (ext_call.return_data[32] / ext_call.return_data[0]), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, 0, msg.sender, address(this.address), arg4 - (ext_call.return_data[32] / ext_call.return_data[0]), 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(pairs[address(arg1)])
                        call pairs[address(arg1)].diff0() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 < ext_call.return_data[32] / ext_call.return_data[0]:
                            revert with 0, 17
                        if arg4 - (ext_call.return_data[32] / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / arg4 - (ext_call.return_data[32] / ext_call.return_data[0]):
                            revert with 0, 17
                        emit Lock(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5, address rg6, uint256 rg7):
                                  address(arg1),
                                  sub_d692f4c5[address(arg1)][arg2],
                                  chainid,
                                  arg2,
                                  msg.sender,
                                  address(arg3),
                                  (arg4 * ext_call.return_data[0]) - (ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]),
                                  mem[(6 * ceil32(return_data.size)) + 712 len 9 * ceil32(return_data.size)],
                    else:
                        mem[(4 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 520] == bool(mem[(4 * ceil32(return_data.size)) + 520])
                            if not mem[(4 * ceil32(return_data.size)) + 520]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(pairs[address(arg1)])
                        call pairs[address(arg1)].diff0() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 < ext_call.return_data[32] / ext_call.return_data[0]:
                            revert with 0, 17
                        if arg4 - (ext_call.return_data[32] / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / arg4 - (ext_call.return_data[32] / ext_call.return_data[0]):
                            revert with 0, 17
                        emit Lock(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5, address rg6, uint256 rg7):
                                  address(arg1),
                                  sub_d692f4c5[address(arg1)][arg2],
                                  chainid,
                                  arg2,
                                  msg.sender,
                                  address(arg3),
                                  (arg4 * ext_call.return_data[0]) - (ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]),
                                  mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 9 * ceil32(return_data.size)],
            else:
                mem[(2 * ceil32(return_data.size)) + 292] = return_data.size
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[32] / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].swapOut(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg3), ext_call.return_data[32] / ext_call.return_data[0], arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(pairs[address(arg1)])
                call pairs[address(arg1)].diff0() with:
                     gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[32] / ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[32] / ext_call.return_data[0]:
                    revert with 0, 17
                emit CrossBurn(address(arg1), sub_d692f4c5[address(arg1)][arg2], chainid, arg2, msg.sender, address(arg3), ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]);
                if arg4 > ext_call.return_data[32] / ext_call.return_data[0]:
                    if arg4 < ext_call.return_data[32] / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4 - (ext_call.return_data[32] / ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 100
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0x23b872dd(?????)
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 128] = 0, msg.sender, address(this.address), arg4 - (ext_call.return_data[32] / ext_call.return_data[0]), 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
                    call arg1 with:
                       funct Mask(32, 224, 0, msg.sender, address(this.address), arg4 - (ext_call.return_data[32] / ext_call.return_data[0]), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, 0, msg.sender, address(this.address), arg4 - (ext_call.return_data[32] / ext_call.return_data[0]), 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(pairs[address(arg1)])
                        call pairs[address(arg1)].diff0() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 < ext_call.return_data[32] / ext_call.return_data[0]:
                            revert with 0, 17
                        if arg4 - (ext_call.return_data[32] / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / arg4 - (ext_call.return_data[32] / ext_call.return_data[0]):
                            revert with 0, 17
                        emit Lock(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5, address rg6, uint256 rg7):
                                  address(arg1),
                                  sub_d692f4c5[address(arg1)][arg2],
                                  chainid,
                                  arg2,
                                  msg.sender,
                                  address(arg3),
                                  (arg4 * ext_call.return_data[0]) - (ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]),
                                  mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 9 * ceil32(return_data.size)],
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 494] = 32
                            mem[(8 * ceil32(return_data.size)) + 526] = 32
                            mem[(8 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 490
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                            if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                mem[(8 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 494] = 32
                                mem[(8 * ceil32(return_data.size)) + 526] = 42
                                mem[(8 * ceil32(return_data.size)) + 558] = 'SafeERC20: ERC20 operation did n'
                                mem[(8 * ceil32(return_data.size)) + 590] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 490
                                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        require ext_code.size(pairs[address(arg1)])
                        call pairs[address(arg1)].diff0() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 < ext_call.return_data[32] / ext_call.return_data[0]:
                            revert with 0, 17
                        if arg4 - (ext_call.return_data[32] / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / arg4 - (ext_call.return_data[32] / ext_call.return_data[0]):
                            revert with 0, 17
                        emit Lock(address rg1, address rg2, uint256 rg3, uint256 rg4, address rg5, address rg6, uint256 rg7):
                                  address(arg1),
                                  sub_d692f4c5[address(arg1)][arg2],
                                  chainid,
                                  arg2,
                                  msg.sender,
                                  address(arg3),
                                  (arg4 * ext_call.return_data[0]) - (ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]),
                                  mem[(9 * ceil32(return_data.size)) + 714 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
}



}
