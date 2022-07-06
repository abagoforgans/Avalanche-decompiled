contract main {




// =====================  Runtime code  =====================


#
#  - _getNodesRewardAvailable(address arg1)
#  - sub_56042f77(?)
#  - sub_5f3dc704(?)
#
address owner;
array of struct sub_9f89a4b2;
array of uint8 stor2;
address stor3;
array of uint256 _getNodeNumberOf;
mapping of struct sub_05b9b88d;
mapping of uint8 stor6;
uint256 nodePrice;
uint256 rewardPerNode;
address tokenAddress;
uint256 totalNodesCreated;
uint256 totalRewardStaked;
uint256 claimTime;
uint256 sub_d754d433;
uint8 stor14;
uint8 stor14; offset 8
uint8 stor14; offset 16
uint256 stor14; offset 8
uint256 stor14;
uint256 gasForDistribution;
uint256 lastDistributionCount;

function sub_05b9b88d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 'NOT_NODE_OWNER'
    if arg2 >= _getNodeNumberOf[address(arg1)]:
        revert with 0, 'INVALID_INDEX'
    if arg2 >= _getNodeNumberOf[address(arg1)]:
        revert with 0, 50
    return uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_768)
}

function claimTime() payable {
    return claimTime
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _getNodeNumberOf[address(arg1)]
}

function sub_55d79f99(?) payable {
    return bool(uint8(stor14.field_8))
}

function sub_5d6f1501(?) payable {
    return bool(uint8(stor14.field_0))
}

function rewardPerNode() payable {
    return rewardPerNode
}

function _getNodeRewardAmountOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 'NOT_NODE_OWNER'
    idx = 0
    while idx < _getNodeNumberOf[address(arg1)]:
        if idx >= _getNodeNumberOf[address(arg1)]:
            revert with 0, 50
        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256) == arg2:
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            return uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        continue 
    revert with 0, 'NO_NODE_WITH_BLOCKTIME'
}

function sub_76faa7e3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < _getNodeNumberOf[arg1]
    return _getNodeNumberOf[arg1][arg2]
}

function autoDistri() payable {
    return bool(uint8(stor14.field_16))
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function owner() payable {
    return owner
}

function sub_98c032b1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor2[arg1]))
}

function sub_9f89a4b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9f89a4b2.length
    return address(sub_9f89a4b2[arg1].field_0)
}

function sub_b6fc3dd2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor6[arg1[all]])
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function sub_d754d433(?) payable {
    return sub_d754d433
}

function gasForDistribution() payable {
    return gasForDistribution
}

function nodePrice() payable {
    return nodePrice
}

function lastDistributionCount() payable {
    return lastDistributionCount
}

function token() payable {
    return tokenAddress
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

function _isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor14.field_8):
        return 1
    return bool(_getNodeNumberOf[address(arg1)])
}

function _changeGasDistri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
}

function sub_2872e38c(?) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
    sub_d754d433 = arg1
}

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
    nodePrice = arg1
}

function _changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
    claimTime = arg1
}

function _changeAutoDistri(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
}

function setVesting(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
    stor3 = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
    tokenAddress = arg1
}

function sub_70a7fd2b(?) payable {
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
    uint256(stor14.field_0) = not uint8(stor14.field_0) or Mask(248, 8, uint256(stor14.field_0))
}

function _distributeRewards() payable {
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function _changeRewardPerNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
    rewardPerNode = arg1
    sub_d754d433 = arg1 / 1440
}

function sub_ffb471a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
    Mask(248, 0, stor14.field_8) = Mask(248, 0, bool(arg1))
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

function sub_d11772c6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 'NOT_NODE_OWNER'
    if arg2 >= _getNodeNumberOf[address(arg1)]:
        revert with 0, 'INVALID_INDEX'
    if arg2 >= _getNodeNumberOf[address(arg1)]:
        revert with 0, 50
    if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_512):
        revert with 0, 17
    if not claimTime:
        revert with 0, 18
    if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_512) / claimTime:
        revert with 0, 17
    return (block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_512) / claimTime * sub_d754d433)
}

function sub_e51e52a9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 'NOT_NODE_OWNER'
    if arg2 >= _getNodeNumberOf[address(arg1)]:
        revert with 0, 'INVALID_INDEX'
    if arg2 >= _getNodeNumberOf[address(arg1)]:
        revert with 0, 50
    if arg2 >= _getNodeNumberOf[address(arg1)]:
        revert with 0, 50
    if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_512):
        revert with 0, 17
    if not claimTime:
        revert with 0, 18
    if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_512) / claimTime:
        revert with 0, 17
    if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_768):
        revert with 0, 17
    return ((block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_512) / claimTime * sub_d754d433) + uint256(sub_05b9b88d[stor4[address(arg1)][arg2]].field_768))
}

function getAdmins() payable {
    mem[64] = (32 * sub_9f89a4b2.length) + 128
    mem[96] = sub_9f89a4b2.length
    if not sub_9f89a4b2.length:
        mem[(32 * sub_9f89a4b2.length) + 128] = 32
        mem[(32 * sub_9f89a4b2.length) + 160] = sub_9f89a4b2.length
        idx = 0
        s = (32 * sub_9f89a4b2.length) + 192
        t = 128
        while idx < sub_9f89a4b2.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_9f89a4b2.length) + 128
           len (96 * sub_9f89a4b2.length) + 64
    mem[128] = address(sub_9f89a4b2.field_0)
    idx = 128
    s = 0
    while (32 * sub_9f89a4b2.length) + 96 > idx:
        mem[idx + 32] = address(sub_9f89a4b2[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_9f89a4b2.length) + 128] = 32
    mem[(32 * sub_9f89a4b2.length) + 160] = sub_9f89a4b2.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_9f89a4b2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_9f89a4b2.length) + -mem[64] + 192
}

function sub_accc1d5e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
    idx = 0
    while idx < sub_9f89a4b2.length:
        mem[0] = address(sub_9f89a4b2[idx].field_0)
        mem[32] = 2
        uint8(stor2[address(stor1[idx].field_0)]) = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        uint8(stor2[mem[(32 * idx) + 140 len 20]]) = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_9f89a4b2.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_9f89a4b2.length > idx:
            uint256(sub_9f89a4b2[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(sub_9f89a4b2[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_9f89a4b2.length > idx:
            uint256(sub_9f89a4b2[idx].field_0) = 0
            idx = idx + 1
            continue 
    mem[ceil32(32 * ('cd', 4).length) + 97] = 32
    mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 4).length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < ('cd', 4).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit SetAdmins(mem[mem[64] len ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + -mem[64] + 161]);
}

function _getRewardAmountOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 'NOT_NODE_OWNER'
    if arg2 <= 0:
        revert with 0, 'CREATIONTIME_IS_ZERO'
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 'NO_NODES_FOR_CASHOUT'
    mem[0] = arg1
    idx = 0
    while idx < _getNodeNumberOf[address(arg1)]:
        if idx >= _getNodeNumberOf[address(arg1)]:
            revert with 0, 50
        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256) != arg2:
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            continue 
        if idx >= _getNodeNumberOf[address(arg1)]:
            revert with 0, 50
        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                revert with 0, 34
        else:
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                revert with 0, 34
        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)):
                if 31 < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 256
                    t = sha3(mem[0])
                    while (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 224 > s:
                        mem[0] = arg1
                        mem[32] = 4
                        mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
        else:
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                revert with 0, 34
            if sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                if 31 < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 256
                    t = sha3(mem[0])
                    while sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 224 > s:
                        mem[0] = arg1
                        mem[32] = 4
                        mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
        if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
            revert with 0, 17
        if not claimTime:
            revert with 0, 18
        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
            revert with 0, 17
        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
            revert with 0, 17
        return ((block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433) + uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768))
    revert with 0, 'NO_NODE_WITH_BLOCKTIME'
}

function sub_c871e635(?) payable {
    require calldata.size - 4 >= 32
    if bool(sub_05b9b88d[arg1].field_0):
        if bool(sub_05b9b88d[arg1].field_0) == uint255(uint256(sub_05b9b88d[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(sub_05b9b88d[arg1].field_0):
            if bool(sub_05b9b88d[arg1].field_0) == uint255(uint256(sub_05b9b88d[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(sub_05b9b88d[arg1].field_0)):
                if 31 >= uint255(uint256(sub_05b9b88d[arg1].field_0)) * 0.5:
                    mem[128] = 256 * Mask(248, 0, sub_05b9b88d[arg1].field_8)
                else:
                    mem[128] = uint256(sub_05b9b88d[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(sub_05b9b88d[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(sub_05b9b88d[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(sub_05b9b88d[arg1].field_0) == sub_05b9b88d[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if sub_05b9b88d[arg1].field_1 % 128:
                if 31 >= sub_05b9b88d[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, sub_05b9b88d[arg1].field_8)
                else:
                    mem[128] = uint256(sub_05b9b88d[arg1].field_0)
                    idx = 128
                    s = 0
                    while sub_05b9b88d[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(sub_05b9b88d[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint256(sub_05b9b88d[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(sub_05b9b88d[arg1].field_0)) * 0.5)]), 
               uint256(sub_05b9b88d[arg1].field_256),
               uint256(sub_05b9b88d[arg1].field_512),
               uint256(sub_05b9b88d[arg1].field_768)
    if bool(sub_05b9b88d[arg1].field_0) == sub_05b9b88d[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(sub_05b9b88d[arg1].field_0):
        if bool(sub_05b9b88d[arg1].field_0) == uint255(uint256(sub_05b9b88d[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(sub_05b9b88d[arg1].field_0)):
            if 31 >= uint255(uint256(sub_05b9b88d[arg1].field_0)) * 0.5:
                mem[128] = 256 * Mask(248, 0, sub_05b9b88d[arg1].field_8)
            else:
                mem[128] = uint256(sub_05b9b88d[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(sub_05b9b88d[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(sub_05b9b88d[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(sub_05b9b88d[arg1].field_0) == sub_05b9b88d[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if sub_05b9b88d[arg1].field_1 % 128:
            if 31 >= sub_05b9b88d[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, sub_05b9b88d[arg1].field_8)
            else:
                mem[128] = uint256(sub_05b9b88d[arg1].field_0)
                idx = 128
                s = 0
                while sub_05b9b88d[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(sub_05b9b88d[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=sub_05b9b88d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_05b9b88d[arg1].field_1 % 128)]), 
           uint256(sub_05b9b88d[arg1].field_256),
           uint256(sub_05b9b88d[arg1].field_512),
           uint256(sub_05b9b88d[arg1].field_768)
}

function _getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 'NOT_NODE_OWNER'
    idx = 0
    s = 0
    while idx < _getNodeNumberOf[address(arg1)]:
        if idx >= _getNodeNumberOf[address(arg1)]:
            revert with 0, 50
        if idx >= _getNodeNumberOf[address(arg1)]:
            revert with 0, 50
        if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
            revert with 0, 17
        if not claimTime:
            revert with 0, 18
        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
            revert with 0, 17
        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
            revert with 0, 17
        if s > !((block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433) + uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + (block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433) + uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
        continue 
    return (s * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)])
}

function _cashoutAllNodesReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if bool(uint8(stor2[msg.sender])) != 1:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 'NOT_NODE_OWNER'
    if not uint8(stor14.field_0):
        revert with 0, 'CASHOUT_DISABLED'
    idx = 0
    s = 0
    while idx < _getNodeNumberOf[address(arg1)]:
        if idx >= _getNodeNumberOf[address(arg1)]:
            revert with 0, 50
        if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
            revert with 0, 17
        if not claimTime:
            revert with 0, 18
        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
            revert with 0, 17
        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
            revert with 0, 17
        if s > !((block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433) + uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)):
            revert with 0, 17
        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + (block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433) + uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
        continue 
    staticcall stor3.isBeneficiary(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        staticcall stor3.0x4da1d3b9 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(stor3)
            call stor3.claim(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return (s * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)] * _getNodeNumberOf[address(arg1)])
}

function sub_fe58340b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg3.length)) + 97
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if msg.sender == tokenAddress:
        if not _getNodeNumberOf[address(arg1)]:
            revert with 0, 'NOT_NODE_OWNER'
        mem[0] = address(arg1)
        idx = 0
        while idx < _getNodeNumberOf[address(arg1)]:
            _303 = sha3(mem[128 len mem[96]])
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            _314 = mem[64]
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _303:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        continue 
                else:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                            mem[s + _314] = uint256(stor[t])
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _314 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _303:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            continue 
            else:
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _303:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        continue 
                else:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                            mem[s + _314] = uint256(stor[t])
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _314 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _303:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            continue 
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            _getNodeNumberOf[address(arg2)]++
            _getNodeNumberOf[address(arg2)][_getNodeNumberOf[address(arg2)]] = _getNodeNumberOf[address(arg1)][idx]
            if _getNodeNumberOf[address(arg1)] < 1:
                revert with 0, 17
            if _getNodeNumberOf[address(arg1)] - 1 >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            _getNodeNumberOf[address(arg1)][idx] = _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)]]
            if not _getNodeNumberOf[address(arg1)]:
                revert with 0, 49
            _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)]] = 0
            _getNodeNumberOf[address(arg1)]--
            return 1
    else:
        if 1 == bool(uint8(stor2[msg.sender])):
            if not _getNodeNumberOf[address(arg1)]:
                revert with 0, 'NOT_NODE_OWNER'
            mem[0] = address(arg1)
            idx = 0
            while idx < _getNodeNumberOf[address(arg1)]:
                _306 = sha3(mem[128 len mem[96]])
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                _318 = mem[64]
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _306:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                mem[s + _318] = uint256(stor[t])
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                t = t + 1
                                continue 
                            if sha3(mem[mem[64] len _318 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _306:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                else:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _306:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                            s = 0
                            t = sha3(mem[0])
                            while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                mem[s + _318] = uint256(stor[t])
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                t = t + 1
                                continue 
                            if sha3(mem[mem[64] len _318 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _306:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                _getNodeNumberOf[address(arg2)]++
                _getNodeNumberOf[address(arg2)][_getNodeNumberOf[address(arg2)]] = _getNodeNumberOf[address(arg1)][idx]
                if _getNodeNumberOf[address(arg1)] < 1:
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)] - 1 >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                _getNodeNumberOf[address(arg1)][idx] = _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)]]
                if not _getNodeNumberOf[address(arg1)]:
                    revert with 0, 49
                _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)]] = 0
                _getNodeNumberOf[address(arg1)]--
                return 1
        else:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
            if not _getNodeNumberOf[address(arg1)]:
                revert with 0, 'NOT_NODE_OWNER'
            mem[0] = address(arg1)
            idx = 0
            while idx < _getNodeNumberOf[address(arg1)]:
                _309 = sha3(mem[128 len mem[96]])
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                _322 = mem[64]
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _309:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                mem[s + _322] = uint256(stor[t])
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                t = t + 1
                                continue 
                            if sha3(mem[mem[64] len _322 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _309:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                else:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _309:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                            s = 0
                            t = sha3(mem[0])
                            while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                mem[s + _322] = uint256(stor[t])
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                t = t + 1
                                continue 
                            if sha3(mem[mem[64] len _322 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _309:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                _getNodeNumberOf[address(arg2)]++
                _getNodeNumberOf[address(arg2)][_getNodeNumberOf[address(arg2)]] = _getNodeNumberOf[address(arg1)][idx]
                if _getNodeNumberOf[address(arg1)] < 1:
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)] - 1 >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                _getNodeNumberOf[address(arg1)][idx] = _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)]]
                if not _getNodeNumberOf[address(arg1)]:
                    revert with 0, 49
                _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)]] = 0
                _getNodeNumberOf[address(arg1)]--
                return 1
    revert with 0, 'NODE_!EXISTS'
}

function sub_938bc811(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg2.length)) + 97
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender == tokenAddress:
        if not _getNodeNumberOf[address(msg.sender)]:
            revert with 0, 'NOT_NODE_OWNER'
        mem[0] = msg.sender
        idx = 0
        while idx < _getNodeNumberOf[address(msg.sender)]:
            _303 = sha3(mem[128 len mem[96]])
            if idx >= _getNodeNumberOf[address(msg.sender)]:
                revert with 0, 50
            _314 = mem[64]
            if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0):
                if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0))
                    if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5]) != _303:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        idx = idx + 1
                        continue 
                else:
                    if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(_getNodeNumberOf[address(msg.sender)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5:
                            mem[s + _314] = uint256(stor[t])
                            mem[0] = msg.sender
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _314 + (uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5) - mem[64]]) != _303:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            idx = idx + 1
                            continue 
            else:
                if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) == sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0))
                    if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128]) != _303:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        idx = idx + 1
                        continue 
                else:
                    if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(_getNodeNumberOf[address(msg.sender)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128:
                            mem[s + _314] = uint256(stor[t])
                            mem[0] = msg.sender
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _314 + sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128 - mem[64]]) != _303:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            idx = idx + 1
                            continue 
            if idx >= _getNodeNumberOf[msg.sender]:
                revert with 0, 50
            _getNodeNumberOf[address(arg1)]++
            _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)]] = _getNodeNumberOf[msg.sender][idx]
            if _getNodeNumberOf[address(msg.sender)] < 1:
                revert with 0, 17
            if _getNodeNumberOf[address(msg.sender)] - 1 >= _getNodeNumberOf[address(msg.sender)]:
                revert with 0, 50
            if idx >= _getNodeNumberOf[address(msg.sender)]:
                revert with 0, 50
            _getNodeNumberOf[address(msg.sender)][idx] = _getNodeNumberOf[address(msg.sender)][_getNodeNumberOf[address(msg.sender)]]
            if not _getNodeNumberOf[address(msg.sender)]:
                revert with 0, 49
            _getNodeNumberOf[address(msg.sender)][_getNodeNumberOf[address(msg.sender)]] = 0
            _getNodeNumberOf[address(msg.sender)]--
            return 1
    else:
        if 1 == bool(uint8(stor2[msg.sender])):
            if not _getNodeNumberOf[address(msg.sender)]:
                revert with 0, 'NOT_NODE_OWNER'
            mem[0] = msg.sender
            idx = 0
            while idx < _getNodeNumberOf[address(msg.sender)]:
                _306 = sha3(mem[128 len mem[96]])
                if idx >= _getNodeNumberOf[address(msg.sender)]:
                    revert with 0, 50
                _318 = mem[64]
                if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0))
                        if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5]) != _306:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) != 1:
                            if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(msg.sender)][idx], 5)
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5:
                                mem[s + _318] = uint256(stor[t])
                                mem[0] = msg.sender
                                mem[32] = 4
                                s = s + 32
                                t = t + 1
                                continue 
                            if sha3(mem[mem[64] len _318 + (uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5) - mem[64]]) != _306:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                else:
                    if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) == sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0))
                        if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128]) != _306:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) != 1:
                            if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(msg.sender)][idx], 5)
                            s = 0
                            t = sha3(mem[0])
                            while s < sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128:
                                mem[s + _318] = uint256(stor[t])
                                mem[0] = msg.sender
                                mem[32] = 4
                                s = s + 32
                                t = t + 1
                                continue 
                            if sha3(mem[mem[64] len _318 + sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128 - mem[64]]) != _306:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                if idx >= _getNodeNumberOf[msg.sender]:
                    revert with 0, 50
                _getNodeNumberOf[address(arg1)]++
                _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)]] = _getNodeNumberOf[msg.sender][idx]
                if _getNodeNumberOf[address(msg.sender)] < 1:
                    revert with 0, 17
                if _getNodeNumberOf[address(msg.sender)] - 1 >= _getNodeNumberOf[address(msg.sender)]:
                    revert with 0, 50
                if idx >= _getNodeNumberOf[address(msg.sender)]:
                    revert with 0, 50
                _getNodeNumberOf[address(msg.sender)][idx] = _getNodeNumberOf[address(msg.sender)][_getNodeNumberOf[address(msg.sender)]]
                if not _getNodeNumberOf[address(msg.sender)]:
                    revert with 0, 49
                _getNodeNumberOf[address(msg.sender)][_getNodeNumberOf[address(msg.sender)]] = 0
                _getNodeNumberOf[address(msg.sender)]--
                return 1
        else:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
            if not _getNodeNumberOf[address(msg.sender)]:
                revert with 0, 'NOT_NODE_OWNER'
            mem[0] = msg.sender
            idx = 0
            while idx < _getNodeNumberOf[address(msg.sender)]:
                _309 = sha3(mem[128 len mem[96]])
                if idx >= _getNodeNumberOf[address(msg.sender)]:
                    revert with 0, 50
                _322 = mem[64]
                if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0))
                        if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5]) != _309:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) != 1:
                            if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(msg.sender)][idx], 5)
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5:
                                mem[s + _322] = uint256(stor[t])
                                mem[0] = msg.sender
                                mem[32] = 4
                                s = s + 32
                                t = t + 1
                                continue 
                            if sha3(mem[mem[64] len _322 + (uint255(uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0)) * 0.5) - mem[64]]) != _309:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                else:
                    if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) == sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0):
                        mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0))
                        if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128]) != _309:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            idx = idx + 1
                            continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(msg.sender)][idx]].field_0) != 1:
                            if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(msg.sender)][idx], 5)
                            s = 0
                            t = sha3(mem[0])
                            while s < sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128:
                                mem[s + _322] = uint256(stor[t])
                                mem[0] = msg.sender
                                mem[32] = 4
                                s = s + 32
                                t = t + 1
                                continue 
                            if sha3(mem[mem[64] len _322 + sub_05b9b88d[stor4[address(msg.sender)][idx]].field_1 % 128 - mem[64]]) != _309:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                if idx >= _getNodeNumberOf[msg.sender]:
                    revert with 0, 50
                _getNodeNumberOf[address(arg1)]++
                _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)]] = _getNodeNumberOf[msg.sender][idx]
                if _getNodeNumberOf[address(msg.sender)] < 1:
                    revert with 0, 17
                if _getNodeNumberOf[address(msg.sender)] - 1 >= _getNodeNumberOf[address(msg.sender)]:
                    revert with 0, 50
                if idx >= _getNodeNumberOf[address(msg.sender)]:
                    revert with 0, 50
                _getNodeNumberOf[address(msg.sender)][idx] = _getNodeNumberOf[address(msg.sender)][_getNodeNumberOf[address(msg.sender)]]
                if not _getNodeNumberOf[address(msg.sender)]:
                    revert with 0, 49
                _getNodeNumberOf[address(msg.sender)][_getNodeNumberOf[address(msg.sender)]] = 0
                _getNodeNumberOf[address(msg.sender)]--
                return 1
    revert with 0, 'NODE_!EXISTS'
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 'NOT_NODE_OWNER'
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 50
    if not uint256(sub_05b9b88d[stor4[address(arg1)]].field_512):
        mem[64] = 160
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = 96
        while idx < _getNodeNumberOf[address(arg1)]:
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            mem[0] = _getNodeNumberOf[address(arg1)][idx]
            mem[32] = 5
            if not uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                _35 = mem[64]
                mem[64] = mem[64] + 64
                mem[_35] = 1
                mem[_35 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _37 = mem[64]
                _38 = mem[s]
                t = 0
                while t < _38:
                    mem[t + _37 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_37 + _38 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_38) <= _38:
                    _100 = mem[_35]
                    s = 0
                    while s < _100:
                        mem[s + _37 + _38 + 33] = mem[s + _35 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_100) <= _100:
                        _194 = mem[64]
                        mem[mem[64]] = _100 + _37 + _38 + -mem[64] + 1
                        mem[64] = _100 + _37 + _38 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _194
                        continue 
                    mem[_100 + _37 + _38 + 33] = 0
                    _195 = mem[64]
                    mem[mem[64]] = _100 + _37 + _38 + -mem[64] + 1
                    mem[64] = _100 + _37 + _38 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _195
                    continue 
                _101 = mem[_35]
                s = 0
                while s < _101:
                    mem[s + _37 + _38 + 33] = mem[s + _35 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_101) <= _101:
                    _196 = mem[64]
                    mem[mem[64]] = _101 + _37 + _38 + -mem[64] + 1
                    mem[64] = _101 + _37 + _38 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _196
                    continue 
                mem[_101 + _37 + _38 + 33] = 0
                _197 = mem[64]
                mem[mem[64]] = _101 + _37 + _38 + -mem[64] + 1
                mem[64] = _101 + _37 + _38 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _197
                continue 
            u = 0
            t = uint256(stor2[sha3(mem[0 len 64])])
            while t:
                if u == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _97 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_97]:
                        revert with 0, 50
                    mem[v + _97 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _186 = mem[64]
                _190 = mem[s]
                t = 0
                while t < _190:
                    mem[t + _186 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_186 + _190 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_190) <= _190:
                    _260 = mem[_97]
                    s = 0
                    while s < _260:
                        mem[s + _186 + _190 + 33] = mem[s + _97 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_260) <= _260:
                        _364 = mem[64]
                        mem[mem[64]] = _260 + _186 + _190 + -mem[64] + 1
                        mem[64] = _260 + _186 + _190 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _364
                        continue 
                    mem[_260 + _186 + _190 + 33] = 0
                    _365 = mem[64]
                    mem[mem[64]] = _260 + _186 + _190 + -mem[64] + 1
                    mem[64] = _260 + _186 + _190 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _365
                    continue 
                _261 = mem[_97]
                s = 0
                while s < _261:
                    mem[s + _186 + _190 + 33] = mem[s + _97 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_261) <= _261:
                    _366 = mem[64]
                    mem[mem[64]] = _261 + _186 + _190 + -mem[64] + 1
                    mem[64] = _261 + _186 + _190 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _366
                    continue 
                mem[_261 + _186 + _190 + 33] = 0
                _367 = mem[64]
                mem[mem[64]] = _261 + _186 + _190 + -mem[64] + 1
                mem[64] = _261 + _186 + _190 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _367
                continue 
            mem[_97 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_97]:
                    revert with 0, 50
                mem[v + _97 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _187 = mem[64]
            _191 = mem[s]
            t = 0
            while t < _191:
                mem[t + _187 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_187 + _191 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_191) <= _191:
                _262 = mem[_97]
                s = 0
                while s < _262:
                    mem[s + _187 + _191 + 33] = mem[s + _97 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_262) <= _262:
                    _368 = mem[64]
                    mem[mem[64]] = _262 + _187 + _191 + -mem[64] + 1
                    mem[64] = _262 + _187 + _191 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _368
                    continue 
                mem[_262 + _187 + _191 + 33] = 0
                _369 = mem[64]
                mem[mem[64]] = _262 + _187 + _191 + -mem[64] + 1
                mem[64] = _262 + _187 + _191 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _369
                continue 
            _263 = mem[_97]
            s = 0
            while s < _263:
                mem[s + _187 + _191 + 33] = mem[s + _97 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_263) <= _263:
                _370 = mem[64]
                mem[mem[64]] = _263 + _187 + _191 + -mem[64] + 1
                mem[64] = _263 + _187 + _191 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _370
                continue 
            mem[_263 + _187 + _191 + 33] = 0
            _371 = mem[64]
            mem[mem[64]] = _263 + _187 + _191 + -mem[64] + 1
            mem[64] = _263 + _187 + _191 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _371
            continue 
        mem[mem[64]] = 32
        _36 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_36)] = mem[s + 32 len ceil32(_36)]
        if ceil32(_36) > _36:
            mem[_36 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_36) + 32]
    s = 0
    idx = uint256(sub_05b9b88d[stor4[address(arg1)]].field_512)
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = uint256(sub_05b9b88d[stor4[address(arg1)]].field_512)
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = 96
        while idx < _getNodeNumberOf[address(arg1)]:
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            mem[0] = _getNodeNumberOf[address(arg1)][idx]
            mem[32] = 5
            if not uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                _192 = mem[64]
                mem[64] = mem[64] + 64
                mem[_192] = 1
                mem[_192 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _199 = mem[64]
                _202 = mem[s]
                u = 0
                while u < _202:
                    mem[u + _199 + 32] = mem[u + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    u = u + 32
                    continue 
                mem[_199 + _202 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_202) <= _202:
                    _256 = mem[_192]
                    s = 0
                    while s < _256:
                        mem[s + _199 + _202 + 33] = mem[s + _192 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_256) <= _256:
                        _356 = mem[64]
                        mem[mem[64]] = _256 + _199 + _202 + -mem[64] + 1
                        mem[64] = _256 + _199 + _202 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _356
                        continue 
                    mem[_256 + _199 + _202 + 33] = 0
                    _357 = mem[64]
                    mem[mem[64]] = _256 + _199 + _202 + -mem[64] + 1
                    mem[64] = _256 + _199 + _202 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _357
                    continue 
                _257 = mem[_192]
                s = 0
                while s < _257:
                    mem[s + _199 + _202 + 33] = mem[s + _192 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_257) <= _257:
                    _358 = mem[64]
                    mem[mem[64]] = _257 + _199 + _202 + -mem[64] + 1
                    mem[64] = _257 + _199 + _202 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _358
                    continue 
                mem[_257 + _199 + _202 + 33] = 0
                _359 = mem[64]
                mem[mem[64]] = _257 + _199 + _202 + -mem[64] + 1
                mem[64] = _257 + _199 + _202 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _359
                continue 
            u = 0
            t = uint256(stor2[sha3(mem[0 len 64])])
            while t:
                if u == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _254 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_254]:
                        revert with 0, 50
                    mem[v + _254 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _348 = mem[64]
                _352 = mem[s]
                t = 0
                while t < _352:
                    mem[t + _348 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_348 + _352 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_352) <= _352:
                    _416 = mem[_254]
                    s = 0
                    while s < _416:
                        mem[s + _348 + _352 + 33] = mem[s + _254 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_416) <= _416:
                        _456 = mem[64]
                        mem[mem[64]] = _416 + _348 + _352 + -mem[64] + 1
                        mem[64] = _416 + _348 + _352 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _456
                        continue 
                    mem[_416 + _348 + _352 + 33] = 0
                    _457 = mem[64]
                    mem[mem[64]] = _416 + _348 + _352 + -mem[64] + 1
                    mem[64] = _416 + _348 + _352 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _457
                    continue 
                _417 = mem[_254]
                s = 0
                while s < _417:
                    mem[s + _348 + _352 + 33] = mem[s + _254 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_417) <= _417:
                    _458 = mem[64]
                    mem[mem[64]] = _417 + _348 + _352 + -mem[64] + 1
                    mem[64] = _417 + _348 + _352 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _458
                    continue 
                mem[_417 + _348 + _352 + 33] = 0
                _459 = mem[64]
                mem[mem[64]] = _417 + _348 + _352 + -mem[64] + 1
                mem[64] = _417 + _348 + _352 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _459
                continue 
            mem[_254 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_254]:
                    revert with 0, 50
                mem[v + _254 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _349 = mem[64]
            _353 = mem[s]
            t = 0
            while t < _353:
                mem[t + _349 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_349 + _353 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_353) <= _353:
                _418 = mem[_254]
                s = 0
                while s < _418:
                    mem[s + _349 + _353 + 33] = mem[s + _254 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_418) <= _418:
                    _460 = mem[64]
                    mem[mem[64]] = _418 + _349 + _353 + -mem[64] + 1
                    mem[64] = _418 + _349 + _353 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _460
                    continue 
                mem[_418 + _349 + _353 + 33] = 0
                _461 = mem[64]
                mem[mem[64]] = _418 + _349 + _353 + -mem[64] + 1
                mem[64] = _418 + _349 + _353 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _461
                continue 
            _419 = mem[_254]
            s = 0
            while s < _419:
                mem[s + _349 + _353 + 33] = mem[s + _254 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_419) <= _419:
                _462 = mem[64]
                mem[mem[64]] = _419 + _349 + _353 + -mem[64] + 1
                mem[64] = _419 + _349 + _353 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _462
                continue 
            mem[_419 + _349 + _353 + 33] = 0
            _463 = mem[64]
            mem[mem[64]] = _419 + _349 + _353 + -mem[64] + 1
            mem[64] = _419 + _349 + _353 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _463
            continue 
        mem[mem[64]] = 32
        _198 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_198)] = mem[s + 32 len ceil32(_198)]
        if ceil32(_198) > _198:
            mem[_198 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_198) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = uint256(sub_05b9b88d[stor4[address(arg1)]].field_512)
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = arg1
    mem[32] = 4
    idx = 1
    s = 96
    while idx < _getNodeNumberOf[address(arg1)]:
        if idx >= _getNodeNumberOf[address(arg1)]:
            revert with 0, 50
        mem[0] = _getNodeNumberOf[address(arg1)][idx]
        mem[32] = 5
        if not uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
            _193 = mem[64]
            mem[64] = mem[64] + 64
            mem[_193] = 1
            mem[_193 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _201 = mem[64]
            _203 = mem[s]
            u = 0
            while u < _203:
                mem[u + _201 + 32] = mem[u + s + 32]
                mem[0] = arg1
                mem[32] = 4
                u = u + 32
                continue 
            mem[_201 + _203 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_203) <= _203:
                _258 = mem[_193]
                s = 0
                while s < _258:
                    mem[s + _201 + _203 + 33] = mem[s + _193 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_258) <= _258:
                    _360 = mem[64]
                    mem[mem[64]] = _258 + _201 + _203 + -mem[64] + 1
                    mem[64] = _258 + _201 + _203 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _360
                    continue 
                mem[_258 + _201 + _203 + 33] = 0
                _361 = mem[64]
                mem[mem[64]] = _258 + _201 + _203 + -mem[64] + 1
                mem[64] = _258 + _201 + _203 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _361
                continue 
            _259 = mem[_193]
            s = 0
            while s < _259:
                mem[s + _201 + _203 + 33] = mem[s + _193 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_259) <= _259:
                _362 = mem[64]
                mem[mem[64]] = _259 + _201 + _203 + -mem[64] + 1
                mem[64] = _259 + _201 + _203 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _362
                continue 
            mem[_259 + _201 + _203 + 33] = 0
            _363 = mem[64]
            mem[mem[64]] = _259 + _201 + _203 + -mem[64] + 1
            mem[64] = _259 + _201 + _203 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _363
            continue 
        u = 0
        t = uint256(stor2[sha3(mem[0 len 64])])
        while t:
            if u == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _255 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_255]:
                    revert with 0, 50
                mem[v + _255 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _354 = mem[s]
            t = 0
            while t < _354:
                mem[t + _350 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_350 + _354 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_354) <= _354:
                _420 = mem[_255]
                s = 0
                while s < _420:
                    mem[s + _350 + _354 + 33] = mem[s + _255 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_420) <= _420:
                    _464 = mem[64]
                    mem[mem[64]] = _420 + _350 + _354 + -mem[64] + 1
                    mem[64] = _420 + _350 + _354 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _464
                    continue 
                mem[_420 + _350 + _354 + 33] = 0
                _465 = mem[64]
                mem[mem[64]] = _420 + _350 + _354 + -mem[64] + 1
                mem[64] = _420 + _350 + _354 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _465
                continue 
            _421 = mem[_255]
            s = 0
            while s < _421:
                mem[s + _350 + _354 + 33] = mem[s + _255 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_421) <= _421:
                _466 = mem[64]
                mem[mem[64]] = _421 + _350 + _354 + -mem[64] + 1
                mem[64] = _421 + _350 + _354 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _466
                continue 
            mem[_421 + _350 + _354 + 33] = 0
            _467 = mem[64]
            mem[mem[64]] = _421 + _350 + _354 + -mem[64] + 1
            mem[64] = _421 + _350 + _354 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _467
            continue 
        mem[_255 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_255]:
                revert with 0, 50
            mem[v + _255 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            mem[0] = arg1
            mem[32] = 4
            v = v - 1
            t = t / 10
            continue 
        _351 = mem[64]
        _355 = mem[s]
        t = 0
        while t < _355:
            mem[t + _351 + 32] = mem[t + s + 32]
            mem[0] = arg1
            mem[32] = 4
            t = t + 32
            continue 
        mem[_351 + _355 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        if ceil32(_355) <= _355:
            _422 = mem[_255]
            s = 0
            while s < _422:
                mem[s + _351 + _355 + 33] = mem[s + _255 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_422) <= _422:
                _468 = mem[64]
                mem[mem[64]] = _422 + _351 + _355 + -mem[64] + 1
                mem[64] = _422 + _351 + _355 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _468
                continue 
            mem[_422 + _351 + _355 + 33] = 0
            _469 = mem[64]
            mem[mem[64]] = _422 + _351 + _355 + -mem[64] + 1
            mem[64] = _422 + _351 + _355 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _469
            continue 
        _423 = mem[_255]
        s = 0
        while s < _423:
            mem[s + _351 + _355 + 33] = mem[s + _255 + 32]
            mem[0] = arg1
            mem[32] = 4
            s = s + 32
            continue 
        if ceil32(_423) <= _423:
            _470 = mem[64]
            mem[mem[64]] = _423 + _351 + _355 + -mem[64] + 1
            mem[64] = _423 + _351 + _355 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _470
            continue 
        mem[_423 + _351 + _355 + 33] = 0
        _471 = mem[64]
        mem[mem[64]] = _423 + _351 + _355 + -mem[64] + 1
        mem[64] = _423 + _351 + _355 + 33
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = _471
        continue 
    mem[mem[64]] = 32
    _200 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_200)] = mem[s + 32 len ceil32(_200)]
    if ceil32(_200) > _200:
        mem[_200 + mem[64] + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_200) + 32]
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 'NOT_NODE_OWNER'
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 50
    if not uint256(sub_05b9b88d[stor4[address(arg1)]].field_256):
        mem[64] = 160
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = 96
        while idx < _getNodeNumberOf[address(arg1)]:
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            mem[0] = _getNodeNumberOf[address(arg1)][idx]
            mem[32] = 5
            if not uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256):
                _35 = mem[64]
                mem[64] = mem[64] + 64
                mem[_35] = 1
                mem[_35 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _37 = mem[64]
                _38 = mem[s]
                t = 0
                while t < _38:
                    mem[t + _37 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_37 + _38 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_38) <= _38:
                    _100 = mem[_35]
                    s = 0
                    while s < _100:
                        mem[s + _37 + _38 + 33] = mem[s + _35 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_100) <= _100:
                        _194 = mem[64]
                        mem[mem[64]] = _100 + _37 + _38 + -mem[64] + 1
                        mem[64] = _100 + _37 + _38 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _194
                        continue 
                    mem[_100 + _37 + _38 + 33] = 0
                    _195 = mem[64]
                    mem[mem[64]] = _100 + _37 + _38 + -mem[64] + 1
                    mem[64] = _100 + _37 + _38 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _195
                    continue 
                _101 = mem[_35]
                s = 0
                while s < _101:
                    mem[s + _37 + _38 + 33] = mem[s + _35 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_101) <= _101:
                    _196 = mem[64]
                    mem[mem[64]] = _101 + _37 + _38 + -mem[64] + 1
                    mem[64] = _101 + _37 + _38 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _196
                    continue 
                mem[_101 + _37 + _38 + 33] = 0
                _197 = mem[64]
                mem[mem[64]] = _101 + _37 + _38 + -mem[64] + 1
                mem[64] = _101 + _37 + _38 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _197
                continue 
            u = 0
            t = uint256(sub_9f89a4b2[sha3(mem[0 len 64])].field_0)
            while t:
                if u == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _97 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_97]:
                        revert with 0, 50
                    mem[v + _97 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _186 = mem[64]
                _190 = mem[s]
                t = 0
                while t < _190:
                    mem[t + _186 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_186 + _190 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_190) <= _190:
                    _260 = mem[_97]
                    s = 0
                    while s < _260:
                        mem[s + _186 + _190 + 33] = mem[s + _97 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_260) <= _260:
                        _364 = mem[64]
                        mem[mem[64]] = _260 + _186 + _190 + -mem[64] + 1
                        mem[64] = _260 + _186 + _190 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _364
                        continue 
                    mem[_260 + _186 + _190 + 33] = 0
                    _365 = mem[64]
                    mem[mem[64]] = _260 + _186 + _190 + -mem[64] + 1
                    mem[64] = _260 + _186 + _190 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _365
                    continue 
                _261 = mem[_97]
                s = 0
                while s < _261:
                    mem[s + _186 + _190 + 33] = mem[s + _97 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_261) <= _261:
                    _366 = mem[64]
                    mem[mem[64]] = _261 + _186 + _190 + -mem[64] + 1
                    mem[64] = _261 + _186 + _190 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _366
                    continue 
                mem[_261 + _186 + _190 + 33] = 0
                _367 = mem[64]
                mem[mem[64]] = _261 + _186 + _190 + -mem[64] + 1
                mem[64] = _261 + _186 + _190 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _367
                continue 
            mem[_97 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_97]:
                    revert with 0, 50
                mem[v + _97 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _187 = mem[64]
            _191 = mem[s]
            t = 0
            while t < _191:
                mem[t + _187 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_187 + _191 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_191) <= _191:
                _262 = mem[_97]
                s = 0
                while s < _262:
                    mem[s + _187 + _191 + 33] = mem[s + _97 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_262) <= _262:
                    _368 = mem[64]
                    mem[mem[64]] = _262 + _187 + _191 + -mem[64] + 1
                    mem[64] = _262 + _187 + _191 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _368
                    continue 
                mem[_262 + _187 + _191 + 33] = 0
                _369 = mem[64]
                mem[mem[64]] = _262 + _187 + _191 + -mem[64] + 1
                mem[64] = _262 + _187 + _191 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _369
                continue 
            _263 = mem[_97]
            s = 0
            while s < _263:
                mem[s + _187 + _191 + 33] = mem[s + _97 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_263) <= _263:
                _370 = mem[64]
                mem[mem[64]] = _263 + _187 + _191 + -mem[64] + 1
                mem[64] = _263 + _187 + _191 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _370
                continue 
            mem[_263 + _187 + _191 + 33] = 0
            _371 = mem[64]
            mem[mem[64]] = _263 + _187 + _191 + -mem[64] + 1
            mem[64] = _263 + _187 + _191 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _371
            continue 
        mem[mem[64]] = 32
        _36 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_36)] = mem[s + 32 len ceil32(_36)]
        if ceil32(_36) > _36:
            mem[_36 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_36) + 32]
    s = 0
    idx = uint256(sub_05b9b88d[stor4[address(arg1)]].field_256)
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = uint256(sub_05b9b88d[stor4[address(arg1)]].field_256)
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = 96
        while idx < _getNodeNumberOf[address(arg1)]:
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            mem[0] = _getNodeNumberOf[address(arg1)][idx]
            mem[32] = 5
            if not uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256):
                _192 = mem[64]
                mem[64] = mem[64] + 64
                mem[_192] = 1
                mem[_192 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _199 = mem[64]
                _202 = mem[s]
                u = 0
                while u < _202:
                    mem[u + _199 + 32] = mem[u + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    u = u + 32
                    continue 
                mem[_199 + _202 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_202) <= _202:
                    _256 = mem[_192]
                    s = 0
                    while s < _256:
                        mem[s + _199 + _202 + 33] = mem[s + _192 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_256) <= _256:
                        _356 = mem[64]
                        mem[mem[64]] = _256 + _199 + _202 + -mem[64] + 1
                        mem[64] = _256 + _199 + _202 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _356
                        continue 
                    mem[_256 + _199 + _202 + 33] = 0
                    _357 = mem[64]
                    mem[mem[64]] = _256 + _199 + _202 + -mem[64] + 1
                    mem[64] = _256 + _199 + _202 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _357
                    continue 
                _257 = mem[_192]
                s = 0
                while s < _257:
                    mem[s + _199 + _202 + 33] = mem[s + _192 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_257) <= _257:
                    _358 = mem[64]
                    mem[mem[64]] = _257 + _199 + _202 + -mem[64] + 1
                    mem[64] = _257 + _199 + _202 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _358
                    continue 
                mem[_257 + _199 + _202 + 33] = 0
                _359 = mem[64]
                mem[mem[64]] = _257 + _199 + _202 + -mem[64] + 1
                mem[64] = _257 + _199 + _202 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _359
                continue 
            u = 0
            t = uint256(sub_9f89a4b2[sha3(mem[0 len 64])].field_0)
            while t:
                if u == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _254 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_254]:
                        revert with 0, 50
                    mem[v + _254 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _348 = mem[64]
                _352 = mem[s]
                t = 0
                while t < _352:
                    mem[t + _348 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_348 + _352 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_352) <= _352:
                    _416 = mem[_254]
                    s = 0
                    while s < _416:
                        mem[s + _348 + _352 + 33] = mem[s + _254 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_416) <= _416:
                        _456 = mem[64]
                        mem[mem[64]] = _416 + _348 + _352 + -mem[64] + 1
                        mem[64] = _416 + _348 + _352 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _456
                        continue 
                    mem[_416 + _348 + _352 + 33] = 0
                    _457 = mem[64]
                    mem[mem[64]] = _416 + _348 + _352 + -mem[64] + 1
                    mem[64] = _416 + _348 + _352 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _457
                    continue 
                _417 = mem[_254]
                s = 0
                while s < _417:
                    mem[s + _348 + _352 + 33] = mem[s + _254 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_417) <= _417:
                    _458 = mem[64]
                    mem[mem[64]] = _417 + _348 + _352 + -mem[64] + 1
                    mem[64] = _417 + _348 + _352 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _458
                    continue 
                mem[_417 + _348 + _352 + 33] = 0
                _459 = mem[64]
                mem[mem[64]] = _417 + _348 + _352 + -mem[64] + 1
                mem[64] = _417 + _348 + _352 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _459
                continue 
            mem[_254 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_254]:
                    revert with 0, 50
                mem[v + _254 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _349 = mem[64]
            _353 = mem[s]
            t = 0
            while t < _353:
                mem[t + _349 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_349 + _353 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_353) <= _353:
                _418 = mem[_254]
                s = 0
                while s < _418:
                    mem[s + _349 + _353 + 33] = mem[s + _254 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_418) <= _418:
                    _460 = mem[64]
                    mem[mem[64]] = _418 + _349 + _353 + -mem[64] + 1
                    mem[64] = _418 + _349 + _353 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _460
                    continue 
                mem[_418 + _349 + _353 + 33] = 0
                _461 = mem[64]
                mem[mem[64]] = _418 + _349 + _353 + -mem[64] + 1
                mem[64] = _418 + _349 + _353 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _461
                continue 
            _419 = mem[_254]
            s = 0
            while s < _419:
                mem[s + _349 + _353 + 33] = mem[s + _254 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_419) <= _419:
                _462 = mem[64]
                mem[mem[64]] = _419 + _349 + _353 + -mem[64] + 1
                mem[64] = _419 + _349 + _353 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _462
                continue 
            mem[_419 + _349 + _353 + 33] = 0
            _463 = mem[64]
            mem[mem[64]] = _419 + _349 + _353 + -mem[64] + 1
            mem[64] = _419 + _349 + _353 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _463
            continue 
        mem[mem[64]] = 32
        _198 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_198)] = mem[s + 32 len ceil32(_198)]
        if ceil32(_198) > _198:
            mem[_198 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_198) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = uint256(sub_05b9b88d[stor4[address(arg1)]].field_256)
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = arg1
    mem[32] = 4
    idx = 1
    s = 96
    while idx < _getNodeNumberOf[address(arg1)]:
        if idx >= _getNodeNumberOf[address(arg1)]:
            revert with 0, 50
        mem[0] = _getNodeNumberOf[address(arg1)][idx]
        mem[32] = 5
        if not uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256):
            _193 = mem[64]
            mem[64] = mem[64] + 64
            mem[_193] = 1
            mem[_193 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _201 = mem[64]
            _203 = mem[s]
            u = 0
            while u < _203:
                mem[u + _201 + 32] = mem[u + s + 32]
                mem[0] = arg1
                mem[32] = 4
                u = u + 32
                continue 
            mem[_201 + _203 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_203) <= _203:
                _258 = mem[_193]
                s = 0
                while s < _258:
                    mem[s + _201 + _203 + 33] = mem[s + _193 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_258) <= _258:
                    _360 = mem[64]
                    mem[mem[64]] = _258 + _201 + _203 + -mem[64] + 1
                    mem[64] = _258 + _201 + _203 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _360
                    continue 
                mem[_258 + _201 + _203 + 33] = 0
                _361 = mem[64]
                mem[mem[64]] = _258 + _201 + _203 + -mem[64] + 1
                mem[64] = _258 + _201 + _203 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _361
                continue 
            _259 = mem[_193]
            s = 0
            while s < _259:
                mem[s + _201 + _203 + 33] = mem[s + _193 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_259) <= _259:
                _362 = mem[64]
                mem[mem[64]] = _259 + _201 + _203 + -mem[64] + 1
                mem[64] = _259 + _201 + _203 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _362
                continue 
            mem[_259 + _201 + _203 + 33] = 0
            _363 = mem[64]
            mem[mem[64]] = _259 + _201 + _203 + -mem[64] + 1
            mem[64] = _259 + _201 + _203 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _363
            continue 
        u = 0
        t = uint256(sub_9f89a4b2[sha3(mem[0 len 64])].field_0)
        while t:
            if u == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _255 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_255]:
                    revert with 0, 50
                mem[v + _255 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _354 = mem[s]
            t = 0
            while t < _354:
                mem[t + _350 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_350 + _354 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_354) <= _354:
                _420 = mem[_255]
                s = 0
                while s < _420:
                    mem[s + _350 + _354 + 33] = mem[s + _255 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_420) <= _420:
                    _464 = mem[64]
                    mem[mem[64]] = _420 + _350 + _354 + -mem[64] + 1
                    mem[64] = _420 + _350 + _354 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _464
                    continue 
                mem[_420 + _350 + _354 + 33] = 0
                _465 = mem[64]
                mem[mem[64]] = _420 + _350 + _354 + -mem[64] + 1
                mem[64] = _420 + _350 + _354 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _465
                continue 
            _421 = mem[_255]
            s = 0
            while s < _421:
                mem[s + _350 + _354 + 33] = mem[s + _255 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_421) <= _421:
                _466 = mem[64]
                mem[mem[64]] = _421 + _350 + _354 + -mem[64] + 1
                mem[64] = _421 + _350 + _354 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _466
                continue 
            mem[_421 + _350 + _354 + 33] = 0
            _467 = mem[64]
            mem[mem[64]] = _421 + _350 + _354 + -mem[64] + 1
            mem[64] = _421 + _350 + _354 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _467
            continue 
        mem[_255 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_255]:
                revert with 0, 50
            mem[v + _255 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            mem[0] = arg1
            mem[32] = 4
            v = v - 1
            t = t / 10
            continue 
        _351 = mem[64]
        _355 = mem[s]
        t = 0
        while t < _355:
            mem[t + _351 + 32] = mem[t + s + 32]
            mem[0] = arg1
            mem[32] = 4
            t = t + 32
            continue 
        mem[_351 + _355 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        if ceil32(_355) <= _355:
            _422 = mem[_255]
            s = 0
            while s < _422:
                mem[s + _351 + _355 + 33] = mem[s + _255 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_422) <= _422:
                _468 = mem[64]
                mem[mem[64]] = _422 + _351 + _355 + -mem[64] + 1
                mem[64] = _422 + _351 + _355 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _468
                continue 
            mem[_422 + _351 + _355 + 33] = 0
            _469 = mem[64]
            mem[mem[64]] = _422 + _351 + _355 + -mem[64] + 1
            mem[64] = _422 + _351 + _355 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _469
            continue 
        _423 = mem[_255]
        s = 0
        while s < _423:
            mem[s + _351 + _355 + 33] = mem[s + _255 + 32]
            mem[0] = arg1
            mem[32] = 4
            s = s + 32
            continue 
        if ceil32(_423) <= _423:
            _470 = mem[64]
            mem[mem[64]] = _423 + _351 + _355 + -mem[64] + 1
            mem[64] = _423 + _351 + _355 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _470
            continue 
        mem[_423 + _351 + _355 + 33] = 0
        _471 = mem[64]
        mem[mem[64]] = _423 + _351 + _355 + -mem[64] + 1
        mem[64] = _423 + _351 + _355 + 33
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = _471
        continue 
    mem[mem[64]] = 32
    _200 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_200)] = mem[s + 32 len ceil32(_200)]
    if ceil32(_200) > _200:
        mem[_200 + mem[64] + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_200) + 32]
}

function createNode(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender == tokenAddress:
        mem[64] = ceil32(ceil32(arg2.length)) + 225
        if var30001 < var53003:
            mem[var30001 + var53002] = mem[var30001 + var53001]
            var30001 = var30001 + 32
            continue 
        if var30001 <= var53003:
            mem[var53005 + var53007] = 6
            if uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len var53005 + var53007 + -ceil32(ceil32(arg2.length)) - 193])]):
                if not var53011:
                    mem[ceil32(ceil32(arg2.length)) + 225] = 1
                    mem[ceil32(ceil32(arg2.length)) + 257] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg2.length)) + 321 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 321] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 322] = 0
                    mem[ceil32(ceil32(arg2.length)) + 289] = arg2.length + 1
                    mem[64] = ceil32(ceil32(arg2.length)) + arg2.length + 322
                else:
                    s = 0
                    idx = var53011
                    while idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 0, 65
                    mem[ceil32(ceil32(arg2.length)) + 225] = s
                    if s:
                        mem[ceil32(ceil32(arg2.length)) + 257 len s] = call.data[calldata.size len s]
                    t = s
                    idx = var53011
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(ceil32(arg2.length)) + 225]:
                            revert with 0, 50
                        mem[t + ceil32(ceil32(arg2.length)) + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 289 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(ceil32(arg2.length)) + ceil32(s) + 289] = 0
                    mem[ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])] = mem[ceil32(ceil32(arg2.length)) + 257 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])]
                    if ceil32(mem[ceil32(ceil32(arg2.length)) + 225]) > mem[ceil32(ceil32(arg2.length)) + 225]:
                        mem[mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289] = 0
                    mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 257] = mem[ceil32(ceil32(arg2.length)) + 225] + arg2.length
                    mem[64] = mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289
                if var53011 == -1:
                    revert with 0, 17
                var30001 = 0
                continue 
            _3032 = mem[var53012]
            mem[ceil32(ceil32(arg2.length)) + 225 len ceil32(mem[var53012])] = mem[var53012 + 32 len ceil32(mem[var53012])]
            mem[_3032 + ceil32(ceil32(arg2.length)) + 225] = 6
            uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len _3032 + 32])]) = 1
            mem[ceil32(ceil32(arg2.length)) + 97] = var53012
            mem[ceil32(ceil32(arg2.length)) + 129] = block.timestamp
            mem[ceil32(ceil32(arg2.length)) + 161] = block.timestamp
            mem[ceil32(ceil32(arg2.length)) + 193] = 0
            mem[0] = totalNodesCreated
            mem[32] = 5
            if ceil32(_3032) <= _3032:
                _3832 = mem[var53012]
                if bool(sub_05b9b88d[stor10].field_0):
                    if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if _3832:
                        uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3832, data=mem[var53012 + 32 len _3832])
                    else:
                        uint256(sub_05b9b88d[stor10].field_0) = 0
                        idx = 0
                        while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                            uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                        revert with 0, 34
                    if _3832:
                        uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3832, data=mem[var53012 + 32 len _3832])
                    else:
                        uint256(sub_05b9b88d[stor10].field_0) = 0
                        idx = 0
                        while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                            uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                            idx = idx + 1
                            continue 
            else:
                _3835 = mem[var53012]
                if bool(sub_05b9b88d[stor10].field_0):
                    if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if _3835:
                        uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3835, data=mem[var53012 + 32 len _3835])
                    else:
                        uint256(sub_05b9b88d[stor10].field_0) = 0
                        idx = 0
                        while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                            uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                        revert with 0, 34
                    if _3835:
                        uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3835, data=mem[var53012 + 32 len _3835])
                    else:
                        uint256(sub_05b9b88d[stor10].field_0) = 0
                        idx = 0
                        while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                            uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                            idx = idx + 1
                            continue 
        else:
            mem[var53003 + var53002] = 0
            mem[var53005 + var53007] = 6
            if uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len var53005 + var53007 + -ceil32(ceil32(arg2.length)) - 193])]):
                if not var53011:
                    mem[ceil32(ceil32(arg2.length)) + 225] = 1
                    mem[ceil32(ceil32(arg2.length)) + 257] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg2.length)) + 321 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 321] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 322] = 0
                    mem[ceil32(ceil32(arg2.length)) + 289] = arg2.length + 1
                    mem[64] = ceil32(ceil32(arg2.length)) + arg2.length + 322
                else:
                    s = 0
                    idx = var53011
                    while idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 0, 65
                    mem[ceil32(ceil32(arg2.length)) + 225] = s
                    if s:
                        mem[ceil32(ceil32(arg2.length)) + 257 len s] = call.data[calldata.size len s]
                    t = s
                    idx = var53011
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(ceil32(arg2.length)) + 225]:
                            revert with 0, 50
                        mem[t + ceil32(ceil32(arg2.length)) + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 289 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[arg2.length + ceil32(ceil32(arg2.length)) + ceil32(s) + 289] = 0
                    mem[ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])] = mem[ceil32(ceil32(arg2.length)) + 257 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])]
                    if ceil32(mem[ceil32(ceil32(arg2.length)) + 225]) > mem[ceil32(ceil32(arg2.length)) + 225]:
                        mem[mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289] = 0
                    mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 257] = mem[ceil32(ceil32(arg2.length)) + 225] + arg2.length
                    mem[64] = mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289
                if var53011 == -1:
                    revert with 0, 17
                var30001 = 0
                continue 
            _3033 = mem[var53012]
            mem[ceil32(ceil32(arg2.length)) + 225 len ceil32(mem[var53012])] = mem[var53012 + 32 len ceil32(mem[var53012])]
            mem[_3033 + ceil32(ceil32(arg2.length)) + 225] = 6
            uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len _3033 + 32])]) = 1
            mem[ceil32(ceil32(arg2.length)) + 97] = var53012
            mem[ceil32(ceil32(arg2.length)) + 129] = block.timestamp
            mem[ceil32(ceil32(arg2.length)) + 161] = block.timestamp
            mem[ceil32(ceil32(arg2.length)) + 193] = 0
            mem[0] = totalNodesCreated
            mem[32] = 5
            if ceil32(_3033) <= _3033:
                _3838 = mem[var53012]
                if bool(sub_05b9b88d[stor10].field_0):
                    if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if _3838:
                        uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3838, data=mem[var53012 + 32 len _3838])
                    else:
                        uint256(sub_05b9b88d[stor10].field_0) = 0
                        idx = 0
                        while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                            uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                        revert with 0, 34
                    if _3838:
                        uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3838, data=mem[var53012 + 32 len _3838])
                    else:
                        uint256(sub_05b9b88d[stor10].field_0) = 0
                        idx = 0
                        while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                            uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                            idx = idx + 1
                            continue 
            else:
                _3841 = mem[var53012]
                if bool(sub_05b9b88d[stor10].field_0):
                    if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if _3841:
                        uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3841, data=mem[var53012 + 32 len _3841])
                    else:
                        uint256(sub_05b9b88d[stor10].field_0) = 0
                        idx = 0
                        while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                            uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                        revert with 0, 34
                    if _3841:
                        uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3841, data=mem[var53012 + 32 len _3841])
                    else:
                        uint256(sub_05b9b88d[stor10].field_0) = 0
                        idx = 0
                        while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                            uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                            idx = idx + 1
                            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 2
        if 1 == bool(uint8(stor2[msg.sender])):
            mem[64] = ceil32(ceil32(arg2.length)) + 225
            if var31001 < var54003:
                mem[var31001 + var54002] = mem[var31001 + var54001]
                var31001 = var31001 + 32
                continue 
            if var31001 <= var54003:
                mem[var54005 + var54007] = 6
                if uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len var54005 + var54007 + -ceil32(ceil32(arg2.length)) - 193])]):
                    if not var54011:
                        mem[ceil32(ceil32(arg2.length)) + 225] = 1
                        mem[ceil32(ceil32(arg2.length)) + 257] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg2.length)) + 321 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 321] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 322] = 0
                        mem[ceil32(ceil32(arg2.length)) + 289] = arg2.length + 1
                        mem[64] = ceil32(ceil32(arg2.length)) + arg2.length + 322
                    else:
                        s = 0
                        idx = var54011
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[ceil32(ceil32(arg2.length)) + 225] = s
                        if s:
                            mem[ceil32(ceil32(arg2.length)) + 257 len s] = call.data[calldata.size len s]
                        t = s
                        idx = var54011
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(ceil32(arg2.length)) + 225]:
                                revert with 0, 50
                            mem[t + ceil32(ceil32(arg2.length)) + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 289 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + ceil32(ceil32(arg2.length)) + ceil32(s) + 289] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])] = mem[ceil32(ceil32(arg2.length)) + 257 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])]
                        if ceil32(mem[ceil32(ceil32(arg2.length)) + 225]) > mem[ceil32(ceil32(arg2.length)) + 225]:
                            mem[mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 257] = mem[ceil32(ceil32(arg2.length)) + 225] + arg2.length
                        mem[64] = mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289
                    if var54011 == -1:
                        revert with 0, 17
                    var31001 = 0
                    continue 
                _3034 = mem[var54012]
                mem[ceil32(ceil32(arg2.length)) + 225 len ceil32(mem[var54012])] = mem[var54012 + 32 len ceil32(mem[var54012])]
                mem[_3034 + ceil32(ceil32(arg2.length)) + 225] = 6
                uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len _3034 + 32])]) = 1
                mem[ceil32(ceil32(arg2.length)) + 97] = var54012
                mem[ceil32(ceil32(arg2.length)) + 129] = block.timestamp
                mem[ceil32(ceil32(arg2.length)) + 161] = block.timestamp
                mem[ceil32(ceil32(arg2.length)) + 193] = 0
                mem[0] = totalNodesCreated
                mem[32] = 5
                if ceil32(_3034) <= _3034:
                    _3844 = mem[var54012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if _3844:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3844, data=mem[var54012 + 32 len _3844])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        if _3844:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3844, data=mem[var54012 + 32 len _3844])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                else:
                    _3847 = mem[var54012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if _3847:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3847, data=mem[var54012 + 32 len _3847])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        if _3847:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3847, data=mem[var54012 + 32 len _3847])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
            else:
                mem[var54003 + var54002] = 0
                mem[var54005 + var54007] = 6
                if uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len var54005 + var54007 + -ceil32(ceil32(arg2.length)) - 193])]):
                    if not var54011:
                        mem[ceil32(ceil32(arg2.length)) + 225] = 1
                        mem[ceil32(ceil32(arg2.length)) + 257] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg2.length)) + 321 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 321] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 322] = 0
                        mem[ceil32(ceil32(arg2.length)) + 289] = arg2.length + 1
                        mem[64] = ceil32(ceil32(arg2.length)) + arg2.length + 322
                    else:
                        s = 0
                        idx = var54011
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[ceil32(ceil32(arg2.length)) + 225] = s
                        if s:
                            mem[ceil32(ceil32(arg2.length)) + 257 len s] = call.data[calldata.size len s]
                        t = s
                        idx = var54011
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(ceil32(arg2.length)) + 225]:
                                revert with 0, 50
                            mem[t + ceil32(ceil32(arg2.length)) + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 289 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + ceil32(ceil32(arg2.length)) + ceil32(s) + 289] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])] = mem[ceil32(ceil32(arg2.length)) + 257 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])]
                        if ceil32(mem[ceil32(ceil32(arg2.length)) + 225]) > mem[ceil32(ceil32(arg2.length)) + 225]:
                            mem[mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 257] = mem[ceil32(ceil32(arg2.length)) + 225] + arg2.length
                        mem[64] = mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289
                    if var54011 == -1:
                        revert with 0, 17
                    var31001 = 0
                    continue 
                _3035 = mem[var54012]
                mem[ceil32(ceil32(arg2.length)) + 225 len ceil32(mem[var54012])] = mem[var54012 + 32 len ceil32(mem[var54012])]
                mem[_3035 + ceil32(ceil32(arg2.length)) + 225] = 6
                uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len _3035 + 32])]) = 1
                mem[ceil32(ceil32(arg2.length)) + 97] = var54012
                mem[ceil32(ceil32(arg2.length)) + 129] = block.timestamp
                mem[ceil32(ceil32(arg2.length)) + 161] = block.timestamp
                mem[ceil32(ceil32(arg2.length)) + 193] = 0
                mem[0] = totalNodesCreated
                mem[32] = 5
                if ceil32(_3035) <= _3035:
                    _3850 = mem[var54012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if _3850:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3850, data=mem[var54012 + 32 len _3850])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        if _3850:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3850, data=mem[var54012 + 32 len _3850])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                else:
                    _3853 = mem[var54012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if _3853:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3853, data=mem[var54012 + 32 len _3853])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        if _3853:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3853, data=mem[var54012 + 32 len _3853])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
        else:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
            mem[64] = ceil32(ceil32(arg2.length)) + 225
            if var32001 < var55003:
                mem[var32001 + var55002] = mem[var32001 + var55001]
                var32001 = var32001 + 32
                continue 
            if var32001 <= var55003:
                mem[var55005 + var55007] = 6
                if uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len var55005 + var55007 + -ceil32(ceil32(arg2.length)) - 193])]):
                    if not var55011:
                        mem[ceil32(ceil32(arg2.length)) + 225] = 1
                        mem[ceil32(ceil32(arg2.length)) + 257] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg2.length)) + 321 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 321] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 322] = 0
                        mem[ceil32(ceil32(arg2.length)) + 289] = arg2.length + 1
                        mem[64] = ceil32(ceil32(arg2.length)) + arg2.length + 322
                    else:
                        s = 0
                        idx = var55011
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[ceil32(ceil32(arg2.length)) + 225] = s
                        if s:
                            mem[ceil32(ceil32(arg2.length)) + 257 len s] = call.data[calldata.size len s]
                        t = s
                        idx = var55011
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(ceil32(arg2.length)) + 225]:
                                revert with 0, 50
                            mem[t + ceil32(ceil32(arg2.length)) + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 289 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + ceil32(ceil32(arg2.length)) + ceil32(s) + 289] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])] = mem[ceil32(ceil32(arg2.length)) + 257 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])]
                        if ceil32(mem[ceil32(ceil32(arg2.length)) + 225]) > mem[ceil32(ceil32(arg2.length)) + 225]:
                            mem[mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 257] = mem[ceil32(ceil32(arg2.length)) + 225] + arg2.length
                        mem[64] = mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289
                    if var55011 == -1:
                        revert with 0, 17
                    var32001 = 0
                    continue 
                _3036 = mem[var55012]
                mem[ceil32(ceil32(arg2.length)) + 225 len ceil32(mem[var55012])] = mem[var55012 + 32 len ceil32(mem[var55012])]
                mem[_3036 + ceil32(ceil32(arg2.length)) + 225] = 6
                uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len _3036 + 32])]) = 1
                mem[ceil32(ceil32(arg2.length)) + 97] = var55012
                mem[ceil32(ceil32(arg2.length)) + 129] = block.timestamp
                mem[ceil32(ceil32(arg2.length)) + 161] = block.timestamp
                mem[ceil32(ceil32(arg2.length)) + 193] = 0
                mem[0] = totalNodesCreated
                mem[32] = 5
                if ceil32(_3036) <= _3036:
                    _3856 = mem[var55012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if _3856:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3856, data=mem[var55012 + 32 len _3856])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        if _3856:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3856, data=mem[var55012 + 32 len _3856])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                else:
                    _3859 = mem[var55012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if _3859:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3859, data=mem[var55012 + 32 len _3859])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        if _3859:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3859, data=mem[var55012 + 32 len _3859])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
            else:
                mem[var55003 + var55002] = 0
                mem[var55005 + var55007] = 6
                if uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len var55005 + var55007 + -ceil32(ceil32(arg2.length)) - 193])]):
                    if not var55011:
                        mem[ceil32(ceil32(arg2.length)) + 225] = 1
                        mem[ceil32(ceil32(arg2.length)) + 257] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg2.length)) + 321 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 321] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg2.length)) + arg2.length + 322] = 0
                        mem[ceil32(ceil32(arg2.length)) + 289] = arg2.length + 1
                        mem[64] = ceil32(ceil32(arg2.length)) + arg2.length + 322
                    else:
                        s = 0
                        idx = var55011
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[ceil32(ceil32(arg2.length)) + 225] = s
                        if s:
                            mem[ceil32(ceil32(arg2.length)) + 257 len s] = call.data[calldata.size len s]
                        t = s
                        idx = var55011
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(ceil32(arg2.length)) + 225]:
                                revert with 0, 50
                            mem[t + ceil32(ceil32(arg2.length)) + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 289 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[arg2.length + ceil32(ceil32(arg2.length)) + ceil32(s) + 289] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])] = mem[ceil32(ceil32(arg2.length)) + 257 len ceil32(mem[ceil32(ceil32(arg2.length)) + 225])]
                        if ceil32(mem[ceil32(ceil32(arg2.length)) + 225]) > mem[ceil32(ceil32(arg2.length)) + 225]:
                            mem[mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289] = 0
                        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 257] = mem[ceil32(ceil32(arg2.length)) + 225] + arg2.length
                        mem[64] = mem[ceil32(ceil32(arg2.length)) + 225] + ceil32(ceil32(arg2.length)) + ceil32(s) + arg2.length + 289
                    if var55011 == -1:
                        revert with 0, 17
                    var32001 = 0
                    continue 
                _3037 = mem[var55012]
                mem[ceil32(ceil32(arg2.length)) + 225 len ceil32(mem[var55012])] = mem[var55012 + 32 len ceil32(mem[var55012])]
                mem[_3037 + ceil32(ceil32(arg2.length)) + 225] = 6
                uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 225 len _3037 + 32])]) = 1
                mem[ceil32(ceil32(arg2.length)) + 97] = var55012
                mem[ceil32(ceil32(arg2.length)) + 129] = block.timestamp
                mem[ceil32(ceil32(arg2.length)) + 161] = block.timestamp
                mem[ceil32(ceil32(arg2.length)) + 193] = 0
                mem[0] = totalNodesCreated
                mem[32] = 5
                if ceil32(_3037) <= _3037:
                    _3862 = mem[var55012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if _3862:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3862, data=mem[var55012 + 32 len _3862])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        if _3862:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3862, data=mem[var55012 + 32 len _3862])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                else:
                    _3865 = mem[var55012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if _3865:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3865, data=mem[var55012 + 32 len _3865])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while (uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        if _3865:
                            uint256(sub_05b9b88d[stor10][].field_0) = Array(len=_3865, data=mem[var55012 + 32 len _3865])
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            idx = 0
                            while sub_05b9b88d[stor10].field_1 % 128 + 31 / 32 > idx:
                                uint256(sub_05b9b88d[stor10][idx].field_0) = 0
                                idx = idx + 1
                                continue 
    uint256(sub_05b9b88d[stor10].field_256) = block.timestamp
    uint256(sub_05b9b88d[stor10].field_512) = block.timestamp
    uint256(sub_05b9b88d[stor10].field_768) = 0
    _getNodeNumberOf[address(arg1)]++
    _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)]] = totalNodesCreated
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
}

function sub_2f9ed958(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg2.length)) + 97
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender == tokenAddress:
        if not _getNodeNumberOf[address(arg1)]:
            revert with 0, 'NOT_NODE_OWNER'
        mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 6
        if not uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]):
            revert with 0, 'NODE_!EXISTS'
        mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 6
        if not uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]):
            revert with 0, 'NODE_!EXISTS'
        mem[0] = address(arg1)
        if ceil32(arg2.length) <= arg2.length:
            if ceil32(arg2.length) <= arg2.length:
                idx = 0
                while idx < _getNodeNumberOf[address(arg1)]:
                    _1749 = sha3(mem[128 len mem[96]])
                    if idx >= _getNodeNumberOf[address(arg1)]:
                        revert with 0, 50
                    _1787 = mem[64]
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1749:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                    mem[s + _1787] = uint256(stor[t])
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if sha3(mem[mem[64] len _1787 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1749:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1749:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                s = 0
                                t = sha3(mem[0])
                                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                    mem[s + _1787] = uint256(stor[t])
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if sha3(mem[mem[64] len _1787 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1749:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                    if idx >= _getNodeNumberOf[address(arg1)]:
                        revert with 0, 50
                    if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                        revert with 0, 17
                    uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
            else:
                idx = 0
                while idx < _getNodeNumberOf[address(arg1)]:
                    _1752 = sha3(mem[128 len mem[96]])
                    if idx >= _getNodeNumberOf[address(arg1)]:
                        revert with 0, 50
                    _1791 = mem[64]
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1752:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                    mem[s + _1791] = uint256(stor[t])
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if sha3(mem[mem[64] len _1791 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1752:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1752:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                s = 0
                                t = sha3(mem[0])
                                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                    mem[s + _1791] = uint256(stor[t])
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if sha3(mem[mem[64] len _1791 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1752:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                    if idx >= _getNodeNumberOf[address(arg1)]:
                        revert with 0, 50
                    if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                        revert with 0, 17
                    uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
        else:
            if ceil32(arg2.length) <= arg2.length:
                idx = 0
                while idx < _getNodeNumberOf[address(arg1)]:
                    _1755 = sha3(mem[128 len mem[96]])
                    if idx >= _getNodeNumberOf[address(arg1)]:
                        revert with 0, 50
                    _1795 = mem[64]
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1755:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                    mem[s + _1795] = uint256(stor[t])
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if sha3(mem[mem[64] len _1795 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1755:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1755:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                s = 0
                                t = sha3(mem[0])
                                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                    mem[s + _1795] = uint256(stor[t])
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if sha3(mem[mem[64] len _1795 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1755:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                    if idx >= _getNodeNumberOf[address(arg1)]:
                        revert with 0, 50
                    if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                        revert with 0, 17
                    uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
            else:
                idx = 0
                while idx < _getNodeNumberOf[address(arg1)]:
                    _1758 = sha3(mem[128 len mem[96]])
                    if idx >= _getNodeNumberOf[address(arg1)]:
                        revert with 0, 50
                    _1799 = mem[64]
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1758:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                    mem[s + _1799] = uint256(stor[t])
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if sha3(mem[mem[64] len _1799 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1758:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1758:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                s = 0
                                t = sha3(mem[0])
                                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                    mem[s + _1799] = uint256(stor[t])
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if sha3(mem[mem[64] len _1799 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1758:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                    if idx >= _getNodeNumberOf[address(arg1)]:
                        revert with 0, 50
                    if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                        revert with 0, 17
                    uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
    else:
        if 1 == bool(uint8(stor2[msg.sender])):
            if not _getNodeNumberOf[address(arg1)]:
                revert with 0, 'NOT_NODE_OWNER'
            mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 6
            if not uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]):
                revert with 0, 'NODE_!EXISTS'
            mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 6
            if not uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]):
                revert with 0, 'NODE_!EXISTS'
            mem[0] = address(arg1)
            if ceil32(arg2.length) <= arg2.length:
                if ceil32(arg2.length) <= arg2.length:
                    idx = 0
                    while idx < _getNodeNumberOf[address(arg1)]:
                        _1761 = sha3(mem[128 len mem[96]])
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        _1803 = mem[64]
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1761:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                        mem[s + _1803] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1803 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1761:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1761:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                        mem[s + _1803] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1803 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1761:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
                else:
                    idx = 0
                    while idx < _getNodeNumberOf[address(arg1)]:
                        _1764 = sha3(mem[128 len mem[96]])
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        _1807 = mem[64]
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1764:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                        mem[s + _1807] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1807 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1764:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1764:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                        mem[s + _1807] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1807 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1764:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
            else:
                if ceil32(arg2.length) <= arg2.length:
                    idx = 0
                    while idx < _getNodeNumberOf[address(arg1)]:
                        _1767 = sha3(mem[128 len mem[96]])
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        _1811 = mem[64]
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1767:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                        mem[s + _1811] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1811 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1767:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1767:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                        mem[s + _1811] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1811 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1767:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
                else:
                    idx = 0
                    while idx < _getNodeNumberOf[address(arg1)]:
                        _1770 = sha3(mem[128 len mem[96]])
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        _1815 = mem[64]
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1770:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                        mem[s + _1815] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1815 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1770:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1770:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                        mem[s + _1815] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1815 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1770:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
        else:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
            if not _getNodeNumberOf[address(arg1)]:
                revert with 0, 'NOT_NODE_OWNER'
            mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 6
            if not uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]):
                revert with 0, 'NODE_!EXISTS'
            mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 6
            if not uint8(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]):
                revert with 0, 'NODE_!EXISTS'
            mem[0] = address(arg1)
            if ceil32(arg2.length) <= arg2.length:
                if ceil32(arg2.length) <= arg2.length:
                    idx = 0
                    while idx < _getNodeNumberOf[address(arg1)]:
                        _1773 = sha3(mem[128 len mem[96]])
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        _1819 = mem[64]
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1773:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                        mem[s + _1819] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1819 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1773:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1773:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                        mem[s + _1819] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1819 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1773:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
                else:
                    idx = 0
                    while idx < _getNodeNumberOf[address(arg1)]:
                        _1776 = sha3(mem[128 len mem[96]])
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        _1823 = mem[64]
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1776:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                        mem[s + _1823] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1823 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1776:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1776:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                        mem[s + _1823] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1823 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1776:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
            else:
                if ceil32(arg2.length) <= arg2.length:
                    idx = 0
                    while idx < _getNodeNumberOf[address(arg1)]:
                        _1779 = sha3(mem[128 len mem[96]])
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        _1827 = mem[64]
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1779:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                        mem[s + _1827] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1827 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1779:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1779:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                        mem[s + _1827] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1827 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1779:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
                else:
                    idx = 0
                    while idx < _getNodeNumberOf[address(arg1)]:
                        _1782 = sha3(mem[128 len mem[96]])
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        _1831 = mem[64]
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5]) != _1782:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                        mem[s + _1831] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1831 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) - mem[64]]) != _1782:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        else:
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[mem[64]] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                if sha3(mem[mem[64] len sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128]) != _1782:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = address(arg1)
                                    mem[32] = 4
                                    idx = idx + 1
                                    continue 
                            else:
                                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                    if sha3(mem[mem[64] len -mem[64]]) != sha3(mem[128 len mem[96]]):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                        mem[s + _1831] = uint256(stor[t])
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if sha3(mem[mem[64] len _1831 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 - mem[64]]) != _1782:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = address(arg1)
                                        mem[32] = 4
                                        idx = idx + 1
                                        continue 
                        if idx >= _getNodeNumberOf[address(arg1)]:
                            revert with 0, 50
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) > !arg3:
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) += arg3
    revert with 0, 'NO_NODE_WITH_NAME'
}

function sub_9d6658e7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == tokenAddress:
        idx = 0
        while idx < ('cd', 36).length:
            _733 = mem[64]
            mem[64] = mem[64] + 128
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _736 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_736] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_736 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_736 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
            if var36001 < var59003:
                mem[var36001 + var59002] = mem[var36001 + var59001]
                var36001 = var36001 + 32
                continue 
            if var36001 <= var59003:
                mem[var59005 + var59007] = 6
                if uint8(stor[sha3(mem[mem[64] len var59005 + var59007 + -mem[64] + 32])]):
                    if not var59011:
                        _3769 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3769] = 1
                        mem[_3769 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _3775 = mem[64]
                        s = 0
                        while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                            mem[s + _3775 + 32] = mem[s + _736 + 32]
                            s = s + 32
                            continue 
                        if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                            _4525 = mem[_3769]
                            s = 0
                            while s < _4525:
                                mem[s + _3775 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3769 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4525) > _4525:
                                mem[_4525 + _3775 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[mem[64]] = _4525 + _3775 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                            mem[64] = _4525 + _3775 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3775 + 32] = 0
                            _4526 = mem[_3769]
                            s = 0
                            while s < _4526:
                                mem[s + _3775 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3769 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4526) > _4526:
                                mem[_4526 + _3775 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[mem[64]] = _4526 + _3775 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                            mem[64] = _4526 + _3775 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                    else:
                        t = 0
                        s = var59011
                        while s:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            s = s / 10
                            continue 
                        if t > test266151307():
                            revert with 0, 65
                        _4519 = mem[64]
                        mem[mem[64]] = t
                        mem[64] = mem[64] + ceil32(t) + 32
                        if not t:
                            s = t
                            idx = var59011
                            while idx:
                                if s < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if s - 1 >= mem[_4519]:
                                    revert with 0, 50
                                mem[s + _4519 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                s = s - 1
                                idx = idx / 10
                                continue 
                            _5509 = mem[64]
                            _5581 = mem[_736]
                            idx = 0
                            while idx < _5581:
                                mem[idx + _5509 + 32] = mem[idx + _736 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_5581) <= _5581:
                                _6333 = mem[_4519]
                                idx = 0
                                while idx < _6333:
                                    mem[idx + _5509 + _5581 + 32] = mem[idx + _4519 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6333) > _6333:
                                    mem[_6333 + _5509 + _5581 + 32] = 0
                                mem[mem[64]] = _6333 + _5509 + _5581 - mem[64]
                                mem[64] = _6333 + _5509 + _5581 + 32
                            else:
                                mem[_5581 + _5509 + 32] = 0
                                _6334 = mem[_4519]
                                idx = 0
                                while idx < _6334:
                                    mem[idx + _5509 + _5581 + 32] = mem[idx + _4519 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6334) > _6334:
                                    mem[_6334 + _5509 + _5581 + 32] = 0
                                mem[mem[64]] = _6334 + _5509 + _5581 - mem[64]
                                mem[64] = _6334 + _5509 + _5581 + 32
                        else:
                            mem[_4519 + 32 len t] = call.data[calldata.size len t]
                            u = t
                            s = var59011
                            while s:
                                if u < 1:
                                    revert with 0, 17
                                if 48 > !(s % 10):
                                    revert with 0, 17
                                if u - 1 >= mem[_4519]:
                                    revert with 0, 50
                                mem[u + _4519 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                u = u - 1
                                s = s / 10
                                continue 
                            _5510 = mem[64]
                            _5582 = mem[_736]
                            s = 0
                            while s < _5582:
                                mem[s + _5510 + 32] = mem[s + _736 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5582) <= _5582:
                                _6335 = mem[_4519]
                                s = 0
                                while s < _6335:
                                    mem[s + _5510 + _5582 + 32] = mem[s + _4519 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6335) > _6335:
                                    mem[_6335 + _5510 + _5582 + 32] = 0
                                mem[mem[64]] = _6335 + _5510 + _5582 - mem[64]
                                mem[64] = _6335 + _5510 + _5582 + 32
                            else:
                                mem[_5582 + _5510 + 32] = 0
                                _6336 = mem[_4519]
                                s = 0
                                while s < _6336:
                                    mem[s + _5510 + _5582 + 32] = mem[s + _4519 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6336) > _6336:
                                    mem[_6336 + _5510 + _5582 + 32] = 0
                                mem[mem[64]] = _6336 + _5510 + _5582 - mem[64]
                                mem[64] = _6336 + _5510 + _5582 + 32
                    if var59011 == -1:
                        revert with 0, 17
                    var36001 = 0
                    continue 
                _3757 = mem[64]
                _3763 = mem[var59012]
                s = 0
                while s < _3763:
                    mem[s + _3757] = mem[s + var59012 + 32]
                    s = s + 32
                    continue 
                mem[_3763 + _3757] = 6
                uint8(stor[sha3(mem[mem[64] len _3763 + _3757 + -mem[64] + 32])]) = 1
                mem[_733] = var59012
                mem[_733 + 32] = block.timestamp
                mem[_733 + 64] = block.timestamp
                mem[_733 + 96] = 0
                mem[0] = totalNodesCreated
                mem[32] = 5
                if ceil32(_3763) <= _3763:
                    _4563 = mem[var59012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4563:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4563) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var59012 + 32
                            while var59012 + _4563 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4563 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4563:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4563) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var59012 + 32
                            while var59012 + _4563 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4563 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                else:
                    _4566 = mem[var59012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4566:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4566) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var59012 + 32
                            while var59012 + _4566 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4566 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4566:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4566) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var59012 + 32
                            while var59012 + _4566 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4566 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
            else:
                mem[var59003 + var59002] = 0
                mem[var59005 + var59007] = 6
                if uint8(stor[sha3(mem[mem[64] len var59005 + var59007 + -mem[64] + 32])]):
                    if not var59011:
                        _3770 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3770] = 1
                        mem[_3770 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _3776 = mem[64]
                        s = 0
                        while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                            mem[s + _3776 + 32] = mem[s + _736 + 32]
                            s = s + 32
                            continue 
                        if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                            _4527 = mem[_3770]
                            s = 0
                            while s < _4527:
                                mem[s + _3776 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3770 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4527) > _4527:
                                mem[_4527 + _3776 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[mem[64]] = _4527 + _3776 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                            mem[64] = _4527 + _3776 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3776 + 32] = 0
                            _4528 = mem[_3770]
                            s = 0
                            while s < _4528:
                                mem[s + _3776 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3770 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4528) > _4528:
                                mem[_4528 + _3776 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[mem[64]] = _4528 + _3776 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                            mem[64] = _4528 + _3776 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                    else:
                        t = 0
                        s = var59011
                        while s:
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            s = s / 10
                            continue 
                        if t > test266151307():
                            revert with 0, 65
                        _4520 = mem[64]
                        mem[mem[64]] = t
                        mem[64] = mem[64] + ceil32(t) + 32
                        if not t:
                            s = t
                            idx = var59011
                            while idx:
                                if s < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if s - 1 >= mem[_4520]:
                                    revert with 0, 50
                                mem[s + _4520 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                s = s - 1
                                idx = idx / 10
                                continue 
                            _5511 = mem[64]
                            _5643 = mem[_736]
                            idx = 0
                            while idx < _5643:
                                mem[idx + _5511 + 32] = mem[idx + _736 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_5643) <= _5643:
                                _6357 = mem[_4520]
                                idx = 0
                                while idx < _6357:
                                    mem[idx + _5511 + _5643 + 32] = mem[idx + _4520 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6357) > _6357:
                                    mem[_6357 + _5511 + _5643 + 32] = 0
                                mem[mem[64]] = _6357 + _5511 + _5643 - mem[64]
                                mem[64] = _6357 + _5511 + _5643 + 32
                            else:
                                mem[_5643 + _5511 + 32] = 0
                                _6358 = mem[_4520]
                                idx = 0
                                while idx < _6358:
                                    mem[idx + _5511 + _5643 + 32] = mem[idx + _4520 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6358) > _6358:
                                    mem[_6358 + _5511 + _5643 + 32] = 0
                                mem[mem[64]] = _6358 + _5511 + _5643 - mem[64]
                                mem[64] = _6358 + _5511 + _5643 + 32
                        else:
                            mem[_4520 + 32 len t] = call.data[calldata.size len t]
                            u = t
                            s = var59011
                            while s:
                                if u < 1:
                                    revert with 0, 17
                                if 48 > !(s % 10):
                                    revert with 0, 17
                                if u - 1 >= mem[_4520]:
                                    revert with 0, 50
                                mem[u + _4520 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                u = u - 1
                                s = s / 10
                                continue 
                            _5512 = mem[64]
                            _5644 = mem[_736]
                            s = 0
                            while s < _5644:
                                mem[s + _5512 + 32] = mem[s + _736 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5644) <= _5644:
                                _6359 = mem[_4520]
                                s = 0
                                while s < _6359:
                                    mem[s + _5512 + _5644 + 32] = mem[s + _4520 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6359) > _6359:
                                    mem[_6359 + _5512 + _5644 + 32] = 0
                                mem[mem[64]] = _6359 + _5512 + _5644 - mem[64]
                                mem[64] = _6359 + _5512 + _5644 + 32
                            else:
                                mem[_5644 + _5512 + 32] = 0
                                _6360 = mem[_4520]
                                s = 0
                                while s < _6360:
                                    mem[s + _5512 + _5644 + 32] = mem[s + _4520 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6360) > _6360:
                                    mem[_6360 + _5512 + _5644 + 32] = 0
                                mem[mem[64]] = _6360 + _5512 + _5644 - mem[64]
                                mem[64] = _6360 + _5512 + _5644 + 32
                    if var59011 == -1:
                        revert with 0, 17
                    var36001 = 0
                    continue 
                _3758 = mem[64]
                _3764 = mem[var59012]
                s = 0
                while s < _3764:
                    mem[s + _3758] = mem[s + var59012 + 32]
                    s = s + 32
                    continue 
                mem[_3764 + _3758] = 6
                uint8(stor[sha3(mem[mem[64] len _3764 + _3758 + -mem[64] + 32])]) = 1
                mem[_733] = var59012
                mem[_733 + 32] = block.timestamp
                mem[_733 + 64] = block.timestamp
                mem[_733 + 96] = 0
                mem[0] = totalNodesCreated
                mem[32] = 5
                if ceil32(_3764) <= _3764:
                    _4569 = mem[var59012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4569:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4569) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var59012 + 32
                            while var59012 + _4569 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4569 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4569:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4569) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var59012 + 32
                            while var59012 + _4569 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4569 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                else:
                    _4572 = mem[var59012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4572:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4572) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var59012 + 32
                            while var59012 + _4572 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4572 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4572:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4572) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var59012 + 32
                            while var59012 + _4572 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4572 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
            uint256(sub_05b9b88d[stor10].field_256) = block.timestamp
            uint256(sub_05b9b88d[stor10].field_512) = block.timestamp
            uint256(sub_05b9b88d[stor10].field_768) = 0
            mem[32] = 4
            _getNodeNumberOf[address(cd[4])]++
            mem[0] = sha3(address(cd[4]), 4)
            _getNodeNumberOf[address(cd[4])][_getNodeNumberOf[address(cd[4])]] = totalNodesCreated
            if totalNodesCreated == -1:
                revert with 0, 17
            totalNodesCreated++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 2
        if 1 == bool(uint8(stor2[msg.sender])):
            idx = 0
            while idx < ('cd', 36).length:
                _734 = mem[64]
                mem[64] = mem[64] + 128
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _737 = mem[64]
                mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
                mem[_737] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[_737 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[_737 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                if var37001 < var60003:
                    mem[var37001 + var60002] = mem[var37001 + var60001]
                    var37001 = var37001 + 32
                    continue 
                if var37001 <= var60003:
                    mem[var60005 + var60007] = 6
                    if uint8(stor[sha3(mem[mem[64] len var60005 + var60007 + -mem[64] + 32])]):
                        if not var60011:
                            _3771 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3771] = 1
                            mem[_3771 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            _3777 = mem[64]
                            s = 0
                            while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                mem[s + _3777 + 32] = mem[s + _737 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                _4529 = mem[_3771]
                                s = 0
                                while s < _4529:
                                    mem[s + _3777 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3771 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4529) > _4529:
                                    mem[_4529 + _3777 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4529 + _3777 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4529 + _3777 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                            else:
                                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3777 + 32] = 0
                                _4530 = mem[_3771]
                                s = 0
                                while s < _4530:
                                    mem[s + _3777 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3771 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4530) > _4530:
                                    mem[_4530 + _3777 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4530 + _3777 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4530 + _3777 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            t = 0
                            s = var60011
                            while s:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                s = s / 10
                                continue 
                            if t > test266151307():
                                revert with 0, 65
                            _4521 = mem[64]
                            mem[mem[64]] = t
                            mem[64] = mem[64] + ceil32(t) + 32
                            if not t:
                                s = t
                                idx = var60011
                                while idx:
                                    if s < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if s - 1 >= mem[_4521]:
                                        revert with 0, 50
                                    mem[s + _4521 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    s = s - 1
                                    idx = idx / 10
                                    continue 
                                _5513 = mem[64]
                                _5705 = mem[_737]
                                idx = 0
                                while idx < _5705:
                                    mem[idx + _5513 + 32] = mem[idx + _737 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5705) <= _5705:
                                    _6381 = mem[_4521]
                                    idx = 0
                                    while idx < _6381:
                                        mem[idx + _5513 + _5705 + 32] = mem[idx + _4521 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6381) > _6381:
                                        mem[_6381 + _5513 + _5705 + 32] = 0
                                    mem[mem[64]] = _6381 + _5513 + _5705 - mem[64]
                                    mem[64] = _6381 + _5513 + _5705 + 32
                                else:
                                    mem[_5705 + _5513 + 32] = 0
                                    _6382 = mem[_4521]
                                    idx = 0
                                    while idx < _6382:
                                        mem[idx + _5513 + _5705 + 32] = mem[idx + _4521 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6382) > _6382:
                                        mem[_6382 + _5513 + _5705 + 32] = 0
                                    mem[mem[64]] = _6382 + _5513 + _5705 - mem[64]
                                    mem[64] = _6382 + _5513 + _5705 + 32
                            else:
                                mem[_4521 + 32 len t] = call.data[calldata.size len t]
                                u = t
                                s = var60011
                                while s:
                                    if u < 1:
                                        revert with 0, 17
                                    if 48 > !(s % 10):
                                        revert with 0, 17
                                    if u - 1 >= mem[_4521]:
                                        revert with 0, 50
                                    mem[u + _4521 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                    u = u - 1
                                    s = s / 10
                                    continue 
                                _5514 = mem[64]
                                _5706 = mem[_737]
                                s = 0
                                while s < _5706:
                                    mem[s + _5514 + 32] = mem[s + _737 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5706) <= _5706:
                                    _6383 = mem[_4521]
                                    s = 0
                                    while s < _6383:
                                        mem[s + _5514 + _5706 + 32] = mem[s + _4521 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_6383) > _6383:
                                        mem[_6383 + _5514 + _5706 + 32] = 0
                                    mem[mem[64]] = _6383 + _5514 + _5706 - mem[64]
                                    mem[64] = _6383 + _5514 + _5706 + 32
                                else:
                                    mem[_5706 + _5514 + 32] = 0
                                    _6384 = mem[_4521]
                                    s = 0
                                    while s < _6384:
                                        mem[s + _5514 + _5706 + 32] = mem[s + _4521 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_6384) > _6384:
                                        mem[_6384 + _5514 + _5706 + 32] = 0
                                    mem[mem[64]] = _6384 + _5514 + _5706 - mem[64]
                                    mem[64] = _6384 + _5514 + _5706 + 32
                        if var60011 == -1:
                            revert with 0, 17
                        var37001 = 0
                        continue 
                    _3759 = mem[64]
                    _3765 = mem[var60012]
                    s = 0
                    while s < _3765:
                        mem[s + _3759] = mem[s + var60012 + 32]
                        s = s + 32
                        continue 
                    mem[_3765 + _3759] = 6
                    uint8(stor[sha3(mem[mem[64] len _3765 + _3759 + -mem[64] + 32])]) = 1
                    mem[_734] = var60012
                    mem[_734 + 32] = block.timestamp
                    mem[_734 + 64] = block.timestamp
                    mem[_734 + 96] = 0
                    mem[0] = totalNodesCreated
                    mem[32] = 5
                    if ceil32(_3765) <= _3765:
                        _4575 = mem[var60012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4575:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4575) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var60012 + 32
                                while var60012 + _4575 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4575 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4575:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4575) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var60012 + 32
                                while var60012 + _4575 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4575 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                    else:
                        _4578 = mem[var60012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4578:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4578) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var60012 + 32
                                while var60012 + _4578 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4578 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4578:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4578) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var60012 + 32
                                while var60012 + _4578 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4578 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                else:
                    mem[var60003 + var60002] = 0
                    mem[var60005 + var60007] = 6
                    if uint8(stor[sha3(mem[mem[64] len var60005 + var60007 + -mem[64] + 32])]):
                        if not var60011:
                            _3772 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3772] = 1
                            mem[_3772 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            _3778 = mem[64]
                            s = 0
                            while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                mem[s + _3778 + 32] = mem[s + _737 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                _4531 = mem[_3772]
                                s = 0
                                while s < _4531:
                                    mem[s + _3778 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3772 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4531) > _4531:
                                    mem[_4531 + _3778 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4531 + _3778 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4531 + _3778 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                            else:
                                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3778 + 32] = 0
                                _4532 = mem[_3772]
                                s = 0
                                while s < _4532:
                                    mem[s + _3778 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3772 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4532) > _4532:
                                    mem[_4532 + _3778 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4532 + _3778 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4532 + _3778 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            t = 0
                            s = var60011
                            while s:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                s = s / 10
                                continue 
                            if t > test266151307():
                                revert with 0, 65
                            _4522 = mem[64]
                            mem[mem[64]] = t
                            mem[64] = mem[64] + ceil32(t) + 32
                            if not t:
                                s = t
                                idx = var60011
                                while idx:
                                    if s < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if s - 1 >= mem[_4522]:
                                        revert with 0, 50
                                    mem[s + _4522 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    s = s - 1
                                    idx = idx / 10
                                    continue 
                                _5515 = mem[64]
                                _5767 = mem[_737]
                                idx = 0
                                while idx < _5767:
                                    mem[idx + _5515 + 32] = mem[idx + _737 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5767) <= _5767:
                                    _6405 = mem[_4522]
                                    idx = 0
                                    while idx < _6405:
                                        mem[idx + _5515 + _5767 + 32] = mem[idx + _4522 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6405) > _6405:
                                        mem[_6405 + _5515 + _5767 + 32] = 0
                                    mem[mem[64]] = _6405 + _5515 + _5767 - mem[64]
                                    mem[64] = _6405 + _5515 + _5767 + 32
                                else:
                                    mem[_5767 + _5515 + 32] = 0
                                    _6406 = mem[_4522]
                                    idx = 0
                                    while idx < _6406:
                                        mem[idx + _5515 + _5767 + 32] = mem[idx + _4522 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6406) > _6406:
                                        mem[_6406 + _5515 + _5767 + 32] = 0
                                    mem[mem[64]] = _6406 + _5515 + _5767 - mem[64]
                                    mem[64] = _6406 + _5515 + _5767 + 32
                            else:
                                mem[_4522 + 32 len t] = call.data[calldata.size len t]
                                u = t
                                s = var60011
                                while s:
                                    if u < 1:
                                        revert with 0, 17
                                    if 48 > !(s % 10):
                                        revert with 0, 17
                                    if u - 1 >= mem[_4522]:
                                        revert with 0, 50
                                    mem[u + _4522 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                    u = u - 1
                                    s = s / 10
                                    continue 
                                _5516 = mem[64]
                                _5768 = mem[_737]
                                s = 0
                                while s < _5768:
                                    mem[s + _5516 + 32] = mem[s + _737 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5768) <= _5768:
                                    _6407 = mem[_4522]
                                    s = 0
                                    while s < _6407:
                                        mem[s + _5516 + _5768 + 32] = mem[s + _4522 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_6407) > _6407:
                                        mem[_6407 + _5516 + _5768 + 32] = 0
                                    mem[mem[64]] = _6407 + _5516 + _5768 - mem[64]
                                    mem[64] = _6407 + _5516 + _5768 + 32
                                else:
                                    mem[_5768 + _5516 + 32] = 0
                                    _6408 = mem[_4522]
                                    s = 0
                                    while s < _6408:
                                        mem[s + _5516 + _5768 + 32] = mem[s + _4522 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_6408) > _6408:
                                        mem[_6408 + _5516 + _5768 + 32] = 0
                                    mem[mem[64]] = _6408 + _5516 + _5768 - mem[64]
                                    mem[64] = _6408 + _5516 + _5768 + 32
                        if var60011 == -1:
                            revert with 0, 17
                        var37001 = 0
                        continue 
                    _3760 = mem[64]
                    _3766 = mem[var60012]
                    s = 0
                    while s < _3766:
                        mem[s + _3760] = mem[s + var60012 + 32]
                        s = s + 32
                        continue 
                    mem[_3766 + _3760] = 6
                    uint8(stor[sha3(mem[mem[64] len _3766 + _3760 + -mem[64] + 32])]) = 1
                    mem[_734] = var60012
                    mem[_734 + 32] = block.timestamp
                    mem[_734 + 64] = block.timestamp
                    mem[_734 + 96] = 0
                    mem[0] = totalNodesCreated
                    mem[32] = 5
                    if ceil32(_3766) <= _3766:
                        _4581 = mem[var60012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4581:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4581) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var60012 + 32
                                while var60012 + _4581 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4581 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4581:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4581) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var60012 + 32
                                while var60012 + _4581 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4581 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                    else:
                        _4584 = mem[var60012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4584:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4584) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var60012 + 32
                                while var60012 + _4584 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4584 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4584:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4584) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var60012 + 32
                                while var60012 + _4584 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4584 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                uint256(sub_05b9b88d[stor10].field_256) = block.timestamp
                uint256(sub_05b9b88d[stor10].field_512) = block.timestamp
                uint256(sub_05b9b88d[stor10].field_768) = 0
                mem[32] = 4
                _getNodeNumberOf[address(cd[4])]++
                mem[0] = sha3(address(cd[4]), 4)
                _getNodeNumberOf[address(cd[4])][_getNodeNumberOf[address(cd[4])]] = totalNodesCreated
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
            idx = 0
            while idx < ('cd', 36).length:
                _735 = mem[64]
                mem[64] = mem[64] + 128
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _738 = mem[64]
                mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
                mem[_738] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[_738 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[_738 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                if var38001 < var61003:
                    mem[var38001 + var61002] = mem[var38001 + var61001]
                    var38001 = var38001 + 32
                    continue 
                if var38001 <= var61003:
                    mem[var61005 + var61007] = 6
                    if uint8(stor[sha3(mem[mem[64] len var61005 + var61007 + -mem[64] + 32])]):
                        if not var61011:
                            _3773 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3773] = 1
                            mem[_3773 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            _3779 = mem[64]
                            s = 0
                            while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                mem[s + _3779 + 32] = mem[s + _738 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                _4533 = mem[_3773]
                                s = 0
                                while s < _4533:
                                    mem[s + _3779 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3773 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4533) > _4533:
                                    mem[_4533 + _3779 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4533 + _3779 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4533 + _3779 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                            else:
                                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3779 + 32] = 0
                                _4534 = mem[_3773]
                                s = 0
                                while s < _4534:
                                    mem[s + _3779 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3773 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4534) > _4534:
                                    mem[_4534 + _3779 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4534 + _3779 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4534 + _3779 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            t = 0
                            s = var61011
                            while s:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                s = s / 10
                                continue 
                            if t > test266151307():
                                revert with 0, 65
                            _4523 = mem[64]
                            mem[mem[64]] = t
                            mem[64] = mem[64] + ceil32(t) + 32
                            if not t:
                                s = t
                                idx = var61011
                                while idx:
                                    if s < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if s - 1 >= mem[_4523]:
                                        revert with 0, 50
                                    mem[s + _4523 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    s = s - 1
                                    idx = idx / 10
                                    continue 
                                _5517 = mem[64]
                                _5829 = mem[_738]
                                idx = 0
                                while idx < _5829:
                                    mem[idx + _5517 + 32] = mem[idx + _738 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5829) <= _5829:
                                    _6429 = mem[_4523]
                                    idx = 0
                                    while idx < _6429:
                                        mem[idx + _5517 + _5829 + 32] = mem[idx + _4523 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6429) > _6429:
                                        mem[_6429 + _5517 + _5829 + 32] = 0
                                    mem[mem[64]] = _6429 + _5517 + _5829 - mem[64]
                                    mem[64] = _6429 + _5517 + _5829 + 32
                                else:
                                    mem[_5829 + _5517 + 32] = 0
                                    _6430 = mem[_4523]
                                    idx = 0
                                    while idx < _6430:
                                        mem[idx + _5517 + _5829 + 32] = mem[idx + _4523 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6430) > _6430:
                                        mem[_6430 + _5517 + _5829 + 32] = 0
                                    mem[mem[64]] = _6430 + _5517 + _5829 - mem[64]
                                    mem[64] = _6430 + _5517 + _5829 + 32
                            else:
                                mem[_4523 + 32 len t] = call.data[calldata.size len t]
                                u = t
                                s = var61011
                                while s:
                                    if u < 1:
                                        revert with 0, 17
                                    if 48 > !(s % 10):
                                        revert with 0, 17
                                    if u - 1 >= mem[_4523]:
                                        revert with 0, 50
                                    mem[u + _4523 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                    u = u - 1
                                    s = s / 10
                                    continue 
                                _5518 = mem[64]
                                _5830 = mem[_738]
                                s = 0
                                while s < _5830:
                                    mem[s + _5518 + 32] = mem[s + _738 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5830) <= _5830:
                                    _6431 = mem[_4523]
                                    s = 0
                                    while s < _6431:
                                        mem[s + _5518 + _5830 + 32] = mem[s + _4523 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_6431) > _6431:
                                        mem[_6431 + _5518 + _5830 + 32] = 0
                                    mem[mem[64]] = _6431 + _5518 + _5830 - mem[64]
                                    mem[64] = _6431 + _5518 + _5830 + 32
                                else:
                                    mem[_5830 + _5518 + 32] = 0
                                    _6432 = mem[_4523]
                                    s = 0
                                    while s < _6432:
                                        mem[s + _5518 + _5830 + 32] = mem[s + _4523 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_6432) > _6432:
                                        mem[_6432 + _5518 + _5830 + 32] = 0
                                    mem[mem[64]] = _6432 + _5518 + _5830 - mem[64]
                                    mem[64] = _6432 + _5518 + _5830 + 32
                        if var61011 == -1:
                            revert with 0, 17
                        var38001 = 0
                        continue 
                    _3761 = mem[64]
                    _3767 = mem[var61012]
                    s = 0
                    while s < _3767:
                        mem[s + _3761] = mem[s + var61012 + 32]
                        s = s + 32
                        continue 
                    mem[_3767 + _3761] = 6
                    uint8(stor[sha3(mem[mem[64] len _3767 + _3761 + -mem[64] + 32])]) = 1
                    mem[_735] = var61012
                    mem[_735 + 32] = block.timestamp
                    mem[_735 + 64] = block.timestamp
                    mem[_735 + 96] = 0
                    mem[0] = totalNodesCreated
                    mem[32] = 5
                    if ceil32(_3767) <= _3767:
                        _4587 = mem[var61012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4587:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4587) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var61012 + 32
                                while var61012 + _4587 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4587 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4587:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4587) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var61012 + 32
                                while var61012 + _4587 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4587 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                    else:
                        _4590 = mem[var61012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4590:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4590) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var61012 + 32
                                while var61012 + _4590 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4590 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4590:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4590) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var61012 + 32
                                while var61012 + _4590 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4590 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                else:
                    mem[var61003 + var61002] = 0
                    mem[var61005 + var61007] = 6
                    if uint8(stor[sha3(mem[mem[64] len var61005 + var61007 + -mem[64] + 32])]):
                        if not var61011:
                            _3774 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3774] = 1
                            mem[_3774 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            _3780 = mem[64]
                            s = 0
                            while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                mem[s + _3780 + 32] = mem[s + _738 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                _4535 = mem[_3774]
                                s = 0
                                while s < _4535:
                                    mem[s + _3780 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3774 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4535) > _4535:
                                    mem[_4535 + _3780 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4535 + _3780 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4535 + _3780 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                            else:
                                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3780 + 32] = 0
                                _4536 = mem[_3774]
                                s = 0
                                while s < _4536:
                                    mem[s + _3780 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3774 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4536) > _4536:
                                    mem[_4536 + _3780 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4536 + _3780 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4536 + _3780 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            t = 0
                            s = var61011
                            while s:
                                if t == -1:
                                    revert with 0, 17
                                t = t + 1
                                s = s / 10
                                continue 
                            if t > test266151307():
                                revert with 0, 65
                            _4524 = mem[64]
                            mem[mem[64]] = t
                            mem[64] = mem[64] + ceil32(t) + 32
                            if not t:
                                s = t
                                idx = var61011
                                while idx:
                                    if s < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if s - 1 >= mem[_4524]:
                                        revert with 0, 50
                                    mem[s + _4524 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    s = s - 1
                                    idx = idx / 10
                                    continue 
                                _5519 = mem[64]
                                _5891 = mem[_738]
                                idx = 0
                                while idx < _5891:
                                    mem[idx + _5519 + 32] = mem[idx + _738 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5891) <= _5891:
                                    _6453 = mem[_4524]
                                    idx = 0
                                    while idx < _6453:
                                        mem[idx + _5519 + _5891 + 32] = mem[idx + _4524 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6453) > _6453:
                                        mem[_6453 + _5519 + _5891 + 32] = 0
                                    mem[mem[64]] = _6453 + _5519 + _5891 - mem[64]
                                    mem[64] = _6453 + _5519 + _5891 + 32
                                else:
                                    mem[_5891 + _5519 + 32] = 0
                                    _6454 = mem[_4524]
                                    idx = 0
                                    while idx < _6454:
                                        mem[idx + _5519 + _5891 + 32] = mem[idx + _4524 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6454) > _6454:
                                        mem[_6454 + _5519 + _5891 + 32] = 0
                                    mem[mem[64]] = _6454 + _5519 + _5891 - mem[64]
                                    mem[64] = _6454 + _5519 + _5891 + 32
                            else:
                                mem[_4524 + 32 len t] = call.data[calldata.size len t]
                                u = t
                                s = var61011
                                while s:
                                    if u < 1:
                                        revert with 0, 17
                                    if 48 > !(s % 10):
                                        revert with 0, 17
                                    if u - 1 >= mem[_4524]:
                                        revert with 0, 50
                                    mem[u + _4524 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                                    u = u - 1
                                    s = s / 10
                                    continue 
                                _5520 = mem[64]
                                _5892 = mem[_738]
                                s = 0
                                while s < _5892:
                                    mem[s + _5520 + 32] = mem[s + _738 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5892) <= _5892:
                                    _6455 = mem[_4524]
                                    s = 0
                                    while s < _6455:
                                        mem[s + _5520 + _5892 + 32] = mem[s + _4524 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_6455) > _6455:
                                        mem[_6455 + _5520 + _5892 + 32] = 0
                                    mem[mem[64]] = _6455 + _5520 + _5892 - mem[64]
                                    mem[64] = _6455 + _5520 + _5892 + 32
                                else:
                                    mem[_5892 + _5520 + 32] = 0
                                    _6456 = mem[_4524]
                                    s = 0
                                    while s < _6456:
                                        mem[s + _5520 + _5892 + 32] = mem[s + _4524 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_6456) > _6456:
                                        mem[_6456 + _5520 + _5892 + 32] = 0
                                    mem[mem[64]] = _6456 + _5520 + _5892 - mem[64]
                                    mem[64] = _6456 + _5520 + _5892 + 32
                        if var61011 == -1:
                            revert with 0, 17
                        var38001 = 0
                        continue 
                    _3762 = mem[64]
                    _3768 = mem[var61012]
                    s = 0
                    while s < _3768:
                        mem[s + _3762] = mem[s + var61012 + 32]
                        s = s + 32
                        continue 
                    mem[_3768 + _3762] = 6
                    uint8(stor[sha3(mem[mem[64] len _3768 + _3762 + -mem[64] + 32])]) = 1
                    mem[_735] = var61012
                    mem[_735 + 32] = block.timestamp
                    mem[_735 + 64] = block.timestamp
                    mem[_735 + 96] = 0
                    mem[0] = totalNodesCreated
                    mem[32] = 5
                    if ceil32(_3768) <= _3768:
                        _4593 = mem[var61012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4593:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4593) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var61012 + 32
                                while var61012 + _4593 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4593 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4593:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4593) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var61012 + 32
                                while var61012 + _4593 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4593 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                    else:
                        _4596 = mem[var61012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4596:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4596) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var61012 + 32
                                while var61012 + _4596 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4596 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4596:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4596) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var61012 + 32
                                while var61012 + _4596 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4596 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                uint256(sub_05b9b88d[stor10].field_256) = block.timestamp
                uint256(sub_05b9b88d[stor10].field_512) = block.timestamp
                uint256(sub_05b9b88d[stor10].field_768) = 0
                mem[32] = 4
                _getNodeNumberOf[address(cd[4])]++
                mem[0] = sha3(address(cd[4]), 4)
                _getNodeNumberOf[address(cd[4])][_getNodeNumberOf[address(cd[4])]] = totalNodesCreated
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function sub_e2d41a5a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == tokenAddress:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'INCONSISTENT_LENGTH'
        idx = 0
        while idx < ('cd', 4).length:
            _739 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _742 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_742] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_742 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_742 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
            if var40001 < var63003:
                mem[var40001 + var63002] = mem[var40001 + var63001]
                var40001 = var40001 + 32
                continue 
            if var40001 <= var63003:
                mem[var63005 + var63007] = 6
                if uint8(stor[sha3(mem[mem[64] len var63005 + var63007 + -mem[64] + 32])]):
                    if not var63011:
                        _3775 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3775] = 1
                        mem[_3775 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _3781 = mem[64]
                        s = 0
                        while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                            mem[s + _3781 + 32] = mem[s + _742 + 32]
                            s = s + 32
                            continue 
                        if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                            _4531 = mem[_3775]
                            s = 0
                            while s < _4531:
                                mem[s + _3781 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3775 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4531) > _4531:
                                mem[_4531 + _3781 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[mem[64]] = _4531 + _3781 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                            mem[64] = _4531 + _3781 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3781 + 32] = 0
                            _4532 = mem[_3775]
                            s = 0
                            while s < _4532:
                                mem[s + _3781 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3775 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4532) > _4532:
                                mem[_4532 + _3781 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[mem[64]] = _4532 + _3781 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                            mem[64] = _4532 + _3781 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                    else:
                        s = 0
                        idx = var63011
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        _4525 = mem[64]
                        mem[mem[64]] = s
                        mem[64] = mem[64] + ceil32(s) + 32
                        if not s:
                            t = s
                            idx = var63011
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[_4525]:
                                    revert with 0, 50
                                mem[t + _4525 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _5515 = mem[64]
                            _5563 = mem[_742]
                            idx = 0
                            while idx < _5563:
                                mem[idx + _5515 + 32] = mem[idx + _742 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_5563) <= _5563:
                                _6331 = mem[_4525]
                                idx = 0
                                while idx < _6331:
                                    mem[idx + _5515 + _5563 + 32] = mem[idx + _4525 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6331) > _6331:
                                    mem[_6331 + _5515 + _5563 + 32] = 0
                                mem[mem[64]] = _6331 + _5515 + _5563 - mem[64]
                                mem[64] = _6331 + _5515 + _5563 + 32
                            else:
                                mem[_5563 + _5515 + 32] = 0
                                _6332 = mem[_4525]
                                idx = 0
                                while idx < _6332:
                                    mem[idx + _5515 + _5563 + 32] = mem[idx + _4525 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6332) > _6332:
                                    mem[_6332 + _5515 + _5563 + 32] = 0
                                mem[mem[64]] = _6332 + _5515 + _5563 - mem[64]
                                mem[64] = _6332 + _5515 + _5563 + 32
                        else:
                            mem[_4525 + 32 len s] = call.data[calldata.size len s]
                            t = s
                            idx = var63011
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[_4525]:
                                    revert with 0, 50
                                mem[t + _4525 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _5516 = mem[64]
                            _5564 = mem[_742]
                            idx = 0
                            while idx < _5564:
                                mem[idx + _5516 + 32] = mem[idx + _742 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_5564) <= _5564:
                                _6333 = mem[_4525]
                                idx = 0
                                while idx < _6333:
                                    mem[idx + _5516 + _5564 + 32] = mem[idx + _4525 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6333) > _6333:
                                    mem[_6333 + _5516 + _5564 + 32] = 0
                                mem[mem[64]] = _6333 + _5516 + _5564 - mem[64]
                                mem[64] = _6333 + _5516 + _5564 + 32
                            else:
                                mem[_5564 + _5516 + 32] = 0
                                _6334 = mem[_4525]
                                idx = 0
                                while idx < _6334:
                                    mem[idx + _5516 + _5564 + 32] = mem[idx + _4525 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6334) > _6334:
                                    mem[_6334 + _5516 + _5564 + 32] = 0
                                mem[mem[64]] = _6334 + _5516 + _5564 - mem[64]
                                mem[64] = _6334 + _5516 + _5564 + 32
                    if var63011 == -1:
                        revert with 0, 17
                    var40001 = 0
                    continue 
                _3763 = mem[64]
                _3769 = mem[var63012]
                s = 0
                while s < _3769:
                    mem[s + _3763] = mem[s + var63012 + 32]
                    s = s + 32
                    continue 
                mem[_3769 + _3763] = 6
                uint8(stor[sha3(mem[mem[64] len _3769 + _3763 + -mem[64] + 32])]) = 1
                mem[_739] = var63012
                mem[_739 + 32] = block.timestamp
                mem[_739 + 64] = block.timestamp
                mem[_739 + 96] = 0
                mem[0] = totalNodesCreated
                mem[32] = 5
                if ceil32(_3769) <= _3769:
                    _4569 = mem[var63012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4569:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4569) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var63012 + 32
                            while var63012 + _4569 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4569 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4569:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4569) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var63012 + 32
                            while var63012 + _4569 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4569 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                else:
                    _4572 = mem[var63012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4572:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4572) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var63012 + 32
                            while var63012 + _4572 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4572 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4572:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4572) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var63012 + 32
                            while var63012 + _4572 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4572 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
            else:
                mem[var63003 + var63002] = 0
                mem[var63005 + var63007] = 6
                if uint8(stor[sha3(mem[mem[64] len var63005 + var63007 + -mem[64] + 32])]):
                    if not var63011:
                        _3776 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3776] = 1
                        mem[_3776 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _3782 = mem[64]
                        s = 0
                        while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                            mem[s + _3782 + 32] = mem[s + _742 + 32]
                            s = s + 32
                            continue 
                        if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                            _4533 = mem[_3776]
                            s = 0
                            while s < _4533:
                                mem[s + _3782 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3776 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4533) > _4533:
                                mem[_4533 + _3782 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[mem[64]] = _4533 + _3782 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                            mem[64] = _4533 + _3782 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3782 + 32] = 0
                            _4534 = mem[_3776]
                            s = 0
                            while s < _4534:
                                mem[s + _3782 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3776 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4534) > _4534:
                                mem[_4534 + _3782 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                            mem[mem[64]] = _4534 + _3782 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                            mem[64] = _4534 + _3782 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                    else:
                        s = 0
                        idx = var63011
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        _4526 = mem[64]
                        mem[mem[64]] = s
                        mem[64] = mem[64] + ceil32(s) + 32
                        if not s:
                            t = s
                            idx = var63011
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[_4526]:
                                    revert with 0, 50
                                mem[t + _4526 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _5517 = mem[64]
                            _5601 = mem[_742]
                            idx = 0
                            while idx < _5601:
                                mem[idx + _5517 + 32] = mem[idx + _742 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_5601) <= _5601:
                                _6347 = mem[_4526]
                                idx = 0
                                while idx < _6347:
                                    mem[idx + _5517 + _5601 + 32] = mem[idx + _4526 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6347) > _6347:
                                    mem[_6347 + _5517 + _5601 + 32] = 0
                                mem[mem[64]] = _6347 + _5517 + _5601 - mem[64]
                                mem[64] = _6347 + _5517 + _5601 + 32
                            else:
                                mem[_5601 + _5517 + 32] = 0
                                _6348 = mem[_4526]
                                idx = 0
                                while idx < _6348:
                                    mem[idx + _5517 + _5601 + 32] = mem[idx + _4526 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6348) > _6348:
                                    mem[_6348 + _5517 + _5601 + 32] = 0
                                mem[mem[64]] = _6348 + _5517 + _5601 - mem[64]
                                mem[64] = _6348 + _5517 + _5601 + 32
                        else:
                            mem[_4526 + 32 len s] = call.data[calldata.size len s]
                            t = s
                            idx = var63011
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[_4526]:
                                    revert with 0, 50
                                mem[t + _4526 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _5518 = mem[64]
                            _5602 = mem[_742]
                            idx = 0
                            while idx < _5602:
                                mem[idx + _5518 + 32] = mem[idx + _742 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_5602) <= _5602:
                                _6349 = mem[_4526]
                                idx = 0
                                while idx < _6349:
                                    mem[idx + _5518 + _5602 + 32] = mem[idx + _4526 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6349) > _6349:
                                    mem[_6349 + _5518 + _5602 + 32] = 0
                                mem[mem[64]] = _6349 + _5518 + _5602 - mem[64]
                                mem[64] = _6349 + _5518 + _5602 + 32
                            else:
                                mem[_5602 + _5518 + 32] = 0
                                _6350 = mem[_4526]
                                idx = 0
                                while idx < _6350:
                                    mem[idx + _5518 + _5602 + 32] = mem[idx + _4526 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_6350) > _6350:
                                    mem[_6350 + _5518 + _5602 + 32] = 0
                                mem[mem[64]] = _6350 + _5518 + _5602 - mem[64]
                                mem[64] = _6350 + _5518 + _5602 + 32
                    if var63011 == -1:
                        revert with 0, 17
                    var40001 = 0
                    continue 
                _3764 = mem[64]
                _3770 = mem[var63012]
                s = 0
                while s < _3770:
                    mem[s + _3764] = mem[s + var63012 + 32]
                    s = s + 32
                    continue 
                mem[_3770 + _3764] = 6
                uint8(stor[sha3(mem[mem[64] len _3770 + _3764 + -mem[64] + 32])]) = 1
                mem[_739] = var63012
                mem[_739 + 32] = block.timestamp
                mem[_739 + 64] = block.timestamp
                mem[_739 + 96] = 0
                mem[0] = totalNodesCreated
                mem[32] = 5
                if ceil32(_3770) <= _3770:
                    _4575 = mem[var63012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4575:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4575) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var63012 + 32
                            while var63012 + _4575 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4575 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4575:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4575) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var63012 + 32
                            while var63012 + _4575 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4575 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                else:
                    _4578 = mem[var63012]
                    if bool(sub_05b9b88d[stor10].field_0):
                        if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4578:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4578) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var63012 + 32
                            while var63012 + _4578 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4578 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(totalNodesCreated, 5)
                        if not _4578:
                            uint256(sub_05b9b88d[stor10].field_0) = 0
                            s = sha3(sha3(totalNodesCreated, 5))
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(sub_05b9b88d[stor10].field_0) = (2 * _4578) + 1
                            s = sha3(sha3(totalNodesCreated, 5))
                            t = var63012 + 32
                            while var63012 + _4578 + 32 > t:
                                uint256(stor[s]) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4578 + 31) >> 5)
                            while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
            uint256(sub_05b9b88d[stor10].field_256) = block.timestamp
            uint256(sub_05b9b88d[stor10].field_512) = block.timestamp
            uint256(sub_05b9b88d[stor10].field_768) = 0
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 4
            _getNodeNumberOf[address(cd[((32 * idx) + cd[4] + 36)])]++
            mem[0] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 4)
            _getNodeNumberOf[address(cd[((32 * idx) + cd[4] + 36)])][_getNodeNumberOf[address(cd[((32 * idx) + cd[4] + 36)])]] = totalNodesCreated
            if totalNodesCreated == -1:
                revert with 0, 17
            totalNodesCreated++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 2
        if 1 == bool(uint8(stor2[msg.sender])):
            if ('cd', 36).length != ('cd', 4).length:
                revert with 0, 'INCONSISTENT_LENGTH'
            idx = 0
            while idx < ('cd', 4).length:
                _740 = mem[64]
                mem[64] = mem[64] + 128
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _743 = mem[64]
                mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
                mem[_743] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[_743 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[_743 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                if var41001 < var64003:
                    mem[var41001 + var64002] = mem[var41001 + var64001]
                    var41001 = var41001 + 32
                    continue 
                if var41001 <= var64003:
                    mem[var64005 + var64007] = 6
                    if uint8(stor[sha3(mem[mem[64] len var64005 + var64007 + -mem[64] + 32])]):
                        if not var64011:
                            _3777 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3777] = 1
                            mem[_3777 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            _3783 = mem[64]
                            s = 0
                            while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                mem[s + _3783 + 32] = mem[s + _743 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                _4535 = mem[_3777]
                                s = 0
                                while s < _4535:
                                    mem[s + _3783 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3777 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4535) > _4535:
                                    mem[_4535 + _3783 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4535 + _3783 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4535 + _3783 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                            else:
                                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3783 + 32] = 0
                                _4536 = mem[_3777]
                                s = 0
                                while s < _4536:
                                    mem[s + _3783 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3777 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4536) > _4536:
                                    mem[_4536 + _3783 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4536 + _3783 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4536 + _3783 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            s = 0
                            idx = var64011
                            while idx:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = idx / 10
                                continue 
                            if s > test266151307():
                                revert with 0, 65
                            _4527 = mem[64]
                            mem[mem[64]] = s
                            mem[64] = mem[64] + ceil32(s) + 32
                            if not s:
                                t = s
                                idx = var64011
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[_4527]:
                                        revert with 0, 50
                                    mem[t + _4527 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                _5519 = mem[64]
                                _5639 = mem[_743]
                                idx = 0
                                while idx < _5639:
                                    mem[idx + _5519 + 32] = mem[idx + _743 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5639) <= _5639:
                                    _6363 = mem[_4527]
                                    idx = 0
                                    while idx < _6363:
                                        mem[idx + _5519 + _5639 + 32] = mem[idx + _4527 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6363) > _6363:
                                        mem[_6363 + _5519 + _5639 + 32] = 0
                                    mem[mem[64]] = _6363 + _5519 + _5639 - mem[64]
                                    mem[64] = _6363 + _5519 + _5639 + 32
                                else:
                                    mem[_5639 + _5519 + 32] = 0
                                    _6364 = mem[_4527]
                                    idx = 0
                                    while idx < _6364:
                                        mem[idx + _5519 + _5639 + 32] = mem[idx + _4527 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6364) > _6364:
                                        mem[_6364 + _5519 + _5639 + 32] = 0
                                    mem[mem[64]] = _6364 + _5519 + _5639 - mem[64]
                                    mem[64] = _6364 + _5519 + _5639 + 32
                            else:
                                mem[_4527 + 32 len s] = call.data[calldata.size len s]
                                t = s
                                idx = var64011
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[_4527]:
                                        revert with 0, 50
                                    mem[t + _4527 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                _5520 = mem[64]
                                _5640 = mem[_743]
                                idx = 0
                                while idx < _5640:
                                    mem[idx + _5520 + 32] = mem[idx + _743 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5640) <= _5640:
                                    _6365 = mem[_4527]
                                    idx = 0
                                    while idx < _6365:
                                        mem[idx + _5520 + _5640 + 32] = mem[idx + _4527 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6365) > _6365:
                                        mem[_6365 + _5520 + _5640 + 32] = 0
                                    mem[mem[64]] = _6365 + _5520 + _5640 - mem[64]
                                    mem[64] = _6365 + _5520 + _5640 + 32
                                else:
                                    mem[_5640 + _5520 + 32] = 0
                                    _6366 = mem[_4527]
                                    idx = 0
                                    while idx < _6366:
                                        mem[idx + _5520 + _5640 + 32] = mem[idx + _4527 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6366) > _6366:
                                        mem[_6366 + _5520 + _5640 + 32] = 0
                                    mem[mem[64]] = _6366 + _5520 + _5640 - mem[64]
                                    mem[64] = _6366 + _5520 + _5640 + 32
                        if var64011 == -1:
                            revert with 0, 17
                        var41001 = 0
                        continue 
                    _3765 = mem[64]
                    _3771 = mem[var64012]
                    s = 0
                    while s < _3771:
                        mem[s + _3765] = mem[s + var64012 + 32]
                        s = s + 32
                        continue 
                    mem[_3771 + _3765] = 6
                    uint8(stor[sha3(mem[mem[64] len _3771 + _3765 + -mem[64] + 32])]) = 1
                    mem[_740] = var64012
                    mem[_740 + 32] = block.timestamp
                    mem[_740 + 64] = block.timestamp
                    mem[_740 + 96] = 0
                    mem[0] = totalNodesCreated
                    mem[32] = 5
                    if ceil32(_3771) <= _3771:
                        _4581 = mem[var64012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4581:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4581) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var64012 + 32
                                while var64012 + _4581 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4581 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4581:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4581) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var64012 + 32
                                while var64012 + _4581 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4581 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                    else:
                        _4584 = mem[var64012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4584:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4584) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var64012 + 32
                                while var64012 + _4584 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4584 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4584:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4584) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var64012 + 32
                                while var64012 + _4584 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4584 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                else:
                    mem[var64003 + var64002] = 0
                    mem[var64005 + var64007] = 6
                    if uint8(stor[sha3(mem[mem[64] len var64005 + var64007 + -mem[64] + 32])]):
                        if not var64011:
                            _3778 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3778] = 1
                            mem[_3778 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            _3784 = mem[64]
                            s = 0
                            while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                mem[s + _3784 + 32] = mem[s + _743 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                _4537 = mem[_3778]
                                s = 0
                                while s < _4537:
                                    mem[s + _3784 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3778 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4537) > _4537:
                                    mem[_4537 + _3784 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4537 + _3784 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4537 + _3784 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                            else:
                                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3784 + 32] = 0
                                _4538 = mem[_3778]
                                s = 0
                                while s < _4538:
                                    mem[s + _3784 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3778 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4538) > _4538:
                                    mem[_4538 + _3784 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4538 + _3784 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4538 + _3784 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            s = 0
                            idx = var64011
                            while idx:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = idx / 10
                                continue 
                            if s > test266151307():
                                revert with 0, 65
                            _4528 = mem[64]
                            mem[mem[64]] = s
                            mem[64] = mem[64] + ceil32(s) + 32
                            if not s:
                                t = s
                                idx = var64011
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[_4528]:
                                        revert with 0, 50
                                    mem[t + _4528 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                _5521 = mem[64]
                                _5677 = mem[_743]
                                idx = 0
                                while idx < _5677:
                                    mem[idx + _5521 + 32] = mem[idx + _743 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5677) <= _5677:
                                    _6379 = mem[_4528]
                                    idx = 0
                                    while idx < _6379:
                                        mem[idx + _5521 + _5677 + 32] = mem[idx + _4528 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6379) > _6379:
                                        mem[_6379 + _5521 + _5677 + 32] = 0
                                    mem[mem[64]] = _6379 + _5521 + _5677 - mem[64]
                                    mem[64] = _6379 + _5521 + _5677 + 32
                                else:
                                    mem[_5677 + _5521 + 32] = 0
                                    _6380 = mem[_4528]
                                    idx = 0
                                    while idx < _6380:
                                        mem[idx + _5521 + _5677 + 32] = mem[idx + _4528 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6380) > _6380:
                                        mem[_6380 + _5521 + _5677 + 32] = 0
                                    mem[mem[64]] = _6380 + _5521 + _5677 - mem[64]
                                    mem[64] = _6380 + _5521 + _5677 + 32
                            else:
                                mem[_4528 + 32 len s] = call.data[calldata.size len s]
                                t = s
                                idx = var64011
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[_4528]:
                                        revert with 0, 50
                                    mem[t + _4528 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                _5522 = mem[64]
                                _5678 = mem[_743]
                                idx = 0
                                while idx < _5678:
                                    mem[idx + _5522 + 32] = mem[idx + _743 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5678) <= _5678:
                                    _6381 = mem[_4528]
                                    idx = 0
                                    while idx < _6381:
                                        mem[idx + _5522 + _5678 + 32] = mem[idx + _4528 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6381) > _6381:
                                        mem[_6381 + _5522 + _5678 + 32] = 0
                                    mem[mem[64]] = _6381 + _5522 + _5678 - mem[64]
                                    mem[64] = _6381 + _5522 + _5678 + 32
                                else:
                                    mem[_5678 + _5522 + 32] = 0
                                    _6382 = mem[_4528]
                                    idx = 0
                                    while idx < _6382:
                                        mem[idx + _5522 + _5678 + 32] = mem[idx + _4528 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6382) > _6382:
                                        mem[_6382 + _5522 + _5678 + 32] = 0
                                    mem[mem[64]] = _6382 + _5522 + _5678 - mem[64]
                                    mem[64] = _6382 + _5522 + _5678 + 32
                        if var64011 == -1:
                            revert with 0, 17
                        var41001 = 0
                        continue 
                    _3766 = mem[64]
                    _3772 = mem[var64012]
                    s = 0
                    while s < _3772:
                        mem[s + _3766] = mem[s + var64012 + 32]
                        s = s + 32
                        continue 
                    mem[_3772 + _3766] = 6
                    uint8(stor[sha3(mem[mem[64] len _3772 + _3766 + -mem[64] + 32])]) = 1
                    mem[_740] = var64012
                    mem[_740 + 32] = block.timestamp
                    mem[_740 + 64] = block.timestamp
                    mem[_740 + 96] = 0
                    mem[0] = totalNodesCreated
                    mem[32] = 5
                    if ceil32(_3772) <= _3772:
                        _4587 = mem[var64012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4587:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4587) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var64012 + 32
                                while var64012 + _4587 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4587 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4587:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4587) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var64012 + 32
                                while var64012 + _4587 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4587 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                    else:
                        _4590 = mem[var64012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4590:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4590) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var64012 + 32
                                while var64012 + _4590 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4590 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4590:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4590) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var64012 + 32
                                while var64012 + _4590 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4590 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                uint256(sub_05b9b88d[stor10].field_256) = block.timestamp
                uint256(sub_05b9b88d[stor10].field_512) = block.timestamp
                uint256(sub_05b9b88d[stor10].field_768) = 0
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 4
                _getNodeNumberOf[address(cd[((32 * idx) + cd[4] + 36)])]++
                mem[0] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 4)
                _getNodeNumberOf[address(cd[((32 * idx) + cd[4] + 36)])][_getNodeNumberOf[address(cd[((32 * idx) + cd[4] + 36)])]] = totalNodesCreated
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
            if ('cd', 36).length != ('cd', 4).length:
                revert with 0, 'INCONSISTENT_LENGTH'
            idx = 0
            while idx < ('cd', 4).length:
                _741 = mem[64]
                mem[64] = mem[64] + 128
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
                require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                _744 = mem[64]
                mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
                mem[_744] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                mem[_744 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
                mem[_744 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                if var42001 < var65003:
                    mem[var42001 + var65002] = mem[var42001 + var65001]
                    var42001 = var42001 + 32
                    continue 
                if var42001 <= var65003:
                    mem[var65005 + var65007] = 6
                    if uint8(stor[sha3(mem[mem[64] len var65005 + var65007 + -mem[64] + 32])]):
                        if not var65011:
                            _3779 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3779] = 1
                            mem[_3779 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            _3785 = mem[64]
                            s = 0
                            while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                mem[s + _3785 + 32] = mem[s + _744 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                _4539 = mem[_3779]
                                s = 0
                                while s < _4539:
                                    mem[s + _3785 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3779 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4539) > _4539:
                                    mem[_4539 + _3785 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4539 + _3785 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4539 + _3785 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                            else:
                                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3785 + 32] = 0
                                _4540 = mem[_3779]
                                s = 0
                                while s < _4540:
                                    mem[s + _3785 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3779 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4540) > _4540:
                                    mem[_4540 + _3785 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4540 + _3785 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4540 + _3785 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            s = 0
                            idx = var65011
                            while idx:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = idx / 10
                                continue 
                            if s > test266151307():
                                revert with 0, 65
                            _4529 = mem[64]
                            mem[mem[64]] = s
                            mem[64] = mem[64] + ceil32(s) + 32
                            if not s:
                                t = s
                                idx = var65011
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[_4529]:
                                        revert with 0, 50
                                    mem[t + _4529 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                _5523 = mem[64]
                                _5715 = mem[_744]
                                idx = 0
                                while idx < _5715:
                                    mem[idx + _5523 + 32] = mem[idx + _744 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5715) <= _5715:
                                    _6395 = mem[_4529]
                                    idx = 0
                                    while idx < _6395:
                                        mem[idx + _5523 + _5715 + 32] = mem[idx + _4529 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6395) > _6395:
                                        mem[_6395 + _5523 + _5715 + 32] = 0
                                    mem[mem[64]] = _6395 + _5523 + _5715 - mem[64]
                                    mem[64] = _6395 + _5523 + _5715 + 32
                                else:
                                    mem[_5715 + _5523 + 32] = 0
                                    _6396 = mem[_4529]
                                    idx = 0
                                    while idx < _6396:
                                        mem[idx + _5523 + _5715 + 32] = mem[idx + _4529 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6396) > _6396:
                                        mem[_6396 + _5523 + _5715 + 32] = 0
                                    mem[mem[64]] = _6396 + _5523 + _5715 - mem[64]
                                    mem[64] = _6396 + _5523 + _5715 + 32
                            else:
                                mem[_4529 + 32 len s] = call.data[calldata.size len s]
                                t = s
                                idx = var65011
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[_4529]:
                                        revert with 0, 50
                                    mem[t + _4529 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                _5524 = mem[64]
                                _5716 = mem[_744]
                                idx = 0
                                while idx < _5716:
                                    mem[idx + _5524 + 32] = mem[idx + _744 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5716) <= _5716:
                                    _6397 = mem[_4529]
                                    idx = 0
                                    while idx < _6397:
                                        mem[idx + _5524 + _5716 + 32] = mem[idx + _4529 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6397) > _6397:
                                        mem[_6397 + _5524 + _5716 + 32] = 0
                                    mem[mem[64]] = _6397 + _5524 + _5716 - mem[64]
                                    mem[64] = _6397 + _5524 + _5716 + 32
                                else:
                                    mem[_5716 + _5524 + 32] = 0
                                    _6398 = mem[_4529]
                                    idx = 0
                                    while idx < _6398:
                                        mem[idx + _5524 + _5716 + 32] = mem[idx + _4529 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6398) > _6398:
                                        mem[_6398 + _5524 + _5716 + 32] = 0
                                    mem[mem[64]] = _6398 + _5524 + _5716 - mem[64]
                                    mem[64] = _6398 + _5524 + _5716 + 32
                        if var65011 == -1:
                            revert with 0, 17
                        var42001 = 0
                        continue 
                    _3767 = mem[64]
                    _3773 = mem[var65012]
                    s = 0
                    while s < _3773:
                        mem[s + _3767] = mem[s + var65012 + 32]
                        s = s + 32
                        continue 
                    mem[_3773 + _3767] = 6
                    uint8(stor[sha3(mem[mem[64] len _3773 + _3767 + -mem[64] + 32])]) = 1
                    mem[_741] = var65012
                    mem[_741 + 32] = block.timestamp
                    mem[_741 + 64] = block.timestamp
                    mem[_741 + 96] = 0
                    mem[0] = totalNodesCreated
                    mem[32] = 5
                    if ceil32(_3773) <= _3773:
                        _4593 = mem[var65012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4593:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4593) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var65012 + 32
                                while var65012 + _4593 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4593 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4593:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4593) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var65012 + 32
                                while var65012 + _4593 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4593 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                    else:
                        _4596 = mem[var65012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4596:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4596) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var65012 + 32
                                while var65012 + _4596 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4596 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4596:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4596) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var65012 + 32
                                while var65012 + _4596 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4596 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                else:
                    mem[var65003 + var65002] = 0
                    mem[var65005 + var65007] = 6
                    if uint8(stor[sha3(mem[mem[64] len var65005 + var65007 + -mem[64] + 32])]):
                        if not var65011:
                            _3780 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3780] = 1
                            mem[_3780 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            _3786 = mem[64]
                            s = 0
                            while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                mem[s + _3786 + 32] = mem[s + _744 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) <= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                                _4541 = mem[_3780]
                                s = 0
                                while s < _4541:
                                    mem[s + _3786 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3780 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4541) > _4541:
                                    mem[_4541 + _3786 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4541 + _3786 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4541 + _3786 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                            else:
                                mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _3786 + 32] = 0
                                _4542 = mem[_3780]
                                s = 0
                                while s < _4542:
                                    mem[s + _3786 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = mem[s + _3780 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4542) > _4542:
                                    mem[_4542 + _3786 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
                                mem[mem[64]] = _4542 + _3786 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] - mem[64]
                                mem[64] = _4542 + _3786 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32
                        else:
                            s = 0
                            idx = var65011
                            while idx:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = idx / 10
                                continue 
                            if s > test266151307():
                                revert with 0, 65
                            _4530 = mem[64]
                            mem[mem[64]] = s
                            mem[64] = mem[64] + ceil32(s) + 32
                            if not s:
                                t = s
                                idx = var65011
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[_4530]:
                                        revert with 0, 50
                                    mem[t + _4530 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                _5525 = mem[64]
                                _5753 = mem[_744]
                                idx = 0
                                while idx < _5753:
                                    mem[idx + _5525 + 32] = mem[idx + _744 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5753) <= _5753:
                                    _6411 = mem[_4530]
                                    idx = 0
                                    while idx < _6411:
                                        mem[idx + _5525 + _5753 + 32] = mem[idx + _4530 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6411) > _6411:
                                        mem[_6411 + _5525 + _5753 + 32] = 0
                                    mem[mem[64]] = _6411 + _5525 + _5753 - mem[64]
                                    mem[64] = _6411 + _5525 + _5753 + 32
                                else:
                                    mem[_5753 + _5525 + 32] = 0
                                    _6412 = mem[_4530]
                                    idx = 0
                                    while idx < _6412:
                                        mem[idx + _5525 + _5753 + 32] = mem[idx + _4530 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6412) > _6412:
                                        mem[_6412 + _5525 + _5753 + 32] = 0
                                    mem[mem[64]] = _6412 + _5525 + _5753 - mem[64]
                                    mem[64] = _6412 + _5525 + _5753 + 32
                            else:
                                mem[_4530 + 32 len s] = call.data[calldata.size len s]
                                t = s
                                idx = var65011
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[_4530]:
                                        revert with 0, 50
                                    mem[t + _4530 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                _5526 = mem[64]
                                _5754 = mem[_744]
                                idx = 0
                                while idx < _5754:
                                    mem[idx + _5526 + 32] = mem[idx + _744 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_5754) <= _5754:
                                    _6413 = mem[_4530]
                                    idx = 0
                                    while idx < _6413:
                                        mem[idx + _5526 + _5754 + 32] = mem[idx + _4530 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6413) > _6413:
                                        mem[_6413 + _5526 + _5754 + 32] = 0
                                    mem[mem[64]] = _6413 + _5526 + _5754 - mem[64]
                                    mem[64] = _6413 + _5526 + _5754 + 32
                                else:
                                    mem[_5754 + _5526 + 32] = 0
                                    _6414 = mem[_4530]
                                    idx = 0
                                    while idx < _6414:
                                        mem[idx + _5526 + _5754 + 32] = mem[idx + _4530 + 32]
                                        idx = idx + 32
                                        continue 
                                    if ceil32(_6414) > _6414:
                                        mem[_6414 + _5526 + _5754 + 32] = 0
                                    mem[mem[64]] = _6414 + _5526 + _5754 - mem[64]
                                    mem[64] = _6414 + _5526 + _5754 + 32
                        if var65011 == -1:
                            revert with 0, 17
                        var42001 = 0
                        continue 
                    _3768 = mem[64]
                    _3774 = mem[var65012]
                    s = 0
                    while s < _3774:
                        mem[s + _3768] = mem[s + var65012 + 32]
                        s = s + 32
                        continue 
                    mem[_3774 + _3768] = 6
                    uint8(stor[sha3(mem[mem[64] len _3774 + _3768 + -mem[64] + 32])]) = 1
                    mem[_741] = var65012
                    mem[_741 + 32] = block.timestamp
                    mem[_741 + 64] = block.timestamp
                    mem[_741 + 96] = 0
                    mem[0] = totalNodesCreated
                    mem[32] = 5
                    if ceil32(_3774) <= _3774:
                        _4599 = mem[var65012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4599:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4599) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var65012 + 32
                                while var65012 + _4599 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4599 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4599:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4599) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var65012 + 32
                                while var65012 + _4599 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4599 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                    else:
                        _4602 = mem[var65012]
                        if bool(sub_05b9b88d[stor10].field_0):
                            if bool(sub_05b9b88d[stor10].field_0) == uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4602:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4602) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var65012 + 32
                                while var65012 + _4602 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4602 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + ((uint255(uint256(sub_05b9b88d[stor10].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(sub_05b9b88d[stor10].field_0) == sub_05b9b88d[stor10].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(totalNodesCreated, 5)
                            if not _4602:
                                uint256(sub_05b9b88d[stor10].field_0) = 0
                                s = sha3(sha3(totalNodesCreated, 5))
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(sub_05b9b88d[stor10].field_0) = (2 * _4602) + 1
                                s = sha3(sha3(totalNodesCreated, 5))
                                t = var65012 + 32
                                while var65012 + _4602 + 32 > t:
                                    uint256(stor[s]) = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(totalNodesCreated, 5)) + (Mask(251, 0, _4602 + 31) >> 5)
                                while sha3(sha3(totalNodesCreated, 5)) + (sub_05b9b88d[stor10].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                uint256(sub_05b9b88d[stor10].field_256) = block.timestamp
                uint256(sub_05b9b88d[stor10].field_512) = block.timestamp
                uint256(sub_05b9b88d[stor10].field_768) = 0
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 4
                _getNodeNumberOf[address(cd[((32 * idx) + cd[4] + 36)])]++
                mem[0] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 4)
                _getNodeNumberOf[address(cd[((32 * idx) + cd[4] + 36)])][_getNodeNumberOf[address(cd[((32 * idx) + cd[4] + 36)])]] = totalNodesCreated
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function _cashoutNodeReward(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender == tokenAddress:
        if not _getNodeNumberOf[address(arg1)]:
            revert with 0, 'NOT_NODE_OWNER'
        if not uint8(stor14.field_0):
            revert with 0, 'CASHOUT_DISABLED'
        if arg2 <= 0:
            revert with 0, 'CREATIONTIME_IS_ZERO'
        mem[0] = arg1
        mem[32] = 4
        idx = 0
        while idx < _getNodeNumberOf[address(arg1)]:
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256) != arg2:
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                continue 
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            mem[32] = 5
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                mem[64] = ceil32(uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 256
                mem[224] = uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)):
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                            revert with 0, 17
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                            revert with 0, 'TOO_EARLY_TO_CLAIM'
                        if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                            revert with 0, 17
                        if not claimTime:
                            revert with 0, 18
                        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                            revert with 0, 17
                        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                        staticcall stor3.isBeneficiary(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0]:
                            staticcall stor3.0x4da1d3b9 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(stor3)
                                call stor3.claim(address arg1) with:
                                     gas gas_remaining wei
                                    args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 31 >= uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                            mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                            s = 256
                            t = sha3(mem[0])
                            while (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 224 > s:
                                mem[0] = arg1
                                mem[32] = 4
                                mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[96] = 224
                            mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                            mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                            mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            mem[mem[64] + 4] = arg1
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1549 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1549] == bool(mem[_1549])
                            if mem[_1549]:
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1597 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1597] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                            revert with 0, 17
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                            revert with 0, 'TOO_EARLY_TO_CLAIM'
                        if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                            revert with 0, 17
                        if not claimTime:
                            revert with 0, 18
                        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                            revert with 0, 17
                        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                        staticcall stor3.isBeneficiary(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0]:
                            staticcall stor3.0x4da1d3b9 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(stor3)
                                call stor3.claim(address arg1) with:
                                     gas gas_remaining wei
                                    args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 31 >= sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                            mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                            s = 256
                            t = sha3(mem[0])
                            while sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 224 > s:
                                mem[0] = arg1
                                mem[32] = 4
                                mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[96] = 224
                            mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                            mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                            mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            mem[mem[64] + 4] = arg1
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1550 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1550] == bool(mem[_1550])
                            if mem[_1550]:
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1598 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1598] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                mem[64] = ceil32(sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128) + 256
                mem[224] = sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)):
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                            revert with 0, 17
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                            revert with 0, 'TOO_EARLY_TO_CLAIM'
                        if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                            revert with 0, 17
                        if not claimTime:
                            revert with 0, 18
                        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                            revert with 0, 17
                        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                        staticcall stor3.isBeneficiary(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0]:
                            staticcall stor3.0x4da1d3b9 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(stor3)
                                call stor3.claim(address arg1) with:
                                     gas gas_remaining wei
                                    args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 31 >= uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                            mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                            s = 256
                            t = sha3(mem[0])
                            while (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 224 > s:
                                mem[0] = arg1
                                mem[32] = 4
                                mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[96] = 224
                            mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                            mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                            mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            mem[mem[64] + 4] = arg1
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1551 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1551] == bool(mem[_1551])
                            if mem[_1551]:
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1599 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1599] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                            revert with 0, 17
                        if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                            revert with 0, 'TOO_EARLY_TO_CLAIM'
                        if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                            revert with 0, 17
                        if not claimTime:
                            revert with 0, 18
                        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                            revert with 0, 17
                        if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                            revert with 0, 17
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                        uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                        staticcall stor3.isBeneficiary(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0]:
                            staticcall stor3.0x4da1d3b9 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(stor3)
                                call stor3.claim(address arg1) with:
                                     gas gas_remaining wei
                                    args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 31 >= sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                            mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                            s = 256
                            t = sha3(mem[0])
                            while sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 224 > s:
                                mem[0] = arg1
                                mem[32] = 4
                                mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[96] = 224
                            mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                            mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                            mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            mem[mem[64] + 4] = arg1
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1552 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1552] == bool(mem[_1552])
                            if mem[_1552]:
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1600 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_1600] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            return ((block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433) + uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768))
    else:
        if 1 == bool(uint8(stor2[msg.sender])):
            if not _getNodeNumberOf[address(arg1)]:
                revert with 0, 'NOT_NODE_OWNER'
            if not uint8(stor14.field_0):
                revert with 0, 'CASHOUT_DISABLED'
            if arg2 <= 0:
                revert with 0, 'CREATIONTIME_IS_ZERO'
            mem[0] = arg1
            mem[32] = 4
            idx = 0
            while idx < _getNodeNumberOf[address(arg1)]:
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256) != arg2:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    continue 
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                mem[32] = 5
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[64] = ceil32(uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 256
                    mem[224] = uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)):
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 31 >= uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0]:
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                                s = 256
                                t = sha3(mem[0])
                                while (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 224 > s:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[96] = 224
                                mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                                mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                                mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1553 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1553] == bool(mem[_1553])
                                if mem[_1553]:
                                    mem[mem[64] + 4] = arg1
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1601 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1601] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                            revert with 0, 34
                        if not sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 31 >= sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0]:
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                                s = 256
                                t = sha3(mem[0])
                                while sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 224 > s:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[96] = 224
                                mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                                mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                                mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1554 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1554] == bool(mem[_1554])
                                if mem[_1554]:
                                    mem[mem[64] + 4] = arg1
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1602 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1602] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[64] = ceil32(sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128) + 256
                    mem[224] = sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)):
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 31 >= uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0]:
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                                s = 256
                                t = sha3(mem[0])
                                while (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 224 > s:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[96] = 224
                                mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                                mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                                mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1555 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1555] == bool(mem[_1555])
                                if mem[_1555]:
                                    mem[mem[64] + 4] = arg1
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1603 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1603] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                            revert with 0, 34
                        if not sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 31 >= sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0]:
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                                s = 256
                                t = sha3(mem[0])
                                while sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 224 > s:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[96] = 224
                                mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                                mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                                mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1556 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1556] == bool(mem[_1556])
                                if mem[_1556]:
                                    mem[mem[64] + 4] = arg1
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1604 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1604] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                return ((block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433) + uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768))
        else:
            if owner != msg.sender:
                revert with 0, 'Fuck off'
            if not _getNodeNumberOf[address(arg1)]:
                revert with 0, 'NOT_NODE_OWNER'
            if not uint8(stor14.field_0):
                revert with 0, 'CASHOUT_DISABLED'
            if arg2 <= 0:
                revert with 0, 'CREATIONTIME_IS_ZERO'
            mem[0] = arg1
            mem[32] = 4
            idx = 0
            while idx < _getNodeNumberOf[address(arg1)]:
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256) != arg2:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    continue 
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                mem[32] = 5
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[64] = ceil32(uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 256
                    mem[224] = uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)):
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 31 >= uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0]:
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                                s = 256
                                t = sha3(mem[0])
                                while (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 224 > s:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[96] = 224
                                mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                                mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                                mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1557 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1557] == bool(mem[_1557])
                                if mem[_1557]:
                                    mem[mem[64] + 4] = arg1
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1605 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1605] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                            revert with 0, 34
                        if not sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 31 >= sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0]:
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                                s = 256
                                t = sha3(mem[0])
                                while sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 224 > s:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[96] = 224
                                mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                                mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                                mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1558 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1558] == bool(mem[_1558])
                                if mem[_1558]:
                                    mem[mem[64] + 4] = arg1
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1606 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1606] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[64] = ceil32(sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128) + 256
                    mem[224] = sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)):
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 31 >= uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0]:
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                                s = 256
                                t = sha3(mem[0])
                                while (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 224 > s:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[96] = 224
                                mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                                mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                                mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1559 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1559] == bool(mem[_1559])
                                if mem[_1559]:
                                    mem[mem[64] + 4] = arg1
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1607 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1607] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                            revert with 0, 34
                        if not sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                revert with 0, 17
                            if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                revert with 0, 'TOO_EARLY_TO_CLAIM'
                            if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                revert with 0, 17
                            if not claimTime:
                                revert with 0, 18
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                revert with 0, 17
                            if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                revert with 0, 17
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                            uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                            staticcall stor3.isBeneficiary(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                staticcall stor3.0x4da1d3b9 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    require ext_code.size(stor3)
                                    call stor3.claim(address arg1) with:
                                         gas gas_remaining wei
                                        args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 31 >= sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0]:
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                                mem[256] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)
                                s = 256
                                t = sha3(mem[0])
                                while sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 224 > s:
                                    mem[0] = arg1
                                    mem[32] = 4
                                    mem[s + 32] = uint256(sub_9f89a4b2[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[96] = 224
                                mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_256)
                                mem[160] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512)
                                mem[192] = uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768)
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) > !claimTime:
                                    revert with 0, 17
                                if uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) + claimTime > block.timestamp:
                                    revert with 0, 'TOO_EARLY_TO_CLAIM'
                                if block.timestamp < uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512):
                                    revert with 0, 17
                                if not claimTime:
                                    revert with 0, 18
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime and sub_d754d433 > -1 / block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime:
                                    revert with 0, 17
                                if block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433 > !uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768):
                                    revert with 0, 17
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768) = 0
                                uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) = block.timestamp
                                mem[mem[64] + 4] = arg1
                                staticcall stor3.isBeneficiary(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1560 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1560] == bool(mem[_1560])
                                if mem[_1560]:
                                    mem[mem[64] + 4] = arg1
                                    staticcall stor3.0x4da1d3b9 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1608 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1608] > 0:
                                        require ext_code.size(stor3)
                                        call stor3.claim(address arg1) with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                return ((block.timestamp - uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_512) / claimTime * sub_d754d433) + uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_768))
    revert with 0, 'NO_NODE_WITH_BLOCKTIME'
}

function _getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 'NOT_NODE_OWNER'
    if not _getNodeNumberOf[address(arg1)]:
        revert with 0, 50
    if not bool(sub_05b9b88d[stor4[address(arg1)]].field_0):
        if bool(sub_05b9b88d[stor4[address(arg1)]].field_0) == sub_05b9b88d[stor4[address(arg1)]].field_1 % 128 < 32:
            revert with 0, 34
        mem[64] = ceil32(sub_05b9b88d[stor4[address(arg1)]].field_1 % 128) + 128
        mem[96] = sub_05b9b88d[stor4[address(arg1)]].field_1 % 128
        if bool(sub_05b9b88d[stor4[address(arg1)]].field_0):
            if bool(sub_05b9b88d[stor4[address(arg1)]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)):
                mem[0] = arg1
                mem[32] = 4
                idx = 1
                s = 96
                while idx < _getNodeNumberOf[address(arg1)]:
                    if idx >= _getNodeNumberOf[address(arg1)]:
                        revert with 0, 50
                    mem[0] = _getNodeNumberOf[address(arg1)][idx]
                    mem[32] = 5
                    _379 = mem[64]
                    _400 = mem[s]
                    t = 0
                    while t < _400:
                        mem[t + _379 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_379 + _400 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_400) <= _400:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[_379 + _400 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                _797 = mem[64]
                                mem[mem[64]] = _379 + _400 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                                mem[64] = _379 + _400 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 4
                                idx = idx + 1
                                s = _797
                                continue 
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                _821 = mem[64]
                                mem[mem[64]] = -mem[64] - 32
                                mem[64] = 0
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 4
                                idx = idx + 1
                                s = _821
                                continue 
                            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                mem[s + _379 + _400 + 33] = uint256(stor[t])
                                mem[0] = arg1
                                mem[32] = 4
                                s = s + 32
                                t = t + 1
                                continue 
                            _981 = mem[64]
                            mem[mem[64]] = _379 + _400 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                            mem[64] = _379 + _400 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _981
                            continue 
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[_379 + _400 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            _822 = mem[64]
                            mem[mem[64]] = _379 + _400 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                            mem[64] = _379 + _400 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _822
                            continue 
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            _849 = mem[64]
                            mem[mem[64]] = -mem[64] - 32
                            mem[64] = 0
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _849
                            continue 
                        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                            mem[s + _379 + _400 + 33] = uint256(stor[t])
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        _982 = mem[64]
                        mem[mem[64]] = _379 + _400 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                        mem[64] = _379 + _400 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _982
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[_379 + _400 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            _798 = mem[64]
                            mem[mem[64]] = _379 + _400 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                            mem[64] = _379 + _400 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _798
                            continue 
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            _823 = mem[64]
                            mem[mem[64]] = -mem[64] - 32
                            mem[64] = 0
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _823
                            continue 
                        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                            mem[s + _379 + _400 + 33] = uint256(stor[t])
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        _983 = mem[64]
                        mem[mem[64]] = _379 + _400 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _379 + _400 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _983
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_379 + _400 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _824 = mem[64]
                        mem[mem[64]] = _379 + _400 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                        mem[64] = _379 + _400 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _824
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _850 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _850
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                        mem[s + _379 + _400 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _984 = mem[64]
                    mem[mem[64]] = _379 + _400 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _379 + _400 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _984
                    continue 
                mem[mem[64]] = 32
                _423 = mem[s]
                mem[mem[64] + 32] = mem[s]
                mem[mem[64] + 64 len ceil32(_423)] = mem[s + 32 len ceil32(_423)]
                if ceil32(_423) > _423:
                    mem[_423 + mem[64] + 64] = 0
                return 32, mem[mem[64] + 32 len ceil32(_423) + 32]
            if 31 < uint255(uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)) * 0.5:
                mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(sub_05b9b88d[stor4[address(arg1)]][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[0] = arg1
                mem[32] = 4
                idx = 1
                s = 96
                while idx < _getNodeNumberOf[address(arg1)]:
                    if idx >= _getNodeNumberOf[address(arg1)]:
                        revert with 0, 50
                    mem[0] = _getNodeNumberOf[address(arg1)][idx]
                    mem[32] = 5
                    _717 = mem[64]
                    _726 = mem[s]
                    t = 0
                    while t < _726:
                        mem[t + _717 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_717 + _726 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_726) <= _726:
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                                mem[_717 + _726 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                                _1025 = mem[64]
                                mem[mem[64]] = _717 + _726 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                                mem[64] = _717 + _726 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 4
                                idx = idx + 1
                                s = _1025
                                continue 
                            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                                _1037 = mem[64]
                                mem[mem[64]] = -mem[64] - 32
                                mem[64] = 0
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 4
                                idx = idx + 1
                                s = _1037
                                continue 
                            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                                mem[s + _717 + _726 + 33] = uint256(stor[t])
                                mem[0] = arg1
                                mem[32] = 4
                                s = s + 32
                                t = t + 1
                                continue 
                            _1077 = mem[64]
                            mem[mem[64]] = _717 + _726 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                            mem[64] = _717 + _726 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1077
                            continue 
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[_717 + _726 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            _1038 = mem[64]
                            mem[mem[64]] = _717 + _726 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                            mem[64] = _717 + _726 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1038
                            continue 
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            _1049 = mem[64]
                            mem[mem[64]] = -mem[64] - 32
                            mem[64] = 0
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1049
                            continue 
                        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                            mem[s + _717 + _726 + 33] = uint256(stor[t])
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        _1078 = mem[64]
                        mem[mem[64]] = _717 + _726 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                        mem[64] = _717 + _726 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1078
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[_717 + _726 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            _1026 = mem[64]
                            mem[mem[64]] = _717 + _726 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                            mem[64] = _717 + _726 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1026
                            continue 
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            _1039 = mem[64]
                            mem[mem[64]] = -mem[64] - 32
                            mem[64] = 0
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1039
                            continue 
                        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                            mem[s + _717 + _726 + 33] = uint256(stor[t])
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        _1079 = mem[64]
                        mem[mem[64]] = _717 + _726 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _717 + _726 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1079
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_717 + _726 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _1040 = mem[64]
                        mem[mem[64]] = _717 + _726 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                        mem[64] = _717 + _726 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1040
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _1050 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1050
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                        mem[s + _717 + _726 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _1080 = mem[64]
                    mem[mem[64]] = _717 + _726 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _717 + _726 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1080
                    continue 
                mem[mem[64]] = 32
                _741 = mem[s]
                mem[mem[64] + 32] = mem[s]
                mem[mem[64] + 64 len ceil32(_741)] = mem[s + 32 len ceil32(_741)]
                if ceil32(_741) > _741:
                    mem[_741 + mem[64] + 64] = 0
                return 32, mem[mem[64] + 32 len ceil32(_741) + 32]
            mem[128] = 256 * Mask(248, 0, sub_05b9b88d[stor4[address(arg1)]].field_8)
            mem[0] = arg1
            mem[32] = 4
            idx = 1
            s = 96
            while idx < _getNodeNumberOf[address(arg1)]:
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                mem[0] = _getNodeNumberOf[address(arg1)][idx]
                mem[32] = 5
                _382 = mem[64]
                _403 = mem[s]
                t = 0
                while t < _403:
                    mem[t + _382 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_382 + _403 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_403) <= _403:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[_382 + _403 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            _799 = mem[64]
                            mem[mem[64]] = _382 + _403 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                            mem[64] = _382 + _403 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _799
                            continue 
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            _825 = mem[64]
                            mem[mem[64]] = -mem[64] - 32
                            mem[64] = 0
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _825
                            continue 
                        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                            mem[s + _382 + _403 + 33] = uint256(stor[t])
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        _985 = mem[64]
                        mem[mem[64]] = _382 + _403 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _382 + _403 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _985
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_382 + _403 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _826 = mem[64]
                        mem[mem[64]] = _382 + _403 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                        mem[64] = _382 + _403 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _826
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _853 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _853
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                        mem[s + _382 + _403 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _986 = mem[64]
                    mem[mem[64]] = _382 + _403 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _382 + _403 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _986
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_382 + _403 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _800 = mem[64]
                        mem[mem[64]] = _382 + _403 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _382 + _403 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _800
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _827 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _827
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                        mem[s + _382 + _403 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _987 = mem[64]
                    mem[mem[64]] = _382 + _403 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _382 + _403 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _987
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_382 + _403 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _828 = mem[64]
                    mem[mem[64]] = _382 + _403 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _382 + _403 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _828
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _854 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _854
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                    mem[s + _382 + _403 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _988 = mem[64]
                mem[mem[64]] = _382 + _403 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _382 + _403 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _988
                continue 
            _402 = mem[64]
            mem[mem[64]] = 32
            _427 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_427)] = mem[s + 32 len ceil32(_427)]
            if ceil32(_427) <= _427:
                return 32, mem[mem[64] + 32 len ceil32(_427) + 32]
            mem[_427 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(_427) + _402 + -mem[64] + 64
        if bool(sub_05b9b88d[stor4[address(arg1)]].field_0) == sub_05b9b88d[stor4[address(arg1)]].field_1 % 128 < 32:
            revert with 0, 34
        if not sub_05b9b88d[stor4[address(arg1)]].field_1 % 128:
            mem[0] = arg1
            mem[32] = 4
            idx = 1
            s = 96
            while idx < _getNodeNumberOf[address(arg1)]:
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                mem[0] = _getNodeNumberOf[address(arg1)][idx]
                mem[32] = 5
                _385 = mem[64]
                _405 = mem[s]
                t = 0
                while t < _405:
                    mem[t + _385 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_385 + _405 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_405) <= _405:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[_385 + _405 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            _801 = mem[64]
                            mem[mem[64]] = _385 + _405 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                            mem[64] = _385 + _405 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _801
                            continue 
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            _829 = mem[64]
                            mem[mem[64]] = -mem[64] - 32
                            mem[64] = 0
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _829
                            continue 
                        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                            mem[s + _385 + _405 + 33] = uint256(stor[t])
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        _989 = mem[64]
                        mem[mem[64]] = _385 + _405 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _385 + _405 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _989
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_385 + _405 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _830 = mem[64]
                        mem[mem[64]] = _385 + _405 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                        mem[64] = _385 + _405 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _830
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _855 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _855
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                        mem[s + _385 + _405 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _990 = mem[64]
                    mem[mem[64]] = _385 + _405 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _385 + _405 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _990
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_385 + _405 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _802 = mem[64]
                        mem[mem[64]] = _385 + _405 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _385 + _405 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _802
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _831 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _831
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                        mem[s + _385 + _405 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _991 = mem[64]
                    mem[mem[64]] = _385 + _405 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _385 + _405 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _991
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_385 + _405 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _832 = mem[64]
                    mem[mem[64]] = _385 + _405 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _385 + _405 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _832
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _856 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _856
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                    mem[s + _385 + _405 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _992 = mem[64]
                mem[mem[64]] = _385 + _405 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _385 + _405 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _992
                continue 
            mem[mem[64]] = 32
            _428 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_428)] = mem[s + 32 len ceil32(_428)]
            if ceil32(_428) > _428:
                mem[_428 + mem[64] + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_428) + 32]
        if 31 < sub_05b9b88d[stor4[address(arg1)]].field_1 % 128:
            mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)
            idx = 128
            s = 0
            while sub_05b9b88d[stor4[address(arg1)]].field_1 % 128 + 96 > idx:
                mem[idx + 32] = uint256(sub_05b9b88d[stor4[address(arg1)]][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[0] = arg1
            mem[32] = 4
            idx = 1
            s = 96
            while idx < _getNodeNumberOf[address(arg1)]:
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                mem[0] = _getNodeNumberOf[address(arg1)][idx]
                mem[32] = 5
                _720 = mem[64]
                _728 = mem[s]
                t = 0
                while t < _728:
                    mem[t + _720 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_720 + _728 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_728) <= _728:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[_720 + _728 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            _1027 = mem[64]
                            mem[mem[64]] = _720 + _728 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                            mem[64] = _720 + _728 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1027
                            continue 
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            _1041 = mem[64]
                            mem[mem[64]] = -mem[64] - 32
                            mem[64] = 0
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1041
                            continue 
                        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                            mem[s + _720 + _728 + 33] = uint256(stor[t])
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        _1081 = mem[64]
                        mem[mem[64]] = _720 + _728 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _720 + _728 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1081
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_720 + _728 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _1042 = mem[64]
                        mem[mem[64]] = _720 + _728 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                        mem[64] = _720 + _728 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1042
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _1051 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1051
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                        mem[s + _720 + _728 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _1082 = mem[64]
                    mem[mem[64]] = _720 + _728 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _720 + _728 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1082
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_720 + _728 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _1028 = mem[64]
                        mem[mem[64]] = _720 + _728 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _720 + _728 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1028
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _1043 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1043
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                        mem[s + _720 + _728 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _1083 = mem[64]
                    mem[mem[64]] = _720 + _728 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _720 + _728 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1083
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_720 + _728 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _1044 = mem[64]
                    mem[mem[64]] = _720 + _728 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _720 + _728 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1044
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _1052 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1052
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                    mem[s + _720 + _728 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _1084 = mem[64]
                mem[mem[64]] = _720 + _728 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _720 + _728 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1084
                continue 
            mem[mem[64]] = 32
            _746 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_746)] = mem[s + 32 len ceil32(_746)]
            if ceil32(_746) > _746:
                mem[_746 + mem[64] + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_746) + 32]
        mem[128] = 256 * Mask(248, 0, sub_05b9b88d[stor4[address(arg1)]].field_8)
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = 96
        while idx < _getNodeNumberOf[address(arg1)]:
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            mem[0] = _getNodeNumberOf[address(arg1)][idx]
            mem[32] = 5
            _388 = mem[64]
            _408 = mem[s]
            t = 0
            while t < _408:
                mem[t + _388 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_388 + _408 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_408) <= _408:
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_388 + _408 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _803 = mem[64]
                        mem[mem[64]] = _388 + _408 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _388 + _408 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _803
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _833 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _833
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                        mem[s + _388 + _408 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _993 = mem[64]
                    mem[mem[64]] = _388 + _408 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _388 + _408 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _993
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_388 + _408 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _834 = mem[64]
                    mem[mem[64]] = _388 + _408 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _388 + _408 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _834
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _859 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _859
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                    mem[s + _388 + _408 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _994 = mem[64]
                mem[mem[64]] = _388 + _408 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _388 + _408 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _994
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_388 + _408 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _804 = mem[64]
                    mem[mem[64]] = _388 + _408 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _388 + _408 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _804
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _835 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _835
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                    mem[s + _388 + _408 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _995 = mem[64]
                mem[mem[64]] = _388 + _408 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                mem[64] = _388 + _408 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _995
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                revert with 0, 34
            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                mem[_388 + _408 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                _836 = mem[64]
                mem[mem[64]] = _388 + _408 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _388 + _408 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _836
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                _860 = mem[64]
                mem[mem[64]] = -mem[64] - 32
                mem[64] = 0
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _860
                continue 
            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
            s = 0
            t = sha3(mem[0])
            while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                mem[s + _388 + _408 + 33] = uint256(stor[t])
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                t = t + 1
                continue 
            _996 = mem[64]
            mem[mem[64]] = _388 + _408 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
            mem[64] = _388 + _408 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _996
            continue 
        _407 = mem[64]
        mem[mem[64]] = 32
        _432 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_432)] = mem[s + 32 len ceil32(_432)]
        if ceil32(_432) <= _432:
            return 32, mem[mem[64] + 32 len ceil32(_432) + 32]
        mem[_432 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_432) + _407 + -mem[64] + 64
    if bool(sub_05b9b88d[stor4[address(arg1)]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)) * 0.5 < 32:
        revert with 0, 34
    mem[64] = ceil32(uint255(uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)) * 0.5) + 128
    mem[96] = uint255(uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)) * 0.5
    if not bool(sub_05b9b88d[stor4[address(arg1)]].field_0):
        if bool(sub_05b9b88d[stor4[address(arg1)]].field_0) == sub_05b9b88d[stor4[address(arg1)]].field_1 % 128 < 32:
            revert with 0, 34
        if not sub_05b9b88d[stor4[address(arg1)]].field_1 % 128:
            mem[0] = arg1
            mem[32] = 4
            idx = 1
            s = 96
            while idx < _getNodeNumberOf[address(arg1)]:
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                mem[0] = _getNodeNumberOf[address(arg1)][idx]
                mem[32] = 5
                _373 = mem[64]
                _395 = mem[s]
                t = 0
                while t < _395:
                    mem[t + _373 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_373 + _395 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_395) <= _395:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[_373 + _395 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            _793 = mem[64]
                            mem[mem[64]] = _373 + _395 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                            mem[64] = _373 + _395 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _793
                            continue 
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            _813 = mem[64]
                            mem[mem[64]] = -mem[64] - 32
                            mem[64] = 0
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _813
                            continue 
                        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                            mem[s + _373 + _395 + 33] = uint256(stor[t])
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        _973 = mem[64]
                        mem[mem[64]] = _373 + _395 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _373 + _395 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _973
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_373 + _395 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _814 = mem[64]
                        mem[mem[64]] = _373 + _395 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                        mem[64] = _373 + _395 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _814
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _843 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _843
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                        mem[s + _373 + _395 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _974 = mem[64]
                    mem[mem[64]] = _373 + _395 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _373 + _395 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _974
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_373 + _395 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _794 = mem[64]
                        mem[mem[64]] = _373 + _395 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _373 + _395 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _794
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _815 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _815
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                        mem[s + _373 + _395 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _975 = mem[64]
                    mem[mem[64]] = _373 + _395 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _373 + _395 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _975
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_373 + _395 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _816 = mem[64]
                    mem[mem[64]] = _373 + _395 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _373 + _395 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _816
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _844 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _844
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                    mem[s + _373 + _395 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _976 = mem[64]
                mem[mem[64]] = _373 + _395 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _373 + _395 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _976
                continue 
            mem[mem[64]] = 32
            _418 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_418)] = mem[s + 32 len ceil32(_418)]
            if ceil32(_418) > _418:
                mem[_418 + mem[64] + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_418) + 32]
        if 31 < sub_05b9b88d[stor4[address(arg1)]].field_1 % 128:
            mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)
            idx = 128
            s = 0
            while sub_05b9b88d[stor4[address(arg1)]].field_1 % 128 + 96 > idx:
                mem[idx + 32] = uint256(sub_05b9b88d[stor4[address(arg1)]][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[0] = arg1
            mem[32] = 4
            idx = 1
            s = 96
            while idx < _getNodeNumberOf[address(arg1)]:
                if idx >= _getNodeNumberOf[address(arg1)]:
                    revert with 0, 50
                mem[0] = _getNodeNumberOf[address(arg1)][idx]
                mem[32] = 5
                _714 = mem[64]
                _724 = mem[s]
                t = 0
                while t < _724:
                    mem[t + _714 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_714 + _724 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_724) <= _724:
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                            mem[_714 + _724 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                            _1023 = mem[64]
                            mem[mem[64]] = _714 + _724 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                            mem[64] = _714 + _724 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1023
                            continue 
                        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                            _1033 = mem[64]
                            mem[mem[64]] = -mem[64] - 32
                            mem[64] = 0
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1033
                            continue 
                        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                            mem[s + _714 + _724 + 33] = uint256(stor[t])
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            t = t + 1
                            continue 
                        _1073 = mem[64]
                        mem[mem[64]] = _714 + _724 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _714 + _724 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1073
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_714 + _724 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _1034 = mem[64]
                        mem[mem[64]] = _714 + _724 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                        mem[64] = _714 + _724 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1034
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _1047 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1047
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                        mem[s + _714 + _724 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _1074 = mem[64]
                    mem[mem[64]] = _714 + _724 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _714 + _724 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1074
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_714 + _724 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _1024 = mem[64]
                        mem[mem[64]] = _714 + _724 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _714 + _724 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1024
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _1035 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1035
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                        mem[s + _714 + _724 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _1075 = mem[64]
                    mem[mem[64]] = _714 + _724 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _714 + _724 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1075
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_714 + _724 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _1036 = mem[64]
                    mem[mem[64]] = _714 + _724 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _714 + _724 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1036
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _1048 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1048
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                    mem[s + _714 + _724 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _1076 = mem[64]
                mem[mem[64]] = _714 + _724 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _714 + _724 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1076
                continue 
            mem[mem[64]] = 32
            _736 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_736)] = mem[s + 32 len ceil32(_736)]
            if ceil32(_736) > _736:
                mem[_736 + mem[64] + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_736) + 32]
        mem[128] = 256 * Mask(248, 0, sub_05b9b88d[stor4[address(arg1)]].field_8)
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = 96
        while idx < _getNodeNumberOf[address(arg1)]:
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            mem[0] = _getNodeNumberOf[address(arg1)][idx]
            mem[32] = 5
            _376 = mem[64]
            _398 = mem[s]
            t = 0
            while t < _398:
                mem[t + _376 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_376 + _398 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_398) <= _398:
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_376 + _398 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _795 = mem[64]
                        mem[mem[64]] = _376 + _398 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _376 + _398 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _795
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _817 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _817
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                        mem[s + _376 + _398 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _977 = mem[64]
                    mem[mem[64]] = _376 + _398 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _376 + _398 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _977
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_376 + _398 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _818 = mem[64]
                    mem[mem[64]] = _376 + _398 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _376 + _398 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _818
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _847 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _847
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                    mem[s + _376 + _398 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _978 = mem[64]
                mem[mem[64]] = _376 + _398 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _376 + _398 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _978
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_376 + _398 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _796 = mem[64]
                    mem[mem[64]] = _376 + _398 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _376 + _398 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _796
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _819 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _819
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                    mem[s + _376 + _398 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _979 = mem[64]
                mem[mem[64]] = _376 + _398 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                mem[64] = _376 + _398 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _979
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                revert with 0, 34
            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                mem[_376 + _398 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                _820 = mem[64]
                mem[mem[64]] = _376 + _398 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _376 + _398 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _820
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                _848 = mem[64]
                mem[mem[64]] = -mem[64] - 32
                mem[64] = 0
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _848
                continue 
            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
            s = 0
            t = sha3(mem[0])
            while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                mem[s + _376 + _398 + 33] = uint256(stor[t])
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                t = t + 1
                continue 
            _980 = mem[64]
            mem[mem[64]] = _376 + _398 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
            mem[64] = _376 + _398 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _980
            continue 
        _397 = mem[64]
        mem[mem[64]] = 32
        _422 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_422)] = mem[s + 32 len ceil32(_422)]
        if ceil32(_422) <= _422:
            return 32, mem[mem[64] + 32 len ceil32(_422) + 32]
        mem[_422 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_422) + _397 + -mem[64] + 64
    if bool(sub_05b9b88d[stor4[address(arg1)]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)) * 0.5 < 32:
        revert with 0, 34
    if not Mask(256, -1, uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)):
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = 96
        while idx < _getNodeNumberOf[address(arg1)]:
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            mem[0] = _getNodeNumberOf[address(arg1)][idx]
            mem[32] = 5
            _367 = mem[64]
            _390 = mem[s]
            t = 0
            while t < _390:
                mem[t + _367 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_367 + _390 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_390) <= _390:
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_367 + _390 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _789 = mem[64]
                        mem[mem[64]] = _367 + _390 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _367 + _390 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _789
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _805 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _805
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                        mem[s + _367 + _390 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _965 = mem[64]
                    mem[mem[64]] = _367 + _390 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _367 + _390 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _965
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_367 + _390 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _806 = mem[64]
                    mem[mem[64]] = _367 + _390 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _367 + _390 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _806
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _837 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _837
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                    mem[s + _367 + _390 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _966 = mem[64]
                mem[mem[64]] = _367 + _390 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _367 + _390 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _966
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_367 + _390 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _790 = mem[64]
                    mem[mem[64]] = _367 + _390 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _367 + _390 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _790
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _807 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _807
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                    mem[s + _367 + _390 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _967 = mem[64]
                mem[mem[64]] = _367 + _390 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                mem[64] = _367 + _390 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _967
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                revert with 0, 34
            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                mem[_367 + _390 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                _808 = mem[64]
                mem[mem[64]] = _367 + _390 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _367 + _390 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _808
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                _838 = mem[64]
                mem[mem[64]] = -mem[64] - 32
                mem[64] = 0
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _838
                continue 
            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
            s = 0
            t = sha3(mem[0])
            while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                mem[s + _367 + _390 + 33] = uint256(stor[t])
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                t = t + 1
                continue 
            _968 = mem[64]
            mem[mem[64]] = _367 + _390 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
            mem[64] = _367 + _390 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _968
            continue 
        mem[mem[64]] = 32
        _413 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_413)] = mem[s + 32 len ceil32(_413)]
        if ceil32(_413) > _413:
            mem[_413 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_413) + 32]
    if 31 >= uint255(uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)) * 0.5:
        mem[128] = 256 * Mask(248, 0, sub_05b9b88d[stor4[address(arg1)]].field_8)
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = 96
        while idx < _getNodeNumberOf[address(arg1)]:
            if idx >= _getNodeNumberOf[address(arg1)]:
                revert with 0, 50
            mem[0] = _getNodeNumberOf[address(arg1)][idx]
            mem[32] = 5
            _370 = mem[64]
            _393 = mem[s]
            t = 0
            while t < _393:
                mem[t + _370 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_370 + _393 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_393) <= _393:
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                        mem[_370 + _393 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                        _791 = mem[64]
                        mem[mem[64]] = _370 + _393 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                        mem[64] = _370 + _393 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _791
                        continue 
                    if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                        _809 = mem[64]
                        mem[mem[64]] = -mem[64] - 32
                        mem[64] = 0
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _809
                        continue 
                    mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                        mem[s + _370 + _393 + 33] = uint256(stor[t])
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        t = t + 1
                        continue 
                    _969 = mem[64]
                    mem[mem[64]] = _370 + _393 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _370 + _393 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _969
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_370 + _393 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _810 = mem[64]
                    mem[mem[64]] = _370 + _393 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                    mem[64] = _370 + _393 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _810
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _841 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _841
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                    mem[s + _370 + _393 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _970 = mem[64]
                mem[mem[64]] = _370 + _393 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _370 + _393 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _970
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_370 + _393 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _792 = mem[64]
                    mem[mem[64]] = _370 + _393 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _370 + _393 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _792
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _811 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _811
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                    mem[s + _370 + _393 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _971 = mem[64]
                mem[mem[64]] = _370 + _393 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                mem[64] = _370 + _393 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _971
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                revert with 0, 34
            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                mem[_370 + _393 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                _812 = mem[64]
                mem[mem[64]] = _370 + _393 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _370 + _393 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _812
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                _842 = mem[64]
                mem[mem[64]] = -mem[64] - 32
                mem[64] = 0
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _842
                continue 
            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
            s = 0
            t = sha3(mem[0])
            while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                mem[s + _370 + _393 + 33] = uint256(stor[t])
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                t = t + 1
                continue 
            _972 = mem[64]
            mem[mem[64]] = _370 + _393 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
            mem[64] = _370 + _393 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _972
            continue 
        mem[mem[64]] = 32
        _417 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_417)] = mem[s + 32 len ceil32(_417)]
        if ceil32(_417) > _417:
            mem[_417 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_417) + 32]
    mem[128] = uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)
    idx = 128
    s = 0
    while (uint255(uint256(sub_05b9b88d[stor4[address(arg1)]].field_0)) * 0.5) + 96 > idx:
        mem[idx + 32] = uint256(sub_05b9b88d[stor4[address(arg1)]][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[32] = 4
    idx = 1
    s = 96
    while idx < _getNodeNumberOf[address(arg1)]:
        if idx >= _getNodeNumberOf[address(arg1)]:
            revert with 0, 50
        mem[0] = _getNodeNumberOf[address(arg1)][idx]
        mem[32] = 5
        _711 = mem[64]
        _722 = mem[s]
        t = 0
        while t < _722:
            mem[t + _711 + 32] = mem[t + s + 32]
            mem[0] = arg1
            mem[32] = 4
            t = t + 32
            continue 
        mem[_711 + _722 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        if ceil32(_722) <= _722:
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                    mem[_711 + _722 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                    _1021 = mem[64]
                    mem[mem[64]] = _711 + _722 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                    mem[64] = _711 + _722 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1021
                    continue 
                if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                    _1029 = mem[64]
                    mem[mem[64]] = -mem[64] - 32
                    mem[64] = 0
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1029
                    continue 
                mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
                s = 0
                t = sha3(mem[0])
                while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                    mem[s + _711 + _722 + 33] = uint256(stor[t])
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    t = t + 1
                    continue 
                _1069 = mem[64]
                mem[mem[64]] = _711 + _722 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                mem[64] = _711 + _722 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1069
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
                revert with 0, 34
            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                mem[_711 + _722 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                _1030 = mem[64]
                mem[mem[64]] = _711 + _722 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
                mem[64] = _711 + _722 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1030
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                _1045 = mem[64]
                mem[mem[64]] = -mem[64] - 32
                mem[64] = 0
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1045
                continue 
            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
            s = 0
            t = sha3(mem[0])
            while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
                mem[s + _711 + _722 + 33] = uint256(stor[t])
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                t = t + 1
                continue 
            _1070 = mem[64]
            mem[mem[64]] = _711 + _722 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
            mem[64] = _711 + _722 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1070
            continue 
        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
                mem[_711 + _722 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
                _1022 = mem[64]
                mem[mem[64]] = _711 + _722 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
                mem[64] = _711 + _722 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1022
                continue 
            if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
                _1031 = mem[64]
                mem[mem[64]] = -mem[64] - 32
                mem[64] = 0
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1031
                continue 
            mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
            s = 0
            t = sha3(mem[0])
            while s < uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5:
                mem[s + _711 + _722 + 33] = uint256(stor[t])
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                t = t + 1
                continue 
            _1071 = mem[64]
            mem[mem[64]] = _711 + _722 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + -mem[64] + 1
            mem[64] = _711 + _722 + (uint255(uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0)) * 0.5) + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1071
            continue 
        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) == sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0):
            mem[_711 + _722 + 33] = Mask(248, 8, uint256(sub_05b9b88d[stor4[address(arg1)][idx]].field_0))
            _1032 = mem[64]
            mem[mem[64]] = _711 + _722 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
            mem[64] = _711 + _722 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1032
            continue 
        if bool(sub_05b9b88d[stor4[address(arg1)][idx]].field_0) != 1:
            _1046 = mem[64]
            mem[mem[64]] = -mem[64] - 32
            mem[64] = 0
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1046
            continue 
        mem[0] = sha3(_getNodeNumberOf[address(arg1)][idx], 5)
        s = 0
        t = sha3(mem[0])
        while s < sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128:
            mem[s + _711 + _722 + 33] = uint256(stor[t])
            mem[0] = arg1
            mem[32] = 4
            s = s + 32
            t = t + 1
            continue 
        _1072 = mem[64]
        mem[mem[64]] = _711 + _722 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + -mem[64] + 1
        mem[64] = _711 + _722 + sub_05b9b88d[stor4[address(arg1)][idx]].field_1 % 128 + 33
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = _1072
        continue 
    _721 = mem[64]
    mem[mem[64]] = 32
    _731 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_731)] = mem[s + 32 len ceil32(_731)]
    if ceil32(_731) <= _731:
        return 32, mem[mem[64] + 32 len ceil32(_731) + 32]
    mem[_731 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_731) + _721 + -mem[64] + 64
}



}
