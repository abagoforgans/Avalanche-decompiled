contract main {




// =====================  Runtime code  =====================


#
#  - sub_1781d399(?)
#  - sub_276f8dd4(?)
#  - sub_3ec6cb08(?)
#  - _getNodesRewardAvailable(address arg1)
#  - sub_599a4e52(?)
#  - _getNodeRewardAmountOf(address arg1, uint256 arg2)
#  - _cashoutNodeReward(address arg1, uint256 arg2)
#  - sub_9bc7d477(?)
#  - _getRewardAmountOf(address arg1, uint256 arg2)
#
uint8 stor0; offset 160
address stor0;
uint256 stor0;
mapping of uint8 stor1;
uint256 stor2;
uint256 stor3;
address zeusAddress;
address sub_85c2d7b2Address;
array of struct stor10;
uint256 nodePrice;
uint256 rewardPerNode;
uint256 claimTime;
address gateKeeperAddress;
address tokenAddress;
uint256 totalNodesCreated;
uint256 totalRewardStaked;

function claimTime() payable {
    return claimTime
}

function gateKeeper() payable {
    return gateKeeperAddress
}

function rewardPerNode() payable {
    return rewardPerNode
}

function Zeus() payable {
    return zeusAddress
}

function sub_85c2d7b2(?) payable {
    return sub_85c2d7b2Address
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function sub_ba370651(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(uint8(stor1[arg1][arg2]))
}

function nodePrice() payable {
    return nodePrice
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_14b80630(?) payable {
    if uint8(stor0.field_160):
        revert with 0, 'ALREADY INITIALIZED'
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
}

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor0.field_0) != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
    nodePrice = arg1
}

function _changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor0.field_0) != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
    claimTime = arg1
}

function _changeRewardPerNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor0.field_0) != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
    rewardPerNode = arg1
}

function sub_f4887f15(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor0.field_0) != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
    gateKeeperAddress = address(arg1)
}

function sub_f3a769e3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor0.field_0) != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
    sub_85c2d7b2Address = address(arg1)
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor0.field_0) != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
    zeusAddress = arg1
    tokenAddress = arg1
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0xa59a5b9985a54addc84165b5b4bc594bea45f016.0x732a2ccf with:
         gas gas_remaining wei
        args 6, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function _isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0xa59a5b9985a54addc84165b5b4bc594bea45f016.0x732a2ccf with:
         gas gas_remaining wei
        args 6, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
}

function sub_58045442(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor0.field_0) != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
    require ext_code.size(zeusAddress)
    call zeusAddress.0xf2fde38b with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function init() payable {
    if uint8(stor0.field_160):
        revert with 0, 'ALREADY INITIALIZED'
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    uint8(stor0.field_160) = 1
    call sub_85c2d7b2Address.0xf1fec2b8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    nodePrice = ext_call.return_data[0]
    rewardPerNode = 5787037037037
    claimTime = 1
    call sub_85c2d7b2Address.0x45d61ded with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    gateKeeperAddress = ext_call.return_data[12 len 20]
    call sub_85c2d7b2Address.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tokenAddress = ext_call.return_data[12 len 20]
    zeusAddress = ext_call.return_data[12 len 20]
    call sub_85c2d7b2Address.0xb8527aef with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalNodesCreated = ext_call.return_data[0]
    call sub_85c2d7b2Address.0x8a327eaa with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalRewardStaked = ext_call.return_data[0]
}

function finalizeMigration() payable {
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor0.field_0) != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
    require ext_code.size(zeusAddress)
    call zeusAddress.changeNodePrice(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(zeusAddress)
    call zeusAddress.changeRewardPerNode(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(zeusAddress)
    call zeusAddress.changeClaimTime(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call zeusAddress.getTotalCreatedNodes() with:
         gas gas_remaining wei
    require return_data.size >= 32
    totalNodesCreated = ext_call.return_data[0]
    call zeusAddress.getTotalStakedReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalRewardStaked = ext_call.return_data[0]
    require ext_code.size(zeusAddress)
    call zeusAddress.setNodeManagement(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall zeusAddress.nodeRewardManager() with:
            gas gas_remaining wei
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'UPDATING NODE MANAGER FAILED!'
    require ext_code.size(zeusAddress)
    call zeusAddress.0xf2fde38b with:
         gas gas_remaining wei
        args gateKeeperAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall zeusAddress.0x8da5cb5b with:
            gas gas_remaining wei
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != 0xb223d4e661ecf6ced8bb6c99edb87b3331cbd7e3:
        revert with 0, 'UPDATING OWNER FAILED!'
    stor2 = block.timestamp
    stor3 = block.number
}

function createNode(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if tokenAddress != msg.sender:
        if gateKeeperAddress != msg.sender:
            if address(stor0.field_0) != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
    stor10[address(arg1)].field_0++
    if stor10[address(arg1)][stor10[address(arg1)].field_0].field_0:
        if stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 == uint255(stor10[address(arg1)][stor10[address(arg1)].field_0].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor10[address(arg1)][stor10[address(arg1)].field_0][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = 0
            idx = 0
            while (uint255(stor10[address(arg1)][stor10[address(arg1)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                stor10[address(arg1)][(4 * stor10[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 == stor10[address(arg1)][stor10[address(arg1)].field_0].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor10[address(arg1)][stor10[address(arg1)].field_0][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = 0
            idx = 0
            while stor10[address(arg1)][stor10[address(arg1)].field_0].field_1 + 31 / 32 > idx:
                stor10[address(arg1)][(4 * stor10[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    stor10[address(arg1)][stor10[address(arg1)].field_0].field_256 = block.timestamp
    stor10[address(arg1)][stor10[address(arg1)].field_0].field_512 = block.timestamp
    stor10[address(arg1)][stor10[address(arg1)].field_0].field_768 = 0
    require ext_code.size(0xa59a5b9985a54addc84165b5b4bc594bea45f016)
    delegate 0xa59a5b9985a54addc84165b5b4bc594bea45f016.0xbc2b405c with:
         gas gas_remaining wei
        args 6, address(arg1), stor10[address(arg1)].field_0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
}

function _nodesOfUser(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < stor10[arg1].field_0
    if stor10[arg1][arg2].field_0:
        if stor10[arg1][arg2].field_0 == uint255(stor10[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor10[arg1][arg2].field_0:
            if stor10[arg1][arg2].field_0 == uint255(stor10[arg1][arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10[arg1][arg2].field_0):
                if 31 >= uint255(stor10[arg1][arg2].field_0) * 0.5:
                    mem[128] = 256 * stor10[arg1][arg2].field_8
                else:
                    mem[128] = stor10[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor10[arg1][arg2].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[arg1][(4 * arg2) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[arg1][arg2].field_0 == stor10[arg1][arg2].field_1 < 32:
                revert with 0, 34
            if stor10[arg1][arg2].field_1:
                if 31 >= stor10[arg1][arg2].field_1:
                    mem[128] = 256 * stor10[arg1][arg2].field_8
                else:
                    mem[128] = stor10[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][(4 * arg2) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor10[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor10[arg1][arg2].field_0) * 0.5)]), 
               stor10[arg1][arg2].field_256,
               stor10[arg1][arg2].field_512,
               stor10[arg1][arg2].field_768
    if stor10[arg1][arg2].field_0 == stor10[arg1][arg2].field_1 < 32:
        revert with 0, 34
    if stor10[arg1][arg2].field_0:
        if stor10[arg1][arg2].field_0 == uint255(stor10[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[arg1][arg2].field_0):
            if 31 >= uint255(stor10[arg1][arg2].field_0) * 0.5:
                mem[128] = 256 * stor10[arg1][arg2].field_8
            else:
                mem[128] = stor10[arg1][arg2].field_0
                idx = 128
                s = 0
                while (uint255(stor10[arg1][arg2].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[arg1][(4 * arg2) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1][arg2].field_0 == stor10[arg1][arg2].field_1 < 32:
            revert with 0, 34
        if stor10[arg1][arg2].field_1:
            if 31 >= stor10[arg1][arg2].field_1:
                mem[128] = 256 * stor10[arg1][arg2].field_8
            else:
                mem[128] = stor10[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor10[arg1][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][(4 * arg2) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor10[arg1][arg2].field_0, data=mem[128 len ceil32(stor10[arg1][arg2].field_1)]), 
           stor10[arg1][arg2].field_256,
           stor10[arg1][arg2].field_512,
           stor10[arg1][arg2].field_768
}

function _getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    mem[64] = (32 * stor10[address(arg1)].field_0) + 128
    mem[96] = stor10[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor10[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 10)
        _51 = mem[64]
        mem[64] = mem[64] + 128
        if stor10[address(arg1)][idx].field_0:
            if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor10[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_57] = uint255(stor10[address(arg1)][idx].field_0) * 0.5
            if stor10[address(arg1)][idx].field_0:
                if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor10[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                        mem[_57 + 32] = 256 * stor10[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                        mem[_57 + 32] = stor10[address(arg1)][idx].field_0
                        t = _57 + 32
                        u = sha3(mem[0])
                        while _57 + (uint255(stor10[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_51] = _57
                mem[_51 + 32] = stor10[address(arg1)][idx].field_256
                mem[_51 + 64] = stor10[address(arg1)][idx].field_512
                mem[_51 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor10[address(arg1)][idx].field_1:
                mem[_51] = _57
                mem[_51 + 32] = stor10[address(arg1)][idx].field_256
                mem[_51 + 64] = stor10[address(arg1)][idx].field_512
                mem[_51 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor10[address(arg1)][idx].field_1:
                mem[_57 + 32] = 256 * stor10[address(arg1)][idx].field_8
                mem[_51] = _57
                mem[_51 + 32] = stor10[address(arg1)][idx].field_256
                mem[_51 + 64] = stor10[address(arg1)][idx].field_512
                mem[_51 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
            mem[_57 + 32] = stor10[address(arg1)][idx].field_0
            t = _57 + 32
            u = sha3(mem[0])
            while _57 + stor10[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_51] = _57
            mem[_51 + 32] = stor10[address(arg1)][u].field_256
            mem[_51 + 64] = stor10[address(arg1)][u].field_512
            mem[_51 + 96] = stor10[address(arg1)][u].field_768
            mem[t] = _51
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _62 = mem[64]
        mem[64] = mem[64] + ceil32(stor10[address(arg1)][idx].field_1) + 32
        mem[_62] = stor10[address(arg1)][idx].field_1
        if stor10[address(arg1)][idx].field_0:
            if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10[address(arg1)][idx].field_0):
                mem[_51] = _62
                mem[_51 + 32] = stor10[address(arg1)][idx].field_256
                mem[_51 + 64] = stor10[address(arg1)][idx].field_512
                mem[_51 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                mem[_62 + 32] = 256 * stor10[address(arg1)][idx].field_8
                mem[_51] = _62
                mem[_51 + 32] = stor10[address(arg1)][idx].field_256
                mem[_51 + 64] = stor10[address(arg1)][idx].field_512
                mem[_51 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
            mem[_62 + 32] = stor10[address(arg1)][idx].field_0
            t = _62 + 32
            u = sha3(mem[0])
            while _62 + (uint255(stor10[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_51] = _62
            mem[_51 + 32] = stor10[address(arg1)][u].field_256
            mem[_51 + 64] = stor10[address(arg1)][u].field_512
            mem[_51 + 96] = stor10[address(arg1)][u].field_768
            mem[t] = _51
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor10[address(arg1)][idx].field_1:
            if 31 >= stor10[address(arg1)][idx].field_1:
                mem[_62 + 32] = 256 * stor10[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                mem[_62 + 32] = stor10[address(arg1)][idx].field_0
                t = _62 + 32
                u = sha3(mem[0])
                while _62 + stor10[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_51] = _62
        mem[_51 + 32] = stor10[address(arg1)][idx].field_256
        mem[_51 + 64] = stor10[address(arg1)][idx].field_512
        mem[_51 + 96] = stor10[address(arg1)][idx].field_768
        mem[s] = _51
        s = s + 32
        idx = idx + 1
        continue 
    _48 = mem[96]
    _49 = mem[64]
    mem[64] = mem[64] + 128
    mem[_49] = 96
    mem[_49 + 32] = 0
    mem[_49 + 64] = 0
    mem[_49 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _54 = mem[mem[128]]
    _55 = mem[64]
    mem[64] = mem[64] + 64
    mem[_55] = 1
    mem[_55 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _54
    t = _49
    while idx < _48:
        if idx >= mem[96]:
            revert with 0, 50
        _95 = mem[(32 * idx) + 128]
        _96 = mem[mem[(32 * idx) + 128]]
        _97 = mem[64]
        _98 = mem[s]
        t = 0
        while t < _98:
            mem[t + _97 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_98) <= _98:
            _126 = mem[_55]
            s = 0
            while s < _126:
                mem[s + _97 + _98 + 32] = mem[s + _55 + 32]
                s = s + 32
                continue 
            if ceil32(_126) <= _126:
                _150 = mem[_96]
                s = 0
                while s < _150:
                    mem[s + _97 + _98 + _126 + 32] = mem[s + _96 + 32]
                    s = s + 32
                    continue 
                if ceil32(_150) <= _150:
                    _170 = mem[64]
                    mem[mem[64]] = _150 + _97 + _98 + _126 - mem[64]
                    mem[64] = _150 + _97 + _98 + _126 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _170
                    t = _95
                    continue 
                mem[_97 + _98 + _126 + _150 + 32] = 0
                _174 = mem[64]
                mem[mem[64]] = _150 + _97 + _98 + _126 - mem[64]
                mem[64] = _150 + _97 + _98 + _126 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _174
                t = _95
                continue 
            mem[_97 + _98 + _126 + 32] = 0
            _152 = mem[_96]
            s = 0
            while s < _152:
                mem[s + _97 + _98 + _126 + 32] = mem[s + _96 + 32]
                s = s + 32
                continue 
            if ceil32(_152) <= _152:
                _171 = mem[64]
                mem[mem[64]] = _152 + _97 + _98 + _126 - mem[64]
                mem[64] = _152 + _97 + _98 + _126 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _171
                t = _95
                continue 
            mem[_97 + _98 + _126 + _152 + 32] = 0
            _175 = mem[64]
            mem[mem[64]] = _152 + _97 + _98 + _126 - mem[64]
            mem[64] = _152 + _97 + _98 + _126 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _175
            t = _95
            continue 
        mem[_97 + _98 + 32] = 0
        _127 = mem[_55]
        s = 0
        while s < _127:
            mem[s + _97 + _98 + 32] = mem[s + _55 + 32]
            s = s + 32
            continue 
        if ceil32(_127) <= _127:
            _151 = mem[_96]
            s = 0
            while s < _151:
                mem[s + _97 + _98 + _127 + 32] = mem[s + _96 + 32]
                s = s + 32
                continue 
            if ceil32(_151) <= _151:
                _172 = mem[64]
                mem[mem[64]] = _151 + _97 + _98 + _127 - mem[64]
                mem[64] = _151 + _97 + _98 + _127 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _172
                t = _95
                continue 
            mem[_97 + _98 + _127 + _151 + 32] = 0
            _176 = mem[64]
            mem[mem[64]] = _151 + _97 + _98 + _127 - mem[64]
            mem[64] = _151 + _97 + _98 + _127 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _176
            t = _95
            continue 
        mem[_97 + _98 + _127 + 32] = 0
        _153 = mem[_96]
        s = 0
        while s < _153:
            mem[s + _97 + _98 + _127 + 32] = mem[s + _96 + 32]
            s = s + 32
            continue 
        if ceil32(_153) <= _153:
            _173 = mem[64]
            mem[mem[64]] = _153 + _97 + _98 + _127 - mem[64]
            mem[64] = _153 + _97 + _98 + _127 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _173
            t = _95
            continue 
        mem[_97 + _98 + _127 + _153 + 32] = 0
        _177 = mem[64]
        mem[mem[64]] = _153 + _97 + _98 + _127 - mem[64]
        mem[64] = _153 + _97 + _98 + _127 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _177
        t = _95
        continue 
    mem[mem[64]] = 32
    _99 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_99)] = mem[s + 32 len ceil32(_99)]
    if ceil32(_99) > _99:
        mem[mem[64] + _99 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_99) + 32]
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    mem[64] = (32 * stor10[address(arg1)].field_0) + 128
    mem[96] = stor10[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor10[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 10)
        _53 = mem[64]
        mem[64] = mem[64] + 128
        if stor10[address(arg1)][idx].field_0:
            if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor10[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_58] = uint255(stor10[address(arg1)][idx].field_0) * 0.5
            if stor10[address(arg1)][idx].field_0:
                if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor10[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                        mem[_58 + 32] = 256 * stor10[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                        mem[_58 + 32] = stor10[address(arg1)][idx].field_0
                        t = _58 + 32
                        u = sha3(mem[0])
                        while _58 + (uint255(stor10[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_53] = _58
                mem[_53 + 32] = stor10[address(arg1)][idx].field_256
                mem[_53 + 64] = stor10[address(arg1)][idx].field_512
                mem[_53 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor10[address(arg1)][idx].field_1:
                mem[_53] = _58
                mem[_53 + 32] = stor10[address(arg1)][idx].field_256
                mem[_53 + 64] = stor10[address(arg1)][idx].field_512
                mem[_53 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor10[address(arg1)][idx].field_1:
                mem[_58 + 32] = 256 * stor10[address(arg1)][idx].field_8
                mem[_53] = _58
                mem[_53 + 32] = stor10[address(arg1)][idx].field_256
                mem[_53 + 64] = stor10[address(arg1)][idx].field_512
                mem[_53 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
            mem[_58 + 32] = stor10[address(arg1)][idx].field_0
            t = _58 + 32
            u = sha3(mem[0])
            while _58 + stor10[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _58
            mem[_53 + 32] = stor10[address(arg1)][u].field_256
            mem[_53 + 64] = stor10[address(arg1)][u].field_512
            mem[_53 + 96] = stor10[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(stor10[address(arg1)][idx].field_1) + 32
        mem[_60] = stor10[address(arg1)][idx].field_1
        if stor10[address(arg1)][idx].field_0:
            if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10[address(arg1)][idx].field_0):
                mem[_53] = _60
                mem[_53 + 32] = stor10[address(arg1)][idx].field_256
                mem[_53 + 64] = stor10[address(arg1)][idx].field_512
                mem[_53 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                mem[_60 + 32] = 256 * stor10[address(arg1)][idx].field_8
                mem[_53] = _60
                mem[_53 + 32] = stor10[address(arg1)][idx].field_256
                mem[_53 + 64] = stor10[address(arg1)][idx].field_512
                mem[_53 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
            mem[_60 + 32] = stor10[address(arg1)][idx].field_0
            t = _60 + 32
            u = sha3(mem[0])
            while _60 + (uint255(stor10[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _60
            mem[_53 + 32] = stor10[address(arg1)][u].field_256
            mem[_53 + 64] = stor10[address(arg1)][u].field_512
            mem[_53 + 96] = stor10[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor10[address(arg1)][idx].field_1:
            if 31 >= stor10[address(arg1)][idx].field_1:
                mem[_60 + 32] = 256 * stor10[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                mem[_60 + 32] = stor10[address(arg1)][idx].field_0
                t = _60 + 32
                u = sha3(mem[0])
                while _60 + stor10[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_53] = _60
        mem[_53 + 32] = stor10[address(arg1)][idx].field_256
        mem[_53 + 64] = stor10[address(arg1)][idx].field_512
        mem[_53 + 96] = stor10[address(arg1)][idx].field_768
        mem[s] = _53
        s = s + 32
        idx = idx + 1
        continue 
    _50 = mem[96]
    _51 = mem[64]
    mem[64] = mem[64] + 128
    mem[_51] = 96
    mem[_51 + 32] = 0
    mem[_51 + 64] = 0
    mem[_51 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _56 = mem[mem[128] + 32]
    if not mem[mem[128] + 32]:
        _57 = mem[64]
        mem[64] = mem[64] + 64
        mem[_57] = 1
        mem[_57 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _59 = mem[64]
        mem[64] = mem[64] + 64
        mem[_59] = 1
        mem[_59 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _57
        t = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _100 = mem[(32 * idx) + 128]
            _101 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_103] = 1
                mem[_103 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _104 = mem[64]
                _106 = mem[s]
                t = 0
                while t < _106:
                    mem[t + _104 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_106) <= _106:
                    _203 = mem[_59]
                    s = 0
                    while s < _203:
                        mem[s + _104 + _106 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_203) <= _203:
                        _353 = mem[_103]
                        s = 0
                        while s < _353:
                            mem[s + _104 + _106 + _203 + 32] = mem[s + _103 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_353) <= _353:
                            _489 = mem[64]
                            mem[mem[64]] = _353 + _104 + _106 + _203 - mem[64]
                            mem[64] = _353 + _104 + _106 + _203 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _489
                            t = _100
                            continue 
                        mem[_104 + _106 + _203 + _353 + 32] = 0
                        _495 = mem[64]
                        mem[mem[64]] = _353 + _104 + _106 + _203 - mem[64]
                        mem[64] = _353 + _104 + _106 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _495
                        t = _100
                        continue 
                    mem[_104 + _106 + _203 + 32] = 0
                    _359 = mem[_103]
                    s = 0
                    while s < _359:
                        mem[s + _104 + _106 + _203 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_359) <= _359:
                        _490 = mem[64]
                        mem[mem[64]] = _359 + _104 + _106 + _203 - mem[64]
                        mem[64] = _359 + _104 + _106 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _490
                        t = _100
                        continue 
                    mem[_104 + _106 + _203 + _359 + 32] = 0
                    _496 = mem[64]
                    mem[mem[64]] = _359 + _104 + _106 + _203 - mem[64]
                    mem[64] = _359 + _104 + _106 + _203 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _496
                    t = _100
                    continue 
                mem[_104 + _106 + 32] = 0
                _206 = mem[_59]
                s = 0
                while s < _206:
                    mem[s + _104 + _106 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_206) <= _206:
                    _354 = mem[_103]
                    s = 0
                    while s < _354:
                        mem[s + _104 + _106 + _206 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_354) <= _354:
                        _491 = mem[64]
                        mem[mem[64]] = _354 + _104 + _106 + _206 - mem[64]
                        mem[64] = _354 + _104 + _106 + _206 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _491
                        t = _100
                        continue 
                    mem[_104 + _106 + _206 + _354 + 32] = 0
                    _497 = mem[64]
                    mem[mem[64]] = _354 + _104 + _106 + _206 - mem[64]
                    mem[64] = _354 + _104 + _106 + _206 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _497
                    t = _100
                    continue 
                mem[_104 + _106 + _206 + 32] = 0
                _360 = mem[_103]
                s = 0
                while s < _360:
                    mem[s + _104 + _106 + _206 + 32] = mem[s + _103 + 32]
                    s = s + 32
                    continue 
                if ceil32(_360) <= _360:
                    _492 = mem[64]
                    mem[mem[64]] = _360 + _104 + _106 + _206 - mem[64]
                    mem[64] = _360 + _104 + _106 + _206 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _492
                    t = _100
                    continue 
                mem[_104 + _106 + _206 + _360 + 32] = 0
                _498 = mem[64]
                mem[mem[64]] = _360 + _104 + _106 + _206 - mem[64]
                mem[64] = _360 + _104 + _106 + _206 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _498
                t = _100
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 32]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _202 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _101
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_202]:
                        revert with 0, 50
                    mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _351 = mem[s]
                t = 0
                while t < _351:
                    mem[t + _349 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_351) <= _351:
                    _483 = mem[_59]
                    s = 0
                    while s < _483:
                        mem[s + _349 + _351 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_483) <= _483:
                        _689 = mem[_202]
                        s = 0
                        while s < _689:
                            mem[s + _349 + _351 + _483 + 32] = mem[s + _202 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _873 = mem[64]
                            mem[mem[64]] = _689 + _349 + _351 + _483 - mem[64]
                            mem[64] = _689 + _349 + _351 + _483 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _873
                            t = _100
                            continue 
                        mem[_349 + _351 + _483 + _689 + 32] = 0
                        _889 = mem[64]
                        mem[mem[64]] = _689 + _349 + _351 + _483 - mem[64]
                        mem[64] = _689 + _349 + _351 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _889
                        t = _100
                        continue 
                    mem[_349 + _351 + _483 + 32] = 0
                    _697 = mem[_202]
                    s = 0
                    while s < _697:
                        mem[s + _349 + _351 + _483 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _874 = mem[64]
                        mem[mem[64]] = _697 + _349 + _351 + _483 - mem[64]
                        mem[64] = _697 + _349 + _351 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _874
                        t = _100
                        continue 
                    mem[_349 + _351 + _483 + _697 + 32] = 0
                    _890 = mem[64]
                    mem[mem[64]] = _697 + _349 + _351 + _483 - mem[64]
                    mem[64] = _697 + _349 + _351 + _483 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _890
                    t = _100
                    continue 
                mem[_349 + _351 + 32] = 0
                _487 = mem[_59]
                s = 0
                while s < _487:
                    mem[s + _349 + _351 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_487) <= _487:
                    _690 = mem[_202]
                    s = 0
                    while s < _690:
                        mem[s + _349 + _351 + _487 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _875 = mem[64]
                        mem[mem[64]] = _690 + _349 + _351 + _487 - mem[64]
                        mem[64] = _690 + _349 + _351 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _875
                        t = _100
                        continue 
                    mem[_349 + _351 + _487 + _690 + 32] = 0
                    _891 = mem[64]
                    mem[mem[64]] = _690 + _349 + _351 + _487 - mem[64]
                    mem[64] = _690 + _349 + _351 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _891
                    t = _100
                    continue 
                mem[_349 + _351 + _487 + 32] = 0
                _698 = mem[_202]
                s = 0
                while s < _698:
                    mem[s + _349 + _351 + _487 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _876 = mem[64]
                    mem[mem[64]] = _698 + _349 + _351 + _487 - mem[64]
                    mem[64] = _698 + _349 + _351 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _876
                    t = _100
                    continue 
                mem[_349 + _351 + _487 + _698 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _698 + _349 + _351 + _487 - mem[64]
                mem[64] = _698 + _349 + _351 + _487 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _892
                t = _100
                continue 
            mem[_202 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _101
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_202]:
                    revert with 0, 50
                mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _352 = mem[s]
            t = 0
            while t < _352:
                mem[t + _350 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_352) <= _352:
                _484 = mem[_59]
                s = 0
                while s < _484:
                    mem[s + _350 + _352 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_484) <= _484:
                    _691 = mem[_202]
                    s = 0
                    while s < _691:
                        mem[s + _350 + _352 + _484 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_691) <= _691:
                        _877 = mem[64]
                        mem[mem[64]] = _691 + _350 + _352 + _484 - mem[64]
                        mem[64] = _691 + _350 + _352 + _484 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _877
                        t = _100
                        continue 
                    mem[_350 + _352 + _484 + _691 + 32] = 0
                    _893 = mem[64]
                    mem[mem[64]] = _691 + _350 + _352 + _484 - mem[64]
                    mem[64] = _691 + _350 + _352 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _893
                    t = _100
                    continue 
                mem[_350 + _352 + _484 + 32] = 0
                _699 = mem[_202]
                s = 0
                while s < _699:
                    mem[s + _350 + _352 + _484 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_699) <= _699:
                    _878 = mem[64]
                    mem[mem[64]] = _699 + _350 + _352 + _484 - mem[64]
                    mem[64] = _699 + _350 + _352 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _878
                    t = _100
                    continue 
                mem[_350 + _352 + _484 + _699 + 32] = 0
                _894 = mem[64]
                mem[mem[64]] = _699 + _350 + _352 + _484 - mem[64]
                mem[64] = _699 + _350 + _352 + _484 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _894
                t = _100
                continue 
            mem[_350 + _352 + 32] = 0
            _488 = mem[_59]
            s = 0
            while s < _488:
                mem[s + _350 + _352 + 32] = mem[s + _59 + 32]
                s = s + 32
                continue 
            if ceil32(_488) <= _488:
                _692 = mem[_202]
                s = 0
                while s < _692:
                    mem[s + _350 + _352 + _488 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_692) <= _692:
                    _879 = mem[64]
                    mem[mem[64]] = _692 + _350 + _352 + _488 - mem[64]
                    mem[64] = _692 + _350 + _352 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _879
                    t = _100
                    continue 
                mem[_350 + _352 + _488 + _692 + 32] = 0
                _895 = mem[64]
                mem[mem[64]] = _692 + _350 + _352 + _488 - mem[64]
                mem[64] = _692 + _350 + _352 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _895
                t = _100
                continue 
            mem[_350 + _352 + _488 + 32] = 0
            _700 = mem[_202]
            s = 0
            while s < _700:
                mem[s + _350 + _352 + _488 + 32] = mem[s + _202 + 32]
                s = s + 32
                continue 
            if ceil32(_700) <= _700:
                _880 = mem[64]
                mem[mem[64]] = _700 + _350 + _352 + _488 - mem[64]
                mem[64] = _700 + _350 + _352 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _880
                t = _100
                continue 
            mem[_350 + _352 + _488 + _700 + 32] = 0
            _896 = mem[64]
            mem[mem[64]] = _700 + _350 + _352 + _488 - mem[64]
            mem[64] = _700 + _350 + _352 + _488 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _896
            t = _100
            continue 
        mem[mem[64]] = 32
        _102 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_102)] = mem[s + 32 len ceil32(_102)]
        if ceil32(_102) > _102:
            mem[mem[64] + _102 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_102) + 32]
    u = 0
    t = mem[mem[128] + 32]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _98 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _56
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_98]:
                revert with 0, 50
            mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 1
        mem[_200 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _98
        u = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _344 = mem[(32 * idx) + 128]
            _345 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_356] = 1
                mem[_356 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _361 = mem[64]
                _363 = mem[t]
                u = 0
                while u < _363:
                    mem[u + _361 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_363) <= _363:
                    _481 = mem[_200]
                    t = 0
                    while t < _481:
                        mem[t + _361 + _363 + 32] = mem[t + _200 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_481) <= _481:
                        _683 = mem[_356]
                        s = 0
                        while s < _683:
                            mem[s + _361 + _363 + _481 + 32] = mem[s + _356 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_683) <= _683:
                            _863 = mem[64]
                            mem[mem[64]] = _683 + _361 + _363 + _481 - mem[64]
                            mem[64] = _683 + _361 + _363 + _481 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _863
                            u = _344
                            continue 
                        mem[_361 + _363 + _481 + _683 + 32] = 0
                        _881 = mem[64]
                        mem[mem[64]] = _683 + _361 + _363 + _481 - mem[64]
                        mem[64] = _683 + _361 + _363 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _881
                        u = _344
                        continue 
                    mem[_361 + _363 + _481 + 32] = 0
                    _693 = mem[_356]
                    s = 0
                    while s < _693:
                        mem[s + _361 + _363 + _481 + 32] = mem[s + _356 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _864 = mem[64]
                        mem[mem[64]] = _693 + _361 + _363 + _481 - mem[64]
                        mem[64] = _693 + _361 + _363 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _864
                        u = _344
                        continue 
                    mem[_361 + _363 + _481 + _693 + 32] = 0
                    _882 = mem[64]
                    mem[mem[64]] = _693 + _361 + _363 + _481 - mem[64]
                    mem[64] = _693 + _361 + _363 + _481 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _882
                    u = _344
                    continue 
                mem[_361 + _363 + 32] = 0
                _485 = mem[_200]
                s = 0
                while s < _485:
                    mem[s + _361 + _363 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_485) <= _485:
                    _684 = mem[_356]
                    s = 0
                    while s < _684:
                        mem[s + _361 + _363 + _485 + 32] = mem[s + _356 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_684) <= _684:
                        _865 = mem[64]
                        mem[mem[64]] = _684 + _361 + _363 + _485 - mem[64]
                        mem[64] = _684 + _361 + _363 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _865
                        u = _344
                        continue 
                    mem[_361 + _363 + _485 + _684 + 32] = 0
                    _883 = mem[64]
                    mem[mem[64]] = _684 + _361 + _363 + _485 - mem[64]
                    mem[64] = _684 + _361 + _363 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _883
                    u = _344
                    continue 
                mem[_361 + _363 + _485 + 32] = 0
                _694 = mem[_356]
                s = 0
                while s < _694:
                    mem[s + _361 + _363 + _485 + 32] = mem[s + _356 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _866 = mem[64]
                    mem[mem[64]] = _694 + _361 + _363 + _485 - mem[64]
                    mem[64] = _694 + _361 + _363 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _866
                    u = _344
                    continue 
                mem[_361 + _363 + _485 + _694 + 32] = 0
                _884 = mem[64]
                mem[mem[64]] = _694 + _361 + _363 + _485 - mem[64]
                mem[64] = _694 + _361 + _363 + _485 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _884
                u = _344
                continue 
            u = 0
            s = mem[mem[(32 * idx) + 128] + 32]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _479 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _345
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_479]:
                        revert with 0, 50
                    mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _677 = mem[64]
                _681 = mem[t]
                s = 0
                while s < _681:
                    mem[s + _677 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_681) <= _681:
                    _857 = mem[_200]
                    s = 0
                    while s < _857:
                        mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_857) <= _857:
                        _977 = mem[_479]
                        s = 0
                        while s < _977:
                            mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_977) <= _977:
                            _1057 = mem[64]
                            mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                            mem[64] = _977 + _677 + _681 + _857 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1057
                            u = _344
                            continue 
                        mem[_677 + _681 + _857 + _977 + 32] = 0
                        _1073 = mem[64]
                        mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                        mem[64] = _977 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1073
                        u = _344
                        continue 
                    mem[_677 + _681 + _857 + 32] = 0
                    _985 = mem[_479]
                    s = 0
                    while s < _985:
                        mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1058 = mem[64]
                        mem[mem[64]] = _985 + _677 + _681 + _857 - mem[64]
                        mem[64] = _985 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1058
                        u = _344
                        continue 
                    mem[_677 + _681 + _857 + _985 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _985 + _677 + _681 + _857 - mem[64]
                    mem[64] = _985 + _677 + _681 + _857 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1074
                    u = _344
                    continue 
                mem[_677 + _681 + 32] = 0
                _861 = mem[_200]
                s = 0
                while s < _861:
                    mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_861) <= _861:
                    _978 = mem[_479]
                    s = 0
                    while s < _978:
                        mem[s + _677 + _681 + _861 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_978) <= _978:
                        _1059 = mem[64]
                        mem[mem[64]] = _978 + _677 + _681 + _861 - mem[64]
                        mem[64] = _978 + _677 + _681 + _861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1059
                        u = _344
                        continue 
                    mem[_677 + _681 + _861 + _978 + 32] = 0
                    _1075 = mem[64]
                    mem[mem[64]] = _978 + _677 + _681 + _861 - mem[64]
                    mem[64] = _978 + _677 + _681 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1075
                    u = _344
                    continue 
                mem[_677 + _681 + _861 + 32] = 0
                _986 = mem[_479]
                s = 0
                while s < _986:
                    mem[s + _677 + _681 + _861 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1060 = mem[64]
                    mem[mem[64]] = _986 + _677 + _681 + _861 - mem[64]
                    mem[64] = _986 + _677 + _681 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1060
                    u = _344
                    continue 
                mem[_677 + _681 + _861 + _986 + 32] = 0
                _1076 = mem[64]
                mem[mem[64]] = _986 + _677 + _681 + _861 - mem[64]
                mem[64] = _986 + _677 + _681 + _861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1076
                u = _344
                continue 
            mem[_479 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _345
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_479]:
                    revert with 0, 50
                mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _678 = mem[64]
            _682 = mem[t]
            s = 0
            while s < _682:
                mem[s + _678 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_682) <= _682:
                _858 = mem[_200]
                s = 0
                while s < _858:
                    mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_858) <= _858:
                    _979 = mem[_479]
                    s = 0
                    while s < _979:
                        mem[s + _678 + _682 + _858 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_979) <= _979:
                        _1061 = mem[64]
                        mem[mem[64]] = _979 + _678 + _682 + _858 - mem[64]
                        mem[64] = _979 + _678 + _682 + _858 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1061
                        u = _344
                        continue 
                    mem[_678 + _682 + _858 + _979 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _979 + _678 + _682 + _858 - mem[64]
                    mem[64] = _979 + _678 + _682 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1077
                    u = _344
                    continue 
                mem[_678 + _682 + _858 + 32] = 0
                _987 = mem[_479]
                s = 0
                while s < _987:
                    mem[s + _678 + _682 + _858 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_987) <= _987:
                    _1062 = mem[64]
                    mem[mem[64]] = _987 + _678 + _682 + _858 - mem[64]
                    mem[64] = _987 + _678 + _682 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1062
                    u = _344
                    continue 
                mem[_678 + _682 + _858 + _987 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _987 + _678 + _682 + _858 - mem[64]
                mem[64] = _987 + _678 + _682 + _858 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1078
                u = _344
                continue 
            mem[_678 + _682 + 32] = 0
            _862 = mem[_200]
            s = 0
            while s < _862:
                mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                s = s + 32
                continue 
            if ceil32(_862) <= _862:
                _980 = mem[_479]
                s = 0
                while s < _980:
                    mem[s + _678 + _682 + _862 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_980) <= _980:
                    _1063 = mem[64]
                    mem[mem[64]] = _980 + _678 + _682 + _862 - mem[64]
                    mem[64] = _980 + _678 + _682 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1063
                    u = _344
                    continue 
                mem[_678 + _682 + _862 + _980 + 32] = 0
                _1079 = mem[64]
                mem[mem[64]] = _980 + _678 + _682 + _862 - mem[64]
                mem[64] = _980 + _678 + _682 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1079
                u = _344
                continue 
            mem[_678 + _682 + _862 + 32] = 0
            _988 = mem[_479]
            s = 0
            while s < _988:
                mem[s + _678 + _682 + _862 + 32] = mem[s + _479 + 32]
                s = s + 32
                continue 
            if ceil32(_988) <= _988:
                _1064 = mem[64]
                mem[mem[64]] = _988 + _678 + _682 + _862 - mem[64]
                mem[64] = _988 + _678 + _682 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1064
                u = _344
                continue 
            mem[_678 + _682 + _862 + _988 + 32] = 0
            _1080 = mem[64]
            mem[mem[64]] = _988 + _678 + _682 + _862 - mem[64]
            mem[64] = _988 + _678 + _682 + _862 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1080
            u = _344
            continue 
        mem[mem[64]] = 32
        _355 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_355)] = mem[t + 32 len ceil32(_355)]
        if ceil32(_355) > _355:
            mem[mem[64] + _355 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_355) + 32]
    mem[_98 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _56
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_98]:
            revert with 0, 50
        mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _201 = mem[64]
    mem[64] = mem[64] + 64
    mem[_201] = 1
    mem[_201 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _98
    u = _51
    while idx < _50:
        if idx >= mem[96]:
            revert with 0, 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 32]
        if not mem[mem[(32 * idx) + 128] + 32]:
            _358 = mem[64]
            mem[64] = mem[64] + 64
            mem[_358] = 1
            mem[_358 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _362 = mem[64]
            _364 = mem[t]
            u = 0
            while u < _364:
                mem[u + _362 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_364) <= _364:
                _482 = mem[_201]
                t = 0
                while t < _482:
                    mem[t + _362 + _364 + 32] = mem[t + _201 + 32]
                    t = t + 32
                    continue 
                if ceil32(_482) <= _482:
                    _687 = mem[_358]
                    s = 0
                    while s < _687:
                        mem[s + _362 + _364 + _482 + 32] = mem[s + _358 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_687) <= _687:
                        _869 = mem[64]
                        mem[mem[64]] = _687 + _362 + _364 + _482 - mem[64]
                        mem[64] = _687 + _362 + _364 + _482 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _869
                        u = _347
                        continue 
                    mem[_362 + _364 + _482 + _687 + 32] = 0
                    _885 = mem[64]
                    mem[mem[64]] = _687 + _362 + _364 + _482 - mem[64]
                    mem[64] = _687 + _362 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _885
                    u = _347
                    continue 
                mem[_362 + _364 + _482 + 32] = 0
                _695 = mem[_358]
                s = 0
                while s < _695:
                    mem[s + _362 + _364 + _482 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_695) <= _695:
                    _870 = mem[64]
                    mem[mem[64]] = _695 + _362 + _364 + _482 - mem[64]
                    mem[64] = _695 + _362 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _870
                    u = _347
                    continue 
                mem[_362 + _364 + _482 + _695 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _695 + _362 + _364 + _482 - mem[64]
                mem[64] = _695 + _362 + _364 + _482 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _886
                u = _347
                continue 
            mem[_362 + _364 + 32] = 0
            _486 = mem[_201]
            s = 0
            while s < _486:
                mem[s + _362 + _364 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_486) <= _486:
                _688 = mem[_358]
                s = 0
                while s < _688:
                    mem[s + _362 + _364 + _486 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_688) <= _688:
                    _871 = mem[64]
                    mem[mem[64]] = _688 + _362 + _364 + _486 - mem[64]
                    mem[64] = _688 + _362 + _364 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _871
                    u = _347
                    continue 
                mem[_362 + _364 + _486 + _688 + 32] = 0
                _887 = mem[64]
                mem[mem[64]] = _688 + _362 + _364 + _486 - mem[64]
                mem[64] = _688 + _362 + _364 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _887
                u = _347
                continue 
            mem[_362 + _364 + _486 + 32] = 0
            _696 = mem[_358]
            s = 0
            while s < _696:
                mem[s + _362 + _364 + _486 + 32] = mem[s + _358 + 32]
                s = s + 32
                continue 
            if ceil32(_696) <= _696:
                _872 = mem[64]
                mem[mem[64]] = _696 + _362 + _364 + _486 - mem[64]
                mem[64] = _696 + _362 + _364 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _872
                u = _347
                continue 
            mem[_362 + _364 + _486 + _696 + 32] = 0
            _888 = mem[64]
            mem[mem[64]] = _696 + _362 + _364 + _486 - mem[64]
            mem[64] = _696 + _362 + _364 + _486 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _888
            u = _347
            continue 
        u = 0
        s = mem[mem[(32 * idx) + 128] + 32]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _480 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _348
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_480]:
                    revert with 0, 50
                mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _679 = mem[64]
            _685 = mem[t]
            s = 0
            while s < _685:
                mem[s + _679 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_685) <= _685:
                _859 = mem[_201]
                s = 0
                while s < _859:
                    mem[s + _679 + _685 + 32] = mem[s + _201 + 32]
                    s = s + 32
                    continue 
                if ceil32(_859) <= _859:
                    _981 = mem[_480]
                    s = 0
                    while s < _981:
                        mem[s + _679 + _685 + _859 + 32] = mem[s + _480 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1065 = mem[64]
                        mem[mem[64]] = _981 + _679 + _685 + _859 - mem[64]
                        mem[64] = _981 + _679 + _685 + _859 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1065
                        u = _347
                        continue 
                    mem[_679 + _685 + _859 + _981 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _981 + _679 + _685 + _859 - mem[64]
                    mem[64] = _981 + _679 + _685 + _859 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1081
                    u = _347
                    continue 
                mem[_679 + _685 + _859 + 32] = 0
                _989 = mem[_480]
                s = 0
                while s < _989:
                    mem[s + _679 + _685 + _859 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1066 = mem[64]
                    mem[mem[64]] = _989 + _679 + _685 + _859 - mem[64]
                    mem[64] = _989 + _679 + _685 + _859 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1066
                    u = _347
                    continue 
                mem[_679 + _685 + _859 + _989 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _989 + _679 + _685 + _859 - mem[64]
                mem[64] = _989 + _679 + _685 + _859 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1082
                u = _347
                continue 
            mem[_679 + _685 + 32] = 0
            _867 = mem[_201]
            s = 0
            while s < _867:
                mem[s + _679 + _685 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_867) <= _867:
                _982 = mem[_480]
                s = 0
                while s < _982:
                    mem[s + _679 + _685 + _867 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1067 = mem[64]
                    mem[mem[64]] = _982 + _679 + _685 + _867 - mem[64]
                    mem[64] = _982 + _679 + _685 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1067
                    u = _347
                    continue 
                mem[_679 + _685 + _867 + _982 + 32] = 0
                _1083 = mem[64]
                mem[mem[64]] = _982 + _679 + _685 + _867 - mem[64]
                mem[64] = _982 + _679 + _685 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1083
                u = _347
                continue 
            mem[_679 + _685 + _867 + 32] = 0
            _990 = mem[_480]
            s = 0
            while s < _990:
                mem[s + _679 + _685 + _867 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1068 = mem[64]
                mem[mem[64]] = _990 + _679 + _685 + _867 - mem[64]
                mem[64] = _990 + _679 + _685 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1068
                u = _347
                continue 
            mem[_679 + _685 + _867 + _990 + 32] = 0
            _1084 = mem[64]
            mem[mem[64]] = _990 + _679 + _685 + _867 - mem[64]
            mem[64] = _990 + _679 + _685 + _867 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1084
            u = _347
            continue 
        mem[_480 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _348
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_480]:
                revert with 0, 50
            mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _680 = mem[64]
        _686 = mem[t]
        s = 0
        while s < _686:
            mem[s + _680 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_686) <= _686:
            _860 = mem[_201]
            s = 0
            while s < _860:
                mem[s + _680 + _686 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_860) <= _860:
                _983 = mem[_480]
                s = 0
                while s < _983:
                    mem[s + _680 + _686 + _860 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_983) <= _983:
                    _1069 = mem[64]
                    mem[mem[64]] = _983 + _680 + _686 + _860 - mem[64]
                    mem[64] = _983 + _680 + _686 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _347
                    continue 
                mem[_680 + _686 + _860 + _983 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _983 + _680 + _686 + _860 - mem[64]
                mem[64] = _983 + _680 + _686 + _860 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _347
                continue 
            mem[_680 + _686 + _860 + 32] = 0
            _991 = mem[_480]
            s = 0
            while s < _991:
                mem[s + _680 + _686 + _860 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_991) <= _991:
                _1070 = mem[64]
                mem[mem[64]] = _991 + _680 + _686 + _860 - mem[64]
                mem[64] = _991 + _680 + _686 + _860 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1070
                u = _347
                continue 
            mem[_680 + _686 + _860 + _991 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _991 + _680 + _686 + _860 - mem[64]
            mem[64] = _991 + _680 + _686 + _860 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1086
            u = _347
            continue 
        mem[_680 + _686 + 32] = 0
        _868 = mem[_201]
        s = 0
        while s < _868:
            mem[s + _680 + _686 + 32] = mem[s + _201 + 32]
            s = s + 32
            continue 
        if ceil32(_868) <= _868:
            _984 = mem[_480]
            s = 0
            while s < _984:
                mem[s + _680 + _686 + _868 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_984) <= _984:
                _1071 = mem[64]
                mem[mem[64]] = _984 + _680 + _686 + _868 - mem[64]
                mem[64] = _984 + _680 + _686 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1071
                u = _347
                continue 
            mem[_680 + _686 + _868 + _984 + 32] = 0
            _1087 = mem[64]
            mem[mem[64]] = _984 + _680 + _686 + _868 - mem[64]
            mem[64] = _984 + _680 + _686 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1087
            u = _347
            continue 
        mem[_680 + _686 + _868 + 32] = 0
        _992 = mem[_480]
        s = 0
        while s < _992:
            mem[s + _680 + _686 + _868 + 32] = mem[s + _480 + 32]
            s = s + 32
            continue 
        if ceil32(_992) <= _992:
            _1072 = mem[64]
            mem[mem[64]] = _992 + _680 + _686 + _868 - mem[64]
            mem[64] = _992 + _680 + _686 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1072
            u = _347
            continue 
        mem[_680 + _686 + _868 + _992 + 32] = 0
        _1088 = mem[64]
        mem[mem[64]] = _992 + _680 + _686 + _868 - mem[64]
        mem[64] = _992 + _680 + _686 + _868 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1088
        u = _347
        continue 
    _346 = mem[64]
    mem[mem[64]] = 32
    _357 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_357)] = mem[t + 32 len ceil32(_357)]
    if ceil32(_357) <= _357:
        return 32, mem[mem[64] + 32 len ceil32(_357) + 32]
    mem[mem[64] + _357 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_357) + _346 + -mem[64] + 64
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    mem[64] = (32 * stor10[address(arg1)].field_0) + 128
    mem[96] = stor10[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor10[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 10)
        _53 = mem[64]
        mem[64] = mem[64] + 128
        if stor10[address(arg1)][idx].field_0:
            if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor10[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_58] = uint255(stor10[address(arg1)][idx].field_0) * 0.5
            if stor10[address(arg1)][idx].field_0:
                if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor10[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                        mem[_58 + 32] = 256 * stor10[address(arg1)][idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                        mem[_58 + 32] = stor10[address(arg1)][idx].field_0
                        t = _58 + 32
                        u = sha3(mem[0])
                        while _58 + (uint255(stor10[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_53] = _58
                mem[_53 + 32] = stor10[address(arg1)][idx].field_256
                mem[_53 + 64] = stor10[address(arg1)][idx].field_512
                mem[_53 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor10[address(arg1)][idx].field_1:
                mem[_53] = _58
                mem[_53 + 32] = stor10[address(arg1)][idx].field_256
                mem[_53 + 64] = stor10[address(arg1)][idx].field_512
                mem[_53 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor10[address(arg1)][idx].field_1:
                mem[_58 + 32] = 256 * stor10[address(arg1)][idx].field_8
                mem[_53] = _58
                mem[_53 + 32] = stor10[address(arg1)][idx].field_256
                mem[_53 + 64] = stor10[address(arg1)][idx].field_512
                mem[_53 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
            mem[_58 + 32] = stor10[address(arg1)][idx].field_0
            t = _58 + 32
            u = sha3(mem[0])
            while _58 + stor10[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _58
            mem[_53 + 32] = stor10[address(arg1)][u].field_256
            mem[_53 + 64] = stor10[address(arg1)][u].field_512
            mem[_53 + 96] = stor10[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(stor10[address(arg1)][idx].field_1) + 32
        mem[_60] = stor10[address(arg1)][idx].field_1
        if stor10[address(arg1)][idx].field_0:
            if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10[address(arg1)][idx].field_0):
                mem[_53] = _60
                mem[_53 + 32] = stor10[address(arg1)][idx].field_256
                mem[_53 + 64] = stor10[address(arg1)][idx].field_512
                mem[_53 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                mem[_60 + 32] = 256 * stor10[address(arg1)][idx].field_8
                mem[_53] = _60
                mem[_53 + 32] = stor10[address(arg1)][idx].field_256
                mem[_53 + 64] = stor10[address(arg1)][idx].field_512
                mem[_53 + 96] = stor10[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
            mem[_60 + 32] = stor10[address(arg1)][idx].field_0
            t = _60 + 32
            u = sha3(mem[0])
            while _60 + (uint255(stor10[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _60
            mem[_53 + 32] = stor10[address(arg1)][u].field_256
            mem[_53 + 64] = stor10[address(arg1)][u].field_512
            mem[_53 + 96] = stor10[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor10[address(arg1)][idx].field_1:
            if 31 >= stor10[address(arg1)][idx].field_1:
                mem[_60 + 32] = 256 * stor10[address(arg1)][idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                mem[_60 + 32] = stor10[address(arg1)][idx].field_0
                t = _60 + 32
                u = sha3(mem[0])
                while _60 + stor10[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_53] = _60
        mem[_53 + 32] = stor10[address(arg1)][idx].field_256
        mem[_53 + 64] = stor10[address(arg1)][idx].field_512
        mem[_53 + 96] = stor10[address(arg1)][idx].field_768
        mem[s] = _53
        s = s + 32
        idx = idx + 1
        continue 
    _50 = mem[96]
    _51 = mem[64]
    mem[64] = mem[64] + 128
    mem[_51] = 96
    mem[_51 + 32] = 0
    mem[_51 + 64] = 0
    mem[_51 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _56 = mem[mem[128] + 64]
    if not mem[mem[128] + 64]:
        _57 = mem[64]
        mem[64] = mem[64] + 64
        mem[_57] = 1
        mem[_57 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _59 = mem[64]
        mem[64] = mem[64] + 64
        mem[_59] = 1
        mem[_59 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _57
        t = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _100 = mem[(32 * idx) + 128]
            _101 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_103] = 1
                mem[_103 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _104 = mem[64]
                _106 = mem[s]
                t = 0
                while t < _106:
                    mem[t + _104 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_106) <= _106:
                    _203 = mem[_59]
                    s = 0
                    while s < _203:
                        mem[s + _104 + _106 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_203) <= _203:
                        _353 = mem[_103]
                        s = 0
                        while s < _353:
                            mem[s + _104 + _106 + _203 + 32] = mem[s + _103 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_353) <= _353:
                            _489 = mem[64]
                            mem[mem[64]] = _353 + _104 + _106 + _203 - mem[64]
                            mem[64] = _353 + _104 + _106 + _203 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _489
                            t = _100
                            continue 
                        mem[_104 + _106 + _203 + _353 + 32] = 0
                        _495 = mem[64]
                        mem[mem[64]] = _353 + _104 + _106 + _203 - mem[64]
                        mem[64] = _353 + _104 + _106 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _495
                        t = _100
                        continue 
                    mem[_104 + _106 + _203 + 32] = 0
                    _359 = mem[_103]
                    s = 0
                    while s < _359:
                        mem[s + _104 + _106 + _203 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_359) <= _359:
                        _490 = mem[64]
                        mem[mem[64]] = _359 + _104 + _106 + _203 - mem[64]
                        mem[64] = _359 + _104 + _106 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _490
                        t = _100
                        continue 
                    mem[_104 + _106 + _203 + _359 + 32] = 0
                    _496 = mem[64]
                    mem[mem[64]] = _359 + _104 + _106 + _203 - mem[64]
                    mem[64] = _359 + _104 + _106 + _203 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _496
                    t = _100
                    continue 
                mem[_104 + _106 + 32] = 0
                _206 = mem[_59]
                s = 0
                while s < _206:
                    mem[s + _104 + _106 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_206) <= _206:
                    _354 = mem[_103]
                    s = 0
                    while s < _354:
                        mem[s + _104 + _106 + _206 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_354) <= _354:
                        _491 = mem[64]
                        mem[mem[64]] = _354 + _104 + _106 + _206 - mem[64]
                        mem[64] = _354 + _104 + _106 + _206 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _491
                        t = _100
                        continue 
                    mem[_104 + _106 + _206 + _354 + 32] = 0
                    _497 = mem[64]
                    mem[mem[64]] = _354 + _104 + _106 + _206 - mem[64]
                    mem[64] = _354 + _104 + _106 + _206 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _497
                    t = _100
                    continue 
                mem[_104 + _106 + _206 + 32] = 0
                _360 = mem[_103]
                s = 0
                while s < _360:
                    mem[s + _104 + _106 + _206 + 32] = mem[s + _103 + 32]
                    s = s + 32
                    continue 
                if ceil32(_360) <= _360:
                    _492 = mem[64]
                    mem[mem[64]] = _360 + _104 + _106 + _206 - mem[64]
                    mem[64] = _360 + _104 + _106 + _206 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _492
                    t = _100
                    continue 
                mem[_104 + _106 + _206 + _360 + 32] = 0
                _498 = mem[64]
                mem[mem[64]] = _360 + _104 + _106 + _206 - mem[64]
                mem[64] = _360 + _104 + _106 + _206 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _498
                t = _100
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 64]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _202 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _101
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_202]:
                        revert with 0, 50
                    mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _351 = mem[s]
                t = 0
                while t < _351:
                    mem[t + _349 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_351) <= _351:
                    _483 = mem[_59]
                    s = 0
                    while s < _483:
                        mem[s + _349 + _351 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_483) <= _483:
                        _689 = mem[_202]
                        s = 0
                        while s < _689:
                            mem[s + _349 + _351 + _483 + 32] = mem[s + _202 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _873 = mem[64]
                            mem[mem[64]] = _689 + _349 + _351 + _483 - mem[64]
                            mem[64] = _689 + _349 + _351 + _483 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _873
                            t = _100
                            continue 
                        mem[_349 + _351 + _483 + _689 + 32] = 0
                        _889 = mem[64]
                        mem[mem[64]] = _689 + _349 + _351 + _483 - mem[64]
                        mem[64] = _689 + _349 + _351 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _889
                        t = _100
                        continue 
                    mem[_349 + _351 + _483 + 32] = 0
                    _697 = mem[_202]
                    s = 0
                    while s < _697:
                        mem[s + _349 + _351 + _483 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _874 = mem[64]
                        mem[mem[64]] = _697 + _349 + _351 + _483 - mem[64]
                        mem[64] = _697 + _349 + _351 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _874
                        t = _100
                        continue 
                    mem[_349 + _351 + _483 + _697 + 32] = 0
                    _890 = mem[64]
                    mem[mem[64]] = _697 + _349 + _351 + _483 - mem[64]
                    mem[64] = _697 + _349 + _351 + _483 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _890
                    t = _100
                    continue 
                mem[_349 + _351 + 32] = 0
                _487 = mem[_59]
                s = 0
                while s < _487:
                    mem[s + _349 + _351 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_487) <= _487:
                    _690 = mem[_202]
                    s = 0
                    while s < _690:
                        mem[s + _349 + _351 + _487 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _875 = mem[64]
                        mem[mem[64]] = _690 + _349 + _351 + _487 - mem[64]
                        mem[64] = _690 + _349 + _351 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _875
                        t = _100
                        continue 
                    mem[_349 + _351 + _487 + _690 + 32] = 0
                    _891 = mem[64]
                    mem[mem[64]] = _690 + _349 + _351 + _487 - mem[64]
                    mem[64] = _690 + _349 + _351 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _891
                    t = _100
                    continue 
                mem[_349 + _351 + _487 + 32] = 0
                _698 = mem[_202]
                s = 0
                while s < _698:
                    mem[s + _349 + _351 + _487 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _876 = mem[64]
                    mem[mem[64]] = _698 + _349 + _351 + _487 - mem[64]
                    mem[64] = _698 + _349 + _351 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _876
                    t = _100
                    continue 
                mem[_349 + _351 + _487 + _698 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _698 + _349 + _351 + _487 - mem[64]
                mem[64] = _698 + _349 + _351 + _487 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _892
                t = _100
                continue 
            mem[_202 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _101
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_202]:
                    revert with 0, 50
                mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _352 = mem[s]
            t = 0
            while t < _352:
                mem[t + _350 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_352) <= _352:
                _484 = mem[_59]
                s = 0
                while s < _484:
                    mem[s + _350 + _352 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_484) <= _484:
                    _691 = mem[_202]
                    s = 0
                    while s < _691:
                        mem[s + _350 + _352 + _484 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_691) <= _691:
                        _877 = mem[64]
                        mem[mem[64]] = _691 + _350 + _352 + _484 - mem[64]
                        mem[64] = _691 + _350 + _352 + _484 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _877
                        t = _100
                        continue 
                    mem[_350 + _352 + _484 + _691 + 32] = 0
                    _893 = mem[64]
                    mem[mem[64]] = _691 + _350 + _352 + _484 - mem[64]
                    mem[64] = _691 + _350 + _352 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _893
                    t = _100
                    continue 
                mem[_350 + _352 + _484 + 32] = 0
                _699 = mem[_202]
                s = 0
                while s < _699:
                    mem[s + _350 + _352 + _484 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_699) <= _699:
                    _878 = mem[64]
                    mem[mem[64]] = _699 + _350 + _352 + _484 - mem[64]
                    mem[64] = _699 + _350 + _352 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _878
                    t = _100
                    continue 
                mem[_350 + _352 + _484 + _699 + 32] = 0
                _894 = mem[64]
                mem[mem[64]] = _699 + _350 + _352 + _484 - mem[64]
                mem[64] = _699 + _350 + _352 + _484 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _894
                t = _100
                continue 
            mem[_350 + _352 + 32] = 0
            _488 = mem[_59]
            s = 0
            while s < _488:
                mem[s + _350 + _352 + 32] = mem[s + _59 + 32]
                s = s + 32
                continue 
            if ceil32(_488) <= _488:
                _692 = mem[_202]
                s = 0
                while s < _692:
                    mem[s + _350 + _352 + _488 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_692) <= _692:
                    _879 = mem[64]
                    mem[mem[64]] = _692 + _350 + _352 + _488 - mem[64]
                    mem[64] = _692 + _350 + _352 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _879
                    t = _100
                    continue 
                mem[_350 + _352 + _488 + _692 + 32] = 0
                _895 = mem[64]
                mem[mem[64]] = _692 + _350 + _352 + _488 - mem[64]
                mem[64] = _692 + _350 + _352 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _895
                t = _100
                continue 
            mem[_350 + _352 + _488 + 32] = 0
            _700 = mem[_202]
            s = 0
            while s < _700:
                mem[s + _350 + _352 + _488 + 32] = mem[s + _202 + 32]
                s = s + 32
                continue 
            if ceil32(_700) <= _700:
                _880 = mem[64]
                mem[mem[64]] = _700 + _350 + _352 + _488 - mem[64]
                mem[64] = _700 + _350 + _352 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _880
                t = _100
                continue 
            mem[_350 + _352 + _488 + _700 + 32] = 0
            _896 = mem[64]
            mem[mem[64]] = _700 + _350 + _352 + _488 - mem[64]
            mem[64] = _700 + _350 + _352 + _488 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _896
            t = _100
            continue 
        mem[mem[64]] = 32
        _102 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_102)] = mem[s + 32 len ceil32(_102)]
        if ceil32(_102) > _102:
            mem[mem[64] + _102 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_102) + 32]
    u = 0
    t = mem[mem[128] + 64]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _98 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _56
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_98]:
                revert with 0, 50
            mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 1
        mem[_200 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _98
        u = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _344 = mem[(32 * idx) + 128]
            _345 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_356] = 1
                mem[_356 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _361 = mem[64]
                _363 = mem[t]
                u = 0
                while u < _363:
                    mem[u + _361 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_363) <= _363:
                    _481 = mem[_200]
                    t = 0
                    while t < _481:
                        mem[t + _361 + _363 + 32] = mem[t + _200 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_481) <= _481:
                        _683 = mem[_356]
                        s = 0
                        while s < _683:
                            mem[s + _361 + _363 + _481 + 32] = mem[s + _356 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_683) <= _683:
                            _863 = mem[64]
                            mem[mem[64]] = _683 + _361 + _363 + _481 - mem[64]
                            mem[64] = _683 + _361 + _363 + _481 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _863
                            u = _344
                            continue 
                        mem[_361 + _363 + _481 + _683 + 32] = 0
                        _881 = mem[64]
                        mem[mem[64]] = _683 + _361 + _363 + _481 - mem[64]
                        mem[64] = _683 + _361 + _363 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _881
                        u = _344
                        continue 
                    mem[_361 + _363 + _481 + 32] = 0
                    _693 = mem[_356]
                    s = 0
                    while s < _693:
                        mem[s + _361 + _363 + _481 + 32] = mem[s + _356 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _864 = mem[64]
                        mem[mem[64]] = _693 + _361 + _363 + _481 - mem[64]
                        mem[64] = _693 + _361 + _363 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _864
                        u = _344
                        continue 
                    mem[_361 + _363 + _481 + _693 + 32] = 0
                    _882 = mem[64]
                    mem[mem[64]] = _693 + _361 + _363 + _481 - mem[64]
                    mem[64] = _693 + _361 + _363 + _481 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _882
                    u = _344
                    continue 
                mem[_361 + _363 + 32] = 0
                _485 = mem[_200]
                s = 0
                while s < _485:
                    mem[s + _361 + _363 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_485) <= _485:
                    _684 = mem[_356]
                    s = 0
                    while s < _684:
                        mem[s + _361 + _363 + _485 + 32] = mem[s + _356 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_684) <= _684:
                        _865 = mem[64]
                        mem[mem[64]] = _684 + _361 + _363 + _485 - mem[64]
                        mem[64] = _684 + _361 + _363 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _865
                        u = _344
                        continue 
                    mem[_361 + _363 + _485 + _684 + 32] = 0
                    _883 = mem[64]
                    mem[mem[64]] = _684 + _361 + _363 + _485 - mem[64]
                    mem[64] = _684 + _361 + _363 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _883
                    u = _344
                    continue 
                mem[_361 + _363 + _485 + 32] = 0
                _694 = mem[_356]
                s = 0
                while s < _694:
                    mem[s + _361 + _363 + _485 + 32] = mem[s + _356 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _866 = mem[64]
                    mem[mem[64]] = _694 + _361 + _363 + _485 - mem[64]
                    mem[64] = _694 + _361 + _363 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _866
                    u = _344
                    continue 
                mem[_361 + _363 + _485 + _694 + 32] = 0
                _884 = mem[64]
                mem[mem[64]] = _694 + _361 + _363 + _485 - mem[64]
                mem[64] = _694 + _361 + _363 + _485 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _884
                u = _344
                continue 
            u = 0
            s = mem[mem[(32 * idx) + 128] + 64]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _479 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _345
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_479]:
                        revert with 0, 50
                    mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _677 = mem[64]
                _681 = mem[t]
                s = 0
                while s < _681:
                    mem[s + _677 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_681) <= _681:
                    _857 = mem[_200]
                    s = 0
                    while s < _857:
                        mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_857) <= _857:
                        _977 = mem[_479]
                        s = 0
                        while s < _977:
                            mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_977) <= _977:
                            _1057 = mem[64]
                            mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                            mem[64] = _977 + _677 + _681 + _857 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1057
                            u = _344
                            continue 
                        mem[_677 + _681 + _857 + _977 + 32] = 0
                        _1073 = mem[64]
                        mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                        mem[64] = _977 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1073
                        u = _344
                        continue 
                    mem[_677 + _681 + _857 + 32] = 0
                    _985 = mem[_479]
                    s = 0
                    while s < _985:
                        mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1058 = mem[64]
                        mem[mem[64]] = _985 + _677 + _681 + _857 - mem[64]
                        mem[64] = _985 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1058
                        u = _344
                        continue 
                    mem[_677 + _681 + _857 + _985 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _985 + _677 + _681 + _857 - mem[64]
                    mem[64] = _985 + _677 + _681 + _857 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1074
                    u = _344
                    continue 
                mem[_677 + _681 + 32] = 0
                _861 = mem[_200]
                s = 0
                while s < _861:
                    mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_861) <= _861:
                    _978 = mem[_479]
                    s = 0
                    while s < _978:
                        mem[s + _677 + _681 + _861 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_978) <= _978:
                        _1059 = mem[64]
                        mem[mem[64]] = _978 + _677 + _681 + _861 - mem[64]
                        mem[64] = _978 + _677 + _681 + _861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1059
                        u = _344
                        continue 
                    mem[_677 + _681 + _861 + _978 + 32] = 0
                    _1075 = mem[64]
                    mem[mem[64]] = _978 + _677 + _681 + _861 - mem[64]
                    mem[64] = _978 + _677 + _681 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1075
                    u = _344
                    continue 
                mem[_677 + _681 + _861 + 32] = 0
                _986 = mem[_479]
                s = 0
                while s < _986:
                    mem[s + _677 + _681 + _861 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1060 = mem[64]
                    mem[mem[64]] = _986 + _677 + _681 + _861 - mem[64]
                    mem[64] = _986 + _677 + _681 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1060
                    u = _344
                    continue 
                mem[_677 + _681 + _861 + _986 + 32] = 0
                _1076 = mem[64]
                mem[mem[64]] = _986 + _677 + _681 + _861 - mem[64]
                mem[64] = _986 + _677 + _681 + _861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1076
                u = _344
                continue 
            mem[_479 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _345
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_479]:
                    revert with 0, 50
                mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _678 = mem[64]
            _682 = mem[t]
            s = 0
            while s < _682:
                mem[s + _678 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_682) <= _682:
                _858 = mem[_200]
                s = 0
                while s < _858:
                    mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_858) <= _858:
                    _979 = mem[_479]
                    s = 0
                    while s < _979:
                        mem[s + _678 + _682 + _858 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_979) <= _979:
                        _1061 = mem[64]
                        mem[mem[64]] = _979 + _678 + _682 + _858 - mem[64]
                        mem[64] = _979 + _678 + _682 + _858 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1061
                        u = _344
                        continue 
                    mem[_678 + _682 + _858 + _979 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _979 + _678 + _682 + _858 - mem[64]
                    mem[64] = _979 + _678 + _682 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1077
                    u = _344
                    continue 
                mem[_678 + _682 + _858 + 32] = 0
                _987 = mem[_479]
                s = 0
                while s < _987:
                    mem[s + _678 + _682 + _858 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_987) <= _987:
                    _1062 = mem[64]
                    mem[mem[64]] = _987 + _678 + _682 + _858 - mem[64]
                    mem[64] = _987 + _678 + _682 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1062
                    u = _344
                    continue 
                mem[_678 + _682 + _858 + _987 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _987 + _678 + _682 + _858 - mem[64]
                mem[64] = _987 + _678 + _682 + _858 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1078
                u = _344
                continue 
            mem[_678 + _682 + 32] = 0
            _862 = mem[_200]
            s = 0
            while s < _862:
                mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                s = s + 32
                continue 
            if ceil32(_862) <= _862:
                _980 = mem[_479]
                s = 0
                while s < _980:
                    mem[s + _678 + _682 + _862 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_980) <= _980:
                    _1063 = mem[64]
                    mem[mem[64]] = _980 + _678 + _682 + _862 - mem[64]
                    mem[64] = _980 + _678 + _682 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1063
                    u = _344
                    continue 
                mem[_678 + _682 + _862 + _980 + 32] = 0
                _1079 = mem[64]
                mem[mem[64]] = _980 + _678 + _682 + _862 - mem[64]
                mem[64] = _980 + _678 + _682 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1079
                u = _344
                continue 
            mem[_678 + _682 + _862 + 32] = 0
            _988 = mem[_479]
            s = 0
            while s < _988:
                mem[s + _678 + _682 + _862 + 32] = mem[s + _479 + 32]
                s = s + 32
                continue 
            if ceil32(_988) <= _988:
                _1064 = mem[64]
                mem[mem[64]] = _988 + _678 + _682 + _862 - mem[64]
                mem[64] = _988 + _678 + _682 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1064
                u = _344
                continue 
            mem[_678 + _682 + _862 + _988 + 32] = 0
            _1080 = mem[64]
            mem[mem[64]] = _988 + _678 + _682 + _862 - mem[64]
            mem[64] = _988 + _678 + _682 + _862 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1080
            u = _344
            continue 
        mem[mem[64]] = 32
        _355 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_355)] = mem[t + 32 len ceil32(_355)]
        if ceil32(_355) > _355:
            mem[mem[64] + _355 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_355) + 32]
    mem[_98 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _56
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_98]:
            revert with 0, 50
        mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _201 = mem[64]
    mem[64] = mem[64] + 64
    mem[_201] = 1
    mem[_201 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _98
    u = _51
    while idx < _50:
        if idx >= mem[96]:
            revert with 0, 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 64]
        if not mem[mem[(32 * idx) + 128] + 64]:
            _358 = mem[64]
            mem[64] = mem[64] + 64
            mem[_358] = 1
            mem[_358 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _362 = mem[64]
            _364 = mem[t]
            u = 0
            while u < _364:
                mem[u + _362 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_364) <= _364:
                _482 = mem[_201]
                t = 0
                while t < _482:
                    mem[t + _362 + _364 + 32] = mem[t + _201 + 32]
                    t = t + 32
                    continue 
                if ceil32(_482) <= _482:
                    _687 = mem[_358]
                    s = 0
                    while s < _687:
                        mem[s + _362 + _364 + _482 + 32] = mem[s + _358 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_687) <= _687:
                        _869 = mem[64]
                        mem[mem[64]] = _687 + _362 + _364 + _482 - mem[64]
                        mem[64] = _687 + _362 + _364 + _482 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _869
                        u = _347
                        continue 
                    mem[_362 + _364 + _482 + _687 + 32] = 0
                    _885 = mem[64]
                    mem[mem[64]] = _687 + _362 + _364 + _482 - mem[64]
                    mem[64] = _687 + _362 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _885
                    u = _347
                    continue 
                mem[_362 + _364 + _482 + 32] = 0
                _695 = mem[_358]
                s = 0
                while s < _695:
                    mem[s + _362 + _364 + _482 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_695) <= _695:
                    _870 = mem[64]
                    mem[mem[64]] = _695 + _362 + _364 + _482 - mem[64]
                    mem[64] = _695 + _362 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _870
                    u = _347
                    continue 
                mem[_362 + _364 + _482 + _695 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _695 + _362 + _364 + _482 - mem[64]
                mem[64] = _695 + _362 + _364 + _482 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _886
                u = _347
                continue 
            mem[_362 + _364 + 32] = 0
            _486 = mem[_201]
            s = 0
            while s < _486:
                mem[s + _362 + _364 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_486) <= _486:
                _688 = mem[_358]
                s = 0
                while s < _688:
                    mem[s + _362 + _364 + _486 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_688) <= _688:
                    _871 = mem[64]
                    mem[mem[64]] = _688 + _362 + _364 + _486 - mem[64]
                    mem[64] = _688 + _362 + _364 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _871
                    u = _347
                    continue 
                mem[_362 + _364 + _486 + _688 + 32] = 0
                _887 = mem[64]
                mem[mem[64]] = _688 + _362 + _364 + _486 - mem[64]
                mem[64] = _688 + _362 + _364 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _887
                u = _347
                continue 
            mem[_362 + _364 + _486 + 32] = 0
            _696 = mem[_358]
            s = 0
            while s < _696:
                mem[s + _362 + _364 + _486 + 32] = mem[s + _358 + 32]
                s = s + 32
                continue 
            if ceil32(_696) <= _696:
                _872 = mem[64]
                mem[mem[64]] = _696 + _362 + _364 + _486 - mem[64]
                mem[64] = _696 + _362 + _364 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _872
                u = _347
                continue 
            mem[_362 + _364 + _486 + _696 + 32] = 0
            _888 = mem[64]
            mem[mem[64]] = _696 + _362 + _364 + _486 - mem[64]
            mem[64] = _696 + _362 + _364 + _486 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _888
            u = _347
            continue 
        u = 0
        s = mem[mem[(32 * idx) + 128] + 64]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _480 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _348
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_480]:
                    revert with 0, 50
                mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _679 = mem[64]
            _685 = mem[t]
            s = 0
            while s < _685:
                mem[s + _679 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_685) <= _685:
                _859 = mem[_201]
                s = 0
                while s < _859:
                    mem[s + _679 + _685 + 32] = mem[s + _201 + 32]
                    s = s + 32
                    continue 
                if ceil32(_859) <= _859:
                    _981 = mem[_480]
                    s = 0
                    while s < _981:
                        mem[s + _679 + _685 + _859 + 32] = mem[s + _480 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1065 = mem[64]
                        mem[mem[64]] = _981 + _679 + _685 + _859 - mem[64]
                        mem[64] = _981 + _679 + _685 + _859 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1065
                        u = _347
                        continue 
                    mem[_679 + _685 + _859 + _981 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _981 + _679 + _685 + _859 - mem[64]
                    mem[64] = _981 + _679 + _685 + _859 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1081
                    u = _347
                    continue 
                mem[_679 + _685 + _859 + 32] = 0
                _989 = mem[_480]
                s = 0
                while s < _989:
                    mem[s + _679 + _685 + _859 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1066 = mem[64]
                    mem[mem[64]] = _989 + _679 + _685 + _859 - mem[64]
                    mem[64] = _989 + _679 + _685 + _859 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1066
                    u = _347
                    continue 
                mem[_679 + _685 + _859 + _989 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _989 + _679 + _685 + _859 - mem[64]
                mem[64] = _989 + _679 + _685 + _859 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1082
                u = _347
                continue 
            mem[_679 + _685 + 32] = 0
            _867 = mem[_201]
            s = 0
            while s < _867:
                mem[s + _679 + _685 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_867) <= _867:
                _982 = mem[_480]
                s = 0
                while s < _982:
                    mem[s + _679 + _685 + _867 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1067 = mem[64]
                    mem[mem[64]] = _982 + _679 + _685 + _867 - mem[64]
                    mem[64] = _982 + _679 + _685 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1067
                    u = _347
                    continue 
                mem[_679 + _685 + _867 + _982 + 32] = 0
                _1083 = mem[64]
                mem[mem[64]] = _982 + _679 + _685 + _867 - mem[64]
                mem[64] = _982 + _679 + _685 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1083
                u = _347
                continue 
            mem[_679 + _685 + _867 + 32] = 0
            _990 = mem[_480]
            s = 0
            while s < _990:
                mem[s + _679 + _685 + _867 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1068 = mem[64]
                mem[mem[64]] = _990 + _679 + _685 + _867 - mem[64]
                mem[64] = _990 + _679 + _685 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1068
                u = _347
                continue 
            mem[_679 + _685 + _867 + _990 + 32] = 0
            _1084 = mem[64]
            mem[mem[64]] = _990 + _679 + _685 + _867 - mem[64]
            mem[64] = _990 + _679 + _685 + _867 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1084
            u = _347
            continue 
        mem[_480 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _348
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_480]:
                revert with 0, 50
            mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _680 = mem[64]
        _686 = mem[t]
        s = 0
        while s < _686:
            mem[s + _680 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_686) <= _686:
            _860 = mem[_201]
            s = 0
            while s < _860:
                mem[s + _680 + _686 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_860) <= _860:
                _983 = mem[_480]
                s = 0
                while s < _983:
                    mem[s + _680 + _686 + _860 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_983) <= _983:
                    _1069 = mem[64]
                    mem[mem[64]] = _983 + _680 + _686 + _860 - mem[64]
                    mem[64] = _983 + _680 + _686 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _347
                    continue 
                mem[_680 + _686 + _860 + _983 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _983 + _680 + _686 + _860 - mem[64]
                mem[64] = _983 + _680 + _686 + _860 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _347
                continue 
            mem[_680 + _686 + _860 + 32] = 0
            _991 = mem[_480]
            s = 0
            while s < _991:
                mem[s + _680 + _686 + _860 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_991) <= _991:
                _1070 = mem[64]
                mem[mem[64]] = _991 + _680 + _686 + _860 - mem[64]
                mem[64] = _991 + _680 + _686 + _860 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1070
                u = _347
                continue 
            mem[_680 + _686 + _860 + _991 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _991 + _680 + _686 + _860 - mem[64]
            mem[64] = _991 + _680 + _686 + _860 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1086
            u = _347
            continue 
        mem[_680 + _686 + 32] = 0
        _868 = mem[_201]
        s = 0
        while s < _868:
            mem[s + _680 + _686 + 32] = mem[s + _201 + 32]
            s = s + 32
            continue 
        if ceil32(_868) <= _868:
            _984 = mem[_480]
            s = 0
            while s < _984:
                mem[s + _680 + _686 + _868 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_984) <= _984:
                _1071 = mem[64]
                mem[mem[64]] = _984 + _680 + _686 + _868 - mem[64]
                mem[64] = _984 + _680 + _686 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1071
                u = _347
                continue 
            mem[_680 + _686 + _868 + _984 + 32] = 0
            _1087 = mem[64]
            mem[mem[64]] = _984 + _680 + _686 + _868 - mem[64]
            mem[64] = _984 + _680 + _686 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1087
            u = _347
            continue 
        mem[_680 + _686 + _868 + 32] = 0
        _992 = mem[_480]
        s = 0
        while s < _992:
            mem[s + _680 + _686 + _868 + 32] = mem[s + _480 + 32]
            s = s + 32
            continue 
        if ceil32(_992) <= _992:
            _1072 = mem[64]
            mem[mem[64]] = _992 + _680 + _686 + _868 - mem[64]
            mem[64] = _992 + _680 + _686 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1072
            u = _347
            continue 
        mem[_680 + _686 + _868 + _992 + 32] = 0
        _1088 = mem[64]
        mem[mem[64]] = _992 + _680 + _686 + _868 - mem[64]
        mem[64] = _992 + _680 + _686 + _868 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1088
        u = _347
        continue 
    _346 = mem[64]
    mem[mem[64]] = 32
    _357 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_357)] = mem[t + 32 len ceil32(_357)]
    if ceil32(_357) <= _357:
        return 32, mem[mem[64] + 32 len ceil32(_357) + 32]
    mem[mem[64] + _357 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_357) + _346 + -mem[64] + 64
}

function _getRewardAmountOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    idx = 0
    s = 0
    while idx < stor10[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 10)
        _521 = mem[64]
        mem[64] = mem[64] + 128
        if stor10[address(arg1)][idx].field_0:
            if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _522 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor10[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_522] = uint255(stor10[address(arg1)][idx].field_0) * 0.5
            if stor10[address(arg1)][idx].field_0:
                if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor10[address(arg1)][idx].field_0):
                    mem[_521] = _522
                    mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                    mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                    mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                    if stor10[address(arg1)][idx].field_512:
                        _530 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_530] = 30
                        mem[_530 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_512 > block.timestamp:
                            _538 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _538 + 68] = mem[idx + _530 + 32]
                                idx = idx + 32
                                continue 
                            mem[_538 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _538 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _577 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_577] = 26
                        mem[_577 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _598 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _598 + 68] = mem[idx + _577 + 32]
                                idx = idx + 32
                                continue 
                            mem[_598 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _598 + -mem[64] + 100
                        if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if stor10[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + stor10[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                        continue 
                    _570 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_570] = 30
                    mem[_570 + 32] = 'SafeMath: subtraction overflow'
                    if stor10[address(arg1)][idx].field_256 > block.timestamp:
                        _587 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _587 + 68] = mem[idx + _570 + 32]
                            idx = idx + 32
                            continue 
                        mem[_587 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _587 + -mem[64] + 100
                    if block.timestamp < stor10[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _670 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_670] = 26
                    mem[_670 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _699 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _699 + 68] = mem[idx + _670 + 32]
                            idx = idx + 32
                            continue 
                        mem[_699 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _699 + -mem[64] + 100
                else:
                    if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                        mem[_522 + 32] = 256 * stor10[address(arg1)][idx].field_8
                        mem[_521] = _522
                        mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _540 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_540] = 30
                            mem[_540 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _551 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _551 + 68] = mem[idx + _540 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_551 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _551 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _599 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_599] = 26
                            mem[_599 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _626 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _626 + 68] = mem[idx + _599 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_626 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _626 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _590 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_590] = 30
                        mem[_590 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _614 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _614 + 68] = mem[idx + _590 + 32]
                                idx = idx + 32
                                continue 
                            mem[_614 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _614 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _701 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_701] = 26
                        mem[_701 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _728 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _728 + 68] = mem[idx + _701 + 32]
                                idx = idx + 32
                                continue 
                            mem[_728 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _728 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                        mem[_522 + 32] = stor10[address(arg1)][idx].field_0
                        t = _522 + 32
                        u = sha3(mem[0])
                        while _522 + (uint255(stor10[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _522
                        mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _1072 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1072] = 30
                            mem[_1072 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _1136 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1136 + 68] = mem[idx + _1072 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1136 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1136 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1156 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1156] = 26
                            mem[_1156 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1164 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1164 + 68] = mem[idx + _1156 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1164 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1164 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _1149 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1149] = 30
                        mem[_1149 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _1160 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1160 + 68] = mem[idx + _1149 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1160 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1160 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1189 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1189] = 26
                        mem[_1189 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1196 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1196 + 68] = mem[idx + _1189 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1196 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1196 + -mem[64] + 100
            else:
                if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                if not stor10[address(arg1)][idx].field_1:
                    mem[_521] = _522
                    mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                    mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                    mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                    if stor10[address(arg1)][idx].field_512:
                        _534 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_534] = 30
                        mem[_534 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_512 > block.timestamp:
                            _543 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _543 + 68] = mem[idx + _534 + 32]
                                idx = idx + 32
                                continue 
                            mem[_543 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _543 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _591 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_591] = 26
                        mem[_591 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _615 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _615 + 68] = mem[idx + _591 + 32]
                                idx = idx + 32
                                continue 
                            mem[_615 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _615 + -mem[64] + 100
                        if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if stor10[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + stor10[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                        continue 
                    _580 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_580] = 30
                    mem[_580 + 32] = 'SafeMath: subtraction overflow'
                    if stor10[address(arg1)][idx].field_256 > block.timestamp:
                        _600 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _600 + 68] = mem[idx + _580 + 32]
                            idx = idx + 32
                            continue 
                        mem[_600 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _600 + -mem[64] + 100
                    if block.timestamp < stor10[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _688 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_688] = 26
                    mem[_688 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _714 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _714 + 68] = mem[idx + _688 + 32]
                            idx = idx + 32
                            continue 
                        mem[_714 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _714 + -mem[64] + 100
                else:
                    if 31 >= stor10[address(arg1)][idx].field_1:
                        mem[_522 + 32] = 256 * stor10[address(arg1)][idx].field_8
                        mem[_521] = _522
                        mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _545 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_545] = 30
                            mem[_545 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _558 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _558 + 68] = mem[idx + _545 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_558 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _558 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _616 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_616] = 26
                            mem[_616 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _645 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _645 + 68] = mem[idx + _616 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_645 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _645 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _603 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_603] = 30
                        mem[_603 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _631 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _631 + 68] = mem[idx + _603 + 32]
                                idx = idx + 32
                                continue 
                            mem[_631 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _631 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_716] = 26
                        mem[_716 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _744 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _744 + 68] = mem[idx + _716 + 32]
                                idx = idx + 32
                                continue 
                            mem[_744 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _744 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                        mem[_522 + 32] = stor10[address(arg1)][idx].field_0
                        t = _522 + 32
                        u = sha3(mem[0])
                        while _522 + stor10[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _522
                        mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _1081 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1081] = 30
                            mem[_1081 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _1137 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1137 + 68] = mem[idx + _1081 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1137 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1137 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1157 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1157] = 26
                            mem[_1157 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1165 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1165 + 68] = mem[idx + _1157 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1165 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1165 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _1151 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1151] = 30
                        mem[_1151 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _1161 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1161 + 68] = mem[idx + _1151 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1161 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1161 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1191 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1191] = 26
                        mem[_1191 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1197 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1197 + 68] = mem[idx + _1191 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1197 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1197 + -mem[64] + 100
        else:
            if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            _523 = mem[64]
            mem[64] = mem[64] + ceil32(stor10[address(arg1)][idx].field_1) + 32
            mem[_523] = stor10[address(arg1)][idx].field_1
            if stor10[address(arg1)][idx].field_0:
                if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor10[address(arg1)][idx].field_0):
                    mem[_521] = _523
                    mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                    mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                    mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                    if stor10[address(arg1)][idx].field_512:
                        _536 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_536] = 30
                        mem[_536 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_512 > block.timestamp:
                            _546 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _546 + 68] = mem[idx + _536 + 32]
                                idx = idx + 32
                                continue 
                            mem[_546 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _546 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _593 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_593] = 26
                        mem[_593 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _617 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _617 + 68] = mem[idx + _593 + 32]
                                idx = idx + 32
                                continue 
                            mem[_617 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _617 + -mem[64] + 100
                        if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if stor10[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + stor10[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                        continue 
                    _583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_583] = 30
                    mem[_583 + 32] = 'SafeMath: subtraction overflow'
                    if stor10[address(arg1)][idx].field_256 > block.timestamp:
                        _604 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _604 + 68] = mem[idx + _583 + 32]
                            idx = idx + 32
                            continue 
                        mem[_604 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _604 + -mem[64] + 100
                    if block.timestamp < stor10[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_692] = 26
                    mem[_692 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _717 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _717 + 68] = mem[idx + _692 + 32]
                            idx = idx + 32
                            continue 
                        mem[_717 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _717 + -mem[64] + 100
                else:
                    if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                        mem[_523 + 32] = 256 * stor10[address(arg1)][idx].field_8
                        mem[_521] = _523
                        mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _548 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_548] = 30
                            mem[_548 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _561 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _561 + 68] = mem[idx + _548 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_561 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _561 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _618 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_618] = 26
                            mem[_618 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _649 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _649 + 68] = mem[idx + _618 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_649 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _649 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _607 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_607] = 30
                        mem[_607 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _636 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _636 + 68] = mem[idx + _607 + 32]
                                idx = idx + 32
                                continue 
                            mem[_636 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _636 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _719 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_719] = 26
                        mem[_719 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _750 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _750 + 68] = mem[idx + _719 + 32]
                                idx = idx + 32
                                continue 
                            mem[_750 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _750 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                        mem[_523 + 32] = stor10[address(arg1)][idx].field_0
                        t = _523 + 32
                        u = sha3(mem[0])
                        while _523 + (uint255(stor10[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _523
                        mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _1090 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1090] = 30
                            mem[_1090 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _1138 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1138 + 68] = mem[idx + _1090 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1138 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1138 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1158 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1158] = 26
                            mem[_1158 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1166 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1166 + 68] = mem[idx + _1158 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1166 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1166 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _1153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1153] = 30
                        mem[_1153 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _1162 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1162 + 68] = mem[idx + _1153 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1162 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1162 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1193 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1193] = 26
                        mem[_1193 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1198 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1198 + 68] = mem[idx + _1193 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1198 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1198 + -mem[64] + 100
            else:
                if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                if not stor10[address(arg1)][idx].field_1:
                    mem[_521] = _523
                    mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                    mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                    mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                    if stor10[address(arg1)][idx].field_512:
                        _541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_541] = 30
                        mem[_541 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_512 > block.timestamp:
                            _552 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _552 + 68] = mem[idx + _541 + 32]
                                idx = idx + 32
                                continue 
                            mem[_552 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _552 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_512:
                            revert with 0, 17
                        _608 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_608] = 26
                        mem[_608 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _637 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _637 + 68] = mem[idx + _608 + 32]
                                idx = idx + 32
                                continue 
                            mem[_637 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _637 + -mem[64] + 100
                        if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                            revert with 0, 17
                        if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewardPerNode:
                            if 0 > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if stor10[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + stor10[address(arg1)][idx].field_768
                            continue 
                        if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                            revert with 0, 17
                        if not rewardPerNode:
                            revert with 0, 18
                        if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                            revert with 0, 17
                        if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                        continue 
                    _596 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_596] = 30
                    mem[_596 + 32] = 'SafeMath: subtraction overflow'
                    if stor10[address(arg1)][idx].field_256 > block.timestamp:
                        _619 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _619 + 68] = mem[idx + _596 + 32]
                            idx = idx + 32
                            continue 
                        mem[_619 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _619 + -mem[64] + 100
                    if block.timestamp < stor10[address(arg1)][idx].field_256:
                        revert with 0, 17
                    _709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_709] = 26
                    mem[_709 + 32] = 'SafeMath: division by zero'
                    if not claimTime:
                        _733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _733 + 68] = mem[idx + _709 + 32]
                            idx = idx + 32
                            continue 
                        mem[_733 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _733 + -mem[64] + 100
                else:
                    if 31 >= stor10[address(arg1)][idx].field_1:
                        mem[_523 + 32] = 256 * stor10[address(arg1)][idx].field_8
                        mem[_521] = _523
                        mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _554 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_554] = 30
                            mem[_554 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _568 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _568 + 68] = mem[idx + _554 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_568 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _568 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _638 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_638] = 26
                            mem[_638 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _668 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _668 + 68] = mem[idx + _638 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_668 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _668 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _622 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_622] = 30
                        mem[_622 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _654 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _654 + 68] = mem[idx + _622 + 32]
                                idx = idx + 32
                                continue 
                            mem[_654 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _654 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _735 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_735] = 26
                        mem[_735 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _769 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _769 + 68] = mem[idx + _735 + 32]
                                idx = idx + 32
                                continue 
                            mem[_769 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _769 + -mem[64] + 100
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                        mem[_523 + 32] = stor10[address(arg1)][idx].field_0
                        t = _523 + 32
                        u = sha3(mem[0])
                        while _523 + stor10[address(arg1)][idx].field_1 > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_521] = _523
                        mem[_521 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_521 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_521 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _1099 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1099] = 30
                            mem[_1099 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _1139 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1139 + 68] = mem[idx + _1099 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1139 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1139 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _1159 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1159] = 26
                            mem[_1159 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _1167 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1167 + 68] = mem[idx + _1159 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1167 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1167 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _1155 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1155] = 30
                        mem[_1155 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _1163 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1163 + 68] = mem[idx + _1155 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1163 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1163 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _1195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1195] = 26
                        mem[_1195 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _1199 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1199 + 68] = mem[idx + _1195 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1199 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1199 + -mem[64] + 100
        ('stor', ('name', 'claimTime', 13))
        if 1 > !(block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime):
            revert with 0, 17
        if (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1 < 1:
            revert with 0, 'SafeMath: addition overflow'
        if not rewardPerNode:
            if 0 > !stor10[address(arg1)][idx].field_768:
                revert with 0, 17
            if stor10[address(arg1)][idx].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > !stor10[address(arg1)][idx].field_768:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + stor10[address(arg1)][idx].field_768
            continue 
        if rewardPerNode and (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1 > -1 / rewardPerNode:
            revert with 0, 17
        if not rewardPerNode:
            revert with 0, 18
        if rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) > !stor10[address(arg1)][idx].field_768:
            revert with 0, 17
        if stor10[address(arg1)][idx].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if s > !(rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor10[address(arg1)][idx].field_768):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor10[address(arg1)][idx].field_768
        continue 
    return s
}

function _cashoutAllNodesReward(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == tokenAddress:
        mem[0] = arg1
        mem[32] = 10
        idx = 0
        s = 0
        while idx < stor10[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 10)
            _1847 = mem[64]
            mem[64] = mem[64] + 128
            if stor10[address(arg1)][idx].field_0:
                if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _1854 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor10[address(arg1)][idx].field_0) * 0.5) + 32
                mem[_1854] = uint255(stor10[address(arg1)][idx].field_0) * 0.5
                if stor10[address(arg1)][idx].field_0:
                    if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor10[address(arg1)][idx].field_0):
                        mem[_1847] = _1854
                        mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _1878 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1878] = 30
                            mem[_1878 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _1902 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1902 + 68] = mem[idx + _1878 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1902 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1902 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _2019 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2019] = 26
                            mem[_2019 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2082 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2082 + 68] = mem[idx + _2019 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2082 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2082 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor10[address(arg1)].field_0:
                                revert with 0, 50
                            stor10[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 10)
                            stor10[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _1996 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1996] = 30
                        mem[_1996 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _2049 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2049 + 68] = mem[idx + _1996 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2049 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2049 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _2296 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2296] = 26
                        mem[_2296 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _2385 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2385 + 68] = mem[idx + _2296 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2385 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2385 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                            mem[_1854 + 32] = 256 * stor10[address(arg1)][idx].field_8
                            mem[_1847] = _1854
                            mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1904 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1904] = 30
                                mem[_1904 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1937 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1937 + 68] = mem[idx + _1904 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1937 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1937 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2083 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2083] = 26
                                mem[_2083 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2160 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2160 + 68] = mem[idx + _2083 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2160 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2160 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2052 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2052] = 30
                            mem[_2052 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2122 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2122 + 68] = mem[idx + _2052 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2122 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2122 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2387 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2387] = 26
                            mem[_2387 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2462 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2462 + 68] = mem[idx + _2387 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2462 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2462 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                            mem[_1854 + 32] = stor10[address(arg1)][idx].field_0
                            t = _1854 + 32
                            u = sha3(mem[0])
                            while _1854 + (uint255(stor10[address(arg1)][idx].field_0) * 0.5) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1847] = _1854
                            mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _3784 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3784] = 30
                                mem[_3784 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _3984 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3984 + 68] = mem[idx + _3784 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3984 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3984 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _4044 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4044] = 26
                                mem[_4044 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4068 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4068 + 68] = mem[idx + _4044 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4068 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4068 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _4021 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4021] = 30
                            mem[_4021 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _4056 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4056 + 68] = mem[idx + _4021 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4056 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4056 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _4141 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4141] = 26
                            mem[_4141 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _4164 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4164 + 68] = mem[idx + _4141 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4164 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4164 + -mem[64] + 100
                else:
                    if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                        revert with 0, 34
                    if not stor10[address(arg1)][idx].field_1:
                        mem[_1847] = _1854
                        mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _1890 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1890] = 30
                            mem[_1890 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _1917 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1917 + 68] = mem[idx + _1890 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1917 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1917 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _2053 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2053] = 26
                            mem[_2053 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2123 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2123 + 68] = mem[idx + _2053 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2123 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2123 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor10[address(arg1)].field_0:
                                revert with 0, 50
                            stor10[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 10)
                            stor10[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _2022 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2022] = 30
                        mem[_2022 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _2084 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2084 + 68] = mem[idx + _2022 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2084 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2084 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _2344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2344] = 26
                        mem[_2344 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _2426 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2426 + 68] = mem[idx + _2344 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2426 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2426 + -mem[64] + 100
                    else:
                        if 31 >= stor10[address(arg1)][idx].field_1:
                            mem[_1854 + 32] = 256 * stor10[address(arg1)][idx].field_8
                            mem[_1847] = _1854
                            mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1919 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1919] = 30
                                mem[_1919 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1956 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1956 + 68] = mem[idx + _1919 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1956 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1956 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2124 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2124] = 26
                                mem[_2124 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2211 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2211 + 68] = mem[idx + _2124 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2211 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2211 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2087 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2087] = 30
                            mem[_2087 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2165 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2165 + 68] = mem[idx + _2087 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2165 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2165 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2428 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2428] = 26
                            mem[_2428 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2504 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2504 + 68] = mem[idx + _2428 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2504 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2504 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                            mem[_1854 + 32] = stor10[address(arg1)][idx].field_0
                            t = _1854 + 32
                            u = sha3(mem[0])
                            while _1854 + stor10[address(arg1)][idx].field_1 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1847] = _1854
                            mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _3793 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3793] = 30
                                mem[_3793 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _3985 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3985 + 68] = mem[idx + _3793 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3985 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3985 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _4045 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4045] = 26
                                mem[_4045 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4069 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4069 + 68] = mem[idx + _4045 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4069 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4069 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _4023 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4023] = 30
                            mem[_4023 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _4057 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4057 + 68] = mem[idx + _4023 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4057 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4057 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _4143 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4143] = 26
                            mem[_4143 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _4165 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4165 + 68] = mem[idx + _4143 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4165 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4165 + -mem[64] + 100
            else:
                if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                    revert with 0, 34
                _1857 = mem[64]
                mem[64] = mem[64] + ceil32(stor10[address(arg1)][idx].field_1) + 32
                mem[_1857] = stor10[address(arg1)][idx].field_1
                if stor10[address(arg1)][idx].field_0:
                    if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor10[address(arg1)][idx].field_0):
                        mem[_1847] = _1857
                        mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _1892 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1892] = 30
                            mem[_1892 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _1920 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1920 + 68] = mem[idx + _1892 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1920 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1920 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _2055 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2055] = 26
                            mem[_2055 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2125 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2125 + 68] = mem[idx + _2055 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2125 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2125 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor10[address(arg1)].field_0:
                                revert with 0, 50
                            stor10[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 10)
                            stor10[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _2025 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2025] = 30
                        mem[_2025 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _2088 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2088 + 68] = mem[idx + _2025 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2088 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2088 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _2348 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2348] = 26
                        mem[_2348 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _2429 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2429 + 68] = mem[idx + _2348 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2429 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2429 + -mem[64] + 100
                    else:
                        if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                            mem[_1857 + 32] = 256 * stor10[address(arg1)][idx].field_8
                            mem[_1847] = _1857
                            mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1922 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1922] = 30
                                mem[_1922 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1959 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1959 + 68] = mem[idx + _1922 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1959 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1959 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2126 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2126] = 26
                                mem[_2126 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2215 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2215 + 68] = mem[idx + _2126 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2215 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2215 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2091 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2091] = 30
                            mem[_2091 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2170 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2170 + 68] = mem[idx + _2091 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2170 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2170 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2431 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2431] = 26
                            mem[_2431 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2510 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2510 + 68] = mem[idx + _2431 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2510 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2510 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                            mem[_1857 + 32] = stor10[address(arg1)][idx].field_0
                            t = _1857 + 32
                            u = sha3(mem[0])
                            while _1857 + (uint255(stor10[address(arg1)][idx].field_0) * 0.5) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1847] = _1857
                            mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _3802 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3802] = 30
                                mem[_3802 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _3986 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3986 + 68] = mem[idx + _3802 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3986 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3986 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _4046 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4046] = 26
                                mem[_4046 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4070 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4070 + 68] = mem[idx + _4046 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4070 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4070 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _4025 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4025] = 30
                            mem[_4025 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _4058 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4058 + 68] = mem[idx + _4025 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4058 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4058 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _4145 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4145] = 26
                            mem[_4145 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _4166 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4166 + 68] = mem[idx + _4145 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4166 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4166 + -mem[64] + 100
                else:
                    if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                        revert with 0, 34
                    if not stor10[address(arg1)][idx].field_1:
                        mem[_1847] = _1857
                        mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                        mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                        mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                        if stor10[address(arg1)][idx].field_512:
                            _1905 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1905] = 30
                            mem[_1905 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                _1938 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1938 + 68] = mem[idx + _1905 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1938 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1938 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_512:
                                revert with 0, 17
                            _2092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2092] = 26
                            mem[_2092 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2171 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2171 + 68] = mem[idx + _2092 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2171 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2171 + -mem[64] + 100
                            if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                revert with 0, 17
                            if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewardPerNode:
                                if 0 > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if stor10[address(arg1)][idx].field_768 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + stor10[address(arg1)][idx].field_768
                                continue 
                            if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                revert with 0, 17
                            if not rewardPerNode:
                                revert with 0, 18
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                revert with 0, 17
                            if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                revert with 0, 'SafeMath: addition overflow'
                            if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                revert with 0, 17
                            if idx >= stor10[address(arg1)].field_0:
                                revert with 0, 50
                            stor10[address(arg1)][idx].field_512 = block.timestamp
                            mem[0] = sha3(address(arg1), 10)
                            stor10[address(arg1)][idx].field_768 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                            continue 
                        _2058 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2058] = 30
                        mem[_2058 + 32] = 'SafeMath: subtraction overflow'
                        if stor10[address(arg1)][idx].field_256 > block.timestamp:
                            _2127 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2127 + 68] = mem[idx + _2058 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2127 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2127 + -mem[64] + 100
                        if block.timestamp < stor10[address(arg1)][idx].field_256:
                            revert with 0, 17
                        _2395 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2395] = 26
                        mem[_2395 + 32] = 'SafeMath: division by zero'
                        if not claimTime:
                            _2467 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2467 + 68] = mem[idx + _2395 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2467 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2467 + -mem[64] + 100
                    else:
                        if 31 >= stor10[address(arg1)][idx].field_1:
                            mem[_1857 + 32] = 256 * stor10[address(arg1)][idx].field_8
                            mem[_1847] = _1857
                            mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1940 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1940] = 30
                                mem[_1940 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1980 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1980 + 68] = mem[idx + _1940 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1980 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1980 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2172 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2172] = 26
                                mem[_2172 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2266 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2266 + 68] = mem[idx + _2172 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2266 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2266 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2130 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2130] = 30
                            mem[_2130 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2220 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2220 + 68] = mem[idx + _2130 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2220 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2220 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2469 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2469] = 26
                            mem[_2469 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2563 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2563 + 68] = mem[idx + _2469 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2563 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2563 + -mem[64] + 100
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                            mem[_1857 + 32] = stor10[address(arg1)][idx].field_0
                            t = _1857 + 32
                            u = sha3(mem[0])
                            while _1857 + stor10[address(arg1)][idx].field_1 > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_1847] = _1857
                            mem[_1847 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1847 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1847 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _3811 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3811] = 30
                                mem[_3811 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _3987 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3987 + 68] = mem[idx + _3811 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3987 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _3987 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _4047 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4047] = 26
                                mem[_4047 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4071 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4071 + 68] = mem[idx + _4047 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4071 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4071 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _4027 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4027] = 30
                            mem[_4027 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _4059 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4059 + 68] = mem[idx + _4027 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4059 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4059 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _4147 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4147] = 26
                            mem[_4147 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _4167 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4167 + 68] = mem[idx + _4147 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4167 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4167 + -mem[64] + 100
            ('stor', ('name', 'claimTime', 13))
            if 1 > !(block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime):
                revert with 0, 17
            if (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1 < 1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardPerNode:
                if 0 > !stor10[address(arg1)][idx].field_768:
                    revert with 0, 17
                if stor10[address(arg1)][idx].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s > !stor10[address(arg1)][idx].field_768:
                    revert with 0, 17
                if idx >= stor10[address(arg1)].field_0:
                    revert with 0, 50
                stor10[address(arg1)][idx].field_512 = block.timestamp
                mem[0] = sha3(address(arg1), 10)
                stor10[address(arg1)][idx].field_768 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + stor10[address(arg1)][idx].field_768
                continue 
            if rewardPerNode and (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1 > -1 / rewardPerNode:
                revert with 0, 17
            if not rewardPerNode:
                revert with 0, 18
            if rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) > !stor10[address(arg1)][idx].field_768:
                revert with 0, 17
            if stor10[address(arg1)][idx].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s > !(rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor10[address(arg1)][idx].field_768):
                revert with 0, 17
            if idx >= stor10[address(arg1)].field_0:
                revert with 0, 50
            stor10[address(arg1)][idx].field_512 = block.timestamp
            mem[0] = sha3(address(arg1), 10)
            stor10[address(arg1)][idx].field_768 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor10[address(arg1)][idx].field_768
            continue 
    else:
        if msg.sender == gateKeeperAddress:
            mem[0] = arg1
            mem[32] = 10
            idx = 0
            s = 0
            while idx < stor10[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 10)
                _1850 = mem[64]
                mem[64] = mem[64] + 128
                if stor10[address(arg1)][idx].field_0:
                    if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _1855 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor10[address(arg1)][idx].field_0) * 0.5) + 32
                    mem[_1855] = uint255(stor10[address(arg1)][idx].field_0) * 0.5
                    if stor10[address(arg1)][idx].field_0:
                        if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor10[address(arg1)][idx].field_0):
                            mem[_1850] = _1855
                            mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1882 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1882] = 30
                                mem[_1882 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1907 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1907 + 68] = mem[idx + _1882 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1907 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1907 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2029 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2029] = 26
                                mem[_2029 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2094 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2094 + 68] = mem[idx + _2029 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2094 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2094 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2004 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2004] = 30
                            mem[_2004 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2060 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2060 + 68] = mem[idx + _2004 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2060 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2060 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2311 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2311] = 26
                            mem[_2311 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2398 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2398 + 68] = mem[idx + _2311 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2398 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2398 + -mem[64] + 100
                        else:
                            if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                                mem[_1855 + 32] = 256 * stor10[address(arg1)][idx].field_8
                                mem[_1850] = _1855
                                mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _1909 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1909] = 30
                                    mem[_1909 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _1943 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1943 + 68] = mem[idx + _1909 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1943 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1943 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _2095 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2095] = 26
                                    mem[_2095 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2176 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2176 + 68] = mem[idx + _2095 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2176 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2176 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _2063 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2063] = 30
                                mem[_2063 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _2135 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2135 + 68] = mem[idx + _2063 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2135 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2135 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _2400 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2400] = 26
                                mem[_2400 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2475 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2475 + 68] = mem[idx + _2400 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2475 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2475 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                                mem[_1855 + 32] = stor10[address(arg1)][idx].field_0
                                t = _1855 + 32
                                u = sha3(mem[0])
                                while _1855 + (uint255(stor10[address(arg1)][idx].field_0) * 0.5) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1850] = _1855
                                mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _3820 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3820] = 30
                                    mem[_3820 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _3988 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3988 + 68] = mem[idx + _3820 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3988 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3988 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _4048 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4048] = 26
                                    mem[_4048 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4072 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4072 + 68] = mem[idx + _4048 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4072 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4072 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _4029 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4029] = 30
                                mem[_4029 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _4060 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4060 + 68] = mem[idx + _4029 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4060 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4060 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _4149 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4149] = 26
                                mem[_4149 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4168 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4168 + 68] = mem[idx + _4149 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4168 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4168 + -mem[64] + 100
                    else:
                        if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                            revert with 0, 34
                        if not stor10[address(arg1)][idx].field_1:
                            mem[_1850] = _1855
                            mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1894 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1894] = 30
                                mem[_1894 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1923 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1923 + 68] = mem[idx + _1894 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1923 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1923 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2064 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2064] = 26
                                mem[_2064 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2136 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2136 + 68] = mem[idx + _2064 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2136 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2136 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2032 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2032] = 30
                            mem[_2032 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2096 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2096 + 68] = mem[idx + _2032 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2096 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2096 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2359 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2359] = 26
                            mem[_2359 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2437 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2437 + 68] = mem[idx + _2359 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2437 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2437 + -mem[64] + 100
                        else:
                            if 31 >= stor10[address(arg1)][idx].field_1:
                                mem[_1855 + 32] = 256 * stor10[address(arg1)][idx].field_8
                                mem[_1850] = _1855
                                mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _1925 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1925] = 30
                                    mem[_1925 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _1963 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1963 + 68] = mem[idx + _1925 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1963 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1963 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _2137 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2137] = 26
                                    mem[_2137 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2227 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2227 + 68] = mem[idx + _2137 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2227 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2227 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _2099 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2099] = 30
                                mem[_2099 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _2181 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2181 + 68] = mem[idx + _2099 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2181 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2181 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _2439 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2439] = 26
                                mem[_2439 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2521 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2521 + 68] = mem[idx + _2439 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2521 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2521 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                                mem[_1855 + 32] = stor10[address(arg1)][idx].field_0
                                t = _1855 + 32
                                u = sha3(mem[0])
                                while _1855 + stor10[address(arg1)][idx].field_1 > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1850] = _1855
                                mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _3829 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3829] = 30
                                    mem[_3829 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _3989 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3989 + 68] = mem[idx + _3829 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3989 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3989 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _4049 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4049] = 26
                                    mem[_4049 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4073 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4073 + 68] = mem[idx + _4049 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4073 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4073 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _4031 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4031] = 30
                                mem[_4031 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _4061 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4061 + 68] = mem[idx + _4031 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4061 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4061 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _4151 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4151] = 26
                                mem[_4151 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4169 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4169 + 68] = mem[idx + _4151 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4169 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4169 + -mem[64] + 100
                else:
                    if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                        revert with 0, 34
                    _1858 = mem[64]
                    mem[64] = mem[64] + ceil32(stor10[address(arg1)][idx].field_1) + 32
                    mem[_1858] = stor10[address(arg1)][idx].field_1
                    if stor10[address(arg1)][idx].field_0:
                        if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor10[address(arg1)][idx].field_0):
                            mem[_1850] = _1858
                            mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1896 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1896] = 30
                                mem[_1896 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1926 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1926 + 68] = mem[idx + _1896 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1926 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1926 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2066 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2066] = 26
                                mem[_2066 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2138 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2138 + 68] = mem[idx + _2066 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2138 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2138 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2035 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2035] = 30
                            mem[_2035 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2100 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2100 + 68] = mem[idx + _2035 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2100 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2100 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2363 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2363] = 26
                            mem[_2363 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2440 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2440 + 68] = mem[idx + _2363 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2440 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2440 + -mem[64] + 100
                        else:
                            if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                                mem[_1858 + 32] = 256 * stor10[address(arg1)][idx].field_8
                                mem[_1850] = _1858
                                mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _1928 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1928] = 30
                                    mem[_1928 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _1966 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1966 + 68] = mem[idx + _1928 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1966 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1966 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _2139 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2139] = 26
                                    mem[_2139 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2231 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2231 + 68] = mem[idx + _2139 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2231 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2231 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _2103 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2103] = 30
                                mem[_2103 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _2186 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2186 + 68] = mem[idx + _2103 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2186 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2186 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _2442 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2442] = 26
                                mem[_2442 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2527 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2527 + 68] = mem[idx + _2442 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2527 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2527 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                                mem[_1858 + 32] = stor10[address(arg1)][idx].field_0
                                t = _1858 + 32
                                u = sha3(mem[0])
                                while _1858 + (uint255(stor10[address(arg1)][idx].field_0) * 0.5) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1850] = _1858
                                mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _3838 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3838] = 30
                                    mem[_3838 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _3990 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3990 + 68] = mem[idx + _3838 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3990 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3990 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _4050 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4050] = 26
                                    mem[_4050 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4074 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4074 + 68] = mem[idx + _4050 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4074 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4074 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _4033 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4033] = 30
                                mem[_4033 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _4062 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4062 + 68] = mem[idx + _4033 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4062 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4062 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _4153 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4153] = 26
                                mem[_4153 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4170 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4170 + 68] = mem[idx + _4153 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4170 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4170 + -mem[64] + 100
                    else:
                        if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                            revert with 0, 34
                        if not stor10[address(arg1)][idx].field_1:
                            mem[_1850] = _1858
                            mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1910 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1910] = 30
                                mem[_1910 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1944 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1944 + 68] = mem[idx + _1910 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1944 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1944 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2104 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2104] = 26
                                mem[_2104 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2187 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2187 + 68] = mem[idx + _2104 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2187 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2187 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2069 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2069] = 30
                            mem[_2069 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2140 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2140 + 68] = mem[idx + _2069 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2140 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2140 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2408 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2408] = 26
                            mem[_2408 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2480 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2480 + 68] = mem[idx + _2408 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2480 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2480 + -mem[64] + 100
                        else:
                            if 31 >= stor10[address(arg1)][idx].field_1:
                                mem[_1858 + 32] = 256 * stor10[address(arg1)][idx].field_8
                                mem[_1850] = _1858
                                mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _1946 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1946] = 30
                                    mem[_1946 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _1987 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1987 + 68] = mem[idx + _1946 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1987 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1987 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _2188 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2188] = 26
                                    mem[_2188 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2280 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2280 + 68] = mem[idx + _2188 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2280 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2280 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _2143 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2143] = 30
                                mem[_2143 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _2236 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2236 + 68] = mem[idx + _2143 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2236 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2236 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _2482 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2482] = 26
                                mem[_2482 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2580 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2580 + 68] = mem[idx + _2482 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2580 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2580 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                                mem[_1858 + 32] = stor10[address(arg1)][idx].field_0
                                t = _1858 + 32
                                u = sha3(mem[0])
                                while _1858 + stor10[address(arg1)][idx].field_1 > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1850] = _1858
                                mem[_1850 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1850 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1850 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _3847 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3847] = 30
                                    mem[_3847 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _3991 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3991 + 68] = mem[idx + _3847 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3991 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3991 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _4051 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4051] = 26
                                    mem[_4051 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4075 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4075 + 68] = mem[idx + _4051 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4075 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4075 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _4035 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4035] = 30
                                mem[_4035 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _4063 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4063 + 68] = mem[idx + _4035 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4063 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4063 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _4155 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4155] = 26
                                mem[_4155 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4171 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4171 + 68] = mem[idx + _4155 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4171 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4171 + -mem[64] + 100
                ('stor', ('name', 'claimTime', 13))
                if 1 > !(block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime):
                    revert with 0, 17
                if (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1 < 1:
                    revert with 0, 'SafeMath: addition overflow'
                if not rewardPerNode:
                    if 0 > !stor10[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if stor10[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if s > !stor10[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if idx >= stor10[address(arg1)].field_0:
                        revert with 0, 50
                    stor10[address(arg1)][idx].field_512 = block.timestamp
                    mem[0] = sha3(address(arg1), 10)
                    stor10[address(arg1)][idx].field_768 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + stor10[address(arg1)][idx].field_768
                    continue 
                if rewardPerNode and (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1 > -1 / rewardPerNode:
                    revert with 0, 17
                if not rewardPerNode:
                    revert with 0, 18
                if rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1:
                    revert with 0, 'SafeMath: multiplication overflow'
                if rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) > !stor10[address(arg1)][idx].field_768:
                    revert with 0, 17
                if stor10[address(arg1)][idx].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s > !(rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor10[address(arg1)][idx].field_768):
                    revert with 0, 17
                if idx >= stor10[address(arg1)].field_0:
                    revert with 0, 50
                stor10[address(arg1)][idx].field_512 = block.timestamp
                mem[0] = sha3(address(arg1), 10)
                stor10[address(arg1)][idx].field_768 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor10[address(arg1)][idx].field_768
                continue 
        else:
            if address(stor0.field_0) != msg.sender:
                revert with 0, 'NodeManagerV2: NOT AUTHORIZED'
            mem[0] = arg1
            mem[32] = 10
            idx = 0
            s = 0
            while idx < stor10[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 10)
                _1853 = mem[64]
                mem[64] = mem[64] + 128
                if stor10[address(arg1)][idx].field_0:
                    if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _1856 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor10[address(arg1)][idx].field_0) * 0.5) + 32
                    mem[_1856] = uint255(stor10[address(arg1)][idx].field_0) * 0.5
                    if stor10[address(arg1)][idx].field_0:
                        if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor10[address(arg1)][idx].field_0):
                            mem[_1853] = _1856
                            mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1886 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1886] = 30
                                mem[_1886 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1912 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1912 + 68] = mem[idx + _1886 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1912 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1912 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2039 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2039] = 26
                                mem[_2039 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2106 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2106 + 68] = mem[idx + _2039 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2106 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2106 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2012 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2012] = 30
                            mem[_2012 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2071 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2071 + 68] = mem[idx + _2012 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2071 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2071 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2326 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2326] = 26
                            mem[_2326 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2411 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2411 + 68] = mem[idx + _2326 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2411 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2411 + -mem[64] + 100
                        else:
                            if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                                mem[_1856 + 32] = 256 * stor10[address(arg1)][idx].field_8
                                mem[_1853] = _1856
                                mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _1914 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1914] = 30
                                    mem[_1914 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _1949 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1949 + 68] = mem[idx + _1914 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1949 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1949 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _2107 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2107] = 26
                                    mem[_2107 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2192 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2192 + 68] = mem[idx + _2107 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2192 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2192 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _2074 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2074] = 30
                                mem[_2074 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _2148 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2148 + 68] = mem[idx + _2074 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2148 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2148 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _2413 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2413] = 26
                                mem[_2413 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2488 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2488 + 68] = mem[idx + _2413 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2488 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2488 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                                mem[_1856 + 32] = stor10[address(arg1)][idx].field_0
                                t = _1856 + 32
                                u = sha3(mem[0])
                                while _1856 + (uint255(stor10[address(arg1)][idx].field_0) * 0.5) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1853] = _1856
                                mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _3856 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3856] = 30
                                    mem[_3856 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _3992 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3992 + 68] = mem[idx + _3856 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3992 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3992 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _4052 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4052] = 26
                                    mem[_4052 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4076 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4076 + 68] = mem[idx + _4052 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4076 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4076 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _4037 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4037] = 30
                                mem[_4037 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _4064 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4064 + 68] = mem[idx + _4037 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4064 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4064 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _4157 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4157] = 26
                                mem[_4157 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4172 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4172 + 68] = mem[idx + _4157 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4172 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4172 + -mem[64] + 100
                    else:
                        if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                            revert with 0, 34
                        if not stor10[address(arg1)][idx].field_1:
                            mem[_1853] = _1856
                            mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1898 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1898] = 30
                                mem[_1898 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1929 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1929 + 68] = mem[idx + _1898 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1929 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1929 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2075 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2075] = 26
                                mem[_2075 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2149 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2149 + 68] = mem[idx + _2075 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2149 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2149 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2042 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2042] = 30
                            mem[_2042 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2108 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2108 + 68] = mem[idx + _2042 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2108 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2108 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2374 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2374] = 26
                            mem[_2374 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2448 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2448 + 68] = mem[idx + _2374 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2448 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2448 + -mem[64] + 100
                        else:
                            if 31 >= stor10[address(arg1)][idx].field_1:
                                mem[_1856 + 32] = 256 * stor10[address(arg1)][idx].field_8
                                mem[_1853] = _1856
                                mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _1931 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1931] = 30
                                    mem[_1931 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _1970 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1970 + 68] = mem[idx + _1931 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1970 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1970 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _2150 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2150] = 26
                                    mem[_2150 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2243 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2243 + 68] = mem[idx + _2150 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2243 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2243 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _2111 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2111] = 30
                                mem[_2111 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _2197 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2197 + 68] = mem[idx + _2111 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2197 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2197 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _2450 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2450] = 26
                                mem[_2450 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2538 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2538 + 68] = mem[idx + _2450 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2538 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2538 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                                mem[_1856 + 32] = stor10[address(arg1)][idx].field_0
                                t = _1856 + 32
                                u = sha3(mem[0])
                                while _1856 + stor10[address(arg1)][idx].field_1 > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1853] = _1856
                                mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _3865 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3865] = 30
                                    mem[_3865 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _3993 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3993 + 68] = mem[idx + _3865 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3993 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3993 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _4053 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4053] = 26
                                    mem[_4053 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4077 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4077 + 68] = mem[idx + _4053 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4077 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4077 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _4039 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4039] = 30
                                mem[_4039 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _4065 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4065 + 68] = mem[idx + _4039 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4065 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4065 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _4159 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4159] = 26
                                mem[_4159 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4173 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4173 + 68] = mem[idx + _4159 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4173 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4173 + -mem[64] + 100
                else:
                    if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                        revert with 0, 34
                    _1859 = mem[64]
                    mem[64] = mem[64] + ceil32(stor10[address(arg1)][idx].field_1) + 32
                    mem[_1859] = stor10[address(arg1)][idx].field_1
                    if stor10[address(arg1)][idx].field_0:
                        if stor10[address(arg1)][idx].field_0 == uint255(stor10[address(arg1)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor10[address(arg1)][idx].field_0):
                            mem[_1853] = _1859
                            mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1900 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1900] = 30
                                mem[_1900 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1932 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1932 + 68] = mem[idx + _1900 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1932 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1932 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2077 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2077] = 26
                                mem[_2077 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2151 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2151 + 68] = mem[idx + _2077 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2151 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2151 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2045 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2045] = 30
                            mem[_2045 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2112 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2112 + 68] = mem[idx + _2045 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2112 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2112 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2378 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2378] = 26
                            mem[_2378 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2451 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2451 + 68] = mem[idx + _2378 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2451 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2451 + -mem[64] + 100
                        else:
                            if 31 >= uint255(stor10[address(arg1)][idx].field_0) * 0.5:
                                mem[_1859 + 32] = 256 * stor10[address(arg1)][idx].field_8
                                mem[_1853] = _1859
                                mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _1934 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1934] = 30
                                    mem[_1934 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _1973 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1973 + 68] = mem[idx + _1934 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1973 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1973 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _2152 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2152] = 26
                                    mem[_2152 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2247 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2247 + 68] = mem[idx + _2152 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2247 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2247 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _2115 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2115] = 30
                                mem[_2115 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _2202 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2202 + 68] = mem[idx + _2115 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2202 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2202 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _2453 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2453] = 26
                                mem[_2453 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2544 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2544 + 68] = mem[idx + _2453 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2544 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2544 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                                mem[_1859 + 32] = stor10[address(arg1)][idx].field_0
                                t = _1859 + 32
                                u = sha3(mem[0])
                                while _1859 + (uint255(stor10[address(arg1)][idx].field_0) * 0.5) > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1853] = _1859
                                mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _3874 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3874] = 30
                                    mem[_3874 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _3994 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3994 + 68] = mem[idx + _3874 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3994 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3994 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _4054 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4054] = 26
                                    mem[_4054 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4078 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4078 + 68] = mem[idx + _4054 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4078 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4078 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _4041 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4041] = 30
                                mem[_4041 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _4066 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4066 + 68] = mem[idx + _4041 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4066 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4066 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _4161 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4161] = 26
                                mem[_4161 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4174 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4174 + 68] = mem[idx + _4161 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4174 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4174 + -mem[64] + 100
                    else:
                        if stor10[address(arg1)][idx].field_0 == stor10[address(arg1)][idx].field_1 < 32:
                            revert with 0, 34
                        if not stor10[address(arg1)][idx].field_1:
                            mem[_1853] = _1859
                            mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                            mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                            mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                            if stor10[address(arg1)][idx].field_512:
                                _1915 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1915] = 30
                                mem[_1915 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                    _1950 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1950 + 68] = mem[idx + _1915 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1950 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1950 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_512:
                                    revert with 0, 17
                                _2116 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2116] = 26
                                mem[_2116 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2203 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2203 + 68] = mem[idx + _2116 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2203 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2203 + -mem[64] + 100
                                if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                    revert with 0, 17
                                if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewardPerNode:
                                    if 0 > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if stor10[address(arg1)][idx].field_768 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + stor10[address(arg1)][idx].field_768
                                    continue 
                                if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                    revert with 0, 17
                                if not rewardPerNode:
                                    revert with 0, 18
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                    revert with 0, 17
                                if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                    revert with 0, 17
                                if idx >= stor10[address(arg1)].field_0:
                                    revert with 0, 50
                                stor10[address(arg1)][idx].field_512 = block.timestamp
                                mem[0] = sha3(address(arg1), 10)
                                stor10[address(arg1)][idx].field_768 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                continue 
                            _2080 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2080] = 30
                            mem[_2080 + 32] = 'SafeMath: subtraction overflow'
                            if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                _2153 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2153 + 68] = mem[idx + _2080 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2153 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2153 + -mem[64] + 100
                            if block.timestamp < stor10[address(arg1)][idx].field_256:
                                revert with 0, 17
                            _2421 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2421] = 26
                            mem[_2421 + 32] = 'SafeMath: division by zero'
                            if not claimTime:
                                _2493 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2493 + 68] = mem[idx + _2421 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2493 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2493 + -mem[64] + 100
                        else:
                            if 31 >= stor10[address(arg1)][idx].field_1:
                                mem[_1859 + 32] = 256 * stor10[address(arg1)][idx].field_8
                                mem[_1853] = _1859
                                mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _1952 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1952] = 30
                                    mem[_1952 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _1994 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1994 + 68] = mem[idx + _1952 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1994 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1994 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _2204 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2204] = 26
                                    mem[_2204 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _2294 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _2294 + 68] = mem[idx + _2204 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2294 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2294 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _2156 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2156] = 30
                                mem[_2156 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _2252 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2252 + 68] = mem[idx + _2156 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2252 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2252 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _2495 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2495] = 26
                                mem[_2495 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _2597 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _2597 + 68] = mem[idx + _2495 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2597 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2597 + -mem[64] + 100
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 10))
                                mem[_1859 + 32] = stor10[address(arg1)][idx].field_0
                                t = _1859 + 32
                                u = sha3(mem[0])
                                while _1859 + stor10[address(arg1)][idx].field_1 > t:
                                    mem[t + 32] = uint256(stor1[u])
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_1853] = _1859
                                mem[_1853 + 32] = stor10[address(arg1)][idx].field_256
                                mem[_1853 + 64] = stor10[address(arg1)][idx].field_512
                                mem[_1853 + 96] = stor10[address(arg1)][idx].field_768
                                if stor10[address(arg1)][idx].field_512:
                                    _3883 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3883] = 30
                                    mem[_3883 + 32] = 'SafeMath: subtraction overflow'
                                    if stor10[address(arg1)][idx].field_512 > block.timestamp:
                                        _3995 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3995 + 68] = mem[idx + _3883 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3995 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _3995 + -mem[64] + 100
                                    if block.timestamp < stor10[address(arg1)][idx].field_512:
                                        revert with 0, 17
                                    _4055 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4055] = 26
                                    mem[_4055 + 32] = 'SafeMath: division by zero'
                                    if not claimTime:
                                        _4079 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _4079 + 68] = mem[idx + _4055 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_4079 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _4079 + -mem[64] + 100
                                    if 0 > !(block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime):
                                        revert with 0, 17
                                    if block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewardPerNode:
                                        if 0 > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if stor10[address(arg1)][idx].field_768 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s > !stor10[address(arg1)][idx].field_768:
                                            revert with 0, 17
                                        if idx >= stor10[address(arg1)].field_0:
                                            revert with 0, 50
                                        stor10[address(arg1)][idx].field_512 = block.timestamp
                                        mem[0] = sha3(address(arg1), 10)
                                        stor10[address(arg1)][idx].field_768 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s + stor10[address(arg1)][idx].field_768
                                        continue 
                                    if rewardPerNode and block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > -1 / rewardPerNode:
                                        revert with 0, 17
                                    if not rewardPerNode:
                                        revert with 0, 18
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime / rewardPerNode != block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime > !stor10[address(arg1)][idx].field_768:
                                        revert with 0, 17
                                    if (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768 < rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s > !((rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768):
                                        revert with 0, 17
                                    if idx >= stor10[address(arg1)].field_0:
                                        revert with 0, 50
                                    stor10[address(arg1)][idx].field_512 = block.timestamp
                                    mem[0] = sha3(address(arg1), 10)
                                    stor10[address(arg1)][idx].field_768 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + (rewardPerNode * block.timestamp - stor10[address(arg1)][idx].field_512 / claimTime) + stor10[address(arg1)][idx].field_768
                                    continue 
                                _4043 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4043] = 30
                                mem[_4043 + 32] = 'SafeMath: subtraction overflow'
                                if stor10[address(arg1)][idx].field_256 > block.timestamp:
                                    _4067 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4067 + 68] = mem[idx + _4043 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4067 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4067 + -mem[64] + 100
                                if block.timestamp < stor10[address(arg1)][idx].field_256:
                                    revert with 0, 17
                                _4163 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4163] = 26
                                mem[_4163 + 32] = 'SafeMath: division by zero'
                                if not claimTime:
                                    _4175 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _4175 + 68] = mem[idx + _4163 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4175 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4175 + -mem[64] + 100
                ('stor', ('name', 'claimTime', 13))
                if 1 > !(block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime):
                    revert with 0, 17
                if (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1 < 1:
                    revert with 0, 'SafeMath: addition overflow'
                if not rewardPerNode:
                    if 0 > !stor10[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if stor10[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if s > !stor10[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if idx >= stor10[address(arg1)].field_0:
                        revert with 0, 50
                    stor10[address(arg1)][idx].field_512 = block.timestamp
                    mem[0] = sha3(address(arg1), 10)
                    stor10[address(arg1)][idx].field_768 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + stor10[address(arg1)][idx].field_768
                    continue 
                if rewardPerNode and (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1 > -1 / rewardPerNode:
                    revert with 0, 17
                if not rewardPerNode:
                    revert with 0, 18
                if rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) / rewardPerNode != (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime) + 1:
                    revert with 0, 'SafeMath: multiplication overflow'
                if rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) > !stor10[address(arg1)][idx].field_768:
                    revert with 0, 17
                if stor10[address(arg1)][idx].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s > !(rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor10[address(arg1)][idx].field_768):
                    revert with 0, 17
                if idx >= stor10[address(arg1)].field_0:
                    revert with 0, 50
                stor10[address(arg1)][idx].field_512 = block.timestamp
                mem[0] = sha3(address(arg1), 10)
                stor10[address(arg1)][idx].field_768 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + rewardPerNode + (block.timestamp - stor10[address(arg1)][idx].field_256 / claimTime * rewardPerNode) + stor10[address(arg1)][idx].field_768
                continue 
    return s
}



}
