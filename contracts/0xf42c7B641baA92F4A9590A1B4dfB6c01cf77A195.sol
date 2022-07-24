contract main {




// =====================  Runtime code  =====================


#
#  - addPoolInfo(uint256 arg1, uint256 arg2, address arg3)
#  - withdrawWithPid(uint256 arg1, uint256 arg2)
#  - inCaseTokensGetStuck(address arg1, address arg2, uint256 arg3)
#  - earn(address arg1)
#
const INTERFACE_ROLE = 0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f

const DEFAULT_ADMIN_ROLE = 0

const WITHDRAW_ROLE = 0x5d8e12c39142ff96d79d04d15d1ba1269e4fe57bb9d26f43523628b34ba108ec

const GOVERNANCE_ROLE = 0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce


mapping of struct roleAdmin;
array of struct roleMember;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 168
uint128 stor2; offset 160
address owner;
array of uint256 govTotalProfit;
array of uint256 userTotalProfit;
array of uint256 govTotalSendProfit;
array of uint256 userTotalSendProfit;
address controllerAddress;
mapping of struct poolInfoDetail;
mapping of uint8 stor45;
mapping of uint256 poolNumBySingleToken;
uint256 poolInfonum;
mapping of struct userInfo;
uint8 afterBeta;

function afterBeta() payable {
    return bool(afterBeta)
}

function govTotalSendProfit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return govTotalSendProfit[arg1]
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return poolInfoDetail[arg1].field_0, 
           poolInfoDetail[arg1].field_2816,
           poolInfoDetail[arg1].field_13312,
           poolInfoDetail[arg1].field_13568,
           poolInfoDetail[arg1].field_13824,
           poolInfoDetail[arg1].field_14080,
           poolInfoDetail[arg1].field_14336
}

function getPoolInfoDetail(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= 10:
        revert with 0, 50
    return poolInfoDetail[arg1][arg2].field_256, 
           poolInfoDetail[arg1][arg2].field_3072,
           poolInfoDetail[arg1][arg2].field_5632,
           poolInfoDetail[arg1][arg2].field_8192,
           poolInfoDetail[arg1][arg2].field_10752
}

function PoolInfonum() payable {
    return poolInfonum
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function getPoolNumBySingleToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor45[address(arg1)]:
        revert with 0, 'pool havn't exist'
    return poolNumBySingleToken[address(arg1)]
}

function poolInfoExist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor45[arg1])
}

function paused() payable {
    return bool(uint8(stor2.field_160))
}

function poolInfoNumber(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return poolNumBySingleToken[arg1]
}

function getPoolTotalDeposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor45[address(arg1)]:
        revert with 0, 'pool havn't exist'
    idx = 4448
    s = 1
    while 4768 > idx + 32:
        mem[idx + 32] = poolInfoDetail[stor46[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 4768
    s = 12
    while 5088 > idx + 32:
        mem[idx + 32] = poolInfoDetail[stor46[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 5088
    s = 22
    while 5408 > idx + 32:
        mem[idx + 32] = poolInfoDetail[stor46[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 5408
    s = 32
    while 5728 > idx + 32:
        mem[idx + 32] = poolInfoDetail[stor46[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 5728
    s = 42
    while 6048 > idx + 32:
        mem[idx + 32] = poolInfoDetail[stor46[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return poolInfoDetail[stor46[address(arg1)]].field_2816
}

function owner() payable {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0
}

function govTotalProfit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return govTotalProfit[arg1]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function locked() payable {
    return bool(uint8(stor2.field_168))
}

function userTotalSendProfit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return userTotalSendProfit[arg1]
}

function userTotalProfit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return userTotalProfit[arg1]
}

function controller() payable {
    return controllerAddress
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

function setAfterBeta() payable {
    if not roleAdmin[0x5d8e12c39142ff96d79d04d15d1ba1269e4fe57bb9d26f43523628b34ba108ec][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'must have withdraw role to withdraw'
    afterBeta = 1
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function setLocked(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    Mask(88, 0, stor2.field_168) = Mask(88, 0, arg1)
}

function setPoolInfobynum(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    poolInfoDetail[arg1].field_13312 = arg2
    poolInfoDetail[arg1].field_13568 = arg3
}

function available(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function rewardTokenNumbers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x78f24e23 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
        if 1 > !(roleMember[arg1][1][address(arg2)].field_0 - 1):
            revert with 0, 17
        roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function getPoolInfobynum(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 2464
    s = 1
    while 2784 > idx + 32:
        mem[idx + 32] = poolInfoDetail[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 2784
    s = 12
    while 3104 > idx + 32:
        mem[idx + 32] = poolInfoDetail[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 3104
    s = 22
    while 3424 > idx + 32:
        mem[idx + 32] = poolInfoDetail[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 3424
    s = 32
    while 3744 > idx + 32:
        mem[idx + 32] = poolInfoDetail[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 3744
    s = 42
    while 4064 > idx + 32:
        mem[idx + 32] = poolInfoDetail[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return poolInfoDetail[arg1].field_0, 
           poolInfoDetail[arg1].field_256,
           mem[2496 len 288],
           poolInfoDetail[arg1].field_2816,
           poolInfoDetail[arg1].field_3072,
           mem[2816 len 288],
           poolInfoDetail[arg1].field_5632,
           mem[3136 len 288],
           poolInfoDetail[arg1].field_8192,
           mem[3456 len 288],
           poolInfoDetail[arg1].field_10752,
           mem[3776 len 288],
           poolInfoDetail[arg1].field_13312,
           poolInfoDetail[arg1].field_13568,
           poolInfoDetail[arg1].field_13824,
           poolInfoDetail[arg1].field_14080,
           poolInfoDetail[arg1].field_14336
}

function getSingleTotalReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x19c9f39a00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x19c9f39a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + 127
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
        s = roleAdmin[arg1].field_256
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
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function getPoolInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor45[address(arg1)]:
        revert with 0, 'pool havn't exist'
    idx = 4448
    s = 1
    while 4768 > idx + 32:
        mem[idx + 32] = poolInfoDetail[stor46[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 4768
    s = 12
    while 5088 > idx + 32:
        mem[idx + 32] = poolInfoDetail[stor46[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 5088
    s = 22
    while 5408 > idx + 32:
        mem[idx + 32] = poolInfoDetail[stor46[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 5408
    s = 32
    while 5728 > idx + 32:
        mem[idx + 32] = poolInfoDetail[stor46[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 5728
    s = 42
    while 6048 > idx + 32:
        mem[idx + 32] = poolInfoDetail[stor46[address(arg1)]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return poolInfoDetail[stor46[address(arg1)]].field_0, 
           poolInfoDetail[stor46[address(arg1)]].field_256,
           mem[4480 len 288],
           poolInfoDetail[stor46[address(arg1)]].field_2816,
           poolInfoDetail[stor46[address(arg1)]].field_3072,
           mem[4800 len 288],
           poolInfoDetail[stor46[address(arg1)]].field_5632,
           mem[5120 len 288],
           poolInfoDetail[stor46[address(arg1)]].field_8192,
           mem[5440 len 288],
           poolInfoDetail[stor46[address(arg1)]].field_10752,
           mem[5760 len 288],
           poolInfoDetail[stor46[address(arg1)]].field_13312,
           poolInfoDetail[stor46[address(arg1)]].field_13568,
           poolInfoDetail[stor46[address(arg1)]].field_13824,
           poolInfoDetail[stor46[address(arg1)]].field_14080,
           poolInfoDetail[stor46[address(arg1)]].field_14336
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
        s = roleAdmin[arg1].field_256
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
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
        if 1 > !(roleMember[arg1][1][address(arg2)].field_0 - 1):
            revert with 0, 17
        roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function rewardTokens() payable {
    mem[96] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xc2b18aa0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if _5 <= 10:
        _52 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        idx = 0
        s = mem[64] + 64
        t = ceil32(return_data.size) + 128
        while idx < _5:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _52 + (32 * _5) + -mem[64] + 64
    _50 = mem[64]
    mem[mem[64]] = 10
    mem[64] = mem[64] + 352
    mem[_50 + 32 len 320] = call.data[calldata.size len 320]
    if 0 >= _5:
        revert with 0, 50
    if 0 >= mem[_50]:
        revert with 0, 50
    mem[_50 + 32] = mem[ceil32(return_data.size) + 140 len 20]
    if 1 >= _5:
        revert with 0, 50
    if 1 >= mem[_50]:
        revert with 0, 50
    mem[_50 + 64] = mem[ceil32(return_data.size) + 172 len 20]
    if 2 >= _5:
        revert with 0, 50
    if 2 >= mem[_50]:
        revert with 0, 50
    mem[_50 + 96] = mem[ceil32(return_data.size) + 204 len 20]
    if 3 >= _5:
        revert with 0, 50
    if 3 >= mem[_50]:
        revert with 0, 50
    mem[_50 + 128] = mem[ceil32(return_data.size) + 236 len 20]
    if 4 >= _5:
        revert with 0, 50
    if 4 >= mem[_50]:
        revert with 0, 50
    mem[_50 + 160] = mem[ceil32(return_data.size) + 268 len 20]
    if 5 >= _5:
        revert with 0, 50
    if 5 >= mem[_50]:
        revert with 0, 50
    mem[_50 + 192] = mem[ceil32(return_data.size) + 300 len 20]
    if 6 >= _5:
        revert with 0, 50
    if 6 >= mem[_50]:
        revert with 0, 50
    mem[_50 + 224] = mem[ceil32(return_data.size) + 332 len 20]
    if 7 >= _5:
        revert with 0, 50
    if 7 >= mem[_50]:
        revert with 0, 50
    mem[_50 + 256] = mem[ceil32(return_data.size) + 364 len 20]
    if 8 >= _5:
        revert with 0, 50
    if 8 >= mem[_50]:
        revert with 0, 50
    mem[_50 + 288] = mem[ceil32(return_data.size) + 396 len 20]
    if 9 >= _5:
        revert with 0, 50
    if 9 >= mem[_50]:
        revert with 0, 50
    mem[_50 + 320] = mem[ceil32(return_data.size) + 428 len 20]
    mem[_50 + 352] = 32
    mem[_50 + 384] = mem[_50]
    idx = 0
    s = _50 + 416
    t = _50 + 32
    while idx < mem[_50]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _50 + (32 * mem[_50]) + -mem[64] + 416
}

function depositWithPid(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 1 == bool(uint8(stor2.field_160)):
        revert with 0, 'has been paused'
    if not roleAdmin[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][address(msg.sender)].field_0:
        if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
            revert with 0, 'Caller not have INTERFACE_ROLE'
    if poolInfoDetail[arg1].field_13312:
        if poolInfoDetail[arg1].field_2816 > !arg2:
            revert with 0, 17
        if poolInfoDetail[arg1].field_2816 + arg2 < poolInfoDetail[arg1].field_2816:
            revert with 0, 'SafeMath: addition overflow'
        if poolInfoDetail[arg1].field_13312 < poolInfoDetail[arg1].field_2816 + arg2:
            revert with 0, 'deposit amount limit'
    if arg2:
        mem[100] = this.address
        require ext_code.size(poolInfoDetail[arg1].field_14336)
        staticcall poolInfoDetail[arg1].field_14336.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = arg2
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfoDetail[arg1].field_14336):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
        mem[ceil32(return_data.size) + 392] = 0
        call poolInfoDetail[arg1].field_14336 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(poolInfoDetail[arg1].field_14336)
        staticcall poolInfoDetail[arg1].field_14336.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        require not arg2
        if arg2:
            if userInfo[arg1][msg.sender].field_0 > !arg2:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 + arg2 < userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][msg.sender].field_0 += arg2
            if poolInfoDetail[arg1].field_2816 > !arg2:
                revert with 0, 17
            if poolInfoDetail[arg1].field_2816 + arg2 < poolInfoDetail[arg1].field_2816:
                revert with 0, 'SafeMath: addition overflow'
            poolInfoDetail[arg1].field_2816 += arg2
    emit Deposit(msg.sender, arg1, arg2);
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 1 == bool(uint8(stor2.field_160)):
        revert with 0, 'has been paused'
    if roleAdmin[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][address(msg.sender)].field_0:
        mem[0] = msg.sender
        mem[32] = sha3(arg1, 48)
        mem[100] = this.address
        require ext_code.size(poolInfoDetail[arg1].field_14336)
        staticcall poolInfoDetail[arg1].field_14336.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] >= userInfo[arg1][msg.sender].field_0:
            userInfo[arg1][msg.sender].field_0 = 0
            mem[ceil32(return_data.size) + 96] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.mem[var66003 len 4] with:
                    gas gas_remaining wei
                   args mem[var66003 + 4 len var66004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require var70002 - var70001 >= 32
            require mem[var72003] <= test266151307()
            require var72004 > var72003 + mem[var72003] + 31
            _5687 = mem[var72003 + mem[var72003]]
            s = mem[var72003]
            t = var72003
            u = var72004
            v = var72008
            while _5687 <= test266151307():
                _5691 = mem[64]
                if mem[64] + ceil32(32 * _5687) + 1 < mem[64] or mem[64] + ceil32(32 * _5687) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * _5687) + 1
                mem[_5691] = _5687
                require t + s + (32 * _5687) + 32 <= u
                w = t + s + 32
                x = _5691 + 32
                idx = 0
                while idx < _5687:
                    require mem[w] == mem[w + 12 len 20]
                    mem[x] = mem[w]
                    require u > t + s + 31
                    w = w + 32
                    x = x + 32
                    idx = idx + 1
                    continue 
                if _5687 <= 10:
                    if v < _5687:
                        if v >= 10:
                            revert with 0, 50
                        userInfo[arg1][msg.sender][v].field_256 = 0
                        if v == -1:
                            revert with 0, 17
                        mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xc2b18aa0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6617 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6617] <= test266151307()
                        require _6617 + return_data.size > _6617 + mem[_6617] + 31
                        s = mem[_6617]
                        t = _6617
                        u = _6617 + return_data.size
                        v = v + 1
                        continue 
                    _6531 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = userInfo[arg1][msg.sender].field_0
                    _6543 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_6543 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_6543 + 36 len 28]
                    mem[64] = _6531 + 164
                    mem[_6531 + 100] = 32
                    mem[_6531 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(poolInfoDetail[arg1].field_14336):
                        revert with 0, 'Address: call to non-contract'
                    _6615 = mem[_6543]
                    idx = 0
                    while idx < _6615:
                        mem[idx + _6531 + 164] = mem[idx + _6543 + 32]
                        require u > t + s + 31
                        idx = idx + 32
                        continue 
                    if ceil32(_6615) > _6615:
                        mem[_6615 + _6531 + 164] = 0
                    call poolInfoDetail[arg1].field_14336.mem[_6531 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6531 + 168 len _6615 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6531 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6531 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6531 + 232] = mem[idx + _6531 + 132]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6531 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_6531 + 164] = return_data.size
                        mem[_6531 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6531 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6531 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6531 + ceil32(return_data.size) + 233] = mem[idx + _6531 + 132]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6531 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6531 + 196] == bool(mem[_6531 + 196])
                            if not mem[_6531 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _6507 = mem[64]
                    mem[mem[64]] = 10
                    mem[64] = mem[64] + 352
                    mem[_6507 + 32 len 320] = call.data[calldata.size len 320]
                    if 0 >= _5687:
                        revert with 0, 50
                    if 0 >= mem[_6507]:
                        revert with 0, 50
                    mem[_6507 + 32] = mem[_5691 + 44 len 20]
                    if 1 >= _5687:
                        revert with 0, 50
                    if 1 >= mem[_6507]:
                        revert with 0, 50
                    mem[_6507 + 64] = mem[_5691 + 76 len 20]
                    if 2 >= _5687:
                        revert with 0, 50
                    if 2 >= mem[_6507]:
                        revert with 0, 50
                    mem[_6507 + 96] = mem[_5691 + 108 len 20]
                    if 3 >= _5687:
                        revert with 0, 50
                    if 3 >= mem[_6507]:
                        revert with 0, 50
                    mem[_6507 + 128] = mem[_5691 + 140 len 20]
                    if 4 >= _5687:
                        revert with 0, 50
                    if 4 >= mem[_6507]:
                        revert with 0, 50
                    mem[_6507 + 160] = mem[_5691 + 172 len 20]
                    if 5 >= _5687:
                        revert with 0, 50
                    if 5 >= mem[_6507]:
                        revert with 0, 50
                    mem[_6507 + 192] = mem[_5691 + 204 len 20]
                    if 6 >= _5687:
                        revert with 0, 50
                    if 6 >= mem[_6507]:
                        revert with 0, 50
                    mem[_6507 + 224] = mem[_5691 + 236 len 20]
                    if 7 >= _5687:
                        revert with 0, 50
                    if 7 >= mem[_6507]:
                        revert with 0, 50
                    mem[_6507 + 256] = mem[_5691 + 268 len 20]
                    if 8 >= _5687:
                        revert with 0, 50
                    if 8 >= mem[_6507]:
                        revert with 0, 50
                    mem[_6507 + 288] = mem[_5691 + 300 len 20]
                    if 9 >= _5687:
                        revert with 0, 50
                    if 9 >= mem[_6507]:
                        revert with 0, 50
                    mem[_6507 + 320] = mem[_5691 + 332 len 20]
                    if v < mem[_6507]:
                        if v >= 10:
                            revert with 0, 50
                        userInfo[arg1][msg.sender][v].field_256 = 0
                        if v == -1:
                            revert with 0, 17
                        mem[_6507 + 352] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xc2b18aa0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6507 + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _6507 + ceil32(return_data.size) + 352
                        require return_data.size >= 32
                        require mem[_6507 + 352] <= test266151307()
                        require _6507 + return_data.size + 352 > _6507 + mem[_6507 + 352] + 383
                        s = mem[_6507 + 352]
                        t = _6507 + 352
                        u = _6507 + return_data.size + 352
                        v = v + 1
                        continue 
                    mem[_6507 + 388] = msg.sender
                    mem[_6507 + 420] = userInfo[arg1][msg.sender].field_0
                    mem[_6507 + 352] = 68
                    mem[_6507 + 384] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[_6507 + 452] = 32
                    mem[_6507 + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(poolInfoDetail[arg1].field_14336):
                        revert with 0, 'Address: call to non-contract'
                    idx = 0
                    while idx < 68:
                        mem[idx + _6507 + 516] = mem[idx + _6507 + 384]
                        require u > t + s + 31
                        idx = idx + 32
                        continue 
                    mem[_6507 + 584] = 0
                    call poolInfoDetail[arg1].field_14336.mem[_6507 + 516 len 4] with:
                         gas gas_remaining wei
                        args mem[_6507 + 520 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6507 + 516] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6507 + 520] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6507 + 584] = mem[idx + _6507 + 484]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6507 + 584]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_6507 + 516] = return_data.size
                        mem[_6507 + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6507 + ceil32(return_data.size) + 517] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6507 + ceil32(return_data.size) + 521] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6507 + ceil32(return_data.size) + 585] = mem[idx + _6507 + 484]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6507 + ceil32(return_data.size) + 585]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6507 + 548] == bool(mem[_6507 + 548])
                            if not mem[_6507 + 548]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if poolInfoDetail[arg1].field_2816 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 17
                poolInfoDetail[arg1].field_2816 -= userInfo[arg1][msg.sender].field_0
                emit Emergencywithdraw(msg.sender, arg1, userInfo[arg1][msg.sender].field_0);
        else:
            if userInfo[arg1][msg.sender].field_0 < ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 132] = userInfo[arg1][msg.sender].field_0 - ext_call.return_data[0]
            require ext_code.size(controllerAddress)
            call controllerAddress.0x44963170 with:
                 gas gas_remaining wei
                args poolInfoDetail[arg1].field_14336, userInfo[arg1][msg.sender].field_0 - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(poolInfoDetail[arg1].field_14336)
            staticcall poolInfoDetail[arg1].field_14336.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            if ext_call.return_data[0] < userInfo[arg1][msg.sender].field_0:
                revert with 0, 'withdraw: ask admin for help'
            userInfo[arg1][msg.sender].field_0 = 0
            mem[(2 * ceil32(return_data.size)) + 96] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.mem[var77003 len 4] with:
                    gas gas_remaining wei
                   args mem[var77003 + 4 len var77004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require var81002 - var81001 >= 32
            require mem[var83003] <= test266151307()
            require var83004 > var83003 + mem[var83003] + 31
            _5688 = mem[var83003 + mem[var83003]]
            s = mem[var83003]
            t = var83003
            u = var83004
            v = var83008
            while _5688 <= test266151307():
                _5692 = mem[64]
                if mem[64] + ceil32(32 * _5688) + 1 < mem[64] or mem[64] + ceil32(32 * _5688) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * _5688) + 1
                mem[_5692] = _5688
                require t + s + (32 * _5688) + 32 <= u
                w = t + s + 32
                x = _5692 + 32
                idx = 0
                while idx < _5688:
                    require mem[w] == mem[w + 12 len 20]
                    mem[x] = mem[w]
                    require u > t + s + 31
                    w = w + 32
                    x = x + 32
                    idx = idx + 1
                    continue 
                if _5688 <= 10:
                    if v < _5688:
                        if v >= 10:
                            revert with 0, 50
                        userInfo[arg1][msg.sender][v].field_256 = 0
                        if v == -1:
                            revert with 0, 17
                        mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xc2b18aa0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6621 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6621] <= test266151307()
                        require _6621 + return_data.size > _6621 + mem[_6621] + 31
                        s = mem[_6621]
                        t = _6621
                        u = _6621 + return_data.size
                        v = v + 1
                        continue 
                    _6534 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = userInfo[arg1][msg.sender].field_0
                    _6546 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_6546 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_6546 + 36 len 28]
                    mem[64] = _6534 + 164
                    mem[_6534 + 100] = 32
                    mem[_6534 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(poolInfoDetail[arg1].field_14336):
                        revert with 0, 'Address: call to non-contract'
                    _6619 = mem[_6546]
                    idx = 0
                    while idx < _6619:
                        mem[idx + _6534 + 164] = mem[idx + _6546 + 32]
                        require u > t + s + 31
                        idx = idx + 32
                        continue 
                    if ceil32(_6619) > _6619:
                        mem[_6619 + _6534 + 164] = 0
                    call poolInfoDetail[arg1].field_14336.mem[_6534 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6534 + 168 len _6619 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6534 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6534 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6534 + 232] = mem[idx + _6534 + 132]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6534 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_6534 + 164] = return_data.size
                        mem[_6534 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6534 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6534 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6534 + ceil32(return_data.size) + 233] = mem[idx + _6534 + 132]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6534 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6534 + 196] == bool(mem[_6534 + 196])
                            if not mem[_6534 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _6509 = mem[64]
                    mem[mem[64]] = 10
                    mem[64] = mem[64] + 352
                    mem[_6509 + 32 len 320] = call.data[calldata.size len 320]
                    if 0 >= _5688:
                        revert with 0, 50
                    if 0 >= mem[_6509]:
                        revert with 0, 50
                    mem[_6509 + 32] = mem[_5692 + 44 len 20]
                    if 1 >= _5688:
                        revert with 0, 50
                    if 1 >= mem[_6509]:
                        revert with 0, 50
                    mem[_6509 + 64] = mem[_5692 + 76 len 20]
                    if 2 >= _5688:
                        revert with 0, 50
                    if 2 >= mem[_6509]:
                        revert with 0, 50
                    mem[_6509 + 96] = mem[_5692 + 108 len 20]
                    if 3 >= _5688:
                        revert with 0, 50
                    if 3 >= mem[_6509]:
                        revert with 0, 50
                    mem[_6509 + 128] = mem[_5692 + 140 len 20]
                    if 4 >= _5688:
                        revert with 0, 50
                    if 4 >= mem[_6509]:
                        revert with 0, 50
                    mem[_6509 + 160] = mem[_5692 + 172 len 20]
                    if 5 >= _5688:
                        revert with 0, 50
                    if 5 >= mem[_6509]:
                        revert with 0, 50
                    mem[_6509 + 192] = mem[_5692 + 204 len 20]
                    if 6 >= _5688:
                        revert with 0, 50
                    if 6 >= mem[_6509]:
                        revert with 0, 50
                    mem[_6509 + 224] = mem[_5692 + 236 len 20]
                    if 7 >= _5688:
                        revert with 0, 50
                    if 7 >= mem[_6509]:
                        revert with 0, 50
                    mem[_6509 + 256] = mem[_5692 + 268 len 20]
                    if 8 >= _5688:
                        revert with 0, 50
                    if 8 >= mem[_6509]:
                        revert with 0, 50
                    mem[_6509 + 288] = mem[_5692 + 300 len 20]
                    if 9 >= _5688:
                        revert with 0, 50
                    if 9 >= mem[_6509]:
                        revert with 0, 50
                    mem[_6509 + 320] = mem[_5692 + 332 len 20]
                    if v < mem[_6509]:
                        if v >= 10:
                            revert with 0, 50
                        userInfo[arg1][msg.sender][v].field_256 = 0
                        if v == -1:
                            revert with 0, 17
                        mem[_6509 + 352] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xc2b18aa0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6509 + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _6509 + ceil32(return_data.size) + 352
                        require return_data.size >= 32
                        require mem[_6509 + 352] <= test266151307()
                        require _6509 + return_data.size + 352 > _6509 + mem[_6509 + 352] + 383
                        s = mem[_6509 + 352]
                        t = _6509 + 352
                        u = _6509 + return_data.size + 352
                        v = v + 1
                        continue 
                    mem[_6509 + 388] = msg.sender
                    mem[_6509 + 420] = userInfo[arg1][msg.sender].field_0
                    mem[_6509 + 352] = 68
                    mem[_6509 + 384] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[_6509 + 452] = 32
                    mem[_6509 + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(poolInfoDetail[arg1].field_14336):
                        revert with 0, 'Address: call to non-contract'
                    idx = 0
                    while idx < 68:
                        mem[idx + _6509 + 516] = mem[idx + _6509 + 384]
                        require u > t + s + 31
                        idx = idx + 32
                        continue 
                    mem[_6509 + 584] = 0
                    call poolInfoDetail[arg1].field_14336.mem[_6509 + 516 len 4] with:
                         gas gas_remaining wei
                        args mem[_6509 + 520 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6509 + 516] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6509 + 520] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6509 + 584] = mem[idx + _6509 + 484]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6509 + 584]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_6509 + 516] = return_data.size
                        mem[_6509 + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6509 + ceil32(return_data.size) + 517] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6509 + ceil32(return_data.size) + 521] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6509 + ceil32(return_data.size) + 585] = mem[idx + _6509 + 484]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6509 + ceil32(return_data.size) + 585]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6509 + 548] == bool(mem[_6509 + 548])
                            if not mem[_6509 + 548]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if poolInfoDetail[arg1].field_2816 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 17
                poolInfoDetail[arg1].field_2816 -= userInfo[arg1][msg.sender].field_0
                emit Emergencywithdraw(msg.sender, arg1, userInfo[arg1][msg.sender].field_0);
    else:
        if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
            revert with 0, 'Caller not have INTERFACE_ROLE'
        mem[0] = msg.sender
        mem[32] = sha3(arg1, 48)
        mem[100] = this.address
        require ext_code.size(poolInfoDetail[arg1].field_14336)
        staticcall poolInfoDetail[arg1].field_14336.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] >= userInfo[arg1][msg.sender].field_0:
            userInfo[arg1][msg.sender].field_0 = 0
            mem[ceil32(return_data.size) + 96] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.mem[var68003 len 4] with:
                    gas gas_remaining wei
                   args mem[var68003 + 4 len var68004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require var72002 - var72001 >= 32
            require mem[var74003] <= test266151307()
            require var74004 > var74003 + mem[var74003] + 31
            _5689 = mem[var74003 + mem[var74003]]
            s = mem[var74003]
            t = var74003
            u = var74004
            v = var74008
            while _5689 <= test266151307():
                _5693 = mem[64]
                if mem[64] + ceil32(32 * _5689) + 1 < mem[64] or mem[64] + ceil32(32 * _5689) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * _5689) + 1
                mem[_5693] = _5689
                require t + s + (32 * _5689) + 32 <= u
                w = t + s + 32
                x = _5693 + 32
                idx = 0
                while idx < _5689:
                    require mem[w] == mem[w + 12 len 20]
                    mem[x] = mem[w]
                    require u > t + s + 31
                    w = w + 32
                    x = x + 32
                    idx = idx + 1
                    continue 
                if _5689 <= 10:
                    if v < _5689:
                        if v >= 10:
                            revert with 0, 50
                        userInfo[arg1][msg.sender][v].field_256 = 0
                        if v == -1:
                            revert with 0, 17
                        mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xc2b18aa0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6625 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6625] <= test266151307()
                        require _6625 + return_data.size > _6625 + mem[_6625] + 31
                        s = mem[_6625]
                        t = _6625
                        u = _6625 + return_data.size
                        v = v + 1
                        continue 
                    _6537 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = userInfo[arg1][msg.sender].field_0
                    _6549 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_6549 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_6549 + 36 len 28]
                    mem[64] = _6537 + 164
                    mem[_6537 + 100] = 32
                    mem[_6537 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(poolInfoDetail[arg1].field_14336):
                        revert with 0, 'Address: call to non-contract'
                    _6623 = mem[_6549]
                    idx = 0
                    while idx < _6623:
                        mem[idx + _6537 + 164] = mem[idx + _6549 + 32]
                        require u > t + s + 31
                        idx = idx + 32
                        continue 
                    if ceil32(_6623) > _6623:
                        mem[_6623 + _6537 + 164] = 0
                    call poolInfoDetail[arg1].field_14336.mem[_6537 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6537 + 168 len _6623 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6537 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6537 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6537 + 232] = mem[idx + _6537 + 132]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6537 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_6537 + 164] = return_data.size
                        mem[_6537 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6537 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6537 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6537 + ceil32(return_data.size) + 233] = mem[idx + _6537 + 132]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6537 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6537 + 196] == bool(mem[_6537 + 196])
                            if not mem[_6537 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _6511 = mem[64]
                    mem[mem[64]] = 10
                    mem[64] = mem[64] + 352
                    mem[_6511 + 32 len 320] = call.data[calldata.size len 320]
                    if 0 >= _5689:
                        revert with 0, 50
                    if 0 >= mem[_6511]:
                        revert with 0, 50
                    mem[_6511 + 32] = mem[_5693 + 44 len 20]
                    if 1 >= _5689:
                        revert with 0, 50
                    if 1 >= mem[_6511]:
                        revert with 0, 50
                    mem[_6511 + 64] = mem[_5693 + 76 len 20]
                    if 2 >= _5689:
                        revert with 0, 50
                    if 2 >= mem[_6511]:
                        revert with 0, 50
                    mem[_6511 + 96] = mem[_5693 + 108 len 20]
                    if 3 >= _5689:
                        revert with 0, 50
                    if 3 >= mem[_6511]:
                        revert with 0, 50
                    mem[_6511 + 128] = mem[_5693 + 140 len 20]
                    if 4 >= _5689:
                        revert with 0, 50
                    if 4 >= mem[_6511]:
                        revert with 0, 50
                    mem[_6511 + 160] = mem[_5693 + 172 len 20]
                    if 5 >= _5689:
                        revert with 0, 50
                    if 5 >= mem[_6511]:
                        revert with 0, 50
                    mem[_6511 + 192] = mem[_5693 + 204 len 20]
                    if 6 >= _5689:
                        revert with 0, 50
                    if 6 >= mem[_6511]:
                        revert with 0, 50
                    mem[_6511 + 224] = mem[_5693 + 236 len 20]
                    if 7 >= _5689:
                        revert with 0, 50
                    if 7 >= mem[_6511]:
                        revert with 0, 50
                    mem[_6511 + 256] = mem[_5693 + 268 len 20]
                    if 8 >= _5689:
                        revert with 0, 50
                    if 8 >= mem[_6511]:
                        revert with 0, 50
                    mem[_6511 + 288] = mem[_5693 + 300 len 20]
                    if 9 >= _5689:
                        revert with 0, 50
                    if 9 >= mem[_6511]:
                        revert with 0, 50
                    mem[_6511 + 320] = mem[_5693 + 332 len 20]
                    if v < mem[_6511]:
                        if v >= 10:
                            revert with 0, 50
                        userInfo[arg1][msg.sender][v].field_256 = 0
                        if v == -1:
                            revert with 0, 17
                        mem[_6511 + 352] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xc2b18aa0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6511 + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _6511 + ceil32(return_data.size) + 352
                        require return_data.size >= 32
                        require mem[_6511 + 352] <= test266151307()
                        require _6511 + return_data.size + 352 > _6511 + mem[_6511 + 352] + 383
                        s = mem[_6511 + 352]
                        t = _6511 + 352
                        u = _6511 + return_data.size + 352
                        v = v + 1
                        continue 
                    mem[_6511 + 388] = msg.sender
                    mem[_6511 + 420] = userInfo[arg1][msg.sender].field_0
                    mem[_6511 + 352] = 68
                    mem[_6511 + 384] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[_6511 + 452] = 32
                    mem[_6511 + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(poolInfoDetail[arg1].field_14336):
                        revert with 0, 'Address: call to non-contract'
                    idx = 0
                    while idx < 68:
                        mem[idx + _6511 + 516] = mem[idx + _6511 + 384]
                        require u > t + s + 31
                        idx = idx + 32
                        continue 
                    mem[_6511 + 584] = 0
                    call poolInfoDetail[arg1].field_14336.mem[_6511 + 516 len 4] with:
                         gas gas_remaining wei
                        args mem[_6511 + 520 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6511 + 516] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6511 + 520] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6511 + 584] = mem[idx + _6511 + 484]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6511 + 584]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_6511 + 516] = return_data.size
                        mem[_6511 + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6511 + ceil32(return_data.size) + 517] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6511 + ceil32(return_data.size) + 521] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6511 + ceil32(return_data.size) + 585] = mem[idx + _6511 + 484]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6511 + ceil32(return_data.size) + 585]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6511 + 548] == bool(mem[_6511 + 548])
                            if not mem[_6511 + 548]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if poolInfoDetail[arg1].field_2816 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 17
                poolInfoDetail[arg1].field_2816 -= userInfo[arg1][msg.sender].field_0
                emit Emergencywithdraw(msg.sender, arg1, userInfo[arg1][msg.sender].field_0);
        else:
            if userInfo[arg1][msg.sender].field_0 < ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 132] = userInfo[arg1][msg.sender].field_0 - ext_call.return_data[0]
            require ext_code.size(controllerAddress)
            call controllerAddress.0x44963170 with:
                 gas gas_remaining wei
                args poolInfoDetail[arg1].field_14336, userInfo[arg1][msg.sender].field_0 - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(poolInfoDetail[arg1].field_14336)
            staticcall poolInfoDetail[arg1].field_14336.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            if ext_call.return_data[0] < userInfo[arg1][msg.sender].field_0:
                revert with 0, 'withdraw: ask admin for help'
            userInfo[arg1][msg.sender].field_0 = 0
            mem[(2 * ceil32(return_data.size)) + 96] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.mem[var79003 len 4] with:
                    gas gas_remaining wei
                   args mem[var79003 + 4 len var79004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require var83002 - var83001 >= 32
            require mem[var85003] <= test266151307()
            require var85004 > var85003 + mem[var85003] + 31
            _5690 = mem[var85003 + mem[var85003]]
            s = mem[var85003]
            t = var85003
            u = var85004
            v = var85008
            while _5690 <= test266151307():
                _5694 = mem[64]
                if mem[64] + ceil32(32 * _5690) + 1 < mem[64] or mem[64] + ceil32(32 * _5690) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * _5690) + 1
                mem[_5694] = _5690
                require t + s + (32 * _5690) + 32 <= u
                w = t + s + 32
                x = _5694 + 32
                idx = 0
                while idx < _5690:
                    require mem[w] == mem[w + 12 len 20]
                    mem[x] = mem[w]
                    require u > t + s + 31
                    w = w + 32
                    x = x + 32
                    idx = idx + 1
                    continue 
                if _5690 <= 10:
                    if v < _5690:
                        if v >= 10:
                            revert with 0, 50
                        userInfo[arg1][msg.sender][v].field_256 = 0
                        if v == -1:
                            revert with 0, 17
                        mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xc2b18aa0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6629 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6629] <= test266151307()
                        require _6629 + return_data.size > _6629 + mem[_6629] + 31
                        s = mem[_6629]
                        t = _6629
                        u = _6629 + return_data.size
                        v = v + 1
                        continue 
                    _6540 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = userInfo[arg1][msg.sender].field_0
                    _6552 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_6552 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_6552 + 36 len 28]
                    mem[64] = _6540 + 164
                    mem[_6540 + 100] = 32
                    mem[_6540 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(poolInfoDetail[arg1].field_14336):
                        revert with 0, 'Address: call to non-contract'
                    _6627 = mem[_6552]
                    idx = 0
                    while idx < _6627:
                        mem[idx + _6540 + 164] = mem[idx + _6552 + 32]
                        require u > t + s + 31
                        idx = idx + 32
                        continue 
                    if ceil32(_6627) > _6627:
                        mem[_6627 + _6540 + 164] = 0
                    call poolInfoDetail[arg1].field_14336.mem[_6540 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_6540 + 168 len _6627 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6540 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6540 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6540 + 232] = mem[idx + _6540 + 132]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6540 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_6540 + 164] = return_data.size
                        mem[_6540 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6540 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6540 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6540 + ceil32(return_data.size) + 233] = mem[idx + _6540 + 132]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6540 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6540 + 196] == bool(mem[_6540 + 196])
                            if not mem[_6540 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _6513 = mem[64]
                    mem[mem[64]] = 10
                    mem[64] = mem[64] + 352
                    mem[_6513 + 32 len 320] = call.data[calldata.size len 320]
                    if 0 >= _5690:
                        revert with 0, 50
                    if 0 >= mem[_6513]:
                        revert with 0, 50
                    mem[_6513 + 32] = mem[_5694 + 44 len 20]
                    if 1 >= _5690:
                        revert with 0, 50
                    if 1 >= mem[_6513]:
                        revert with 0, 50
                    mem[_6513 + 64] = mem[_5694 + 76 len 20]
                    if 2 >= _5690:
                        revert with 0, 50
                    if 2 >= mem[_6513]:
                        revert with 0, 50
                    mem[_6513 + 96] = mem[_5694 + 108 len 20]
                    if 3 >= _5690:
                        revert with 0, 50
                    if 3 >= mem[_6513]:
                        revert with 0, 50
                    mem[_6513 + 128] = mem[_5694 + 140 len 20]
                    if 4 >= _5690:
                        revert with 0, 50
                    if 4 >= mem[_6513]:
                        revert with 0, 50
                    mem[_6513 + 160] = mem[_5694 + 172 len 20]
                    if 5 >= _5690:
                        revert with 0, 50
                    if 5 >= mem[_6513]:
                        revert with 0, 50
                    mem[_6513 + 192] = mem[_5694 + 204 len 20]
                    if 6 >= _5690:
                        revert with 0, 50
                    if 6 >= mem[_6513]:
                        revert with 0, 50
                    mem[_6513 + 224] = mem[_5694 + 236 len 20]
                    if 7 >= _5690:
                        revert with 0, 50
                    if 7 >= mem[_6513]:
                        revert with 0, 50
                    mem[_6513 + 256] = mem[_5694 + 268 len 20]
                    if 8 >= _5690:
                        revert with 0, 50
                    if 8 >= mem[_6513]:
                        revert with 0, 50
                    mem[_6513 + 288] = mem[_5694 + 300 len 20]
                    if 9 >= _5690:
                        revert with 0, 50
                    if 9 >= mem[_6513]:
                        revert with 0, 50
                    mem[_6513 + 320] = mem[_5694 + 332 len 20]
                    if v < mem[_6513]:
                        if v >= 10:
                            revert with 0, 50
                        userInfo[arg1][msg.sender][v].field_256 = 0
                        if v == -1:
                            revert with 0, 17
                        mem[_6513 + 352] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xc2b18aa0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6513 + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _6513 + ceil32(return_data.size) + 352
                        require return_data.size >= 32
                        require mem[_6513 + 352] <= test266151307()
                        require _6513 + return_data.size + 352 > _6513 + mem[_6513 + 352] + 383
                        s = mem[_6513 + 352]
                        t = _6513 + 352
                        u = _6513 + return_data.size + 352
                        v = v + 1
                        continue 
                    mem[_6513 + 388] = msg.sender
                    mem[_6513 + 420] = userInfo[arg1][msg.sender].field_0
                    mem[_6513 + 352] = 68
                    mem[_6513 + 384] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[_6513 + 452] = 32
                    mem[_6513 + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(poolInfoDetail[arg1].field_14336):
                        revert with 0, 'Address: call to non-contract'
                    idx = 0
                    while idx < 68:
                        mem[idx + _6513 + 516] = mem[idx + _6513 + 384]
                        require u > t + s + 31
                        idx = idx + 32
                        continue 
                    mem[_6513 + 584] = 0
                    call poolInfoDetail[arg1].field_14336.mem[_6513 + 516 len 4] with:
                         gas gas_remaining wei
                        args mem[_6513 + 520 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_6513 + 516] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6513 + 520] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6513 + 584] = mem[idx + _6513 + 484]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6513 + 584]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_6513 + 516] = return_data.size
                        mem[_6513 + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6513 + ceil32(return_data.size) + 517] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6513 + ceil32(return_data.size) + 521] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _6513 + ceil32(return_data.size) + 585] = mem[idx + _6513 + 484]
                                require u > t + s + 31
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_6513 + ceil32(return_data.size) + 585]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6513 + 548] == bool(mem[_6513 + 548])
                            if not mem[_6513 + 548]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if poolInfoDetail[arg1].field_2816 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 17
                poolInfoDetail[arg1].field_2816 -= userInfo[arg1][msg.sender].field_0
                emit Emergencywithdraw(msg.sender, arg1, userInfo[arg1][msg.sender].field_0);
    revert with 0, 65
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 1 == bool(uint8(stor2.field_160)):
        revert with 0, 'has been paused'
    if roleAdmin[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][address(msg.sender)].field_0:
        mem[0] = arg1
        mem[32] = 44
        if not poolInfoDetail[arg1].field_2816:
        if block.number <= poolInfoDetail[arg1].field_0:
        require ext_code.size(controllerAddress)
        call controllerAddress.0x3635f1a3 with:
             gas gas_remaining wei
            args poolInfoDetail[arg1].field_14336
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x19c9f39a00000000000000000000000000000000000000000000000000000000
        mem[100] = poolInfoDetail[arg1].field_14336
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x19c9f39a with:
                gas gas_remaining wei
               args poolInfoDetail[arg1].field_14336
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _24 = mem[96 len 4], poolInfoDetail[arg1].field_14336
        require mem[96 len 4], poolInfoDetail[arg1].field_14336 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], poolInfoDetail[arg1].field_14336 + 127
        _26 = mem[mem[96 len 4], poolInfoDetail[arg1].field_14336 + 96]
        if mem[mem[96 len 4], poolInfoDetail[arg1].field_14336 + 96] <= test266151307():
            if ceil32(32 * mem[mem[96 len 4], poolInfoDetail[arg1].field_14336 + 96]) + 1 >= 0 and ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], poolInfoDetail[arg1].field_14336 + 96]) + 97 <= test266151307():
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], poolInfoDetail[arg1].field_14336 + 96]) + 97
                mem[ceil32(return_data.size) + 96] = _26
                require _24 + (32 * _26) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 128 len 32 * _26] = mem[_24 + 128 len 32 * _26]
                mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.mem[var85003 len 4] with:
                        gas gas_remaining wei
                       args mem[var85003 + 4 len var85004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require var89002 - var89001 >= 32
                require mem[var91003] <= test266151307()
                require var91004 > var91003 + mem[var91003] + 31
                _3919 = mem[var91003 + mem[var91003]]
                s = mem[var91003]
                t = var91003
                u = var91004
                v = var91008
                while _3919 <= test266151307():
                    _3921 = mem[64]
                    if mem[64] + ceil32(32 * _3919) + 1 < mem[64] or mem[64] + ceil32(32 * _3919) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * _3919) + 1
                    mem[_3921] = _3919
                    require t + s + (32 * _3919) + 32 <= u
                    w = t + s + 32
                    x = _3921 + 32
                    idx = 0
                    while idx < _3919:
                        require mem[w] == mem[w + 12 len 20]
                        mem[x] = mem[w]
                        require u > t + s + 31
                        _3919 = mem[t + s]
                        w = w + 32
                        x = x + 32
                        idx = idx + 1
                        continue 
                    if _3919 <= 10:
                        if v >= _3919:
                            poolInfoDetail[arg1].field_0 = block.number
                        if v >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if mem[(32 * v) + ceil32(return_data.size) + 128] <= 0:
                            if v == -1:
                                revert with 0, 17
                            mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xc2b18aa0 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4547 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4547] <= test266151307()
                            require _4547 + return_data.size > _4547 + mem[_4547] + 31
                            _3919 = mem[_4547 + mem[_4547]]
                            s = mem[_4547]
                            t = _4547
                            u = _4547 + return_data.size
                            v = v + 1
                            continue 
                        if v >= 10:
                            revert with 0, 50
                        if poolInfoDetail[arg1][v].field_3072 >= mem[(32 * v) + ceil32(return_data.size) + 128]:
                            if v == -1:
                                revert with 0, 17
                            mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xc2b18aa0 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4557 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4557] <= test266151307()
                            require _4557 + return_data.size > _4557 + mem[_4557] + 31
                            _3919 = mem[_4557 + mem[_4557]]
                            s = mem[_4557]
                            t = _4557
                            u = _4557 + return_data.size
                            v = v + 1
                            continue 
                        if v >= 10:
                            revert with 0, 50
                        if poolInfoDetail[arg1][v].field_3072 > mem[(32 * v) + ceil32(return_data.size) + 128]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if mem[(32 * v) + ceil32(return_data.size) + 128] < poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 17
                        if v >= 10:
                            revert with 0, 50
                        if govTotalProfit[v] > !(mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072):
                            revert with 0, 17
                        if govTotalProfit[v] + mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 < govTotalProfit[v]:
                            revert with 0, 'SafeMath: addition overflow'
                        if v >= 10:
                            revert with 0, 50
                        govTotalProfit[v] = govTotalProfit[v] + mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            if poolInfoDetail[arg1][v].field_256 > !(0 / poolInfoDetail[arg1].field_2816):
                                revert with 0, 17
                            if poolInfoDetail[arg1][v].field_256 + (0 / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_256 += 0 / poolInfoDetail[arg1].field_2816
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                if poolInfoDetail[arg1][v].field_8192 > !(0 / poolInfoDetail[arg1].field_2816):
                                    revert with 0, 17
                                if poolInfoDetail[arg1][v].field_8192 + (0 / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                                    revert with 0, 'SafeMath: addition overflow'
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_8192 += 0 / poolInfoDetail[arg1].field_2816
                                if poolInfoDetail[arg1].field_0 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number < poolInfoDetail[arg1].field_0:
                                    revert with 0, 17
                                if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    if poolInfoDetail[arg1].field_2816 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfoDetail[arg1].field_2816:
                                        revert with 0, 18
                                    if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not block.number - poolInfoDetail[arg1].field_0:
                                        revert with 0, 18
                                    if v >= 10:
                                        revert with 0, 50
                                    poolInfoDetail[arg1][v].field_10752 = 0 / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                                    poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                                    if v == -1:
                                        revert with 0, 17
                                    mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xc2b18aa0 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4843 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4843] <= test266151307()
                                    require _4843 + return_data.size > _4843 + mem[_4843] + 31
                                    _3919 = mem[_4843 + mem[_4843]]
                                    s = mem[_4843]
                                    t = _4843
                                    u = _4843 + return_data.size
                                    v = v + 1
                                    continue 
                                if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 17
                                if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 18
                                if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not block.number - poolInfoDetail[arg1].field_0:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_10752 = (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                                poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                                if v == -1:
                                    revert with 0, 17
                                mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xc2b18aa0 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4877 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4877] <= test266151307()
                                require _4877 + return_data.size > _4877 + mem[_4877] + 31
                                _3919 = mem[_4877 + mem[_4877]]
                                s = mem[_4877]
                                t = _4877
                                u = _4877 + return_data.size
                                v = v + 1
                                continue 
                            if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 18
                            if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            if poolInfoDetail[arg1][v].field_8192 > !((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816):
                                revert with 0, 17
                            if poolInfoDetail[arg1][v].field_8192 + ((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                                revert with 0, 'SafeMath: addition overflow'
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_8192 += (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816
                            if poolInfoDetail[arg1].field_0 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfoDetail[arg1].field_0:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not block.number - poolInfoDetail[arg1].field_0:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_10752 = 0 / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                                poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                                if v == -1:
                                    revert with 0, 17
                                mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xc2b18aa0 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4876 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4876] <= test266151307()
                                require _4876 + return_data.size > _4876 + mem[_4876] + 31
                                _3919 = mem[_4876 + mem[_4876]]
                                s = mem[_4876]
                                t = _4876
                                u = _4876 + return_data.size
                                v = v + 1
                                continue 
                            if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 18
                            if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not block.number - poolInfoDetail[arg1].field_0:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_10752 = (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                            poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                            if v == -1:
                                revert with 0, 17
                            mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xc2b18aa0 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4925 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4925] <= test266151307()
                            require _4925 + return_data.size > _4925 + mem[_4925] + 31
                            _3919 = mem[_4925 + mem[_4925]]
                            s = mem[_4925]
                            t = _4925
                            u = _4925 + return_data.size
                            v = v + 1
                            continue 
                        if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 17
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 18
                        if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if poolInfoDetail[arg1].field_2816 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfoDetail[arg1].field_2816:
                            revert with 0, 18
                        if v >= 10:
                            revert with 0, 50
                        if poolInfoDetail[arg1][v].field_256 > !((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816):
                            revert with 0, 17
                        if poolInfoDetail[arg1][v].field_256 + ((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if v >= 10:
                            revert with 0, 50
                        poolInfoDetail[arg1][v].field_256 += (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            if poolInfoDetail[arg1][v].field_8192 > !(0 / poolInfoDetail[arg1].field_2816):
                                revert with 0, 17
                            if poolInfoDetail[arg1][v].field_8192 + (0 / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                                revert with 0, 'SafeMath: addition overflow'
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_8192 += 0 / poolInfoDetail[arg1].field_2816
                            if poolInfoDetail[arg1].field_0 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfoDetail[arg1].field_0:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not block.number - poolInfoDetail[arg1].field_0:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_10752 = 0 / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                                poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                                if v == -1:
                                    revert with 0, 17
                                mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xc2b18aa0 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4875 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4875] <= test266151307()
                                require _4875 + return_data.size > _4875 + mem[_4875] + 31
                                _3919 = mem[_4875 + mem[_4875]]
                                s = mem[_4875]
                                t = _4875
                                u = _4875 + return_data.size
                                v = v + 1
                                continue 
                            if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 18
                            if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not block.number - poolInfoDetail[arg1].field_0:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_10752 = (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                            poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                            if v == -1:
                                revert with 0, 17
                            mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xc2b18aa0 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4924 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4924] <= test266151307()
                            require _4924 + return_data.size > _4924 + mem[_4924] + 31
                            _3919 = mem[_4924 + mem[_4924]]
                            s = mem[_4924]
                            t = _4924
                            u = _4924 + return_data.size
                            v = v + 1
                            continue 
                        if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 17
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 18
                        if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if poolInfoDetail[arg1].field_2816 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfoDetail[arg1].field_2816:
                            revert with 0, 18
                        if v >= 10:
                            revert with 0, 50
                        if poolInfoDetail[arg1][v].field_8192 > !((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816):
                            revert with 0, 17
                        if poolInfoDetail[arg1][v].field_8192 + ((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                            revert with 0, 'SafeMath: addition overflow'
                        if v >= 10:
                            revert with 0, 50
                        poolInfoDetail[arg1][v].field_8192 += (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816
                        if poolInfoDetail[arg1].field_0 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number < poolInfoDetail[arg1].field_0:
                            revert with 0, 17
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not block.number - poolInfoDetail[arg1].field_0:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_10752 = 0 / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                            poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                            if v == -1:
                                revert with 0, 17
                            mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xc2b18aa0 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4923 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4923] <= test266151307()
                            require _4923 + return_data.size > _4923 + mem[_4923] + 31
                            _3919 = mem[_4923 + mem[_4923]]
                            s = mem[_4923]
                            t = _4923
                            u = _4923 + return_data.size
                            v = v + 1
                            continue 
                        if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 17
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 18
                        if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if poolInfoDetail[arg1].field_2816 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfoDetail[arg1].field_2816:
                            revert with 0, 18
                        if block.number - poolInfoDetail[arg1].field_0 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not block.number - poolInfoDetail[arg1].field_0:
                            revert with 0, 18
                        if v >= 10:
                            revert with 0, 50
                        poolInfoDetail[arg1][v].field_10752 = (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                        poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                        if v == -1:
                            revert with 0, 17
                        mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xc2b18aa0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4967 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4967] <= test266151307()
                        require _4967 + return_data.size > _4967 + mem[_4967] + 31
                        _3919 = mem[_4967 + mem[_4967]]
                        s = mem[_4967]
                        t = _4967
                        u = _4967 + return_data.size
                        v = v + 1
                        continue 
                    _4493 = mem[64]
                    mem[mem[64]] = 10
                    mem[64] = mem[64] + 352
                    mem[_4493 + 32 len 320] = call.data[calldata.size len 320]
                    if 0 >= _3919:
                        revert with 0, 50
                    if 0 >= mem[_4493]:
                        revert with 0, 50
                    mem[_4493 + 32] = mem[_3921 + 44 len 20]
                    if 1 >= _3919:
                        revert with 0, 50
                    if 1 >= mem[_4493]:
                        revert with 0, 50
                    mem[_4493 + 64] = mem[_3921 + 76 len 20]
                    if 2 >= _3919:
                        revert with 0, 50
                    if 2 >= mem[_4493]:
                        revert with 0, 50
                    mem[_4493 + 96] = mem[_3921 + 108 len 20]
                    if 3 >= _3919:
                        revert with 0, 50
                    if 3 >= mem[_4493]:
                        revert with 0, 50
                    mem[_4493 + 128] = mem[_3921 + 140 len 20]
                    if 4 >= _3919:
                        revert with 0, 50
                    if 4 >= mem[_4493]:
                        revert with 0, 50
                    mem[_4493 + 160] = mem[_3921 + 172 len 20]
                    if 5 >= _3919:
                        revert with 0, 50
                    if 5 >= mem[_4493]:
                        revert with 0, 50
                    mem[_4493 + 192] = mem[_3921 + 204 len 20]
                    if 6 >= _3919:
                        revert with 0, 50
                    if 6 >= mem[_4493]:
                        revert with 0, 50
                    mem[_4493 + 224] = mem[_3921 + 236 len 20]
                    if 7 >= _3919:
                        revert with 0, 50
                    if 7 >= mem[_4493]:
                        revert with 0, 50
                    mem[_4493 + 256] = mem[_3921 + 268 len 20]
                    if 8 >= _3919:
                        revert with 0, 50
                    if 8 >= mem[_4493]:
                        revert with 0, 50
                    mem[_4493 + 288] = mem[_3921 + 300 len 20]
                    if 9 >= _3919:
                        revert with 0, 50
                    if 9 >= mem[_4493]:
                        revert with 0, 50
                    mem[_4493 + 320] = mem[_3921 + 332 len 20]
                    if v >= mem[_4493]:
                        poolInfoDetail[arg1].field_0 = block.number
                    if v >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    if mem[(32 * v) + ceil32(return_data.size) + 128] > 0:
                        if v >= 10:
                            revert with 0, 50
                        if poolInfoDetail[arg1][v].field_3072 < mem[(32 * v) + ceil32(return_data.size) + 128]:
                            if v >= 10:
                                revert with 0, 50
                            if poolInfoDetail[arg1][v].field_3072 > mem[(32 * v) + ceil32(return_data.size) + 128]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if mem[(32 * v) + ceil32(return_data.size) + 128] < poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 17
                            if v >= 10:
                                revert with 0, 50
                            if govTotalProfit[v] > !(mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072):
                                revert with 0, 17
                            if govTotalProfit[v] + mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 < govTotalProfit[v]:
                                revert with 0, 'SafeMath: addition overflow'
                            if v >= 10:
                                revert with 0, 50
                            govTotalProfit[v] = govTotalProfit[v] + mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                if poolInfoDetail[arg1][v].field_256 > !(0 / poolInfoDetail[arg1].field_2816):
                                    revert with 0, 17
                                if poolInfoDetail[arg1][v].field_256 + (0 / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_256 += 0 / poolInfoDetail[arg1].field_2816
                            else:
                                if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 17
                                if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 18
                                if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                if poolInfoDetail[arg1][v].field_256 > !((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816):
                                    revert with 0, 17
                                if poolInfoDetail[arg1][v].field_256 + ((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_256 += (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                if poolInfoDetail[arg1][v].field_8192 > !(0 / poolInfoDetail[arg1].field_2816):
                                    revert with 0, 17
                                if poolInfoDetail[arg1][v].field_8192 + (0 / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                                    revert with 0, 'SafeMath: addition overflow'
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_8192 += 0 / poolInfoDetail[arg1].field_2816
                            else:
                                if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 17
                                if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 18
                                if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                if poolInfoDetail[arg1][v].field_8192 > !((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816):
                                    revert with 0, 17
                                if poolInfoDetail[arg1][v].field_8192 + ((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                                    revert with 0, 'SafeMath: addition overflow'
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_8192 += (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816
                            if poolInfoDetail[arg1].field_0 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfoDetail[arg1].field_0:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not block.number - poolInfoDetail[arg1].field_0:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_10752 = 0 / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                            else:
                                if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 17
                                if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 18
                                if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not block.number - poolInfoDetail[arg1].field_0:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_10752 = (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                            poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                    if v == -1:
                        revert with 0, 17
                    mem[_4493 + 352] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xc2b18aa0 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4493 + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4493 + ceil32(return_data.size) + 352
                    require return_data.size >= 32
                    require mem[_4493 + 352] <= test266151307()
                    require _4493 + return_data.size + 352 > _4493 + mem[_4493 + 352] + 383
                    _3919 = mem[_4493 + mem[_4493 + 352] + 352]
                    s = mem[_4493 + 352]
                    t = _4493 + 352
                    u = _4493 + return_data.size + 352
                    v = v + 1
                    continue 
    else:
        if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
            revert with 0, 'Caller not have INTERFACE_ROLE'
        mem[0] = arg1
        mem[32] = 44
        if not poolInfoDetail[arg1].field_2816:
        if block.number <= poolInfoDetail[arg1].field_0:
        require ext_code.size(controllerAddress)
        call controllerAddress.0x3635f1a3 with:
             gas gas_remaining wei
            args poolInfoDetail[arg1].field_14336
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x19c9f39a00000000000000000000000000000000000000000000000000000000
        mem[100] = poolInfoDetail[arg1].field_14336
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x19c9f39a with:
                gas gas_remaining wei
               args poolInfoDetail[arg1].field_14336
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _27 = mem[96 len 4], poolInfoDetail[arg1].field_14336
        require mem[96 len 4], poolInfoDetail[arg1].field_14336 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], poolInfoDetail[arg1].field_14336 + 127
        _28 = mem[mem[96 len 4], poolInfoDetail[arg1].field_14336 + 96]
        if mem[mem[96 len 4], poolInfoDetail[arg1].field_14336 + 96] <= test266151307():
            if ceil32(32 * mem[mem[96 len 4], poolInfoDetail[arg1].field_14336 + 96]) + 1 >= 0 and ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], poolInfoDetail[arg1].field_14336 + 96]) + 97 <= test266151307():
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], poolInfoDetail[arg1].field_14336 + 96]) + 97
                mem[ceil32(return_data.size) + 96] = _28
                require _27 + (32 * _28) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 128 len 32 * _28] = mem[_27 + 128 len 32 * _28]
                mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.mem[var87003 len 4] with:
                        gas gas_remaining wei
                       args mem[var87003 + 4 len var87004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require var91002 - var91001 >= 32
                require mem[var93003] <= test266151307()
                require var93004 > var93003 + mem[var93003] + 31
                _3920 = mem[var93003 + mem[var93003]]
                s = mem[var93003]
                t = var93003
                u = var93004
                v = var93008
                while _3920 <= test266151307():
                    _3922 = mem[64]
                    if mem[64] + ceil32(32 * _3920) + 1 < mem[64] or mem[64] + ceil32(32 * _3920) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(32 * _3920) + 1
                    mem[_3922] = _3920
                    require t + s + (32 * _3920) + 32 <= u
                    w = t + s + 32
                    x = _3922 + 32
                    idx = 0
                    while idx < _3920:
                        require mem[w] == mem[w + 12 len 20]
                        mem[x] = mem[w]
                        require u > t + s + 31
                        _3920 = mem[t + s]
                        w = w + 32
                        x = x + 32
                        idx = idx + 1
                        continue 
                    if _3920 <= 10:
                        if v >= _3920:
                            poolInfoDetail[arg1].field_0 = block.number
                        if v >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if mem[(32 * v) + ceil32(return_data.size) + 128] <= 0:
                            if v == -1:
                                revert with 0, 17
                            mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xc2b18aa0 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4551 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4551] <= test266151307()
                            require _4551 + return_data.size > _4551 + mem[_4551] + 31
                            _3920 = mem[_4551 + mem[_4551]]
                            s = mem[_4551]
                            t = _4551
                            u = _4551 + return_data.size
                            v = v + 1
                            continue 
                        if v >= 10:
                            revert with 0, 50
                        if poolInfoDetail[arg1][v].field_3072 >= mem[(32 * v) + ceil32(return_data.size) + 128]:
                            if v == -1:
                                revert with 0, 17
                            mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xc2b18aa0 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4560 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4560] <= test266151307()
                            require _4560 + return_data.size > _4560 + mem[_4560] + 31
                            _3920 = mem[_4560 + mem[_4560]]
                            s = mem[_4560]
                            t = _4560
                            u = _4560 + return_data.size
                            v = v + 1
                            continue 
                        if v >= 10:
                            revert with 0, 50
                        if poolInfoDetail[arg1][v].field_3072 > mem[(32 * v) + ceil32(return_data.size) + 128]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if mem[(32 * v) + ceil32(return_data.size) + 128] < poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 17
                        if v >= 10:
                            revert with 0, 50
                        if govTotalProfit[v] > !(mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072):
                            revert with 0, 17
                        if govTotalProfit[v] + mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 < govTotalProfit[v]:
                            revert with 0, 'SafeMath: addition overflow'
                        if v >= 10:
                            revert with 0, 50
                        govTotalProfit[v] = govTotalProfit[v] + mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            if poolInfoDetail[arg1][v].field_256 > !(0 / poolInfoDetail[arg1].field_2816):
                                revert with 0, 17
                            if poolInfoDetail[arg1][v].field_256 + (0 / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_256 += 0 / poolInfoDetail[arg1].field_2816
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                if poolInfoDetail[arg1][v].field_8192 > !(0 / poolInfoDetail[arg1].field_2816):
                                    revert with 0, 17
                                if poolInfoDetail[arg1][v].field_8192 + (0 / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                                    revert with 0, 'SafeMath: addition overflow'
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_8192 += 0 / poolInfoDetail[arg1].field_2816
                                if poolInfoDetail[arg1].field_0 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number < poolInfoDetail[arg1].field_0:
                                    revert with 0, 17
                                if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    if poolInfoDetail[arg1].field_2816 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfoDetail[arg1].field_2816:
                                        revert with 0, 18
                                    if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not block.number - poolInfoDetail[arg1].field_0:
                                        revert with 0, 18
                                    if v >= 10:
                                        revert with 0, 50
                                    poolInfoDetail[arg1][v].field_10752 = 0 / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                                    poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                                    if v == -1:
                                        revert with 0, 17
                                    mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(controllerAddress)
                                    staticcall controllerAddress.0xc2b18aa0 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4845 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4845] <= test266151307()
                                    require _4845 + return_data.size > _4845 + mem[_4845] + 31
                                    _3920 = mem[_4845 + mem[_4845]]
                                    s = mem[_4845]
                                    t = _4845
                                    u = _4845 + return_data.size
                                    v = v + 1
                                    continue 
                                if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 17
                                if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 18
                                if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not block.number - poolInfoDetail[arg1].field_0:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_10752 = (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                                poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                                if v == -1:
                                    revert with 0, 17
                                mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xc2b18aa0 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4884 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4884] <= test266151307()
                                require _4884 + return_data.size > _4884 + mem[_4884] + 31
                                _3920 = mem[_4884 + mem[_4884]]
                                s = mem[_4884]
                                t = _4884
                                u = _4884 + return_data.size
                                v = v + 1
                                continue 
                            if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 18
                            if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            if poolInfoDetail[arg1][v].field_8192 > !((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816):
                                revert with 0, 17
                            if poolInfoDetail[arg1][v].field_8192 + ((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                                revert with 0, 'SafeMath: addition overflow'
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_8192 += (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816
                            if poolInfoDetail[arg1].field_0 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfoDetail[arg1].field_0:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not block.number - poolInfoDetail[arg1].field_0:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_10752 = 0 / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                                poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                                if v == -1:
                                    revert with 0, 17
                                mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xc2b18aa0 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4883 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4883] <= test266151307()
                                require _4883 + return_data.size > _4883 + mem[_4883] + 31
                                _3920 = mem[_4883 + mem[_4883]]
                                s = mem[_4883]
                                t = _4883
                                u = _4883 + return_data.size
                                v = v + 1
                                continue 
                            if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 18
                            if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not block.number - poolInfoDetail[arg1].field_0:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_10752 = (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                            poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                            if v == -1:
                                revert with 0, 17
                            mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xc2b18aa0 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4934 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4934] <= test266151307()
                            require _4934 + return_data.size > _4934 + mem[_4934] + 31
                            _3920 = mem[_4934 + mem[_4934]]
                            s = mem[_4934]
                            t = _4934
                            u = _4934 + return_data.size
                            v = v + 1
                            continue 
                        if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 17
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 18
                        if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if poolInfoDetail[arg1].field_2816 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfoDetail[arg1].field_2816:
                            revert with 0, 18
                        if v >= 10:
                            revert with 0, 50
                        if poolInfoDetail[arg1][v].field_256 > !((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816):
                            revert with 0, 17
                        if poolInfoDetail[arg1][v].field_256 + ((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if v >= 10:
                            revert with 0, 50
                        poolInfoDetail[arg1][v].field_256 += (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            if poolInfoDetail[arg1][v].field_8192 > !(0 / poolInfoDetail[arg1].field_2816):
                                revert with 0, 17
                            if poolInfoDetail[arg1][v].field_8192 + (0 / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                                revert with 0, 'SafeMath: addition overflow'
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_8192 += 0 / poolInfoDetail[arg1].field_2816
                            if poolInfoDetail[arg1].field_0 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfoDetail[arg1].field_0:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not block.number - poolInfoDetail[arg1].field_0:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_10752 = 0 / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                                poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                                if v == -1:
                                    revert with 0, 17
                                mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(controllerAddress)
                                staticcall controllerAddress.0xc2b18aa0 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4882 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4882] <= test266151307()
                                require _4882 + return_data.size > _4882 + mem[_4882] + 31
                                _3920 = mem[_4882 + mem[_4882]]
                                s = mem[_4882]
                                t = _4882
                                u = _4882 + return_data.size
                                v = v + 1
                                continue 
                            if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 18
                            if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not block.number - poolInfoDetail[arg1].field_0:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_10752 = (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                            poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                            if v == -1:
                                revert with 0, 17
                            mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xc2b18aa0 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4933 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4933] <= test266151307()
                            require _4933 + return_data.size > _4933 + mem[_4933] + 31
                            _3920 = mem[_4933 + mem[_4933]]
                            s = mem[_4933]
                            t = _4933
                            u = _4933 + return_data.size
                            v = v + 1
                            continue 
                        if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 17
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 18
                        if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if poolInfoDetail[arg1].field_2816 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfoDetail[arg1].field_2816:
                            revert with 0, 18
                        if v >= 10:
                            revert with 0, 50
                        if poolInfoDetail[arg1][v].field_8192 > !((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816):
                            revert with 0, 17
                        if poolInfoDetail[arg1][v].field_8192 + ((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                            revert with 0, 'SafeMath: addition overflow'
                        if v >= 10:
                            revert with 0, 50
                        poolInfoDetail[arg1][v].field_8192 += (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816
                        if poolInfoDetail[arg1].field_0 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number < poolInfoDetail[arg1].field_0:
                            revert with 0, 17
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            if poolInfoDetail[arg1].field_2816 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfoDetail[arg1].field_2816:
                                revert with 0, 18
                            if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not block.number - poolInfoDetail[arg1].field_0:
                                revert with 0, 18
                            if v >= 10:
                                revert with 0, 50
                            poolInfoDetail[arg1][v].field_10752 = 0 / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                            poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                            if v == -1:
                                revert with 0, 17
                            mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(controllerAddress)
                            staticcall controllerAddress.0xc2b18aa0 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4932 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4932] <= test266151307()
                            require _4932 + return_data.size > _4932 + mem[_4932] + 31
                            _3920 = mem[_4932 + mem[_4932]]
                            s = mem[_4932]
                            t = _4932
                            u = _4932 + return_data.size
                            v = v + 1
                            continue 
                        if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 17
                        if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                            revert with 0, 18
                        if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if poolInfoDetail[arg1].field_2816 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfoDetail[arg1].field_2816:
                            revert with 0, 18
                        if block.number - poolInfoDetail[arg1].field_0 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not block.number - poolInfoDetail[arg1].field_0:
                            revert with 0, 18
                        if v >= 10:
                            revert with 0, 50
                        poolInfoDetail[arg1][v].field_10752 = (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                        poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                        if v == -1:
                            revert with 0, 17
                        mem[mem[64]] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(controllerAddress)
                        staticcall controllerAddress.0xc2b18aa0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4974 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4974] <= test266151307()
                        require _4974 + return_data.size > _4974 + mem[_4974] + 31
                        _3920 = mem[_4974 + mem[_4974]]
                        s = mem[_4974]
                        t = _4974
                        u = _4974 + return_data.size
                        v = v + 1
                        continue 
                    _4495 = mem[64]
                    mem[mem[64]] = 10
                    mem[64] = mem[64] + 352
                    mem[_4495 + 32 len 320] = call.data[calldata.size len 320]
                    if 0 >= _3920:
                        revert with 0, 50
                    if 0 >= mem[_4495]:
                        revert with 0, 50
                    mem[_4495 + 32] = mem[_3922 + 44 len 20]
                    if 1 >= _3920:
                        revert with 0, 50
                    if 1 >= mem[_4495]:
                        revert with 0, 50
                    mem[_4495 + 64] = mem[_3922 + 76 len 20]
                    if 2 >= _3920:
                        revert with 0, 50
                    if 2 >= mem[_4495]:
                        revert with 0, 50
                    mem[_4495 + 96] = mem[_3922 + 108 len 20]
                    if 3 >= _3920:
                        revert with 0, 50
                    if 3 >= mem[_4495]:
                        revert with 0, 50
                    mem[_4495 + 128] = mem[_3922 + 140 len 20]
                    if 4 >= _3920:
                        revert with 0, 50
                    if 4 >= mem[_4495]:
                        revert with 0, 50
                    mem[_4495 + 160] = mem[_3922 + 172 len 20]
                    if 5 >= _3920:
                        revert with 0, 50
                    if 5 >= mem[_4495]:
                        revert with 0, 50
                    mem[_4495 + 192] = mem[_3922 + 204 len 20]
                    if 6 >= _3920:
                        revert with 0, 50
                    if 6 >= mem[_4495]:
                        revert with 0, 50
                    mem[_4495 + 224] = mem[_3922 + 236 len 20]
                    if 7 >= _3920:
                        revert with 0, 50
                    if 7 >= mem[_4495]:
                        revert with 0, 50
                    mem[_4495 + 256] = mem[_3922 + 268 len 20]
                    if 8 >= _3920:
                        revert with 0, 50
                    if 8 >= mem[_4495]:
                        revert with 0, 50
                    mem[_4495 + 288] = mem[_3922 + 300 len 20]
                    if 9 >= _3920:
                        revert with 0, 50
                    if 9 >= mem[_4495]:
                        revert with 0, 50
                    mem[_4495 + 320] = mem[_3922 + 332 len 20]
                    if v >= mem[_4495]:
                        poolInfoDetail[arg1].field_0 = block.number
                    if v >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    if mem[(32 * v) + ceil32(return_data.size) + 128] > 0:
                        if v >= 10:
                            revert with 0, 50
                        if poolInfoDetail[arg1][v].field_3072 < mem[(32 * v) + ceil32(return_data.size) + 128]:
                            if v >= 10:
                                revert with 0, 50
                            if poolInfoDetail[arg1][v].field_3072 > mem[(32 * v) + ceil32(return_data.size) + 128]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if mem[(32 * v) + ceil32(return_data.size) + 128] < poolInfoDetail[arg1][v].field_3072:
                                revert with 0, 17
                            if v >= 10:
                                revert with 0, 50
                            if govTotalProfit[v] > !(mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072):
                                revert with 0, 17
                            if govTotalProfit[v] + mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 < govTotalProfit[v]:
                                revert with 0, 'SafeMath: addition overflow'
                            if v >= 10:
                                revert with 0, 50
                            govTotalProfit[v] = govTotalProfit[v] + mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                if poolInfoDetail[arg1][v].field_256 > !(0 / poolInfoDetail[arg1].field_2816):
                                    revert with 0, 17
                                if poolInfoDetail[arg1][v].field_256 + (0 / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_256 += 0 / poolInfoDetail[arg1].field_2816
                            else:
                                if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 17
                                if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 18
                                if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                if poolInfoDetail[arg1][v].field_256 > !((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816):
                                    revert with 0, 17
                                if poolInfoDetail[arg1][v].field_256 + ((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_256 += (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                if poolInfoDetail[arg1][v].field_8192 > !(0 / poolInfoDetail[arg1].field_2816):
                                    revert with 0, 17
                                if poolInfoDetail[arg1][v].field_8192 + (0 / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                                    revert with 0, 'SafeMath: addition overflow'
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_8192 += 0 / poolInfoDetail[arg1].field_2816
                            else:
                                if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 17
                                if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 18
                                if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                if poolInfoDetail[arg1][v].field_8192 > !((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816):
                                    revert with 0, 17
                                if poolInfoDetail[arg1][v].field_8192 + ((10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816) < poolInfoDetail[arg1][v].field_8192:
                                    revert with 0, 'SafeMath: addition overflow'
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_8192 += (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816
                            if poolInfoDetail[arg1].field_0 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfoDetail[arg1].field_0:
                                revert with 0, 17
                            if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not block.number - poolInfoDetail[arg1].field_0:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_10752 = 0 / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                            else:
                                if mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 and 10^12 > -1 / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 17
                                if not mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072:
                                    revert with 0, 18
                                if (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / mem[(32 * v) + ceil32(return_data.size) + 128] - poolInfoDetail[arg1][v].field_3072 != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfoDetail[arg1].field_2816 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfoDetail[arg1].field_2816:
                                    revert with 0, 18
                                if block.number - poolInfoDetail[arg1].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not block.number - poolInfoDetail[arg1].field_0:
                                    revert with 0, 18
                                if v >= 10:
                                    revert with 0, 50
                                poolInfoDetail[arg1][v].field_10752 = (10^12 * mem[(32 * v) + ceil32(return_data.size) + 128]) - (10^12 * poolInfoDetail[arg1][v].field_3072) / poolInfoDetail[arg1].field_2816 / block.number - poolInfoDetail[arg1].field_0
                            poolInfoDetail[arg1][v].field_3072 = mem[(32 * v) + ceil32(return_data.size) + 128]
                    if v == -1:
                        revert with 0, 17
                    mem[_4495 + 352] = 0xc2b18aa000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(controllerAddress)
                    staticcall controllerAddress.0xc2b18aa0 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_4495 + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _4495 + ceil32(return_data.size) + 352
                    require return_data.size >= 32
                    require mem[_4495 + 352] <= test266151307()
                    require _4495 + return_data.size + 352 > _4495 + mem[_4495 + 352] + 383
                    _3920 = mem[_4495 + mem[_4495 + 352] + 352]
                    s = mem[_4495 + 352]
                    t = _4495 + 352
                    u = _4495 + return_data.size + 352
                    v = v + 1
                    continue 
    revert with 0, 65
}



}
