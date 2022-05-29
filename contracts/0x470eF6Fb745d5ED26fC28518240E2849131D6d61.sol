contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
const sub_2f660f23(?) = 10^12

const sub_56d73568(?) = 0x6077685936c8169d09204a1d97db12e41713588c38e1d29a61867d3dcee98aff

const sub_8829e43a(?) = 10000

const sub_9e8f262b(?) = 0x2aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343f4

const BONUS_MULTIPLIER = 10

const DEFAULT_ADMIN_ROLE = 0

const MAX_WITHDRAW_FEE = 500

const MANAGER_ROLE = 0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08


mapping of struct roleAdmin;
array of struct roleMember;
array of uint256 stor2;
address rewarderAddress;
uint256 startTimestamp;
uint256 totalAllocation;
uint256 bonusEndTimestamp;
uint256 sub_5c2359f4;
uint32 stor8;
address feeAddress;
uint256 stor8;
array of struct pools;
mapping of struct users;
mapping of uint8 stor11;
address devAddress;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278002;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278003;
array of uint16 stor49791959467252497455735130940088646708311117250336157395101362029847983278004;

function poolLength() payable {
    return pools.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function devAddress() payable {
    return devAddress
}

function feeAddress() payable {
    return address(feeAddress)
}

function sub_5c2359f4(?) payable {
    return sub_5c2359f4
}

function totalAllocation() payable {
    return totalAllocation
}

function addedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function rent() payable {
    return address(stor2.length)
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function pools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pools.length
    return pools[arg1].field_0, 
           pools[arg1].field_256,
           pools[arg1].field_512,
           pools[arg1].field_768,
           pools[arg1].field_1024,
           pools[arg1].field_1280
}

function users(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return users[arg1][arg2].field_0, users[arg1][arg2].field_256, users[arg1][arg2].field_512
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function rewarder() payable {
    return rewarderAddress
}

function bonusEndTimestamp() payable {
    return bonusEndTimestamp
}

function startTimestamp() payable {
    return startTimestamp
}

function _fallback() payable {
    revert
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'Cafe: must be dev'
    devAddress = arg1
    emit SetDevAddress(arg1);
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

function sub_dddd19c8(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if cd[((32 * idx) + cd[4] + 36)] >= pools.length:
            return 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndTimestamp:
        if arg2 < arg1:
            revert with 0, 17
        if arg2 - arg1 and 10 > -1 / arg2 - arg1:
            revert with 0, 17
        return ((10 * arg2) - (10 * arg1))
    if arg1 >= bonusEndTimestamp:
        if arg2 < arg1:
            revert with 0, 17
        return (arg2 - arg1)
    if bonusEndTimestamp < arg1:
        revert with 0, 17
    if bonusEndTimestamp - arg1 and 10 > -1 / bonusEndTimestamp - arg1:
        revert with 0, 17
    if (10 * bonusEndTimestamp) - (10 * arg1) > !arg2:
        revert with 0, 17
    if (10 * bonusEndTimestamp) - (10 * arg1) + arg2 < bonusEndTimestamp:
        revert with 0, 17
    return ((9 * bonusEndTimestamp) - (10 * arg1) + arg2)
}

function sub_0be1b878(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08][address(msg.sender)].field_0:
        sub_5c2359f4 = arg1
        emit 0xe1d67e8e: arg1
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08
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
    revert with 0, 'Strings: hex length insufficient'
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08][address(msg.sender)].field_0:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cafe: feeAddress must not be the zero address'
        address(feeAddress) = arg1
        emit SetFeeAddress(arg1);
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08
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
    revert with 0, 'Strings: hex length insufficient'
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
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
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
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_33aa1b9c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= pools.length:
        revert with 0, 50
    if block.timestamp <= pools[arg1].field_512:
        if users[arg1][address(arg2)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(arg2)].field_256:
            revert with 0, 17
        if users[arg1][address(arg2)].field_256 * pools[arg1].field_768 / 10^12 < users[arg1][address(arg2)].field_512:
            revert with 0, 17
        return ((users[arg1][address(arg2)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(arg2)].field_512)
    if not pools[arg1].field_1024:
        if users[arg1][address(arg2)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(arg2)].field_256:
            revert with 0, 17
        if users[arg1][address(arg2)].field_256 * pools[arg1].field_768 / 10^12 < users[arg1][address(arg2)].field_512:
            revert with 0, 17
        return ((users[arg1][address(arg2)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(arg2)].field_512)
    if block.timestamp <= bonusEndTimestamp:
        if block.timestamp < pools[arg1].field_512:
            revert with 0, 17
        if block.timestamp - pools[arg1].field_512 and 10 > -1 / block.timestamp - pools[arg1].field_512:
            revert with 0, 17
        if (10 * block.timestamp) - (10 * pools[arg1].field_512) and sub_5c2359f4 > -1 / (10 * block.timestamp) - (10 * pools[arg1].field_512):
            revert with 0, 17
        if (10 * block.timestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) and pools[arg1].field_256 > -1 / (10 * block.timestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4):
            revert with 0, 17
        if not totalAllocation:
            revert with 0, 18
        if (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
            revert with 0, 17
        if not pools[arg1].field_1024:
            revert with 0, 18
        if pools[arg1].field_768 > !(10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
            revert with 0, 17
        if users[arg1][address(arg2)].field_256 and pools[arg1].field_768 + (10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024) > -1 / users[arg1][address(arg2)].field_256:
            revert with 0, 17
        if (pools[arg1].field_768 * users[arg1][address(arg2)].field_256) + (10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024 * users[arg1][address(arg2)].field_256) / 10^12 < users[arg1][address(arg2)].field_512:
            revert with 0, 17
        return (((pools[arg1].field_768 * users[arg1][address(arg2)].field_256) + (10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024 * users[arg1][address(arg2)].field_256) / 10^12) - users[arg1][address(arg2)].field_512)
    if pools[arg1].field_512 >= bonusEndTimestamp:
        if block.timestamp < pools[arg1].field_512:
            revert with 0, 17
        if block.timestamp - pools[arg1].field_512 and sub_5c2359f4 > -1 / block.timestamp - pools[arg1].field_512:
            revert with 0, 17
        if (block.timestamp * sub_5c2359f4) - (pools[arg1].field_512 * sub_5c2359f4) and pools[arg1].field_256 > -1 / (block.timestamp * sub_5c2359f4) - (pools[arg1].field_512 * sub_5c2359f4):
            revert with 0, 17
        if not totalAllocation:
            revert with 0, 18
        if (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
            revert with 0, 17
        if not pools[arg1].field_1024:
            revert with 0, 18
        if pools[arg1].field_768 > !(10^12 * (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
            revert with 0, 17
        if users[arg1][address(arg2)].field_256 and pools[arg1].field_768 + (10^12 * (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024) > -1 / users[arg1][address(arg2)].field_256:
            revert with 0, 17
        if (pools[arg1].field_768 * users[arg1][address(arg2)].field_256) + (10^12 * (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024 * users[arg1][address(arg2)].field_256) / 10^12 < users[arg1][address(arg2)].field_512:
            revert with 0, 17
        return (((pools[arg1].field_768 * users[arg1][address(arg2)].field_256) + (10^12 * (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024 * users[arg1][address(arg2)].field_256) / 10^12) - users[arg1][address(arg2)].field_512)
    if bonusEndTimestamp < pools[arg1].field_512:
        revert with 0, 17
    if bonusEndTimestamp - pools[arg1].field_512 and 10 > -1 / bonusEndTimestamp - pools[arg1].field_512:
        revert with 0, 17
    if (10 * bonusEndTimestamp) - (10 * pools[arg1].field_512) > !block.timestamp:
        revert with 0, 17
    if (10 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp < bonusEndTimestamp:
        revert with 0, 17
    if (9 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp and sub_5c2359f4 > -1 / (9 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp:
        revert with 0, 17
    if (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4) and pools[arg1].field_256 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4):
        revert with 0, 17
    if not totalAllocation:
        revert with 0, 18
    if (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
        revert with 0, 17
    if not pools[arg1].field_1024:
        revert with 0, 18
    if pools[arg1].field_768 > !(10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
        revert with 0, 17
    if users[arg1][address(arg2)].field_256 and pools[arg1].field_768 + (10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024) > -1 / users[arg1][address(arg2)].field_256:
        revert with 0, 17
    if (pools[arg1].field_768 * users[arg1][address(arg2)].field_256) + (10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024 * users[arg1][address(arg2)].field_256) / 10^12 < users[arg1][address(arg2)].field_512:
        revert with 0, 17
    return (((pools[arg1].field_768 * users[arg1][address(arg2)].field_256) + (10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024 * users[arg1][address(arg2)].field_256) / 10^12) - users[arg1][address(arg2)].field_512)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= pools.length:
        revert with 0, 50
    if block.timestamp > pools[arg1].field_512:
        if pools[arg1].field_1024:
            if block.timestamp <= bonusEndTimestamp:
                if block.timestamp < pools[arg1].field_512:
                    revert with 0, 17
                if block.timestamp - pools[arg1].field_512 and 10 > -1 / block.timestamp - pools[arg1].field_512:
                    revert with 0, 17
                if (10 * block.timestamp) - (10 * pools[arg1].field_512) and sub_5c2359f4 > -1 / (10 * block.timestamp) - (10 * pools[arg1].field_512):
                    revert with 0, 17
                if (10 * block.timestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) and pools[arg1].field_256 > -1 / (10 * block.timestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4):
                    revert with 0, 17
                if not totalAllocation:
                    revert with 0, 18
                require ext_code.size(address(stor2.length))
                call address(stor2.length).0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(stor2.length))
                call address(stor2.length).0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
                    revert with 0, 17
                if not pools[arg1].field_1024:
                    revert with 0, 18
                if pools[arg1].field_768 > !(10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
                    revert with 0, 17
                pools[arg1].field_768 += 10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024
            else:
                if pools[arg1].field_512 >= bonusEndTimestamp:
                    if block.timestamp < pools[arg1].field_512:
                        revert with 0, 17
                    if block.timestamp - pools[arg1].field_512 and sub_5c2359f4 > -1 / block.timestamp - pools[arg1].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_5c2359f4) - (pools[arg1].field_512 * sub_5c2359f4) and pools[arg1].field_256 > -1 / (block.timestamp * sub_5c2359f4) - (pools[arg1].field_512 * sub_5c2359f4):
                        revert with 0, 17
                    if not totalAllocation:
                        revert with 0, 18
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
                        revert with 0, 17
                    if not pools[arg1].field_1024:
                        revert with 0, 18
                    if pools[arg1].field_768 > !(10^12 * (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
                        revert with 0, 17
                    pools[arg1].field_768 += 10^12 * (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024
                else:
                    if bonusEndTimestamp < pools[arg1].field_512:
                        revert with 0, 17
                    if bonusEndTimestamp - pools[arg1].field_512 and 10 > -1 / bonusEndTimestamp - pools[arg1].field_512:
                        revert with 0, 17
                    if (10 * bonusEndTimestamp) - (10 * pools[arg1].field_512) > !block.timestamp:
                        revert with 0, 17
                    if (10 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp < bonusEndTimestamp:
                        revert with 0, 17
                    if (9 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp and sub_5c2359f4 > -1 / (9 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp:
                        revert with 0, 17
                    if (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4) and pools[arg1].field_256 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4):
                        revert with 0, 17
                    if not totalAllocation:
                        revert with 0, 18
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
                        revert with 0, 17
                    if not pools[arg1].field_1024:
                        revert with 0, 18
                    if pools[arg1].field_768 > !(10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
                        revert with 0, 17
                    pools[arg1].field_768 += 10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024
        pools[arg1].field_512 = block.timestamp
        require ext_code.size(pools[arg1].field_0)
        staticcall pools[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit UpdatePool(block.timestamp, pools[arg1].field_1024, ext_call.return_data[0], pools[arg1].field_768, arg1);
}

function harvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= pools.length:
        revert with 0, 50
    if block.timestamp > pools[arg1].field_512:
        if pools[arg1].field_1024:
            if block.timestamp <= bonusEndTimestamp:
                if block.timestamp < pools[arg1].field_512:
                    revert with 0, 17
                if block.timestamp - pools[arg1].field_512 and 10 > -1 / block.timestamp - pools[arg1].field_512:
                    revert with 0, 17
                if (10 * block.timestamp) - (10 * pools[arg1].field_512) and sub_5c2359f4 > -1 / (10 * block.timestamp) - (10 * pools[arg1].field_512):
                    revert with 0, 17
                if (10 * block.timestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) and pools[arg1].field_256 > -1 / (10 * block.timestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4):
                    revert with 0, 17
                if not totalAllocation:
                    revert with 0, 18
                require ext_code.size(address(stor2.length))
                call address(stor2.length).0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(stor2.length))
                call address(stor2.length).0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
                    revert with 0, 17
                if not pools[arg1].field_1024:
                    revert with 0, 18
                if pools[arg1].field_768 > !(10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
                    revert with 0, 17
                pools[arg1].field_768 += 10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024
            else:
                if pools[arg1].field_512 >= bonusEndTimestamp:
                    if block.timestamp < pools[arg1].field_512:
                        revert with 0, 17
                    if block.timestamp - pools[arg1].field_512 and sub_5c2359f4 > -1 / block.timestamp - pools[arg1].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_5c2359f4) - (pools[arg1].field_512 * sub_5c2359f4) and pools[arg1].field_256 > -1 / (block.timestamp * sub_5c2359f4) - (pools[arg1].field_512 * sub_5c2359f4):
                        revert with 0, 17
                    if not totalAllocation:
                        revert with 0, 18
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
                        revert with 0, 17
                    if not pools[arg1].field_1024:
                        revert with 0, 18
                    if pools[arg1].field_768 > !(10^12 * (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
                        revert with 0, 17
                    pools[arg1].field_768 += 10^12 * (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024
                else:
                    if bonusEndTimestamp < pools[arg1].field_512:
                        revert with 0, 17
                    if bonusEndTimestamp - pools[arg1].field_512 and 10 > -1 / bonusEndTimestamp - pools[arg1].field_512:
                        revert with 0, 17
                    if (10 * bonusEndTimestamp) - (10 * pools[arg1].field_512) > !block.timestamp:
                        revert with 0, 17
                    if (10 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp < bonusEndTimestamp:
                        revert with 0, 17
                    if (9 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp and sub_5c2359f4 > -1 / (9 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp:
                        revert with 0, 17
                    if (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4) and pools[arg1].field_256 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4):
                        revert with 0, 17
                    if not totalAllocation:
                        revert with 0, 18
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
                        revert with 0, 17
                    if not pools[arg1].field_1024:
                        revert with 0, 18
                    if pools[arg1].field_768 > !(10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
                        revert with 0, 17
                    pools[arg1].field_768 += 10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024
        pools[arg1].field_512 = block.timestamp
        require ext_code.size(pools[arg1].field_0)
        staticcall pools[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit UpdatePool(block.timestamp, pools[arg1].field_1024, ext_call.return_data[0], pools[arg1].field_768, arg1);
    if arg1 >= pools.length:
        revert with 0, 50
    if not users[arg1][address(msg.sender)].field_256:
        emit Harvest(0, msg.sender, arg1);
    else:
        if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
            revert with 0, 17
        if users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12 < users[arg1][address(msg.sender)].field_512:
            revert with 0, 17
        if (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512:
            require ext_code.size(address(stor2.length))
            call address(stor2.length).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Harvest(((users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512), msg.sender, arg1);
    if arg1 >= pools.length:
        revert with 0, 50
    if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
        revert with 0, 17
    users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
    emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= pools.length:
        revert with 0, 50
    users[arg1][address(msg.sender)].field_0 = 0
    mem[100] = arg1
    mem[132] = msg.sender
    mem[164] = 0
    require ext_code.size(rewarderAddress)
    call rewarderAddress.0xc02bfbdb with:
         gas gas_remaining wei
        args arg1, msg.sender, 0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= pools.length:
        revert with 0, 50
    if pools[arg1].field_1024 > !ext_call.return_data[0]:
        revert with 0, 17
    pools[arg1].field_1024 += ext_call.return_data[0]
    if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
        revert with 0, 17
    pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
    users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
    if arg1 >= pools.length:
        revert with 0, 50
    if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
        revert with 0, 17
    users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
    emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
    emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
    emit 0xa917f674: pools[arg1].field_1024, arg1
    if not pools[arg1].field_1280:
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = users[arg1][address(msg.sender)].field_0
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(pools[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, users[arg1][address(msg.sender)].field_0, 0
        mem[ceil32(return_data.size) + 328] = 0
        call pools[arg1].field_0 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, users[arg1][address(msg.sender)].field_0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, users[arg1][address(msg.sender)].field_0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(arg1), Mask(224, 32, msg.sender) >> 32 == bool(uint32(arg1), Mask(224, 32, msg.sender) >> 32)
                if not uint32(arg1), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit EmergencyWithdraw(users[arg1][address(msg.sender)].field_0, 0, msg.sender, arg1);
    if users[arg1][address(msg.sender)].field_0 and pools[arg1].field_1280 > -1 / users[arg1][address(msg.sender)].field_0:
        revert with 0, 17
    mem[ceil32(return_data.size) + 132] = address(feeAddress)
    mem[ceil32(return_data.size) + 164] = users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor8)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(pools[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000, 0
    mem[ceil32(return_data.size) + 328] = 0
    call pools[arg1].field_0 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(arg1), Mask(224, 32, msg.sender) >> 32 == bool(uint32(arg1), Mask(224, 32, msg.sender) >> 32)
            if not uint32(arg1), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if users[arg1][address(msg.sender)].field_0 < users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000:
            revert with 0, 17
        mem[ceil32(return_data.size) + 296] = msg.sender
        mem[ceil32(return_data.size) + 328] = users[arg1][address(msg.sender)].field_0 - (users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000)
        mem[ceil32(return_data.size) + 260] = 68
        mem[ceil32(return_data.size) + 292 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 360] = 32
        mem[ceil32(return_data.size) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(pools[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 424 len 96] = 0, msg.sender, users[arg1][address(msg.sender)].field_0 - (users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000), 0
        mem[ceil32(return_data.size) + 492] = 0
        call pools[arg1].field_0 with:
           funct Mask(32, 224, 0, msg.sender, users[arg1][address(msg.sender)].field_0 - (users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, users[arg1][address(msg.sender)].field_0 - (users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(arg1), Mask(224, 32, msg.sender) >> 32 == bool(uint32(arg1), Mask(224, 32, msg.sender) >> 32)
                if not uint32(arg1), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                if not mem[ceil32(return_data.size) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if users[arg1][address(msg.sender)].field_0 < users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000:
            revert with 0, 17
        emit EmergencyWithdraw(users[arg1][address(msg.sender)].field_0, users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000, msg.sender, arg1);
    mem[ceil32(return_data.size) + 260] = return_data.size
    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
        if not mem[ceil32(return_data.size) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if users[arg1][address(msg.sender)].field_0 < users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000:
        revert with 0, 17
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = msg.sender
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = users[arg1][address(msg.sender)].field_0 - (users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 68
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 32
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(pools[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, msg.sender, users[arg1][address(msg.sender)].field_0 - (users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000), 0
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 493] = 0
    call pools[arg1].field_0 with:
       funct Mask(32, 224, 0, msg.sender, users[arg1][address(msg.sender)].field_0 - (users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000), 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, users[arg1][address(msg.sender)].field_0 - (users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000), 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(arg1), Mask(224, 32, msg.sender) >> 32 == bool(uint32(arg1), Mask(224, 32, msg.sender) >> 32)
            if not uint32(arg1), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if users[arg1][address(msg.sender)].field_0 < users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000:
            revert with 0, 17
        emit EmergencyWithdraw(users[arg1][address(msg.sender)].field_0, users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000, msg.sender, arg1);
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        if users[arg1][address(msg.sender)].field_0 < users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000:
            revert with 0, 17
        emit EmergencyWithdraw(users[arg1][address(msg.sender)].field_0, users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000, msg.sender, arg1);
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
        if users[arg1][address(msg.sender)].field_0 < users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000:
            revert with 0, 17
        emit EmergencyWithdraw(users[arg1][address(msg.sender)].field_0, users[arg1][address(msg.sender)].field_0 * pools[arg1].field_1280 / 10000, msg.sender, arg1);
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function sub_d6766993(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 == uint16(arg3)
    mem[0] = msg.sender
    mem[32] = sha3(0x6077685936c8169d09204a1d97db12e41713588c38e1d29a61867d3dcee98aff, 0)
    if not roleAdmin[0x6077685936c8169d09204a1d97db12e41713588c38e1d29a61867d3dcee98aff][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x6077685936c8169d09204a1d97db12e41713588c38e1d29a61867d3dcee98aff
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
        revert with 0, 'Strings: hex length insufficient'
    if uint16(arg3) > 500:
        revert with 0, 'Cafe: withdraw fee too high'
    idx = 0
    while idx < pools.length:
        mem[0] = 9
        if block.timestamp > pools[idx].field_512:
            if not pools[idx].field_1024:
                pools[idx].field_512 = block.timestamp
                mem[mem[64] + 4] = this.address
                require ext_code.size(pools[idx].field_0)
                staticcall pools[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _58 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _59 = mem[_58]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = pools[idx].field_1024
                mem[mem[64] + 64] = _59
                mem[mem[64] + 96] = pools[idx].field_768
                emit UpdatePool(block.timestamp, pools[idx].field_1024, _59, pools[idx].field_768, idx);
            else:
                if block.timestamp <= bonusEndTimestamp:
                    if block.timestamp < pools[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - pools[idx].field_512 and 10 > -1 / block.timestamp - pools[idx].field_512:
                        revert with 0, 17
                    if (10 * block.timestamp) - (10 * pools[idx].field_512) and sub_5c2359f4 > -1 / (10 * block.timestamp) - (10 * pools[idx].field_512):
                        revert with 0, 17
                    if (10 * block.timestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) and pools[idx].field_256 > -1 / (10 * block.timestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4):
                        revert with 0, 17
                    if not totalAllocation:
                        revert with 0, 18
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                        revert with 0, 17
                    if not pools[idx].field_1024:
                        revert with 0, 18
                    if pools[idx].field_768 > !(10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                        revert with 0, 17
                    pools[idx].field_768 += 10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                    pools[idx].field_512 = block.timestamp
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(pools[idx].field_0)
                    staticcall pools[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _88 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _91 = mem[_88]
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = pools[idx].field_1024
                    mem[mem[64] + 64] = _91
                    mem[mem[64] + 96] = pools[idx].field_768
                    emit UpdatePool(block.timestamp, pools[idx].field_1024, _91, pools[idx].field_768, idx);
                else:
                    if pools[idx].field_512 >= bonusEndTimestamp:
                        if block.timestamp < pools[idx].field_512:
                            revert with 0, 17
                        if block.timestamp - pools[idx].field_512 and sub_5c2359f4 > -1 / block.timestamp - pools[idx].field_512:
                            revert with 0, 17
                        if (block.timestamp * sub_5c2359f4) - (pools[idx].field_512 * sub_5c2359f4) and pools[idx].field_256 > -1 / (block.timestamp * sub_5c2359f4) - (pools[idx].field_512 * sub_5c2359f4):
                            revert with 0, 17
                        if not totalAllocation:
                            revert with 0, 18
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                            revert with 0, 17
                        if not pools[idx].field_1024:
                            revert with 0, 18
                        if pools[idx].field_768 > !(10^12 * (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                            revert with 0, 17
                        pools[idx].field_768 += 10^12 * (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                        pools[idx].field_512 = block.timestamp
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(pools[idx].field_0)
                        staticcall pools[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _84 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _87 = mem[_84]
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = pools[idx].field_1024
                        mem[mem[64] + 64] = _87
                        mem[mem[64] + 96] = pools[idx].field_768
                        emit UpdatePool(block.timestamp, pools[idx].field_1024, _87, pools[idx].field_768, idx);
                    else:
                        if bonusEndTimestamp < pools[idx].field_512:
                            revert with 0, 17
                        if bonusEndTimestamp - pools[idx].field_512 and 10 > -1 / bonusEndTimestamp - pools[idx].field_512:
                            revert with 0, 17
                        if (10 * bonusEndTimestamp) - (10 * pools[idx].field_512) > !block.timestamp:
                            revert with 0, 17
                        if (10 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp < bonusEndTimestamp:
                            revert with 0, 17
                        if (9 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp and sub_5c2359f4 > -1 / (9 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp:
                            revert with 0, 17
                        if (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4) and pools[idx].field_256 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4):
                            revert with 0, 17
                        if not totalAllocation:
                            revert with 0, 18
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                            revert with 0, 17
                        if not pools[idx].field_1024:
                            revert with 0, 18
                        if pools[idx].field_768 > !(10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                            revert with 0, 17
                        pools[idx].field_768 += 10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                        pools[idx].field_512 = block.timestamp
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(pools[idx].field_0)
                        staticcall pools[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _96 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _97 = mem[_96]
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = pools[idx].field_1024
                        mem[mem[64] + 64] = _97
                        mem[mem[64] + 96] = pools[idx].field_768
                        emit UpdatePool(block.timestamp, pools[idx].field_1024, _97, pools[idx].field_768, idx);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if totalAllocation > !arg2:
        revert with 0, 17
    totalAllocation += arg2
    if arg1 >= pools.length:
        revert with 0, 50
    if totalAllocation < pools[arg1].field_256:
        revert with 0, 17
    totalAllocation -= pools[arg1].field_256
    if arg1 >= pools.length:
        revert with 0, 50
    pools[arg1].field_256 = arg2
    pools[arg1].field_1280 = uint16(arg3)
    emit 0x8396eeff: arg2, uint16(arg3), arg1
}

function sub_ff444f55(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == uint16(arg3)
    if not roleAdmin[0x6077685936c8169d09204a1d97db12e41713588c38e1d29a61867d3dcee98aff][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x6077685936c8169d09204a1d97db12e41713588c38e1d29a61867d3dcee98aff
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
        revert with 0, 'Strings: hex length insufficient'
    if uint16(arg3) > 500:
        revert with 0, 'Cafe: withdraw fee too high'
    mem[0] = address(arg2)
    mem[32] = 11
    if stor11[address(arg2)]:
        revert with 0, 'Cafe: token already added'
    idx = 0
    while idx < pools.length:
        mem[0] = 9
        if block.timestamp > pools[idx].field_512:
            if not pools[idx].field_1024:
                pools[idx].field_512 = block.timestamp
                mem[mem[64] + 4] = this.address
                require ext_code.size(pools[idx].field_0)
                staticcall pools[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _92 = mem[_91]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = pools[idx].field_1024
                mem[mem[64] + 64] = _92
                mem[mem[64] + 96] = pools[idx].field_768
                emit UpdatePool(block.timestamp, pools[idx].field_1024, _92, pools[idx].field_768, idx);
            else:
                if block.timestamp <= bonusEndTimestamp:
                    if block.timestamp < pools[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - pools[idx].field_512 and 10 > -1 / block.timestamp - pools[idx].field_512:
                        revert with 0, 17
                    if (10 * block.timestamp) - (10 * pools[idx].field_512) and sub_5c2359f4 > -1 / (10 * block.timestamp) - (10 * pools[idx].field_512):
                        revert with 0, 17
                    if (10 * block.timestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) and pools[idx].field_256 > -1 / (10 * block.timestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4):
                        revert with 0, 17
                    if not totalAllocation:
                        revert with 0, 18
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                        revert with 0, 17
                    if not pools[idx].field_1024:
                        revert with 0, 18
                    if pools[idx].field_768 > !(10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                        revert with 0, 17
                    pools[idx].field_768 += 10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                    pools[idx].field_512 = block.timestamp
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(pools[idx].field_0)
                    staticcall pools[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _121 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _124 = mem[_121]
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = pools[idx].field_1024
                    mem[mem[64] + 64] = _124
                    mem[mem[64] + 96] = pools[idx].field_768
                    emit UpdatePool(block.timestamp, pools[idx].field_1024, _124, pools[idx].field_768, idx);
                else:
                    if pools[idx].field_512 >= bonusEndTimestamp:
                        if block.timestamp < pools[idx].field_512:
                            revert with 0, 17
                        if block.timestamp - pools[idx].field_512 and sub_5c2359f4 > -1 / block.timestamp - pools[idx].field_512:
                            revert with 0, 17
                        if (block.timestamp * sub_5c2359f4) - (pools[idx].field_512 * sub_5c2359f4) and pools[idx].field_256 > -1 / (block.timestamp * sub_5c2359f4) - (pools[idx].field_512 * sub_5c2359f4):
                            revert with 0, 17
                        if not totalAllocation:
                            revert with 0, 18
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                            revert with 0, 17
                        if not pools[idx].field_1024:
                            revert with 0, 18
                        if pools[idx].field_768 > !(10^12 * (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                            revert with 0, 17
                        pools[idx].field_768 += 10^12 * (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                        pools[idx].field_512 = block.timestamp
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(pools[idx].field_0)
                        staticcall pools[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _120 = mem[_117]
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = pools[idx].field_1024
                        mem[mem[64] + 64] = _120
                        mem[mem[64] + 96] = pools[idx].field_768
                        emit UpdatePool(block.timestamp, pools[idx].field_1024, _120, pools[idx].field_768, idx);
                    else:
                        if bonusEndTimestamp < pools[idx].field_512:
                            revert with 0, 17
                        if bonusEndTimestamp - pools[idx].field_512 and 10 > -1 / bonusEndTimestamp - pools[idx].field_512:
                            revert with 0, 17
                        if (10 * bonusEndTimestamp) - (10 * pools[idx].field_512) > !block.timestamp:
                            revert with 0, 17
                        if (10 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp < bonusEndTimestamp:
                            revert with 0, 17
                        if (9 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp and sub_5c2359f4 > -1 / (9 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp:
                            revert with 0, 17
                        if (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4) and pools[idx].field_256 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4):
                            revert with 0, 17
                        if not totalAllocation:
                            revert with 0, 18
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                            revert with 0, 17
                        if not pools[idx].field_1024:
                            revert with 0, 18
                        if pools[idx].field_768 > !(10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                            revert with 0, 17
                        pools[idx].field_768 += 10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                        pools[idx].field_512 = block.timestamp
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(pools[idx].field_0)
                        staticcall pools[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _129 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _130 = mem[_129]
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = pools[idx].field_1024
                        mem[mem[64] + 64] = _130
                        mem[mem[64] + 96] = pools[idx].field_768
                        emit UpdatePool(block.timestamp, pools[idx].field_1024, _130, pools[idx].field_768, idx);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if totalAllocation > !arg1:
        revert with 0, 17
    totalAllocation += arg1
    stor11[address(arg2)] = 1
    pools.length++
    pools[pools.length].field_0 = address(arg2)
    stor6E15[stor9.length] = arg1
    if block.timestamp > startTimestamp:
        stor6E15[stor9.length] = block.timestamp
    else:
        stor6E15[stor9.length] = startTimestamp
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length] = uint16(arg3)
    if pools.length < 1:
        revert with 0, 17
    emit 0x85e1bd3c: arg1, uint16(arg3), pools.length - 1, address(arg2)
}

function harvestAll() payable {
    mem[64] = 96
    idx = 0
    while idx < pools.length:
        mem[0] = 9
        if block.timestamp <= pools[idx].field_512:
            if idx >= pools.length:
                revert with 0, 50
            mem[0] = msg.sender
            mem[32] = sha3(idx, 10)
            if not users[idx][address(msg.sender)].field_256:
                emit Harvest(0, msg.sender, idx);
            else:
                if users[idx][address(msg.sender)].field_256 and pools[idx].field_768 > -1 / users[idx][address(msg.sender)].field_256:
                    revert with 0, 17
                if users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12 < users[idx][address(msg.sender)].field_512:
                    revert with 0, 17
                if (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _207 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_207] == bool(mem[_207])
                emit Harvest(((users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512), msg.sender, idx);
        else:
            if not pools[idx].field_1024:
                pools[idx].field_512 = block.timestamp
                mem[mem[64] + 4] = this.address
                require ext_code.size(pools[idx].field_0)
                staticcall pools[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _187 = mem[_184]
                mem[mem[64] + 32] = pools[idx].field_1024
                mem[mem[64] + 64] = _187
                mem[mem[64] + 96] = pools[idx].field_768
                emit UpdatePool(block.timestamp, pools[idx].field_1024, _187, pools[idx].field_768, idx);
                if idx >= pools.length:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(idx, 10)
                if not users[idx][address(msg.sender)].field_256:
                    emit Harvest(0, msg.sender, idx);
                else:
                    if users[idx][address(msg.sender)].field_256 and pools[idx].field_768 > -1 / users[idx][address(msg.sender)].field_256:
                        revert with 0, 17
                    if users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12 < users[idx][address(msg.sender)].field_512:
                        revert with 0, 17
                    if (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _218 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_218] == bool(mem[_218])
                    emit Harvest(((users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512), msg.sender, idx);
            else:
                if block.timestamp <= bonusEndTimestamp:
                    if block.timestamp < pools[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - pools[idx].field_512 and 10 > -1 / block.timestamp - pools[idx].field_512:
                        revert with 0, 17
                    if (10 * block.timestamp) - (10 * pools[idx].field_512) and sub_5c2359f4 > -1 / (10 * block.timestamp) - (10 * pools[idx].field_512):
                        revert with 0, 17
                    if (10 * block.timestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) and pools[idx].field_256 > -1 / (10 * block.timestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4):
                        revert with 0, 17
                    if not totalAllocation:
                        revert with 0, 18
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                        revert with 0, 17
                    if not pools[idx].field_1024:
                        revert with 0, 18
                    if pools[idx].field_768 > !(10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                        revert with 0, 17
                    pools[idx].field_768 += 10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                    pools[idx].field_512 = block.timestamp
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(pools[idx].field_0)
                    staticcall pools[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _262 = mem[_259]
                    mem[mem[64] + 32] = pools[idx].field_1024
                    mem[mem[64] + 64] = _262
                    mem[mem[64] + 96] = pools[idx].field_768
                    emit UpdatePool(block.timestamp, pools[idx].field_1024, _262, pools[idx].field_768, idx);
                    if idx >= pools.length:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 10)
                    if not users[idx][address(msg.sender)].field_256:
                        emit Harvest(0, msg.sender, idx);
                    else:
                        if users[idx][address(msg.sender)].field_256 and pools[idx].field_768 > -1 / users[idx][address(msg.sender)].field_256:
                            revert with 0, 17
                        if users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12 < users[idx][address(msg.sender)].field_512:
                            revert with 0, 17
                        if (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_311] == bool(mem[_311])
                        emit Harvest(((users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512), msg.sender, idx);
                else:
                    if pools[idx].field_512 >= bonusEndTimestamp:
                        if block.timestamp < pools[idx].field_512:
                            revert with 0, 17
                        if block.timestamp - pools[idx].field_512 and sub_5c2359f4 > -1 / block.timestamp - pools[idx].field_512:
                            revert with 0, 17
                        if (block.timestamp * sub_5c2359f4) - (pools[idx].field_512 * sub_5c2359f4) and pools[idx].field_256 > -1 / (block.timestamp * sub_5c2359f4) - (pools[idx].field_512 * sub_5c2359f4):
                            revert with 0, 17
                        if not totalAllocation:
                            revert with 0, 18
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                            revert with 0, 17
                        if not pools[idx].field_1024:
                            revert with 0, 18
                        if pools[idx].field_768 > !(10^12 * (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                            revert with 0, 17
                        pools[idx].field_768 += 10^12 * (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                        pools[idx].field_512 = block.timestamp
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(pools[idx].field_0)
                        staticcall pools[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _258 = mem[_253]
                        mem[mem[64] + 32] = pools[idx].field_1024
                        mem[mem[64] + 64] = _258
                        mem[mem[64] + 96] = pools[idx].field_768
                        emit UpdatePool(block.timestamp, pools[idx].field_1024, _258, pools[idx].field_768, idx);
                        if idx >= pools.length:
                            revert with 0, 50
                        mem[0] = msg.sender
                        mem[32] = sha3(idx, 10)
                        if not users[idx][address(msg.sender)].field_256:
                            emit Harvest(0, msg.sender, idx);
                        else:
                            if users[idx][address(msg.sender)].field_256 and pools[idx].field_768 > -1 / users[idx][address(msg.sender)].field_256:
                                revert with 0, 17
                            if users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12 < users[idx][address(msg.sender)].field_512:
                                revert with 0, 17
                            if (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _301 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_301] == bool(mem[_301])
                            emit Harvest(((users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512), msg.sender, idx);
                    else:
                        if bonusEndTimestamp < pools[idx].field_512:
                            revert with 0, 17
                        if bonusEndTimestamp - pools[idx].field_512 and 10 > -1 / bonusEndTimestamp - pools[idx].field_512:
                            revert with 0, 17
                        if (10 * bonusEndTimestamp) - (10 * pools[idx].field_512) > !block.timestamp:
                            revert with 0, 17
                        if (10 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp < bonusEndTimestamp:
                            revert with 0, 17
                        if (9 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp and sub_5c2359f4 > -1 / (9 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp:
                            revert with 0, 17
                        if (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4) and pools[idx].field_256 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4):
                            revert with 0, 17
                        if not totalAllocation:
                            revert with 0, 18
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                            revert with 0, 17
                        if not pools[idx].field_1024:
                            revert with 0, 18
                        if pools[idx].field_768 > !(10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                            revert with 0, 17
                        pools[idx].field_768 += 10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                        pools[idx].field_512 = block.timestamp
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(pools[idx].field_0)
                        staticcall pools[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _275 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _278 = mem[_275]
                        mem[mem[64] + 32] = pools[idx].field_1024
                        mem[mem[64] + 64] = _278
                        mem[mem[64] + 96] = pools[idx].field_768
                        emit UpdatePool(block.timestamp, pools[idx].field_1024, _278, pools[idx].field_768, idx);
                        if idx >= pools.length:
                            revert with 0, 50
                        mem[0] = msg.sender
                        mem[32] = sha3(idx, 10)
                        if not users[idx][address(msg.sender)].field_256:
                            emit Harvest(0, msg.sender, idx);
                        else:
                            if users[idx][address(msg.sender)].field_256 and pools[idx].field_768 > -1 / users[idx][address(msg.sender)].field_256:
                                revert with 0, 17
                            if users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12 < users[idx][address(msg.sender)].field_512:
                                revert with 0, 17
                            if (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _324 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_324] == bool(mem[_324])
                            emit Harvest(((users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(msg.sender)].field_512), msg.sender, idx);
        if idx >= pools.length:
            revert with 0, 50
        mem[0] = msg.sender
        mem[32] = sha3(idx, 10)
        if users[idx][address(msg.sender)].field_256 and pools[idx].field_768 > -1 / users[idx][address(msg.sender)].field_256:
            revert with 0, 17
        users[idx][address(msg.sender)].field_512 = users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12
        mem[mem[64]] = users[idx][address(msg.sender)].field_256
        mem[mem[64] + 32] = users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12
        emit 0x31286a9b: users[idx][address(msg.sender)].field_256, users[idx][address(msg.sender)].field_256 * pools[idx].field_768 / 10^12, msg.sender, idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c10545ad(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0x2aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343f4, 0)
    if roleAdmin[0x2aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343f4][address(msg.sender)].field_0:
        if address(cd[4]):
            idx = 0
            while idx < ('cd', 36).length:
                if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                    revert with 0, 50
                mem[0] = 9
                if block.timestamp <= pools[cd[((32 * idx) + cd[36] + 36)]].field_512:
                    if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                        revert with 0, 50
                    mem[0] = address(cd[4])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 10)
                    if not users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                        emit Harvest(0, address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                        mem[mem[64] + 36] = address(cd[4])
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 68).length
                        mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                        mem[('cd', 68).length + mem[64] + 164] = 0
                        require ext_code.size(rewarderAddress)
                        call rewarderAddress.0x395fa1ac with:
                             gas gas_remaining wei
                            args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _378 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                            revert with 0, 50
                        if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_378]:
                            revert with 0, 17
                        pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_378]
                        if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                            revert with 0, 17
                        pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                        users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_378]
                    else:
                        if users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 and pools[cd[((32 * idx) + cd[36] + 36)]].field_768 > -1 / users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                            revert with 0, 17
                        if users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512:
                            revert with 0, 17
                        if not (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512:
                            emit Harvest(((users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 36] = address(cd[4])
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = ('cd', 68).length
                            mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                            mem[('cd', 68).length + mem[64] + 164] = 0
                            require ext_code.size(rewarderAddress)
                            call rewarderAddress.0x395fa1ac with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                revert with 0, 50
                            if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_407]:
                                revert with 0, 17
                            pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_407]
                            if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                revert with 0, 17
                            pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                            users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_407]
                        else:
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _380 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_380] == bool(mem[_380])
                            emit Harvest(((users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 36] = address(cd[4])
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = ('cd', 68).length
                            mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                            mem[('cd', 68).length + mem[64] + 164] = 0
                            require ext_code.size(rewarderAddress)
                            call rewarderAddress.0x395fa1ac with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _436 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                revert with 0, 50
                            if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_436]:
                                revert with 0, 17
                            pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_436]
                            if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                revert with 0, 17
                            pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                            users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_436]
                else:
                    if not pools[cd[((32 * idx) + cd[36] + 36)]].field_1024:
                        pools[cd[((32 * idx) + cd[36] + 36)]].field_512 = block.timestamp
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(pools[cd[((32 * idx) + cd[36] + 36)]].field_0)
                        staticcall pools[cd[((32 * idx) + cd[36] + 36)]].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _358 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _361 = mem[_358]
                        mem[mem[64] + 32] = pools[cd[((32 * idx) + cd[36] + 36)]].field_1024
                        mem[mem[64] + 64] = _361
                        mem[mem[64] + 96] = pools[cd[((32 * idx) + cd[36] + 36)]].field_768
                        emit UpdatePool(block.timestamp, pools[cd[((32 * idx) + cd[36] + 36)]].field_1024, _361, pools[cd[((32 * idx) + cd[36] + 36)]].field_768, cd[((32 * idx) + cd[36] + 36)]);
                        if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                            revert with 0, 50
                        mem[0] = address(cd[4])
                        mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 10)
                        if not users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                            emit Harvest(0, address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 36] = address(cd[4])
                            mem[mem[64] + 68] = msg.sender
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = ('cd', 68).length
                            mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                            mem[('cd', 68).length + mem[64] + 164] = 0
                            require ext_code.size(rewarderAddress)
                            call rewarderAddress.0x395fa1ac with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _392 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                revert with 0, 50
                            if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_392]:
                                revert with 0, 17
                            pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_392]
                            if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                revert with 0, 17
                            pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                            users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_392]
                        else:
                            if users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 and pools[cd[((32 * idx) + cd[36] + 36)]].field_768 > -1 / users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                revert with 0, 17
                            if users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512:
                                revert with 0, 17
                            if not (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512:
                                emit Harvest(((users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 36] = address(cd[4])
                                mem[mem[64] + 68] = msg.sender
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = ('cd', 68).length
                                mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                                mem[('cd', 68).length + mem[64] + 164] = 0
                                require ext_code.size(rewarderAddress)
                                call rewarderAddress.0x395fa1ac with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _426 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                    revert with 0, 50
                                if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_426]:
                                    revert with 0, 17
                                pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_426]
                                if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                    revert with 0, 17
                                pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                                users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_426]
                            else:
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[4]), (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _394 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_394] == bool(mem[_394])
                                emit Harvest(((users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 36] = address(cd[4])
                                mem[mem[64] + 68] = msg.sender
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = ('cd', 68).length
                                mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                                mem[('cd', 68).length + mem[64] + 164] = 0
                                require ext_code.size(rewarderAddress)
                                call rewarderAddress.0x395fa1ac with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _459 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                    revert with 0, 50
                                if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_459]:
                                    revert with 0, 17
                                pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_459]
                                if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                    revert with 0, 17
                                pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                                users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_459]
                    else:
                        if block.timestamp <= bonusEndTimestamp:
                            if block.timestamp < pools[cd[((32 * idx) + cd[36] + 36)]].field_512:
                                revert with 0, 17
                            if block.timestamp - pools[cd[((32 * idx) + cd[36] + 36)]].field_512 and 10 > -1 / block.timestamp - pools[cd[((32 * idx) + cd[36] + 36)]].field_512:
                                revert with 0, 17
                            if (10 * block.timestamp) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512) and sub_5c2359f4 > -1 / (10 * block.timestamp) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512):
                                revert with 0, 17
                            if (10 * block.timestamp * sub_5c2359f4) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4) and pools[cd[((32 * idx) + cd[36] + 36)]].field_256 > -1 / (10 * block.timestamp * sub_5c2359f4) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4):
                                revert with 0, 17
                            if not totalAllocation:
                                revert with 0, 18
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, (10 * block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = (10 * block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (10 * block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10 * block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation and 10^12 > -1 / (10 * block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation:
                                revert with 0, 17
                            if not pools[cd[((32 * idx) + cd[36] + 36)]].field_1024:
                                revert with 0, 18
                            if pools[cd[((32 * idx) + cd[36] + 36)]].field_768 > !(10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation / pools[cd[((32 * idx) + cd[36] + 36)]].field_1024):
                                revert with 0, 17
                            pools[cd[((32 * idx) + cd[36] + 36)]].field_768 += 10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation / pools[cd[((32 * idx) + cd[36] + 36)]].field_1024
                            pools[cd[((32 * idx) + cd[36] + 36)]].field_512 = block.timestamp
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(pools[cd[((32 * idx) + cd[36] + 36)]].field_0)
                            staticcall pools[cd[((32 * idx) + cd[36] + 36)]].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _461 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _467 = mem[_461]
                            mem[mem[64] + 32] = pools[cd[((32 * idx) + cd[36] + 36)]].field_1024
                            mem[mem[64] + 64] = _467
                            mem[mem[64] + 96] = pools[cd[((32 * idx) + cd[36] + 36)]].field_768
                            emit UpdatePool(block.timestamp, pools[cd[((32 * idx) + cd[36] + 36)]].field_1024, _467, pools[cd[((32 * idx) + cd[36] + 36)]].field_768, cd[((32 * idx) + cd[36] + 36)]);
                            if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                revert with 0, 50
                            mem[0] = address(cd[4])
                            mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 10)
                            if not users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                emit Harvest(0, address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 36] = address(cd[4])
                                mem[mem[64] + 68] = msg.sender
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = ('cd', 68).length
                                mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                                mem[('cd', 68).length + mem[64] + 164] = 0
                                require ext_code.size(rewarderAddress)
                                call rewarderAddress.0x395fa1ac with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _538 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                    revert with 0, 50
                                if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_538]:
                                    revert with 0, 17
                                pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_538]
                                if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                    revert with 0, 17
                                pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                                users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_538]
                            else:
                                if users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 and pools[cd[((32 * idx) + cd[36] + 36)]].field_768 > -1 / users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                    revert with 0, 17
                                if users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512:
                                    revert with 0, 17
                                if not (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512:
                                    emit Harvest(((users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[mem[64] + 36] = address(cd[4])
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = ('cd', 68).length
                                    mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                                    mem[('cd', 68).length + mem[64] + 164] = 0
                                    require ext_code.size(rewarderAddress)
                                    call rewarderAddress.0x395fa1ac with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _577 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                        revert with 0, 50
                                    if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_577]:
                                        revert with 0, 17
                                    pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_577]
                                    if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                        revert with 0, 17
                                    pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                                    users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_577]
                                else:
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512
                                    require ext_code.size(address(stor2.length))
                                    call address(stor2.length).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[4]), (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _541 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_541] == bool(mem[_541])
                                    emit Harvest(((users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[mem[64] + 36] = address(cd[4])
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = ('cd', 68).length
                                    mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                                    mem[('cd', 68).length + mem[64] + 164] = 0
                                    require ext_code.size(rewarderAddress)
                                    call rewarderAddress.0x395fa1ac with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _613 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                        revert with 0, 50
                                    if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_613]:
                                        revert with 0, 17
                                    pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_613]
                                    if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                        revert with 0, 17
                                    pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                                    users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_613]
                        else:
                            if pools[cd[((32 * idx) + cd[36] + 36)]].field_512 >= bonusEndTimestamp:
                                if block.timestamp < pools[cd[((32 * idx) + cd[36] + 36)]].field_512:
                                    revert with 0, 17
                                if block.timestamp - pools[cd[((32 * idx) + cd[36] + 36)]].field_512 and sub_5c2359f4 > -1 / block.timestamp - pools[cd[((32 * idx) + cd[36] + 36)]].field_512:
                                    revert with 0, 17
                                if (block.timestamp * sub_5c2359f4) - (pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4) and pools[cd[((32 * idx) + cd[36] + 36)]].field_256 > -1 / (block.timestamp * sub_5c2359f4) - (pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4):
                                    revert with 0, 17
                                if not totalAllocation:
                                    revert with 0, 18
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation and 10^12 > -1 / (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation:
                                    revert with 0, 17
                                if not pools[cd[((32 * idx) + cd[36] + 36)]].field_1024:
                                    revert with 0, 18
                                if pools[cd[((32 * idx) + cd[36] + 36)]].field_768 > !(10^12 * (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation / pools[cd[((32 * idx) + cd[36] + 36)]].field_1024):
                                    revert with 0, 17
                                pools[cd[((32 * idx) + cd[36] + 36)]].field_768 += 10^12 * (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation / pools[cd[((32 * idx) + cd[36] + 36)]].field_1024
                                pools[cd[((32 * idx) + cd[36] + 36)]].field_512 = block.timestamp
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(pools[cd[((32 * idx) + cd[36] + 36)]].field_0)
                                staticcall pools[cd[((32 * idx) + cd[36] + 36)]].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _448 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _460 = mem[_448]
                                mem[mem[64] + 32] = pools[cd[((32 * idx) + cd[36] + 36)]].field_1024
                                mem[mem[64] + 64] = _460
                                mem[mem[64] + 96] = pools[cd[((32 * idx) + cd[36] + 36)]].field_768
                                emit UpdatePool(block.timestamp, pools[cd[((32 * idx) + cd[36] + 36)]].field_1024, _460, pools[cd[((32 * idx) + cd[36] + 36)]].field_768, cd[((32 * idx) + cd[36] + 36)]);
                                if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                    revert with 0, 50
                                mem[0] = address(cd[4])
                                mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 10)
                                if not users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                    emit Harvest(0, address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[mem[64] + 36] = address(cd[4])
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = ('cd', 68).length
                                    mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                                    mem[('cd', 68).length + mem[64] + 164] = 0
                                    require ext_code.size(rewarderAddress)
                                    call rewarderAddress.0x395fa1ac with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _526 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                        revert with 0, 50
                                    if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_526]:
                                        revert with 0, 17
                                    pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_526]
                                    if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                        revert with 0, 17
                                    pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                                    users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_526]
                                else:
                                    if users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 and pools[cd[((32 * idx) + cd[36] + 36)]].field_768 > -1 / users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                        revert with 0, 17
                                    if users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512:
                                        revert with 0, 17
                                    if not (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512:
                                        emit Harvest(((users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] + 36] = address(cd[4])
                                        mem[mem[64] + 68] = msg.sender
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 68).length
                                        mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                                        mem[('cd', 68).length + mem[64] + 164] = 0
                                        require ext_code.size(rewarderAddress)
                                        call rewarderAddress.0x395fa1ac with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _570 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                            revert with 0, 50
                                        if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_570]:
                                            revert with 0, 17
                                        pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_570]
                                        if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                            revert with 0, 17
                                        pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                                        users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_570]
                                    else:
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[4]), (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _530 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_530] == bool(mem[_530])
                                        emit Harvest(((users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] + 36] = address(cd[4])
                                        mem[mem[64] + 68] = msg.sender
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 68).length
                                        mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                                        mem[('cd', 68).length + mem[64] + 164] = 0
                                        require ext_code.size(rewarderAddress)
                                        call rewarderAddress.0x395fa1ac with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _602 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                            revert with 0, 50
                                        if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_602]:
                                            revert with 0, 17
                                        pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_602]
                                        if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                            revert with 0, 17
                                        pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                                        users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_602]
                            else:
                                if bonusEndTimestamp < pools[cd[((32 * idx) + cd[36] + 36)]].field_512:
                                    revert with 0, 17
                                if bonusEndTimestamp - pools[cd[((32 * idx) + cd[36] + 36)]].field_512 and 10 > -1 / bonusEndTimestamp - pools[cd[((32 * idx) + cd[36] + 36)]].field_512:
                                    revert with 0, 17
                                if (10 * bonusEndTimestamp) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512) > !block.timestamp:
                                    revert with 0, 17
                                if (10 * bonusEndTimestamp) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512) + block.timestamp < bonusEndTimestamp:
                                    revert with 0, 17
                                if (9 * bonusEndTimestamp) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512) + block.timestamp and sub_5c2359f4 > -1 / (9 * bonusEndTimestamp) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512) + block.timestamp:
                                    revert with 0, 17
                                if (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4) and pools[cd[((32 * idx) + cd[36] + 36)]].field_256 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4):
                                    revert with 0, 17
                                if not totalAllocation:
                                    revert with 0, 18
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) + (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = (9 * bonusEndTimestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) + (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) + (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (9 * bonusEndTimestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) + (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation and 10^12 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) + (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation:
                                    revert with 0, 17
                                if not pools[cd[((32 * idx) + cd[36] + 36)]].field_1024:
                                    revert with 0, 18
                                if pools[cd[((32 * idx) + cd[36] + 36)]].field_768 > !(10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) + (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation / pools[cd[((32 * idx) + cd[36] + 36)]].field_1024):
                                    revert with 0, 17
                                pools[cd[((32 * idx) + cd[36] + 36)]].field_768 += 10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) - (10 * pools[cd[((32 * idx) + cd[36] + 36)]].field_512 * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) + (block.timestamp * sub_5c2359f4 * pools[cd[((32 * idx) + cd[36] + 36)]].field_256) / totalAllocation / pools[cd[((32 * idx) + cd[36] + 36)]].field_1024
                                pools[cd[((32 * idx) + cd[36] + 36)]].field_512 = block.timestamp
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(pools[cd[((32 * idx) + cd[36] + 36)]].field_0)
                                staticcall pools[cd[((32 * idx) + cd[36] + 36)]].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _491 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _500 = mem[_491]
                                mem[mem[64] + 32] = pools[cd[((32 * idx) + cd[36] + 36)]].field_1024
                                mem[mem[64] + 64] = _500
                                mem[mem[64] + 96] = pools[cd[((32 * idx) + cd[36] + 36)]].field_768
                                emit UpdatePool(block.timestamp, pools[cd[((32 * idx) + cd[36] + 36)]].field_1024, _500, pools[cd[((32 * idx) + cd[36] + 36)]].field_768, cd[((32 * idx) + cd[36] + 36)]);
                                if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                    revert with 0, 50
                                mem[0] = address(cd[4])
                                mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 10)
                                if not users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                    emit Harvest(0, address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[mem[64] + 36] = address(cd[4])
                                    mem[mem[64] + 68] = msg.sender
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = ('cd', 68).length
                                    mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                                    mem[('cd', 68).length + mem[64] + 164] = 0
                                    require ext_code.size(rewarderAddress)
                                    call rewarderAddress.0x395fa1ac with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _563 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                        revert with 0, 50
                                    if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_563]:
                                        revert with 0, 17
                                    pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_563]
                                    if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                        revert with 0, 17
                                    pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                                    users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_563]
                                else:
                                    if users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 and pools[cd[((32 * idx) + cd[36] + 36)]].field_768 > -1 / users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                        revert with 0, 17
                                    if users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512:
                                        revert with 0, 17
                                    if not (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512:
                                        emit Harvest(((users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] + 36] = address(cd[4])
                                        mem[mem[64] + 68] = msg.sender
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 68).length
                                        mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                                        mem[('cd', 68).length + mem[64] + 164] = 0
                                        require ext_code.size(rewarderAddress)
                                        call rewarderAddress.0x395fa1ac with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _600 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                            revert with 0, 50
                                        if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_600]:
                                            revert with 0, 17
                                        pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_600]
                                        if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                            revert with 0, 17
                                        pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                                        users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_600]
                                    else:
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[4]), (users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _567 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_567] == bool(mem[_567])
                                        emit Harvest(((users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12) - users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]);
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] + 36] = address(cd[4])
                                        mem[mem[64] + 68] = msg.sender
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = ('cd', 68).length
                                        mem[mem[64] + 164 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                                        mem[('cd', 68).length + mem[64] + 164] = 0
                                        require ext_code.size(rewarderAddress)
                                        call rewarderAddress.0x395fa1ac with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[36] + 36)], address(cd[4]), msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _640 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                                            revert with 0, 50
                                        if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 > !mem[_640]:
                                            revert with 0, 17
                                        pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 += mem[_640]
                                        if pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 < users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                                            revert with 0, 17
                                        pools[cd[((32 * idx) + cd[36] + 36)]].field_1024 -= users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256
                                        users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 = mem[_640]
                if cd[((32 * idx) + cd[36] + 36)] >= pools.length:
                    revert with 0, 50
                mem[0] = address(cd[4])
                mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 10)
                if users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 and pools[cd[((32 * idx) + cd[36] + 36)]].field_768 > -1 / users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256:
                    revert with 0, 17
                users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512 = users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12
                emit 0x31286a9b: users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256, users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256 * pools[cd[((32 * idx) + cd[36] + 36)]].field_768 / 10^12, address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64] + 32] = users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512
                emit 0x31286a9b: users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_256, users[cd[((32 * idx) + cd[36] + 36)]][address(cd[4])].field_512, address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64]] = pools[cd[((32 * idx) + cd[36] + 36)]].field_1024
                emit 0xa917f674: pools[cd[((32 * idx) + cd[36] + 36)]].field_1024, cd[((32 * idx) + cd[36] + 36)]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x2aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343f4
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
    revert with 0, 'Strings: hex length insufficient'
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= pools.length:
        revert with 0, 50
    if block.timestamp <= pools[arg1].field_512:
        if arg1 >= pools.length:
            revert with 0, 50
        if not users[arg1][address(msg.sender)].field_256:
            emit Harvest(0, msg.sender, arg1);
            if users[arg1][address(msg.sender)].field_0 > !arg2:
                revert with 0, 17
            users[arg1][address(msg.sender)].field_0 += arg2
            mem[100] = arg1
            mem[132] = msg.sender
            mem[164] = users[arg1][address(msg.sender)].field_0 + arg2
            require ext_code.size(rewarderAddress)
            call rewarderAddress.0xc02bfbdb with:
                 gas gas_remaining wei
                args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 >= pools.length:
                revert with 0, 50
            if pools[arg1].field_1024 > !ext_call.return_data[0]:
                revert with 0, 17
            pools[arg1].field_1024 += ext_call.return_data[0]
            if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                revert with 0, 17
            pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
            users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
            if arg1 >= pools.length:
                revert with 0, 50
            if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                revert with 0, 17
            users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
            emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
            emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
            emit 0xa917f674: pools[arg1].field_1024, arg1
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
            if not ext_code.size(pools[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            mem[ceil32(return_data.size) + 392] = 0
            call pools[arg1].field_0 with:
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
                    require uint32(arg1), Mask(224, 32, msg.sender) >> 32 == bool(uint32(arg1), Mask(224, 32, msg.sender) >> 32)
                    if not uint32(arg1), Mask(224, 32, msg.sender) >> 32:
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
        else:
            if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                revert with 0, 17
            if users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12 < users[arg1][address(msg.sender)].field_512:
                revert with 0, 17
            if not (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512:
                emit Harvest(((users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512), msg.sender, arg1);
                if users[arg1][address(msg.sender)].field_0 > !arg2:
                    revert with 0, 17
                users[arg1][address(msg.sender)].field_0 += arg2
                mem[100] = arg1
                mem[132] = msg.sender
                mem[164] = users[arg1][address(msg.sender)].field_0 + arg2
                require ext_code.size(rewarderAddress)
                call rewarderAddress.0xc02bfbdb with:
                     gas gas_remaining wei
                    args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 >= pools.length:
                    revert with 0, 50
                if pools[arg1].field_1024 > !ext_call.return_data[0]:
                    revert with 0, 17
                pools[arg1].field_1024 += ext_call.return_data[0]
                if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                    revert with 0, 17
                pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                if arg1 >= pools.length:
                    revert with 0, 50
                if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                    revert with 0, 17
                users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                emit 0xa917f674: pools[arg1].field_1024, arg1
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
                if not ext_code.size(pools[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[ceil32(return_data.size) + 392] = 0
                call pools[arg1].field_0 with:
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
                        require uint32(arg1), Mask(224, 32, msg.sender) >> 32 == bool(uint32(arg1), Mask(224, 32, msg.sender) >> 32)
                        if not uint32(arg1), Mask(224, 32, msg.sender) >> 32:
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
            else:
                mem[100] = msg.sender
                mem[132] = (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512
                require ext_code.size(address(stor2.length))
                call address(stor2.length).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Harvest(((users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512), msg.sender, arg1);
                if users[arg1][address(msg.sender)].field_0 > !arg2:
                    revert with 0, 17
                users[arg1][address(msg.sender)].field_0 += arg2
                mem[ceil32(return_data.size) + 100] = arg1
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                require ext_code.size(rewarderAddress)
                call rewarderAddress.0xc02bfbdb with:
                     gas gas_remaining wei
                    args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 >= pools.length:
                    revert with 0, 50
                if pools[arg1].field_1024 > !ext_call.return_data[0]:
                    revert with 0, 17
                pools[arg1].field_1024 += ext_call.return_data[0]
                if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                    revert with 0, 17
                pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                if arg1 >= pools.length:
                    revert with 0, 50
                if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                    revert with 0, 17
                users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                emit 0xa917f674: pools[arg1].field_1024, arg1
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = this.address
                mem[(2 * ceil32(return_data.size)) + 196] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(pools[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call pools[arg1].field_0 with:
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
                        require uint32(msg.sender), Mask(224, 32, (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512) >> 32 == bool(uint32(msg.sender), Mask(224, 32, (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512) >> 32)
                        if not uint32(msg.sender), Mask(224, 32, (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512) >> 32:
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
    else:
        if not pools[arg1].field_1024:
            pools[arg1].field_512 = block.timestamp
            mem[100] = this.address
            require ext_code.size(pools[arg1].field_0)
            staticcall pools[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 192] = pools[arg1].field_768
            emit UpdatePool(block.timestamp, pools[arg1].field_1024, ext_call.return_data[0], pools[arg1].field_768, arg1);
            if arg1 >= pools.length:
                revert with 0, 50
            if not users[arg1][address(msg.sender)].field_256:
                emit Harvest(0, msg.sender, arg1);
                if users[arg1][address(msg.sender)].field_0 > !arg2:
                    revert with 0, 17
                users[arg1][address(msg.sender)].field_0 += arg2
                mem[ceil32(return_data.size) + 100] = arg1
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                require ext_code.size(rewarderAddress)
                call rewarderAddress.0xc02bfbdb with:
                     gas gas_remaining wei
                    args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 >= pools.length:
                    revert with 0, 50
                if pools[arg1].field_1024 > !ext_call.return_data[0]:
                    revert with 0, 17
                pools[arg1].field_1024 += ext_call.return_data[0]
                if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                    revert with 0, 17
                pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                if arg1 >= pools.length:
                    revert with 0, 50
                if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                    revert with 0, 17
                users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                emit 0xa917f674: pools[arg1].field_1024, arg1
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = this.address
                mem[(2 * ceil32(return_data.size)) + 196] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(pools[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call pools[arg1].field_0 with:
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
            else:
                if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                    revert with 0, 17
                if users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12 < users[arg1][address(msg.sender)].field_512:
                    revert with 0, 17
                if not (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512:
                    emit Harvest(((users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512), msg.sender, arg1);
                    if users[arg1][address(msg.sender)].field_0 > !arg2:
                        revert with 0, 17
                    users[arg1][address(msg.sender)].field_0 += arg2
                    mem[ceil32(return_data.size) + 100] = arg1
                    mem[ceil32(return_data.size) + 132] = msg.sender
                    mem[ceil32(return_data.size) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                    require ext_code.size(rewarderAddress)
                    call rewarderAddress.0xc02bfbdb with:
                         gas gas_remaining wei
                        args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 >= pools.length:
                        revert with 0, 50
                    if pools[arg1].field_1024 > !ext_call.return_data[0]:
                        revert with 0, 17
                    pools[arg1].field_1024 += ext_call.return_data[0]
                    if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                        revert with 0, 17
                    pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                    users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                    if arg1 >= pools.length:
                        revert with 0, 50
                    if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                        revert with 0, 17
                    users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                    emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                    emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                    emit 0xa917f674: pools[arg1].field_1024, arg1
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 164] = this.address
                    mem[(2 * ceil32(return_data.size)) + 196] = arg2
                    mem[(2 * ceil32(return_data.size)) + 96] = 100
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                    mem[(2 * ceil32(return_data.size)) + 392] = 0
                    call pools[arg1].field_0 with:
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
                else:
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit Harvest(((users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512), msg.sender, arg1);
                    if users[arg1][address(msg.sender)].field_0 > !arg2:
                        revert with 0, 17
                    users[arg1][address(msg.sender)].field_0 += arg2
                    mem[(2 * ceil32(return_data.size)) + 100] = arg1
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                    require ext_code.size(rewarderAddress)
                    call rewarderAddress.0xc02bfbdb with:
                         gas gas_remaining wei
                        args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 >= pools.length:
                        revert with 0, 50
                    if pools[arg1].field_1024 > !ext_call.return_data[0]:
                        revert with 0, 17
                    pools[arg1].field_1024 += ext_call.return_data[0]
                    if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                        revert with 0, 17
                    pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                    users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                    if arg1 >= pools.length:
                        revert with 0, 50
                    if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                        revert with 0, 17
                    users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                    emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                    emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                    emit 0xa917f674: pools[arg1].field_1024, arg1
                    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 164] = this.address
                    mem[(4 * ceil32(return_data.size)) + 196] = arg2
                    mem[(4 * ceil32(return_data.size)) + 96] = 100
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                    mem[(4 * ceil32(return_data.size)) + 228] = 32
                    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                    mem[(4 * ceil32(return_data.size)) + 392] = 0
                    call pools[arg1].field_0 with:
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
                        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                            if not mem[(4 * ceil32(return_data.size)) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if block.timestamp <= bonusEndTimestamp:
                if block.timestamp < pools[arg1].field_512:
                    revert with 0, 17
                if block.timestamp - pools[arg1].field_512 and 10 > -1 / block.timestamp - pools[arg1].field_512:
                    revert with 0, 17
                if (10 * block.timestamp) - (10 * pools[arg1].field_512) and sub_5c2359f4 > -1 / (10 * block.timestamp) - (10 * pools[arg1].field_512):
                    revert with 0, 17
                if (10 * block.timestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) and pools[arg1].field_256 > -1 / (10 * block.timestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4):
                    revert with 0, 17
                if not totalAllocation:
                    revert with 0, 18
                require ext_code.size(address(stor2.length))
                call address(stor2.length).0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[132] = (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                require ext_code.size(address(stor2.length))
                call address(stor2.length).0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
                    revert with 0, 17
                if not pools[arg1].field_1024:
                    revert with 0, 18
                if pools[arg1].field_768 > !(10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
                    revert with 0, 17
                pools[arg1].field_768 += 10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024
                pools[arg1].field_512 = block.timestamp
                mem[100] = this.address
                require ext_code.size(pools[arg1].field_0)
                staticcall pools[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 192] = pools[arg1].field_768
                emit UpdatePool(block.timestamp, pools[arg1].field_1024, ext_call.return_data[0], pools[arg1].field_768, arg1);
                if arg1 >= pools.length:
                    revert with 0, 50
                if not users[arg1][address(msg.sender)].field_256:
                    emit Harvest(0, msg.sender, arg1);
                    if users[arg1][address(msg.sender)].field_0 > !arg2:
                        revert with 0, 17
                    users[arg1][address(msg.sender)].field_0 += arg2
                    mem[ceil32(return_data.size) + 100] = arg1
                    mem[ceil32(return_data.size) + 132] = msg.sender
                    mem[ceil32(return_data.size) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                    require ext_code.size(rewarderAddress)
                    call rewarderAddress.0xc02bfbdb with:
                         gas gas_remaining wei
                        args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 >= pools.length:
                        revert with 0, 50
                    if pools[arg1].field_1024 > !ext_call.return_data[0]:
                        revert with 0, 17
                    pools[arg1].field_1024 += ext_call.return_data[0]
                    if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                        revert with 0, 17
                    pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                    users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                    if arg1 >= pools.length:
                        revert with 0, 50
                    if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                        revert with 0, 17
                    users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                    emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                    emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                    emit 0xa917f674: pools[arg1].field_1024, arg1
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 164] = this.address
                    mem[(2 * ceil32(return_data.size)) + 196] = arg2
                    mem[(2 * ceil32(return_data.size)) + 96] = 100
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                    mem[(2 * ceil32(return_data.size)) + 392] = 0
                    call pools[arg1].field_0 with:
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
                            require uint32(this.address), Mask(224, 32, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32 == bool(uint32(this.address), Mask(224, 32, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32)
                            if not uint32(this.address), Mask(224, 32, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32:
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
                else:
                    if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                        revert with 0, 17
                    if users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12 < users[arg1][address(msg.sender)].field_512:
                        revert with 0, 17
                    if not (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512:
                        emit Harvest(((users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512), msg.sender, arg1);
                        if users[arg1][address(msg.sender)].field_0 > !arg2:
                            revert with 0, 17
                        users[arg1][address(msg.sender)].field_0 += arg2
                        mem[ceil32(return_data.size) + 100] = arg1
                        mem[ceil32(return_data.size) + 132] = msg.sender
                        mem[ceil32(return_data.size) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                        require ext_code.size(rewarderAddress)
                        call rewarderAddress.0xc02bfbdb with:
                             gas gas_remaining wei
                            args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 >= pools.length:
                            revert with 0, 50
                        if pools[arg1].field_1024 > !ext_call.return_data[0]:
                            revert with 0, 17
                        pools[arg1].field_1024 += ext_call.return_data[0]
                        if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                            revert with 0, 17
                        pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                        users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                        if arg1 >= pools.length:
                            revert with 0, 50
                        if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                            revert with 0, 17
                        users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                        emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                        emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                        emit 0xa917f674: pools[arg1].field_1024, arg1
                        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 164] = this.address
                        mem[(2 * ceil32(return_data.size)) + 196] = arg2
                        mem[(2 * ceil32(return_data.size)) + 96] = 100
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                        mem[(2 * ceil32(return_data.size)) + 228] = 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(pools[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                        mem[(2 * ceil32(return_data.size)) + 392] = 0
                        call pools[arg1].field_0 with:
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
                                require uint32(this.address), Mask(224, 32, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32 == bool(uint32(this.address), Mask(224, 32, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32)
                                if not uint32(this.address), Mask(224, 32, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32:
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
                    else:
                        mem[ceil32(return_data.size) + 100] = msg.sender
                        mem[ceil32(return_data.size) + 132] = (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512
                        require ext_code.size(address(stor2.length))
                        call address(stor2.length).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit Harvest(((users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512), msg.sender, arg1);
                        if users[arg1][address(msg.sender)].field_0 > !arg2:
                            revert with 0, 17
                        users[arg1][address(msg.sender)].field_0 += arg2
                        mem[(2 * ceil32(return_data.size)) + 100] = arg1
                        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                        require ext_code.size(rewarderAddress)
                        call rewarderAddress.0xc02bfbdb with:
                             gas gas_remaining wei
                            args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 >= pools.length:
                            revert with 0, 50
                        if pools[arg1].field_1024 > !ext_call.return_data[0]:
                            revert with 0, 17
                        pools[arg1].field_1024 += ext_call.return_data[0]
                        if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                            revert with 0, 17
                        pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                        users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                        if arg1 >= pools.length:
                            revert with 0, 50
                        if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                            revert with 0, 17
                        users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                        emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                        emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                        emit 0xa917f674: pools[arg1].field_1024, arg1
                        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + 164] = this.address
                        mem[(4 * ceil32(return_data.size)) + 196] = arg2
                        mem[(4 * ceil32(return_data.size)) + 96] = 100
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                        mem[(4 * ceil32(return_data.size)) + 228] = 32
                        mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(pools[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                        mem[(4 * ceil32(return_data.size)) + 392] = 0
                        call pools[arg1].field_0 with:
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
                                require uint32(this.address), Mask(224, 32, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32 == bool(uint32(this.address), Mask(224, 32, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32)
                                if not uint32(this.address), Mask(224, 32, (10 * block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                if not mem[(4 * ceil32(return_data.size)) + 324]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if pools[arg1].field_512 >= bonusEndTimestamp:
                    if block.timestamp < pools[arg1].field_512:
                        revert with 0, 17
                    if block.timestamp - pools[arg1].field_512 and sub_5c2359f4 > -1 / block.timestamp - pools[arg1].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_5c2359f4) - (pools[arg1].field_512 * sub_5c2359f4) and pools[arg1].field_256 > -1 / (block.timestamp * sub_5c2359f4) - (pools[arg1].field_512 * sub_5c2359f4):
                        revert with 0, 17
                    if not totalAllocation:
                        revert with 0, 18
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[132] = (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
                        revert with 0, 17
                    if not pools[arg1].field_1024:
                        revert with 0, 18
                    if pools[arg1].field_768 > !(10^12 * (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
                        revert with 0, 17
                    pools[arg1].field_768 += 10^12 * (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024
                    pools[arg1].field_512 = block.timestamp
                    mem[100] = this.address
                    require ext_code.size(pools[arg1].field_0)
                    staticcall pools[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 192] = pools[arg1].field_768
                    emit UpdatePool(block.timestamp, pools[arg1].field_1024, ext_call.return_data[0], pools[arg1].field_768, arg1);
                    if arg1 >= pools.length:
                        revert with 0, 50
                    if not users[arg1][address(msg.sender)].field_256:
                        emit Harvest(0, msg.sender, arg1);
                        if users[arg1][address(msg.sender)].field_0 > !arg2:
                            revert with 0, 17
                        users[arg1][address(msg.sender)].field_0 += arg2
                        mem[ceil32(return_data.size) + 100] = arg1
                        mem[ceil32(return_data.size) + 132] = msg.sender
                        mem[ceil32(return_data.size) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                        require ext_code.size(rewarderAddress)
                        call rewarderAddress.0xc02bfbdb with:
                             gas gas_remaining wei
                            args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 >= pools.length:
                            revert with 0, 50
                        if pools[arg1].field_1024 > !ext_call.return_data[0]:
                            revert with 0, 17
                        pools[arg1].field_1024 += ext_call.return_data[0]
                        if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                            revert with 0, 17
                        pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                        users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                        if arg1 >= pools.length:
                            revert with 0, 50
                        if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                            revert with 0, 17
                        users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                        emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                        emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                        emit 0xa917f674: pools[arg1].field_1024, arg1
                        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 164] = this.address
                        mem[(2 * ceil32(return_data.size)) + 196] = arg2
                        mem[(2 * ceil32(return_data.size)) + 96] = 100
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                        mem[(2 * ceil32(return_data.size)) + 228] = 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(pools[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                        mem[(2 * ceil32(return_data.size)) + 392] = 0
                        call pools[arg1].field_0 with:
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
                                require uint32(this.address), Mask(224, 32, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32 == bool(uint32(this.address), Mask(224, 32, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32)
                                if not uint32(this.address), Mask(224, 32, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32:
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
                    else:
                        if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                            revert with 0, 17
                        if users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12 < users[arg1][address(msg.sender)].field_512:
                            revert with 0, 17
                        if not (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512:
                            emit Harvest(((users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512), msg.sender, arg1);
                            if users[arg1][address(msg.sender)].field_0 > !arg2:
                                revert with 0, 17
                            users[arg1][address(msg.sender)].field_0 += arg2
                            mem[ceil32(return_data.size) + 100] = arg1
                            mem[ceil32(return_data.size) + 132] = msg.sender
                            mem[ceil32(return_data.size) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                            require ext_code.size(rewarderAddress)
                            call rewarderAddress.0xc02bfbdb with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 >= pools.length:
                                revert with 0, 50
                            if pools[arg1].field_1024 > !ext_call.return_data[0]:
                                revert with 0, 17
                            pools[arg1].field_1024 += ext_call.return_data[0]
                            if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                                revert with 0, 17
                            pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                            users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                            if arg1 >= pools.length:
                                revert with 0, 50
                            if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                                revert with 0, 17
                            users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                            emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                            emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                            emit 0xa917f674: pools[arg1].field_1024, arg1
                            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 164] = this.address
                            mem[(2 * ceil32(return_data.size)) + 196] = arg2
                            mem[(2 * ceil32(return_data.size)) + 96] = 100
                            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                            mem[(2 * ceil32(return_data.size)) + 228] = 32
                            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(pools[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                            mem[(2 * ceil32(return_data.size)) + 392] = 0
                            call pools[arg1].field_0 with:
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
                                    require uint32(this.address), Mask(224, 32, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32 == bool(uint32(this.address), Mask(224, 32, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32)
                                    if not uint32(this.address), Mask(224, 32, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32:
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
                        else:
                            mem[ceil32(return_data.size) + 100] = msg.sender
                            mem[ceil32(return_data.size) + 132] = (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512
                            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit Harvest(((users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512), msg.sender, arg1);
                            if users[arg1][address(msg.sender)].field_0 > !arg2:
                                revert with 0, 17
                            users[arg1][address(msg.sender)].field_0 += arg2
                            mem[(2 * ceil32(return_data.size)) + 100] = arg1
                            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                            require ext_code.size(rewarderAddress)
                            call rewarderAddress.0xc02bfbdb with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 >= pools.length:
                                revert with 0, 50
                            if pools[arg1].field_1024 > !ext_call.return_data[0]:
                                revert with 0, 17
                            pools[arg1].field_1024 += ext_call.return_data[0]
                            if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                                revert with 0, 17
                            pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                            users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                            if arg1 >= pools.length:
                                revert with 0, 50
                            if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                                revert with 0, 17
                            users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                            emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                            emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                            emit 0xa917f674: pools[arg1].field_1024, arg1
                            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                            mem[(4 * ceil32(return_data.size)) + 164] = this.address
                            mem[(4 * ceil32(return_data.size)) + 196] = arg2
                            mem[(4 * ceil32(return_data.size)) + 96] = 100
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                            mem[(4 * ceil32(return_data.size)) + 228] = 32
                            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(pools[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                            mem[(4 * ceil32(return_data.size)) + 392] = 0
                            call pools[arg1].field_0 with:
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
                                    require uint32(this.address), Mask(224, 32, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32 == bool(uint32(this.address), Mask(224, 32, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32)
                                    if not uint32(this.address), Mask(224, 32, (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) - (pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                    if not mem[(4 * ceil32(return_data.size)) + 324]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if bonusEndTimestamp < pools[arg1].field_512:
                        revert with 0, 17
                    if bonusEndTimestamp - pools[arg1].field_512 and 10 > -1 / bonusEndTimestamp - pools[arg1].field_512:
                        revert with 0, 17
                    if (10 * bonusEndTimestamp) - (10 * pools[arg1].field_512) > !block.timestamp:
                        revert with 0, 17
                    if (10 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp < bonusEndTimestamp:
                        revert with 0, 17
                    if (9 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp and sub_5c2359f4 > -1 / (9 * bonusEndTimestamp) - (10 * pools[arg1].field_512) + block.timestamp:
                        revert with 0, 17
                    if (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4) and pools[arg1].field_256 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[arg1].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4):
                        revert with 0, 17
                    if not totalAllocation:
                        revert with 0, 18
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[132] = (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                    require ext_code.size(address(stor2.length))
                    call address(stor2.length).0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation and 10^12 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation:
                        revert with 0, 17
                    if not pools[arg1].field_1024:
                        revert with 0, 18
                    if pools[arg1].field_768 > !(10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024):
                        revert with 0, 17
                    pools[arg1].field_768 += 10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation / pools[arg1].field_1024
                    pools[arg1].field_512 = block.timestamp
                    mem[100] = this.address
                    require ext_code.size(pools[arg1].field_0)
                    staticcall pools[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 192] = pools[arg1].field_768
                    emit UpdatePool(block.timestamp, pools[arg1].field_1024, ext_call.return_data[0], pools[arg1].field_768, arg1);
                    if arg1 >= pools.length:
                        revert with 0, 50
                    if not users[arg1][address(msg.sender)].field_256:
                        emit Harvest(0, msg.sender, arg1);
                        if users[arg1][address(msg.sender)].field_0 > !arg2:
                            revert with 0, 17
                        users[arg1][address(msg.sender)].field_0 += arg2
                        mem[ceil32(return_data.size) + 100] = arg1
                        mem[ceil32(return_data.size) + 132] = msg.sender
                        mem[ceil32(return_data.size) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                        require ext_code.size(rewarderAddress)
                        call rewarderAddress.0xc02bfbdb with:
                             gas gas_remaining wei
                            args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 >= pools.length:
                            revert with 0, 50
                        if pools[arg1].field_1024 > !ext_call.return_data[0]:
                            revert with 0, 17
                        pools[arg1].field_1024 += ext_call.return_data[0]
                        if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                            revert with 0, 17
                        pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                        users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                        if arg1 >= pools.length:
                            revert with 0, 50
                        if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                            revert with 0, 17
                        users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                        emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                        emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                        emit 0xa917f674: pools[arg1].field_1024, arg1
                        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 164] = this.address
                        mem[(2 * ceil32(return_data.size)) + 196] = arg2
                        mem[(2 * ceil32(return_data.size)) + 96] = 100
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                        mem[(2 * ceil32(return_data.size)) + 228] = 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(pools[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                        mem[(2 * ceil32(return_data.size)) + 392] = 0
                        call pools[arg1].field_0 with:
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
                                require uint32(this.address), Mask(224, 32, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32 == bool(uint32(this.address), Mask(224, 32, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32)
                                if not uint32(this.address), Mask(224, 32, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32:
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
                    else:
                        if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                            revert with 0, 17
                        if users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12 < users[arg1][address(msg.sender)].field_512:
                            revert with 0, 17
                        if not (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512:
                            emit Harvest(((users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512), msg.sender, arg1);
                            if users[arg1][address(msg.sender)].field_0 > !arg2:
                                revert with 0, 17
                            users[arg1][address(msg.sender)].field_0 += arg2
                            mem[ceil32(return_data.size) + 100] = arg1
                            mem[ceil32(return_data.size) + 132] = msg.sender
                            mem[ceil32(return_data.size) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                            require ext_code.size(rewarderAddress)
                            call rewarderAddress.0xc02bfbdb with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 >= pools.length:
                                revert with 0, 50
                            if pools[arg1].field_1024 > !ext_call.return_data[0]:
                                revert with 0, 17
                            pools[arg1].field_1024 += ext_call.return_data[0]
                            if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                                revert with 0, 17
                            pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                            users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                            if arg1 >= pools.length:
                                revert with 0, 50
                            if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                                revert with 0, 17
                            users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                            emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                            emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                            emit 0xa917f674: pools[arg1].field_1024, arg1
                            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 164] = this.address
                            mem[(2 * ceil32(return_data.size)) + 196] = arg2
                            mem[(2 * ceil32(return_data.size)) + 96] = 100
                            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                            mem[(2 * ceil32(return_data.size)) + 228] = 32
                            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(pools[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                            mem[(2 * ceil32(return_data.size)) + 392] = 0
                            call pools[arg1].field_0 with:
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
                                    require uint32(this.address), Mask(224, 32, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32 == bool(uint32(this.address), Mask(224, 32, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32)
                                    if not uint32(this.address), Mask(224, 32, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32:
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
                        else:
                            mem[ceil32(return_data.size) + 100] = msg.sender
                            mem[ceil32(return_data.size) + 132] = (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512
                            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit Harvest(((users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12) - users[arg1][address(msg.sender)].field_512), msg.sender, arg1);
                            if users[arg1][address(msg.sender)].field_0 > !arg2:
                                revert with 0, 17
                            users[arg1][address(msg.sender)].field_0 += arg2
                            mem[(2 * ceil32(return_data.size)) + 100] = arg1
                            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 164] = users[arg1][address(msg.sender)].field_0 + arg2
                            require ext_code.size(rewarderAddress)
                            call rewarderAddress.0xc02bfbdb with:
                                 gas gas_remaining wei
                                args arg1, msg.sender, users[arg1][address(msg.sender)].field_0 + arg2
                            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 >= pools.length:
                                revert with 0, 50
                            if pools[arg1].field_1024 > !ext_call.return_data[0]:
                                revert with 0, 17
                            pools[arg1].field_1024 += ext_call.return_data[0]
                            if pools[arg1].field_1024 < users[arg1][address(msg.sender)].field_256:
                                revert with 0, 17
                            pools[arg1].field_1024 -= users[arg1][address(msg.sender)].field_256
                            users[arg1][address(msg.sender)].field_256 = ext_call.return_data[0]
                            if arg1 >= pools.length:
                                revert with 0, 50
                            if users[arg1][address(msg.sender)].field_256 and pools[arg1].field_768 > -1 / users[arg1][address(msg.sender)].field_256:
                                revert with 0, 17
                            users[arg1][address(msg.sender)].field_512 = users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12
                            emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_256 * pools[arg1].field_768 / 10^12, msg.sender, arg1
                            emit 0x31286a9b: users[arg1][address(msg.sender)].field_256, users[arg1][address(msg.sender)].field_512, msg.sender, arg1
                            emit 0xa917f674: pools[arg1].field_1024, arg1
                            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                            mem[(4 * ceil32(return_data.size)) + 164] = this.address
                            mem[(4 * ceil32(return_data.size)) + 196] = arg2
                            mem[(4 * ceil32(return_data.size)) + 96] = 100
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                            mem[(4 * ceil32(return_data.size)) + 228] = 32
                            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(pools[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                            mem[(4 * ceil32(return_data.size)) + 392] = 0
                            call pools[arg1].field_0 with:
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
                                    require uint32(this.address), Mask(224, 32, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32 == bool(uint32(this.address), Mask(224, 32, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32)
                                    if not uint32(this.address), Mask(224, 32, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[arg1].field_256) - (10 * pools[arg1].field_512 * sub_5c2359f4 * pools[arg1].field_256) + (block.timestamp * sub_5c2359f4 * pools[arg1].field_256) / totalAllocation) >> 32:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                    if not mem[(4 * ceil32(return_data.size)) + 324]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Deposit(arg2, msg.sender, arg1);
}

function sub_03c12014(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0x2aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343f4, 0)
    if not roleAdmin[0x2aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343f4][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x2aae398474fbe8190ffea47793063ec43748d5587e70e29f59076bba9e343f4
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
        revert with 0, 'Strings: hex length insufficient'
    if address(arg1):
        mem[96] = 0x5b7df9500000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg1)
        mem[132] = msg.sender
        mem[164] = 96
        mem[196] = arg2.length
        mem[228 len arg2.length] = arg2[all]
        mem[arg2.length + 228] = 0
        require ext_code.size(rewarderAddress)
        call rewarderAddress.0x5b7df95 with:
             gas gas_remaining wei
            args 0, 0, msg.sender, 96, arg2.length, arg2[all], mem[arg2.length + 228 len ceil32(arg2.length) - arg2.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _8 = mem[96 len 4], address(arg1) << 64
        require mem[96 len 4], address(arg1) << 64 == bool(mem[96 len 4], address(arg1) << 64)
        require 0, Mask(224, 32, msg.sender) >> 32 <= test266151307()
        require 0, Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
        _11 = mem[0, Mask(224, 32, msg.sender) >> 32 + 96]
        if mem[0, Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[0, Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[0, Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[0, Mask(224, 32, msg.sender) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _11
        require 0, Mask(224, 32, msg.sender) >> 32 + (64 * _11) + 32 <= return_data.size
        s = ceil32(return_data.size) + 128
        idx = 0, Mask(224, 32, msg.sender) >> 32 + 128
        while idx < 0, Mask(224, 32, msg.sender) >> 32 + (64 * _11) + 128:
            require return_data.size + -idx + 96 >= 64
            _737 = mem[64]
            if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 64
            mem[_737] = mem[idx]
            mem[_737 + 32] = mem[idx + 32]
            mem[s] = _737
            s = s + 32
            idx = idx + 64
            continue 
        if _8:
            idx = 0
            while idx < pools.length:
                mem[0] = 9
                if block.timestamp <= pools[idx].field_512:
                    if idx >= pools.length:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(idx, 10)
                    if not users[idx][address(arg1)].field_256:
                        emit Harvest(0, address(arg1), idx);
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = idx
                        require ext_code.size(rewarderAddress)
                        staticcall rewarderAddress.0x6c99832a with:
                                gas gas_remaining wei
                               args address(arg1), idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1505 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= pools.length:
                            revert with 0, 50
                        if pools[idx].field_1024 > !mem[_1505]:
                            revert with 0, 17
                        pools[idx].field_1024 += mem[_1505]
                        if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                            revert with 0, 17
                        pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                        users[idx][address(arg1)].field_256 = mem[_1505]
                    else:
                        if users[idx][address(arg1)].field_256 and pools[idx].field_768 > -1 / users[idx][address(arg1)].field_256:
                            revert with 0, 17
                        if users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12 < users[idx][address(arg1)].field_512:
                            revert with 0, 17
                        if not (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512:
                            emit Harvest(((users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512), address(arg1), idx);
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = idx
                            require ext_code.size(rewarderAddress)
                            staticcall rewarderAddress.0x6c99832a with:
                                    gas gas_remaining wei
                                   args address(arg1), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1568 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= pools.length:
                                revert with 0, 50
                            if pools[idx].field_1024 > !mem[_1568]:
                                revert with 0, 17
                            pools[idx].field_1024 += mem[_1568]
                            if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                revert with 0, 17
                            pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                            users[idx][address(arg1)].field_256 = mem[_1568]
                        else:
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1559 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1559] == bool(mem[_1559])
                            emit Harvest(((users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512), address(arg1), idx);
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = idx
                            require ext_code.size(rewarderAddress)
                            staticcall rewarderAddress.0x6c99832a with:
                                    gas gas_remaining wei
                                   args address(arg1), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1658 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= pools.length:
                                revert with 0, 50
                            if pools[idx].field_1024 > !mem[_1658]:
                                revert with 0, 17
                            pools[idx].field_1024 += mem[_1658]
                            if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                revert with 0, 17
                            pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                            users[idx][address(arg1)].field_256 = mem[_1658]
                else:
                    if not pools[idx].field_1024:
                        pools[idx].field_512 = block.timestamp
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(pools[idx].field_0)
                        staticcall pools[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1485 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1493 = mem[_1485]
                        mem[mem[64] + 32] = pools[idx].field_1024
                        mem[mem[64] + 64] = _1493
                        mem[mem[64] + 96] = pools[idx].field_768
                        emit UpdatePool(block.timestamp, pools[idx].field_1024, _1493, pools[idx].field_768, idx);
                        if idx >= pools.length:
                            revert with 0, 50
                        mem[0] = address(arg1)
                        mem[32] = sha3(idx, 10)
                        if not users[idx][address(arg1)].field_256:
                            emit Harvest(0, address(arg1), idx);
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = idx
                            require ext_code.size(rewarderAddress)
                            staticcall rewarderAddress.0x6c99832a with:
                                    gas gas_remaining wei
                                   args address(arg1), idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1541 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= pools.length:
                                revert with 0, 50
                            if pools[idx].field_1024 > !mem[_1541]:
                                revert with 0, 17
                            pools[idx].field_1024 += mem[_1541]
                            if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                revert with 0, 17
                            pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                            users[idx][address(arg1)].field_256 = mem[_1541]
                        else:
                            if users[idx][address(arg1)].field_256 and pools[idx].field_768 > -1 / users[idx][address(arg1)].field_256:
                                revert with 0, 17
                            if users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12 < users[idx][address(arg1)].field_512:
                                revert with 0, 17
                            if not (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512:
                                emit Harvest(((users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512), address(arg1), idx);
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = idx
                                require ext_code.size(rewarderAddress)
                                staticcall rewarderAddress.0x6c99832a with:
                                        gas gas_remaining wei
                                       args address(arg1), idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1619 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if idx >= pools.length:
                                    revert with 0, 50
                                if pools[idx].field_1024 > !mem[_1619]:
                                    revert with 0, 17
                                pools[idx].field_1024 += mem[_1619]
                                if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                    revert with 0, 17
                                pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                                users[idx][address(arg1)].field_256 = mem[_1619]
                            else:
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1604 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1604] == bool(mem[_1604])
                                emit Harvest(((users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512), address(arg1), idx);
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = idx
                                require ext_code.size(rewarderAddress)
                                staticcall rewarderAddress.0x6c99832a with:
                                        gas gas_remaining wei
                                       args address(arg1), idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1707 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if idx >= pools.length:
                                    revert with 0, 50
                                if pools[idx].field_1024 > !mem[_1707]:
                                    revert with 0, 17
                                pools[idx].field_1024 += mem[_1707]
                                if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                    revert with 0, 17
                                pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                                users[idx][address(arg1)].field_256 = mem[_1707]
                    else:
                        if block.timestamp <= bonusEndTimestamp:
                            if block.timestamp < pools[idx].field_512:
                                revert with 0, 17
                            if block.timestamp - pools[idx].field_512 and 10 > -1 / block.timestamp - pools[idx].field_512:
                                revert with 0, 17
                            if (10 * block.timestamp) - (10 * pools[idx].field_512) and sub_5c2359f4 > -1 / (10 * block.timestamp) - (10 * pools[idx].field_512):
                                revert with 0, 17
                            if (10 * block.timestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) and pools[idx].field_256 > -1 / (10 * block.timestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4):
                                revert with 0, 17
                            if not totalAllocation:
                                revert with 0, 18
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                                revert with 0, 17
                            if not pools[idx].field_1024:
                                revert with 0, 18
                            if pools[idx].field_768 > !(10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                                revert with 0, 17
                            pools[idx].field_768 += 10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                            pools[idx].field_512 = block.timestamp
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(pools[idx].field_0)
                            staticcall pools[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1754 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1769 = mem[_1754]
                            mem[mem[64] + 32] = pools[idx].field_1024
                            mem[mem[64] + 64] = _1769
                            mem[mem[64] + 96] = pools[idx].field_768
                            emit UpdatePool(block.timestamp, pools[idx].field_1024, _1769, pools[idx].field_768, idx);
                            if idx >= pools.length:
                                revert with 0, 50
                            mem[0] = address(arg1)
                            mem[32] = sha3(idx, 10)
                            if not users[idx][address(arg1)].field_256:
                                emit Harvest(0, address(arg1), idx);
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = idx
                                require ext_code.size(rewarderAddress)
                                staticcall rewarderAddress.0x6c99832a with:
                                        gas gas_remaining wei
                                       args address(arg1), idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1851 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if idx >= pools.length:
                                    revert with 0, 50
                                if pools[idx].field_1024 > !mem[_1851]:
                                    revert with 0, 17
                                pools[idx].field_1024 += mem[_1851]
                                if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                    revert with 0, 17
                                pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                                users[idx][address(arg1)].field_256 = mem[_1851]
                            else:
                                if users[idx][address(arg1)].field_256 and pools[idx].field_768 > -1 / users[idx][address(arg1)].field_256:
                                    revert with 0, 17
                                if users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12 < users[idx][address(arg1)].field_512:
                                    revert with 0, 17
                                if not (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512:
                                    emit Harvest(((users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512), address(arg1), idx);
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(rewarderAddress)
                                    staticcall rewarderAddress.0x6c99832a with:
                                            gas gas_remaining wei
                                           args address(arg1), idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1943 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if idx >= pools.length:
                                        revert with 0, 50
                                    if pools[idx].field_1024 > !mem[_1943]:
                                        revert with 0, 17
                                    pools[idx].field_1024 += mem[_1943]
                                    if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                        revert with 0, 17
                                    pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                                    users[idx][address(arg1)].field_256 = mem[_1943]
                                else:
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512
                                    require ext_code.size(address(stor2.length))
                                    call address(stor2.length).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1926 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1926] == bool(mem[_1926])
                                    emit Harvest(((users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512), address(arg1), idx);
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(rewarderAddress)
                                    staticcall rewarderAddress.0x6c99832a with:
                                            gas gas_remaining wei
                                           args address(arg1), idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2044 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if idx >= pools.length:
                                        revert with 0, 50
                                    if pools[idx].field_1024 > !mem[_2044]:
                                        revert with 0, 17
                                    pools[idx].field_1024 += mem[_2044]
                                    if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                        revert with 0, 17
                                    pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                                    users[idx][address(arg1)].field_256 = mem[_2044]
                        else:
                            if pools[idx].field_512 >= bonusEndTimestamp:
                                if block.timestamp < pools[idx].field_512:
                                    revert with 0, 17
                                if block.timestamp - pools[idx].field_512 and sub_5c2359f4 > -1 / block.timestamp - pools[idx].field_512:
                                    revert with 0, 17
                                if (block.timestamp * sub_5c2359f4) - (pools[idx].field_512 * sub_5c2359f4) and pools[idx].field_256 > -1 / (block.timestamp * sub_5c2359f4) - (pools[idx].field_512 * sub_5c2359f4):
                                    revert with 0, 17
                                if not totalAllocation:
                                    revert with 0, 18
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                                    revert with 0, 17
                                if not pools[idx].field_1024:
                                    revert with 0, 18
                                if pools[idx].field_768 > !(10^12 * (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                                    revert with 0, 17
                                pools[idx].field_768 += 10^12 * (block.timestamp * sub_5c2359f4 * pools[idx].field_256) - (pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                                pools[idx].field_512 = block.timestamp
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(pools[idx].field_0)
                                staticcall pools[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1744 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1753 = mem[_1744]
                                mem[mem[64] + 32] = pools[idx].field_1024
                                mem[mem[64] + 64] = _1753
                                mem[mem[64] + 96] = pools[idx].field_768
                                emit UpdatePool(block.timestamp, pools[idx].field_1024, _1753, pools[idx].field_768, idx);
                                if idx >= pools.length:
                                    revert with 0, 50
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 10)
                                if not users[idx][address(arg1)].field_256:
                                    emit Harvest(0, address(arg1), idx);
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(rewarderAddress)
                                    staticcall rewarderAddress.0x6c99832a with:
                                            gas gas_remaining wei
                                           args address(arg1), idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1832 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if idx >= pools.length:
                                        revert with 0, 50
                                    if pools[idx].field_1024 > !mem[_1832]:
                                        revert with 0, 17
                                    pools[idx].field_1024 += mem[_1832]
                                    if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                        revert with 0, 17
                                    pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                                    users[idx][address(arg1)].field_256 = mem[_1832]
                                else:
                                    if users[idx][address(arg1)].field_256 and pools[idx].field_768 > -1 / users[idx][address(arg1)].field_256:
                                        revert with 0, 17
                                    if users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12 < users[idx][address(arg1)].field_512:
                                        revert with 0, 17
                                    if not (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512:
                                        emit Harvest(((users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512), address(arg1), idx);
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = idx
                                        require ext_code.size(rewarderAddress)
                                        staticcall rewarderAddress.0x6c99832a with:
                                                gas gas_remaining wei
                                               args address(arg1), idx
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1923 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if idx >= pools.length:
                                            revert with 0, 50
                                        if pools[idx].field_1024 > !mem[_1923]:
                                            revert with 0, 17
                                        pools[idx].field_1024 += mem[_1923]
                                        if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                            revert with 0, 17
                                        pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                                        users[idx][address(arg1)].field_256 = mem[_1923]
                                    else:
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1906 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1906] == bool(mem[_1906])
                                        emit Harvest(((users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512), address(arg1), idx);
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = idx
                                        require ext_code.size(rewarderAddress)
                                        staticcall rewarderAddress.0x6c99832a with:
                                                gas gas_remaining wei
                                               args address(arg1), idx
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2015 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if idx >= pools.length:
                                            revert with 0, 50
                                        if pools[idx].field_1024 > !mem[_2015]:
                                            revert with 0, 17
                                        pools[idx].field_1024 += mem[_2015]
                                        if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                            revert with 0, 17
                                        pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                                        users[idx][address(arg1)].field_256 = mem[_2015]
                            else:
                                if bonusEndTimestamp < pools[idx].field_512:
                                    revert with 0, 17
                                if bonusEndTimestamp - pools[idx].field_512 and 10 > -1 / bonusEndTimestamp - pools[idx].field_512:
                                    revert with 0, 17
                                if (10 * bonusEndTimestamp) - (10 * pools[idx].field_512) > !block.timestamp:
                                    revert with 0, 17
                                if (10 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp < bonusEndTimestamp:
                                    revert with 0, 17
                                if (9 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp and sub_5c2359f4 > -1 / (9 * bonusEndTimestamp) - (10 * pools[idx].field_512) + block.timestamp:
                                    revert with 0, 17
                                if (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4) and pools[idx].field_256 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[idx].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4):
                                    revert with 0, 17
                                if not totalAllocation:
                                    revert with 0, 18
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation and 10^12 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation:
                                    revert with 0, 17
                                if not pools[idx].field_1024:
                                    revert with 0, 18
                                if pools[idx].field_768 > !(10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024):
                                    revert with 0, 17
                                pools[idx].field_768 += 10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[idx].field_256) - (10 * pools[idx].field_512 * sub_5c2359f4 * pools[idx].field_256) + (block.timestamp * sub_5c2359f4 * pools[idx].field_256) / totalAllocation / pools[idx].field_1024
                                pools[idx].field_512 = block.timestamp
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(pools[idx].field_0)
                                staticcall pools[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1813 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1831 = mem[_1813]
                                mem[mem[64] + 32] = pools[idx].field_1024
                                mem[mem[64] + 64] = _1831
                                mem[mem[64] + 96] = pools[idx].field_768
                                emit UpdatePool(block.timestamp, pools[idx].field_1024, _1831, pools[idx].field_768, idx);
                                if idx >= pools.length:
                                    revert with 0, 50
                                mem[0] = address(arg1)
                                mem[32] = sha3(idx, 10)
                                if not users[idx][address(arg1)].field_256:
                                    emit Harvest(0, address(arg1), idx);
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(rewarderAddress)
                                    staticcall rewarderAddress.0x6c99832a with:
                                            gas gas_remaining wei
                                           args address(arg1), idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1903 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if idx >= pools.length:
                                        revert with 0, 50
                                    if pools[idx].field_1024 > !mem[_1903]:
                                        revert with 0, 17
                                    pools[idx].field_1024 += mem[_1903]
                                    if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                        revert with 0, 17
                                    pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                                    users[idx][address(arg1)].field_256 = mem[_1903]
                                else:
                                    if users[idx][address(arg1)].field_256 and pools[idx].field_768 > -1 / users[idx][address(arg1)].field_256:
                                        revert with 0, 17
                                    if users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12 < users[idx][address(arg1)].field_512:
                                        revert with 0, 17
                                    if not (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512:
                                        emit Harvest(((users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512), address(arg1), idx);
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = idx
                                        require ext_code.size(rewarderAddress)
                                        staticcall rewarderAddress.0x6c99832a with:
                                                gas gas_remaining wei
                                               args address(arg1), idx
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2000 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if idx >= pools.length:
                                            revert with 0, 50
                                        if pools[idx].field_1024 > !mem[_2000]:
                                            revert with 0, 17
                                        pools[idx].field_1024 += mem[_2000]
                                        if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                            revert with 0, 17
                                        pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                                        users[idx][address(arg1)].field_256 = mem[_2000]
                                    else:
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1982 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1982] == bool(mem[_1982])
                                        emit Harvest(((users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12) - users[idx][address(arg1)].field_512), address(arg1), idx);
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = idx
                                        require ext_code.size(rewarderAddress)
                                        staticcall rewarderAddress.0x6c99832a with:
                                                gas gas_remaining wei
                                               args address(arg1), idx
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2098 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if idx >= pools.length:
                                            revert with 0, 50
                                        if pools[idx].field_1024 > !mem[_2098]:
                                            revert with 0, 17
                                        pools[idx].field_1024 += mem[_2098]
                                        if pools[idx].field_1024 < users[idx][address(arg1)].field_256:
                                            revert with 0, 17
                                        pools[idx].field_1024 -= users[idx][address(arg1)].field_256
                                        users[idx][address(arg1)].field_256 = mem[_2098]
                if idx >= pools.length:
                    revert with 0, 50
                mem[0] = address(arg1)
                mem[32] = sha3(idx, 10)
                if users[idx][address(arg1)].field_256 and pools[idx].field_768 > -1 / users[idx][address(arg1)].field_256:
                    revert with 0, 17
                users[idx][address(arg1)].field_512 = users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12
                emit 0x31286a9b: users[idx][address(arg1)].field_256, users[idx][address(arg1)].field_256 * pools[idx].field_768 / 10^12, address(arg1), idx
                mem[mem[64] + 32] = users[idx][address(arg1)].field_512
                emit 0x31286a9b: users[idx][address(arg1)].field_256, users[idx][address(arg1)].field_512, address(arg1), idx
                mem[mem[64]] = pools[idx].field_1024
                emit 0xa917f674: pools[idx].field_1024, idx
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            _1463 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while idx < _1463:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _1466 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                    revert with 0, 50
                mem[0] = 9
                if block.timestamp <= pools[_1466].field_512:
                    if _1466 >= pools.length:
                        revert with 0, 50
                    mem[0] = address(arg1)
                    mem[32] = sha3(_1466, 10)
                    if not users[_1466][address(arg1)].field_256:
                        mem[mem[64]] = 0
                        emit Harvest(0, address(arg1), _1466);
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _1503 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                            revert with 0, 50
                        _1521 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                        if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                            revert with 0, 17
                        pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                        if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                            revert with 0, 17
                        pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                        users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                            revert with 0, 50
                        _1578 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                        mem[0] = address(arg1)
                        mem[32] = _1578
                        if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1578'))].field_0 and pools[_1503].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1578'))].field_0:
                            revert with 0, 17
                        uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1578'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1578'))].field_0 * pools[_1503].field_768 / 10^12
                        emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1578'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1578'))].field_0 * pools[_1503].field_768 / 10^12, address(arg1), _1503
                        mem[mem[64] + 32] = uint256(stor2[_1521])
                        emit 0x31286a9b: roleMember[_1521].field_0, uint256(stor2[_1521]), address(arg1), _1503
                        mem[mem[64]] = pools[_1503].field_1024
                        emit 0xa917f674: pools[_1503].field_1024, _1503
                    else:
                        if users[_1466][address(arg1)].field_256 and pools[_1466].field_768 > -1 / users[_1466][address(arg1)].field_256:
                            revert with 0, 17
                        if users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12 < users[_1466][address(arg1)].field_512:
                            revert with 0, 17
                        if not (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512:
                            mem[mem[64]] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                            emit Harvest(((users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512), address(arg1), _1466);
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _1566 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                revert with 0, 50
                            _1596 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                            if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                revert with 0, 17
                            pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                            if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                revert with 0, 17
                            pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                            users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                revert with 0, 50
                            _1666 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                            mem[0] = address(arg1)
                            mem[32] = _1666
                            if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1666'))].field_0 and pools[_1566].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1666'))].field_0:
                                revert with 0, 17
                            uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1666'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1666'))].field_0 * pools[_1566].field_768 / 10^12
                            emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1666'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1666'))].field_0 * pools[_1566].field_768 / 10^12, address(arg1), _1566
                            mem[mem[64] + 32] = uint256(stor2[_1596])
                            emit 0x31286a9b: roleMember[_1596].field_0, uint256(stor2[_1596]), address(arg1), _1566
                            mem[mem[64]] = pools[_1566].field_1024
                            emit 0xa917f674: pools[_1566].field_1024, _1566
                        else:
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1564 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1564] == bool(mem[_1564])
                            mem[mem[64]] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                            emit Harvest(((users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512), address(arg1), _1466);
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _1652 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                revert with 0, 50
                            _1677 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                            if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                revert with 0, 17
                            pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                            if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                revert with 0, 17
                            pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                            users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                revert with 0, 50
                            _1739 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                            mem[0] = address(arg1)
                            mem[32] = _1739
                            if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1739'))].field_0 and pools[_1652].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1739'))].field_0:
                                revert with 0, 17
                            uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1739'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1739'))].field_0 * pools[_1652].field_768 / 10^12
                            emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1739'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1739'))].field_0 * pools[_1652].field_768 / 10^12, address(arg1), _1652
                            mem[mem[64] + 32] = uint256(stor2[_1677])
                            emit 0x31286a9b: roleMember[_1677].field_0, uint256(stor2[_1677]), address(arg1), _1652
                            mem[mem[64]] = pools[_1652].field_1024
                            emit 0xa917f674: pools[_1652].field_1024, _1652
                else:
                    if not pools[_1466].field_1024:
                        pools[_1466].field_512 = block.timestamp
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(pools[_1466].field_0)
                        staticcall pools[_1466].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1487 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1496 = mem[_1487]
                        mem[mem[64] + 32] = pools[_1466].field_1024
                        mem[mem[64] + 64] = _1496
                        mem[mem[64] + 96] = pools[_1466].field_768
                        emit UpdatePool(block.timestamp, pools[_1466].field_1024, _1496, pools[_1466].field_768, _1466);
                        if _1466 >= pools.length:
                            revert with 0, 50
                        mem[0] = address(arg1)
                        mem[32] = sha3(_1466, 10)
                        if not users[_1466][address(arg1)].field_256:
                            mem[mem[64]] = 0
                            emit Harvest(0, address(arg1), _1466);
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _1539 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                revert with 0, 50
                            _1562 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                            if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                revert with 0, 17
                            pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                            if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                revert with 0, 17
                            pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                            users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                revert with 0, 50
                            _1626 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                            mem[0] = address(arg1)
                            mem[32] = _1626
                            if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1626'))].field_0 and pools[_1539].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1626'))].field_0:
                                revert with 0, 17
                            uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1626'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1626'))].field_0 * pools[_1539].field_768 / 10^12
                            emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1626'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1626'))].field_0 * pools[_1539].field_768 / 10^12, address(arg1), _1539
                            mem[mem[64] + 32] = uint256(stor2[_1562])
                            emit 0x31286a9b: roleMember[_1562].field_0, uint256(stor2[_1562]), address(arg1), _1539
                            mem[mem[64]] = pools[_1539].field_1024
                            emit 0xa917f674: pools[_1539].field_1024, _1539
                        else:
                            if users[_1466][address(arg1)].field_256 and pools[_1466].field_768 > -1 / users[_1466][address(arg1)].field_256:
                                revert with 0, 17
                            if users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12 < users[_1466][address(arg1)].field_512:
                                revert with 0, 17
                            if not (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512:
                                mem[mem[64]] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                emit Harvest(((users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512), address(arg1), _1466);
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _1616 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                    revert with 0, 50
                                _1647 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                                if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                    revert with 0, 17
                                pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                    revert with 0, 17
                                pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                                users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                    revert with 0, 50
                                _1715 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                                mem[0] = address(arg1)
                                mem[32] = _1715
                                if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1715'))].field_0 and pools[_1616].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1715'))].field_0:
                                    revert with 0, 17
                                uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1715'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1715'))].field_0 * pools[_1616].field_768 / 10^12
                                emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1715'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1715'))].field_0 * pools[_1616].field_768 / 10^12, address(arg1), _1616
                                mem[mem[64] + 32] = uint256(stor2[_1647])
                                emit 0x31286a9b: roleMember[_1647].field_0, uint256(stor2[_1647]), address(arg1), _1616
                                mem[mem[64]] = pools[_1616].field_1024
                                emit 0xa917f674: pools[_1616].field_1024, _1616
                            else:
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1608 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1608] == bool(mem[_1608])
                                mem[mem[64]] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                emit Harvest(((users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512), address(arg1), _1466);
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _1702 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                    revert with 0, 50
                                _1722 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                                if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                    revert with 0, 17
                                pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                    revert with 0, 17
                                pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                                users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                    revert with 0, 50
                                _1781 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                                mem[0] = address(arg1)
                                mem[32] = _1781
                                if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1781'))].field_0 and pools[_1702].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1781'))].field_0:
                                    revert with 0, 17
                                uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1781'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1781'))].field_0 * pools[_1702].field_768 / 10^12
                                emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1781'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1781'))].field_0 * pools[_1702].field_768 / 10^12, address(arg1), _1702
                                mem[mem[64] + 32] = uint256(stor2[_1722])
                                emit 0x31286a9b: roleMember[_1722].field_0, uint256(stor2[_1722]), address(arg1), _1702
                                mem[mem[64]] = pools[_1702].field_1024
                                emit 0xa917f674: pools[_1702].field_1024, _1702
                    else:
                        if block.timestamp <= bonusEndTimestamp:
                            if block.timestamp < pools[_1466].field_512:
                                revert with 0, 17
                            if block.timestamp - pools[_1466].field_512 and 10 > -1 / block.timestamp - pools[_1466].field_512:
                                revert with 0, 17
                            if (10 * block.timestamp) - (10 * pools[_1466].field_512) and sub_5c2359f4 > -1 / (10 * block.timestamp) - (10 * pools[_1466].field_512):
                                revert with 0, 17
                            if (10 * block.timestamp * sub_5c2359f4) - (10 * pools[_1466].field_512 * sub_5c2359f4) and pools[_1466].field_256 > -1 / (10 * block.timestamp * sub_5c2359f4) - (10 * pools[_1466].field_512 * sub_5c2359f4):
                                revert with 0, 17
                            if not totalAllocation:
                                revert with 0, 18
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, (10 * block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = (10 * block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation
                            require ext_code.size(address(stor2.length))
                            call address(stor2.length).0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (10 * block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10 * block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation and 10^12 > -1 / (10 * block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation:
                                revert with 0, 17
                            if not pools[_1466].field_1024:
                                revert with 0, 18
                            if pools[_1466].field_768 > !(10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation / pools[_1466].field_1024):
                                revert with 0, 17
                            pools[_1466].field_768 += 10^12 * (10 * block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation / pools[_1466].field_1024
                            pools[_1466].field_512 = block.timestamp
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(pools[_1466].field_0)
                            staticcall pools[_1466].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1762 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1771 = mem[_1762]
                            mem[mem[64] + 32] = pools[_1466].field_1024
                            mem[mem[64] + 64] = _1771
                            mem[mem[64] + 96] = pools[_1466].field_768
                            emit UpdatePool(block.timestamp, pools[_1466].field_1024, _1771, pools[_1466].field_768, _1466);
                            if _1466 >= pools.length:
                                revert with 0, 50
                            mem[0] = address(arg1)
                            mem[32] = sha3(_1466, 10)
                            if not users[_1466][address(arg1)].field_256:
                                mem[mem[64]] = 0
                                emit Harvest(0, address(arg1), _1466);
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _1848 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                    revert with 0, 50
                                _1874 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                                if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                    revert with 0, 17
                                pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                    revert with 0, 17
                                pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                                users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                    revert with 0, 50
                                _1948 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                                mem[0] = address(arg1)
                                mem[32] = _1948
                                if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1948'))].field_0 and pools[_1848].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1948'))].field_0:
                                    revert with 0, 17
                                uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1948'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1948'))].field_0 * pools[_1848].field_768 / 10^12
                                emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1948'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1948'))].field_0 * pools[_1848].field_768 / 10^12, address(arg1), _1848
                                mem[mem[64] + 32] = uint256(stor2[_1874])
                                emit 0x31286a9b: roleMember[_1874].field_0, uint256(stor2[_1874]), address(arg1), _1848
                                mem[mem[64]] = pools[_1848].field_1024
                                emit 0xa917f674: pools[_1848].field_1024, _1848
                            else:
                                if users[_1466][address(arg1)].field_256 and pools[_1466].field_768 > -1 / users[_1466][address(arg1)].field_256:
                                    revert with 0, 17
                                if users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12 < users[_1466][address(arg1)].field_512:
                                    revert with 0, 17
                                if not (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512:
                                    mem[mem[64]] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                    emit Harvest(((users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512), address(arg1), _1466);
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _1940 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                        revert with 0, 50
                                    _1969 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                                    if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                        revert with 0, 17
                                    pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                    if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                        revert with 0, 17
                                    pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                                    users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                    if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                        revert with 0, 50
                                    _2057 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                                    mem[0] = address(arg1)
                                    mem[32] = _2057
                                    if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2057'))].field_0 and pools[_1940].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2057'))].field_0:
                                        revert with 0, 17
                                    uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2057'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2057'))].field_0 * pools[_1940].field_768 / 10^12
                                    emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2057'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2057'))].field_0 * pools[_1940].field_768 / 10^12, address(arg1), _1940
                                    mem[mem[64] + 32] = uint256(stor2[_1969])
                                    emit 0x31286a9b: roleMember[_1969].field_0, uint256(stor2[_1969]), address(arg1), _1940
                                    mem[mem[64]] = pools[_1940].field_1024
                                    emit 0xa917f674: pools[_1940].field_1024, _1940
                                else:
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                    require ext_code.size(address(stor2.length))
                                    call address(stor2.length).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(arg1), (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1936 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1936] == bool(mem[_1936])
                                    mem[mem[64]] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                    emit Harvest(((users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512), address(arg1), _1466);
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _2036 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                        revert with 0, 50
                                    _2072 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                                    if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                        revert with 0, 17
                                    pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                    if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                        revert with 0, 17
                                    pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                                    users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                    if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                        revert with 0, 50
                                    _2137 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                                    mem[0] = address(arg1)
                                    mem[32] = _2137
                                    if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2137'))].field_0 and pools[_2036].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2137'))].field_0:
                                        revert with 0, 17
                                    uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2137'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2137'))].field_0 * pools[_2036].field_768 / 10^12
                                    emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2137'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2137'))].field_0 * pools[_2036].field_768 / 10^12, address(arg1), _2036
                                    mem[mem[64] + 32] = uint256(stor2[_2072])
                                    emit 0x31286a9b: roleMember[_2072].field_0, uint256(stor2[_2072]), address(arg1), _2036
                                    mem[mem[64]] = pools[_2036].field_1024
                                    emit 0xa917f674: pools[_2036].field_1024, _2036
                        else:
                            if pools[_1466].field_512 >= bonusEndTimestamp:
                                if block.timestamp < pools[_1466].field_512:
                                    revert with 0, 17
                                if block.timestamp - pools[_1466].field_512 and sub_5c2359f4 > -1 / block.timestamp - pools[_1466].field_512:
                                    revert with 0, 17
                                if (block.timestamp * sub_5c2359f4) - (pools[_1466].field_512 * sub_5c2359f4) and pools[_1466].field_256 > -1 / (block.timestamp * sub_5c2359f4) - (pools[_1466].field_512 * sub_5c2359f4):
                                    revert with 0, 17
                                if not totalAllocation:
                                    revert with 0, 18
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation and 10^12 > -1 / (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation:
                                    revert with 0, 17
                                if not pools[_1466].field_1024:
                                    revert with 0, 18
                                if pools[_1466].field_768 > !(10^12 * (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation / pools[_1466].field_1024):
                                    revert with 0, 17
                                pools[_1466].field_768 += 10^12 * (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) - (pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation / pools[_1466].field_1024
                                pools[_1466].field_512 = block.timestamp
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(pools[_1466].field_0)
                                staticcall pools[_1466].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1748 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1761 = mem[_1748]
                                mem[mem[64] + 32] = pools[_1466].field_1024
                                mem[mem[64] + 64] = _1761
                                mem[mem[64] + 96] = pools[_1466].field_768
                                emit UpdatePool(block.timestamp, pools[_1466].field_1024, _1761, pools[_1466].field_768, _1466);
                                if _1466 >= pools.length:
                                    revert with 0, 50
                                mem[0] = address(arg1)
                                mem[32] = sha3(_1466, 10)
                                if not users[_1466][address(arg1)].field_256:
                                    mem[mem[64]] = 0
                                    emit Harvest(0, address(arg1), _1466);
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _1827 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                        revert with 0, 50
                                    _1856 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                                    if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                        revert with 0, 17
                                    pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                    if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                        revert with 0, 17
                                    pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                                    users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                    if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                        revert with 0, 50
                                    _1931 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                                    mem[0] = address(arg1)
                                    mem[32] = _1931
                                    if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1931'))].field_0 and pools[_1827].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1931'))].field_0:
                                        revert with 0, 17
                                    uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1931'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1931'))].field_0 * pools[_1827].field_768 / 10^12
                                    emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1931'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_1931'))].field_0 * pools[_1827].field_768 / 10^12, address(arg1), _1827
                                    mem[mem[64] + 32] = uint256(stor2[_1856])
                                    emit 0x31286a9b: roleMember[_1856].field_0, uint256(stor2[_1856]), address(arg1), _1827
                                    mem[mem[64]] = pools[_1827].field_1024
                                    emit 0xa917f674: pools[_1827].field_1024, _1827
                                else:
                                    if users[_1466][address(arg1)].field_256 and pools[_1466].field_768 > -1 / users[_1466][address(arg1)].field_256:
                                        revert with 0, 17
                                    if users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12 < users[_1466][address(arg1)].field_512:
                                        revert with 0, 17
                                    if not (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512:
                                        mem[mem[64]] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                        emit Harvest(((users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512), address(arg1), _1466);
                                        if idx >= mem[ceil32(return_data.size) + 96]:
                                            revert with 0, 50
                                        _1919 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                                        if idx >= mem[ceil32(return_data.size) + 96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                            revert with 0, 50
                                        _1946 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                                        if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                            revert with 0, 17
                                        pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                        if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                            revert with 0, 17
                                        pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                                        users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                            revert with 0, 50
                                        _2032 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                                        mem[0] = address(arg1)
                                        mem[32] = _2032
                                        if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2032'))].field_0 and pools[_1919].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2032'))].field_0:
                                            revert with 0, 17
                                        uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2032'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2032'))].field_0 * pools[_1919].field_768 / 10^12
                                        emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2032'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2032'))].field_0 * pools[_1919].field_768 / 10^12, address(arg1), _1919
                                        mem[mem[64] + 32] = uint256(stor2[_1946])
                                        emit 0x31286a9b: roleMember[_1946].field_0, uint256(stor2[_1946]), address(arg1), _1919
                                        mem[mem[64]] = pools[_1919].field_1024
                                        emit 0xa917f674: pools[_1919].field_1024, _1919
                                    else:
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1913 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1913] == bool(mem[_1913])
                                        mem[mem[64]] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                        emit Harvest(((users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512), address(arg1), _1466);
                                        if idx >= mem[ceil32(return_data.size) + 96]:
                                            revert with 0, 50
                                        _2009 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                                        if idx >= mem[ceil32(return_data.size) + 96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                            revert with 0, 50
                                        _2047 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                                        if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                            revert with 0, 17
                                        pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                        if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                            revert with 0, 17
                                        pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                                        users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                            revert with 0, 50
                                        _2120 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                                        mem[0] = address(arg1)
                                        mem[32] = _2120
                                        if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2120'))].field_0 and pools[_2009].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2120'))].field_0:
                                            revert with 0, 17
                                        uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2120'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2120'))].field_0 * pools[_2009].field_768 / 10^12
                                        emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2120'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2120'))].field_0 * pools[_2009].field_768 / 10^12, address(arg1), _2009
                                        mem[mem[64] + 32] = uint256(stor2[_2047])
                                        emit 0x31286a9b: roleMember[_2047].field_0, uint256(stor2[_2047]), address(arg1), _2009
                                        mem[mem[64]] = pools[_2009].field_1024
                                        emit 0xa917f674: pools[_2009].field_1024, _2009
                            else:
                                if bonusEndTimestamp < pools[_1466].field_512:
                                    revert with 0, 17
                                if bonusEndTimestamp - pools[_1466].field_512 and 10 > -1 / bonusEndTimestamp - pools[_1466].field_512:
                                    revert with 0, 17
                                if (10 * bonusEndTimestamp) - (10 * pools[_1466].field_512) > !block.timestamp:
                                    revert with 0, 17
                                if (10 * bonusEndTimestamp) - (10 * pools[_1466].field_512) + block.timestamp < bonusEndTimestamp:
                                    revert with 0, 17
                                if (9 * bonusEndTimestamp) - (10 * pools[_1466].field_512) + block.timestamp and sub_5c2359f4 > -1 / (9 * bonusEndTimestamp) - (10 * pools[_1466].field_512) + block.timestamp:
                                    revert with 0, 17
                                if (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[_1466].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4) and pools[_1466].field_256 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4) - (10 * pools[_1466].field_512 * sub_5c2359f4) + (block.timestamp * sub_5c2359f4):
                                    revert with 0, 17
                                if not totalAllocation:
                                    revert with 0, 18
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) + (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = (9 * bonusEndTimestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) + (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation
                                require ext_code.size(address(stor2.length))
                                call address(stor2.length).0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (9 * bonusEndTimestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) + (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (9 * bonusEndTimestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) + (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation and 10^12 > -1 / (9 * bonusEndTimestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) + (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation:
                                    revert with 0, 17
                                if not pools[_1466].field_1024:
                                    revert with 0, 18
                                if pools[_1466].field_768 > !(10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) + (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation / pools[_1466].field_1024):
                                    revert with 0, 17
                                pools[_1466].field_768 += 10^12 * (9 * bonusEndTimestamp * sub_5c2359f4 * pools[_1466].field_256) - (10 * pools[_1466].field_512 * sub_5c2359f4 * pools[_1466].field_256) + (block.timestamp * sub_5c2359f4 * pools[_1466].field_256) / totalAllocation / pools[_1466].field_1024
                                pools[_1466].field_512 = block.timestamp
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(pools[_1466].field_0)
                                staticcall pools[_1466].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1818 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1836 = mem[_1818]
                                mem[mem[64] + 32] = pools[_1466].field_1024
                                mem[mem[64] + 64] = _1836
                                mem[mem[64] + 96] = pools[_1466].field_768
                                emit UpdatePool(block.timestamp, pools[_1466].field_1024, _1836, pools[_1466].field_768, _1466);
                                if _1466 >= pools.length:
                                    revert with 0, 50
                                mem[0] = address(arg1)
                                mem[32] = sha3(_1466, 10)
                                if not users[_1466][address(arg1)].field_256:
                                    mem[mem[64]] = 0
                                    emit Harvest(0, address(arg1), _1466);
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _1899 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                        revert with 0, 50
                                    _1929 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                                    if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                        revert with 0, 17
                                    pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                    if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                        revert with 0, 17
                                    pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                                    users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                    if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                        revert with 0, 50
                                    _2003 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                                    mem[0] = address(arg1)
                                    mem[32] = _2003
                                    if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2003'))].field_0 and pools[_1899].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2003'))].field_0:
                                        revert with 0, 17
                                    uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2003'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2003'))].field_0 * pools[_1899].field_768 / 10^12
                                    emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2003'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2003'))].field_0 * pools[_1899].field_768 / 10^12, address(arg1), _1899
                                    mem[mem[64] + 32] = uint256(stor2[_1929])
                                    emit 0x31286a9b: roleMember[_1929].field_0, uint256(stor2[_1929]), address(arg1), _1899
                                    mem[mem[64]] = pools[_1899].field_1024
                                    emit 0xa917f674: pools[_1899].field_1024, _1899
                                else:
                                    if users[_1466][address(arg1)].field_256 and pools[_1466].field_768 > -1 / users[_1466][address(arg1)].field_256:
                                        revert with 0, 17
                                    if users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12 < users[_1466][address(arg1)].field_512:
                                        revert with 0, 17
                                    if not (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512:
                                        mem[mem[64]] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                        emit Harvest(((users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512), address(arg1), _1466);
                                        if idx >= mem[ceil32(return_data.size) + 96]:
                                            revert with 0, 50
                                        _1995 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                                        if idx >= mem[ceil32(return_data.size) + 96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                            revert with 0, 50
                                        _2029 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                                        if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                            revert with 0, 17
                                        pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                        if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                            revert with 0, 17
                                        pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                                        users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                            revert with 0, 50
                                        _2107 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                                        mem[0] = address(arg1)
                                        mem[32] = _2107
                                        if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2107'))].field_0 and pools[_1995].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2107'))].field_0:
                                            revert with 0, 17
                                        uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2107'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2107'))].field_0 * pools[_1995].field_768 / 10^12
                                        emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2107'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2107'))].field_0 * pools[_1995].field_768 / 10^12, address(arg1), _1995
                                        mem[mem[64] + 32] = uint256(stor2[_2029])
                                        emit 0x31286a9b: roleMember[_2029].field_0, uint256(stor2[_2029]), address(arg1), _1995
                                        mem[mem[64]] = pools[_1995].field_1024
                                        emit 0xa917f674: pools[_1995].field_1024, _1995
                                    else:
                                        mem[mem[64] + 4] = address(arg1)
                                        mem[mem[64] + 36] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                        require ext_code.size(address(stor2.length))
                                        call address(stor2.length).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(arg1), (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1985 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1985] == bool(mem[_1985])
                                        mem[mem[64]] = (users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512
                                        emit Harvest(((users[_1466][address(arg1)].field_256 * pools[_1466].field_768 / 10^12) - users[_1466][address(arg1)].field_512), address(arg1), _1466);
                                        if idx >= mem[ceil32(return_data.size) + 96]:
                                            revert with 0, 50
                                        _2094 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                                        if idx >= mem[ceil32(return_data.size) + 96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                            revert with 0, 50
                                        _2116 = sha3(address(arg1), sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10))
                                        if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                                            revert with 0, 17
                                        pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                        if pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 < users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256:
                                            revert with 0, 17
                                        pools[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]].field_1024 -= users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256
                                        users[mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]][address(arg1)].field_256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                                        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= pools.length:
                                            revert with 0, 50
                                        _2166 = sha3(mem[mem[(32 * idx) + ceil32(return_data.size) + 128]], 10)
                                        mem[0] = address(arg1)
                                        mem[32] = _2166
                                        if roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2166'))].field_0 and pools[_2094].field_768 > -1 / roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2166'))].field_0:
                                            revert with 0, 17
                                        uint256(stor2[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2166'))]) = roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2166'))].field_0 * pools[_2094].field_768 / 10^12
                                        emit 0x31286a9b: roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2166'))].field_0, roleMember[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('var', '_2166'))].field_0 * pools[_2094].field_768 / 10^12, address(arg1), _2094
                                        mem[mem[64] + 32] = uint256(stor2[_2116])
                                        emit 0x31286a9b: roleMember[_2116].field_0, uint256(stor2[_2116]), address(arg1), _2094
                                        mem[mem[64]] = pools[_2094].field_1024
                                        emit 0xa917f674: pools[_2094].field_1024, _2094
                if idx == -1:
                    revert with 0, 17
                _1463 = mem[ceil32(return_data.size) + 96]
                idx = idx + 1
                continue 
}



}
