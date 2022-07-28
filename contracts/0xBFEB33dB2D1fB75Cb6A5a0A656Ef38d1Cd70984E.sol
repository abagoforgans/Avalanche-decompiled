contract main {




// =====================  Runtime code  =====================


#
#  - _getNodesNames(address arg1)
#  - sub_385c26b5(?)
#  - sub_433ef965(?)
#  - sub_9ceb5c48(?)
#  - getNodeId(uint256 arg1)
#  - sub_f0ed1fbe(?)
#  - sub_fc934d74(?)
#
array of struct stor0;
array of struct _getNodeNumberOf;
mapping of uint256 sub_e911d687;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 nodePrice;
uint256 rewardPerNode;
uint256 claimTime;
uint256 sub_c386b072;
uint256 totalNodesCreated;
uint256 totalRewardStaked;
array of struct stor11;
address gateKeeperAddress;
address tokenAddress;
address stor14;
uint8 stor15; offset 160
address stor15;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702950;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702951;

function claimTime() payable {
    return claimTime
}

function _isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(_getNodeNumberOf[address(arg1)].field_0)
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _getNodeNumberOf[address(arg1)].field_0
}

function gateKeeper() payable {
    return gateKeeperAddress
}

function rewardPerNode() payable {
    return rewardPerNode
}

function _nodesOfUser(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < _getNodeNumberOf[arg1].field_0
    return _getNodeNumberOf[arg1][arg2].field_0
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function sub_acbca290(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function sub_c386b072(?) payable {
    return sub_c386b072
}

function sub_e911d687(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e911d687[arg1]
}

function sub_eba6b34d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
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

function sub_461a70a0(?) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'Fuck off'
    sub_c386b072 = arg1
}

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'Fuck off'
    nodePrice = arg1
}

function _changeClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'Fuck off'
    claimTime = arg1
}

function _changeRewardPerNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'Fuck off'
    rewardPerNode = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor4[msg.sender]:
        revert with 0, 'Fuck off'
    tokenAddress = arg1
}

function sub_9ae6fe79(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor4[msg.sender]:
        revert with 0, 'Fuck off'
    stor14 = address(arg1)
}

function sub_781b7439(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor4[msg.sender]:
        revert with 0, 'Fuck off'
    sub_e911d687[address(arg1)] = arg2
}

function sub_2d664d0c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor4[msg.sender]:
        revert with 0, 'Fuck off'
    address(stor15.field_0) = address(arg1)
}

function sub_1f51bd96(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor4[msg.sender]:
        revert with 0, 'Fuck off'
    stor4[address(arg1)] = uint8(bool(arg2))
}

function sub_a0cdc273(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3[address(arg1)]:
        return not bool(stor3[address(arg1)])
    staticcall address(stor15.field_0).0x4491a7e4 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_2e24c084(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _getNodeNumberOf[address(arg1)].field_0:
        mem[128] = _getNodeNumberOf[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * _getNodeNumberOf[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = _getNodeNumberOf[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=_getNodeNumberOf[address(arg1)].field_0, data=mem[128 len 32 * _getNodeNumberOf[address(arg1)].field_0])
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 128] = 32
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 160] = _getNodeNumberOf[address(arg1)].field_0
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 192 len 32 * _getNodeNumberOf[address(arg1)].field_0] = mem[128 len 32 * _getNodeNumberOf[address(arg1)].field_0]
    return memory
      from (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
       len (96 * _getNodeNumberOf[address(arg1)].field_0) + 64
}

function sub_d29b42e1(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require (32 * ('cd', 68).length) + cd[68] + 36 <= calldata.size
    s = 128
    idx = cd[68] + 36
    while idx < (32 * ('cd', 68).length) + cd[68] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 98 < 97 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 68).length) + 97] = ('cd', 100).length
    require (32 * ('cd', 100).length) + cd[100] + 36 <= calldata.size
    s = ceil32(32 * ('cd', 68).length) + 129
    idx = cd[100] + 36
    while idx < (32 * ('cd', 100).length) + cd[100] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    idx = 0
    while idx < ('cd', 100).length:
        if idx >= ('cd', 100).length:
            revert with 0, 50
        if cd[4] >= stor0.length:
            revert with 0, 50
        mem[0] = 0
        if cd[36] < stor0[cd[4]].field_768:
            revert with 0, 17
        if cd[36] - stor0[cd[4]].field_768 > mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= ('cd', 68).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98] = mem[(32 * idx) + 128]
        return memory
          from ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98
           len 32
    return sub_c386b072
}

function sub_1395b8ce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    if bool(stor0[arg1].field_256):
        if bool(stor0[arg1].field_256) == uint255(stor0[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0[arg1].field_256):
            if bool(stor0[arg1].field_256) == uint255(stor0[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0[arg1].field_256):
                if 31 >= uint255(stor0[arg1].field_256) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor0[arg1].field_264)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor0[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor0[arg1].field_256) == stor0[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor0[arg1].field_257 % 128:
                if 31 >= stor0[arg1].field_257 % 128:
                    mem[128] = 256 * Mask(248, 0, stor0[arg1].field_264)
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor0[arg1].field_0), 
               Array(len=2 * Mask(256, -1, stor0[arg1].field_256), data=mem[128 len ceil32(uint255(stor0[arg1].field_256) * 0.5)]),
               stor0[arg1].field_512,
               stor0[arg1].field_768,
               stor0[arg1].field_1024
    if bool(stor0[arg1].field_256) == stor0[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor0[arg1].field_256):
        if bool(stor0[arg1].field_256) == uint255(stor0[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0[arg1].field_256):
            if 31 >= uint255(stor0[arg1].field_256) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor0[arg1].field_264)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_0
                idx = 128
                s = 0
                while (uint255(stor0[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor0[arg1].field_256) == stor0[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor0[arg1].field_257 % 128:
            if 31 >= stor0[arg1].field_257 % 128:
                mem[128] = 256 * Mask(248, 0, stor0[arg1].field_264)
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor0[arg1].field_0), 
           Array(len=stor0[arg1].field_256 % 128, data=mem[128 len ceil32(stor0[arg1].field_257 % 128)]),
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024
}

function sub_5a7edc9d(?) payable {
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11.length):
                if 31 < uint255(stor11.length) * 0.5:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor11.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        else:
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor11.length.field_1 % 128:
                if 31 < stor11.length.field_1 % 128:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        mem[ceil32(uint255(stor11.length) * 0.5) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
        if ceil32(uint255(stor11.length) * 0.5) > uint255(stor11.length) * 0.5:
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)], mem[(2 * ceil32(uint255(stor11.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor11.length) * 0.5)]), 
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11.length):
            if 31 < uint255(stor11.length) * 0.5:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while (uint255(stor11.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor11.length.field_1 % 128:
            if 31 < stor11.length.field_1 % 128:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
    mem[ceil32(stor11.length.field_1 % 128) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
    if ceil32(stor11.length.field_1 % 128) > stor11.length.field_1 % 128:
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)], mem[(2 * ceil32(stor11.length.field_1 % 128)) + 192 len 2 * ceil32(stor11.length.field_1 % 128)]), 
}

function createNodeForAddress(address arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not stor4[msg.sender]:
        revert with 0, 'Fuck off'
    if uint8(stor15.field_160):
        revert with 0, 'Creating Lock'
    uint8(stor15.field_160) = 1
    mem[0] = arg1
    mem[32] = 1
    mem[64] = ceil32(ceil32(arg2.length)) + (32 * _getNodeNumberOf[address(arg1)].field_0) + 129
    mem[ceil32(ceil32(arg2.length)) + 97] = _getNodeNumberOf[address(arg1)].field_0
    if not _getNodeNumberOf[address(arg1)].field_0:
        idx = 0
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            _111 = sha3(mem[128 len mem[96]])
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 50
            _113 = mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]
            if mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129] >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _115 = mem[64]
            if bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                if bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) == uint255(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len uint255(stor0[_113].field_256) * 0.5]) == _111:
                        revert with 0, 'CN:Name not available'
                else:
                    if bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            revert with 0, 'CN:Name not available'
                    else:
                        mem[0] = (5 * mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]) + sha3(0) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor0[_113].field_256) * 0.5:
                            mem[s + _115] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _115 + (uint255(stor0[_113].field_256) * 0.5) - mem[64]]) == _111:
                            revert with 0, 'CN:Name not available'
            else:
                if bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) == stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_257 % 128 < 32:
                    revert with 0, 34
                if not bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len stor0[_113].field_257 % 128]) == _111:
                        revert with 0, 'CN:Name not available'
                else:
                    if bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            revert with 0, 'CN:Name not available'
                    else:
                        mem[0] = (5 * mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]) + sha3(0) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < stor0[_113].field_257 % 128:
                            mem[s + _115] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _115 + stor0[_113].field_257 % 128 - mem[64]]) == _111:
                            revert with 0, 'CN:Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _116 = mem[64]
        mem[64] = mem[64] + 160
        mem[_116] = arg1
        mem[_116 + 32] = 96
        mem[_116 + 64] = arg3
        mem[_116 + 96] = arg4
        mem[_116 + 128] = arg5
    else:
        mem[0] = sha3(address(arg1), 1)
        mem[ceil32(ceil32(arg2.length)) + 129] = _getNodeNumberOf[address(arg1)].field_0
        idx = ceil32(ceil32(arg2.length)) + 129
        s = 0
        while ceil32(ceil32(arg2.length)) + (32 * _getNodeNumberOf[address(arg1)].field_0) + 97 > idx:
            mem[idx + 32] = _getNodeNumberOf[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            _375 = sha3(mem[128 len mem[96]])
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 50
            _377 = mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]
            if mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129] >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _387 = mem[64]
            if bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                if bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) == uint255(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len uint255(stor0[_377].field_256) * 0.5]) == _375:
                        revert with 0, 'CN:Name not available'
                else:
                    if bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            revert with 0, 'CN:Name not available'
                    else:
                        mem[0] = (5 * mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]) + sha3(0) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(stor0[_377].field_256) * 0.5:
                            mem[s + _387] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _387 + (uint255(stor0[_377].field_256) * 0.5) - mem[64]]) == _375:
                            revert with 0, 'CN:Name not available'
            else:
                if bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) == stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_257 % 128 < 32:
                    revert with 0, 34
                if not bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256):
                    mem[mem[64]] = Mask(248, 8, stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256)
                    if sha3(mem[mem[64] len stor0[_377].field_257 % 128]) == _375:
                        revert with 0, 'CN:Name not available'
                else:
                    if bool(stor0[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]].field_256) != 1:
                        if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                            revert with 0, 'CN:Name not available'
                    else:
                        mem[0] = (5 * mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]) + sha3(0) + 1
                        s = 0
                        t = sha3(mem[0])
                        while s < stor0[_377].field_257 % 128:
                            mem[s + _387] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        if sha3(mem[mem[64] len _387 + stor0[_377].field_257 % 128 - mem[64]]) == _375:
                            revert with 0, 'CN:Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _388 = mem[64]
        mem[64] = mem[64] + 160
        mem[_388] = arg1
        mem[_388 + 32] = 96
        mem[_388 + 64] = arg3
        mem[_388 + 96] = arg4
        mem[_388 + 128] = arg5
    stor0.length++
    address(stor0[stor0.length].field_0) = arg1
    if bool(stor290D[stor0.length].field_0):
        if bool(stor290D[stor0.length].field_0) == uint255(stor290D[stor0.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            stor[sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)][] = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor290D[stor0.length].field_0 = 0
            idx = 0
            while (uint255(stor290D[stor0.length].field_0) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)] = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor290D[stor0.length].field_0) == stor290D[stor0.length].field_1 % 128 < 32:
            revert with 0, 34
        if mem[96]:
            stor[sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)][] = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor290D[stor0.length].field_0 = 0
            idx = 0
            while stor290D[stor0.length].field_1 % 128 + 31 / 32 > idx:
                stor[idx + sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)] = 0
                idx = idx + 1
                continue 
    stor290D[stor0.length] = arg3
    stor290D[stor0.length] = arg4
    stor290D[stor0.length] = arg5
    totalNodesCreated = stor0.length
    if stor0.length < 1:
        revert with 0, 17
    _getNodeNumberOf[address(arg1)].field_0++
    _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0 = stor0.length - 1
    if totalNodesCreated < 1:
        revert with 0, 17
    uint8(stor15.field_160) = 0
    return (totalNodesCreated - 1)
}

function _migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 4
    if not stor4[msg.sender]:
        revert with 0, 'Fuck off'
    mem[100] = arg1
    staticcall this.address.0xa0cdc273 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Nodes already migrated'
    mem[ceil32(return_data.size) + 100] = arg1
    staticcall address(stor15.field_0).0x4491a7e4 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64]] = 0x7773d77000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = idx
        staticcall address(stor15.field_0).0x7773d770 with:
                gas gas_remaining wei
               args address(arg1), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _147 = mem[_145]
        require mem[_145] <= test266151307()
        require _145 + return_data.size > _145 + mem[_145] + 31
        _150 = mem[_145 + mem[_145]]
        if mem[_145 + mem[_145]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_145 + mem[_145]])) + 1 < 0 or _145 + ceil32(return_data.size) + ceil32(ceil32(mem[_145 + mem[_145]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _145 + ceil32(return_data.size) + ceil32(ceil32(mem[_145 + mem[_145]])) + 1
        mem[_145 + ceil32(return_data.size)] = _150
        require _147 + _150 + 32 <= return_data.size
        s = 0
        while s < _150:
            mem[s + _145 + ceil32(return_data.size) + 32] = mem[s + _145 + _147 + 32]
            s = s + 32
            continue 
        if ceil32(_150) <= _150:
            _270 = mem[_145 + 32]
            _271 = mem[_145 + 64]
            _272 = mem[_145 + 96]
            _278 = mem[64]
            mem[64] = mem[64] + 160
            mem[_278] = arg1
            mem[_278 + 32] = _145 + ceil32(return_data.size)
            mem[_278 + 64] = _270
            mem[_278 + 96] = _271
            mem[_278 + 128] = _272
            stor0.length++
            address(stor0[stor0.length].field_0) = arg1
            if bool(stor290D[stor0.length].field_0):
                if bool(stor290D[stor0.length].field_0) == uint255(stor290D[stor0.length].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not _150:
                    stor290D[stor0.length].field_0 = 0
                    s = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)
                    while sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + ((uint255(stor290D[stor0.length].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor290D[stor0.length].field_0 = (2 * _150) + 1
                    t = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)
                    s = _145 + ceil32(return_data.size) + 32
                    while _145 + ceil32(return_data.size) + _150 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + (Mask(251, 0, _150 + 31) >> 5)
                    while sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + ((uint255(stor290D[stor0.length].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor290D[stor0.length].field_0) == stor290D[stor0.length].field_1 % 128 < 32:
                    revert with 0, 34
                if not _150:
                    stor290D[stor0.length].field_0 = 0
                    s = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)
                    while sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + (stor290D[stor0.length].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor290D[stor0.length].field_0 = (2 * _150) + 1
                    t = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)
                    s = _145 + ceil32(return_data.size) + 32
                    while _145 + ceil32(return_data.size) + _150 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + (Mask(251, 0, _150 + 31) >> 5)
                    while sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + (stor290D[stor0.length].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            stor290D[stor0.length] = _270
            stor290D[stor0.length] = _271
            stor290D[stor0.length] = _272
        else:
            mem[_145 + ceil32(return_data.size) + _150 + 32] = 0
            _274 = mem[_145 + 32]
            _275 = mem[_145 + 64]
            _276 = mem[_145 + 96]
            _283 = mem[64]
            mem[64] = mem[64] + 160
            mem[_283] = arg1
            mem[_283 + 32] = _145 + ceil32(return_data.size)
            mem[_283 + 64] = _274
            mem[_283 + 96] = _275
            mem[_283 + 128] = _276
            stor0.length++
            address(stor0[stor0.length].field_0) = arg1
            if bool(stor290D[stor0.length].field_0):
                if bool(stor290D[stor0.length].field_0) == uint255(stor290D[stor0.length].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not _150:
                    stor290D[stor0.length].field_0 = 0
                    s = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)
                    while sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + ((uint255(stor290D[stor0.length].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor290D[stor0.length].field_0 = (2 * _150) + 1
                    t = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)
                    s = _145 + ceil32(return_data.size) + 32
                    while _145 + ceil32(return_data.size) + _150 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + (Mask(251, 0, _150 + 31) >> 5)
                    while sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + ((uint255(stor290D[stor0.length].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor290D[stor0.length].field_0) == stor290D[stor0.length].field_1 % 128 < 32:
                    revert with 0, 34
                if not _150:
                    stor290D[stor0.length].field_0 = 0
                    s = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)
                    while sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + (stor290D[stor0.length].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor290D[stor0.length].field_0 = (2 * _150) + 1
                    t = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)
                    s = _145 + ceil32(return_data.size) + 32
                    while _145 + ceil32(return_data.size) + _150 + 32 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + (Mask(251, 0, _150 + 31) >> 5)
                    while sha3((5 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + (stor290D[stor0.length].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            stor290D[stor0.length] = _274
            stor290D[stor0.length] = _275
            stor290D[stor0.length] = _276
        totalNodesCreated = stor0.length
        mem[32] = 1
        if stor0.length < 1:
            revert with 0, 17
        _getNodeNumberOf[address(arg1)].field_0++
        mem[0] = sha3(address(arg1), 1)
        _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0 = stor0.length - 1
        if totalNodesCreated < 1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 3
    stor3[address(arg1)] = 1
    _141 = mem[64]
    mem[mem[64]] = 0xb5735de000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 160
    _144 = mem[96]
    mem[mem[64] + 164] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 196
    u = mem[64] + (32 * mem[96]) + 196
    while idx < _144:
        mem[t] = u + -_141 - 196
        _266 = mem[s]
        _269 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _269:
            mem[v + u + 32] = mem[v + _266 + 32]
            v = v + 32
            continue 
        if ceil32(_269) > _269:
            mem[u + _269 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_269) + u + 32
        continue 
    mem[_141 + 68] = u + -_141 - 4
    _268 = mem[96]
    mem[u] = mem[96]
    mem[u + 32 len 32 * _268] = mem[128 len 32 * _268]
    mem[_141 + 100] = u + (32 * _268) + -_141 + 28
    _389 = mem[96]
    mem[u + (32 * _268) + 32] = mem[96]
    mem[u + (32 * _268) + 64 len 32 * _389] = mem[128 len 32 * _389]
    mem[_141 + 132] = u + (32 * _268) + (32 * _389) + -_141 + 60
    _475 = mem[96]
    mem[u + (32 * _268) + (32 * _389) + 64] = mem[96]
    mem[u + (32 * _268) + (32 * _389) + 96 len 32 * _475] = mem[128 len 32 * _475]
    require ext_code.size(address(stor15.field_0))
    call address(stor15.field_0).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len u + (32 * _268) + (32 * _389) + (32 * _475) + -mem[64] + 92]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[32] = 1
    mem[96] = _getNodeNumberOf[address(arg1)].field_0
    if not _getNodeNumberOf[address(arg1)].field_0:
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 128] = 0
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 160] = 96
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 192] = 0
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 224] = 0
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 256] = 0
        if 0 >= _getNodeNumberOf[address(arg1)].field_0:
            revert with 0, 50
        if mem[128] >= stor0.length:
            revert with 0, 50
        mem[0] = 0
        if not stor0[mem[128]].field_512:
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = 1
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 416
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352] = 1
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 384] = 0x2300000000000000000000000000000000000000000000000000000000000000
            idx = 1
            s = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
            t = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
            while idx < _getNodeNumberOf[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                _173 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _175 = mem[64]
                mem[64] = mem[64] + 160
                mem[_175] = address(stor0[mem[(32 * idx) + 128]].field_0)
                if bool(stor0[_173].field_256):
                    if bool(stor0[_173].field_256) == uint255(stor0[_173].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _180 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor0[_173].field_256) * 0.5) + 32
                    mem[_180] = uint255(stor0[_173].field_256) * 0.5
                    if bool(stor0[_173].field_256):
                        if bool(stor0[_173].field_256) == uint255(stor0[_173].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor0[_173].field_256):
                            mem[_175 + 32] = _180
                            mem[_175 + 64] = stor0[_173].field_512
                            mem[_175 + 96] = stor0[_173].field_768
                            mem[_175 + 128] = stor0[_173].field_1024
                            _196 = mem[64]
                            _198 = mem[s]
                            t = 0
                            while t < _198:
                                mem[t + _196 + 32] = mem[t + s + 32]
                                t = t + 32
                                continue 
                            if ceil32(_198) <= _198:
                                _674 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                                s = 0
                                while s < _674:
                                    mem[s + _196 + _198 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                    s = s + 32
                                    continue 
                                mem[_674 + _196 + _198 + 32] = stor0[_173].field_512
                                if ceil32(_674) <= _674:
                                    _1305 = mem[64]
                                    mem[mem[64]] = _674 + _196 + _198 + -mem[64] + 32
                                    mem[64] = _674 + _196 + _198 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _1305
                                    t = _175
                                    continue 
                                _1326 = mem[64]
                                mem[mem[64]] = _674 + _196 + _198 + -mem[64] + 32
                                mem[64] = _674 + _196 + _198 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1326
                                t = _175
                                continue 
                            mem[_196 + _198 + 32] = 0
                            _689 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _689:
                                mem[s + _196 + _198 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_689 + _196 + _198 + 32] = stor0[_173].field_512
                            if ceil32(_689) <= _689:
                                _1306 = mem[64]
                                mem[mem[64]] = _689 + _196 + _198 + -mem[64] + 32
                                mem[64] = _689 + _196 + _198 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1306
                                t = _175
                                continue 
                            _1327 = mem[64]
                            mem[mem[64]] = _689 + _196 + _198 + -mem[64] + 32
                            mem[64] = _689 + _196 + _198 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1327
                            t = _175
                            continue 
                        if 31 >= uint255(stor0[_173].field_256) * 0.5:
                            mem[_180 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                            mem[_175 + 32] = _180
                            mem[_175 + 64] = stor0[_173].field_512
                            mem[_175 + 96] = stor0[_173].field_768
                            mem[_175 + 128] = stor0[_173].field_1024
                            _207 = mem[64]
                            _217 = mem[s]
                            t = 0
                            while t < _217:
                                mem[t + _207 + 32] = mem[t + s + 32]
                                t = t + 32
                                continue 
                            if ceil32(_217) <= _217:
                                _676 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                                s = 0
                                while s < _676:
                                    mem[s + _207 + _217 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                    s = s + 32
                                    continue 
                                mem[_676 + _207 + _217 + 32] = stor0[_173].field_512
                                if ceil32(_676) <= _676:
                                    _1308 = mem[64]
                                    mem[mem[64]] = _676 + _207 + _217 + -mem[64] + 32
                                    mem[64] = _676 + _207 + _217 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _1308
                                    t = _175
                                    continue 
                                _1328 = mem[64]
                                mem[mem[64]] = _676 + _207 + _217 + -mem[64] + 32
                                mem[64] = _676 + _207 + _217 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1328
                                t = _175
                                continue 
                            mem[_207 + _217 + 32] = 0
                            _690 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _690:
                                mem[s + _207 + _217 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_690 + _207 + _217 + 32] = stor0[_173].field_512
                            if ceil32(_690) <= _690:
                                _1309 = mem[64]
                                mem[mem[64]] = _690 + _207 + _217 + -mem[64] + 32
                                mem[64] = _690 + _207 + _217 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1309
                                t = _175
                                continue 
                            _1329 = mem[64]
                            mem[mem[64]] = _690 + _207 + _217 + -mem[64] + 32
                            mem[64] = _690 + _207 + _217 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1329
                            t = _175
                            continue 
                        mem[0] = (5 * _173) + sha3(0) + 1
                        mem[_180 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                        t = _180 + 32
                        u = sha3((5 * _173) + sha3(0) + 1)
                        while _180 + (uint255(stor0[_173].field_256) * 0.5) > t:
                            mem[t + 32] = _getNodeNumberOf[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_175 + 32] = _180
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _666 = mem[64]
                        _675 = mem[s]
                        t = 0
                        while t < _675:
                            mem[t + _666 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_675) <= _675:
                            _1297 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _1297:
                                mem[s + _666 + _675 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_1297 + _666 + _675 + 32] = stor0[_173].field_512
                            if ceil32(_1297) <= _1297:
                                _2260 = mem[64]
                                mem[mem[64]] = _1297 + _666 + _675 + -mem[64] + 32
                                mem[64] = _1297 + _666 + _675 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _2260
                                t = _175
                                continue 
                            _2278 = mem[64]
                            mem[mem[64]] = _1297 + _666 + _675 + -mem[64] + 32
                            mem[64] = _1297 + _666 + _675 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2278
                            t = _175
                            continue 
                        mem[_666 + _675 + 32] = 0
                        _1307 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _1307:
                            mem[s + _666 + _675 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_1307 + _666 + _675 + 32] = stor0[_173].field_512
                        if ceil32(_1307) <= _1307:
                            _2261 = mem[64]
                            mem[mem[64]] = _1307 + _666 + _675 + -mem[64] + 32
                            mem[64] = _1307 + _666 + _675 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2261
                            t = _175
                            continue 
                        _2279 = mem[64]
                        mem[mem[64]] = _1307 + _666 + _675 + -mem[64] + 32
                        mem[64] = _1307 + _666 + _675 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2279
                        t = _175
                        continue 
                    if bool(stor0[_173].field_256) == stor0[_173].field_257 % 128 < 32:
                        revert with 0, 34
                    if not stor0[_173].field_257 % 128:
                        mem[_175 + 32] = _180
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _201 = mem[64]
                        _208 = mem[s]
                        t = 0
                        while t < _208:
                            mem[t + _201 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_208) <= _208:
                            _677 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _677:
                                mem[s + _201 + _208 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_677 + _201 + _208 + 32] = stor0[_173].field_512
                            if ceil32(_677) <= _677:
                                _1310 = mem[64]
                                mem[mem[64]] = _677 + _201 + _208 + -mem[64] + 32
                                mem[64] = _677 + _201 + _208 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1310
                                t = _175
                                continue 
                            _1330 = mem[64]
                            mem[mem[64]] = _677 + _201 + _208 + -mem[64] + 32
                            mem[64] = _677 + _201 + _208 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1330
                            t = _175
                            continue 
                        mem[_201 + _208 + 32] = 0
                        _691 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _691:
                            mem[s + _201 + _208 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_691 + _201 + _208 + 32] = stor0[_173].field_512
                        if ceil32(_691) <= _691:
                            _1311 = mem[64]
                            mem[mem[64]] = _691 + _201 + _208 + -mem[64] + 32
                            mem[64] = _691 + _201 + _208 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1311
                            t = _175
                            continue 
                        _1331 = mem[64]
                        mem[mem[64]] = _691 + _201 + _208 + -mem[64] + 32
                        mem[64] = _691 + _201 + _208 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1331
                        t = _175
                        continue 
                    if 31 >= stor0[_173].field_257 % 128:
                        mem[_180 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                        mem[_175 + 32] = _180
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _219 = mem[64]
                        _228 = mem[s]
                        t = 0
                        while t < _228:
                            mem[t + _219 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_228) <= _228:
                            _679 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _679:
                                mem[s + _219 + _228 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_679 + _219 + _228 + 32] = stor0[_173].field_512
                            if ceil32(_679) <= _679:
                                _1313 = mem[64]
                                mem[mem[64]] = _679 + _219 + _228 + -mem[64] + 32
                                mem[64] = _679 + _219 + _228 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1313
                                t = _175
                                continue 
                            _1332 = mem[64]
                            mem[mem[64]] = _679 + _219 + _228 + -mem[64] + 32
                            mem[64] = _679 + _219 + _228 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1332
                            t = _175
                            continue 
                        mem[_219 + _228 + 32] = 0
                        _692 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _692:
                            mem[s + _219 + _228 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_692 + _219 + _228 + 32] = stor0[_173].field_512
                        if ceil32(_692) <= _692:
                            _1314 = mem[64]
                            mem[mem[64]] = _692 + _219 + _228 + -mem[64] + 32
                            mem[64] = _692 + _219 + _228 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1314
                            t = _175
                            continue 
                        _1333 = mem[64]
                        mem[mem[64]] = _692 + _219 + _228 + -mem[64] + 32
                        mem[64] = _692 + _219 + _228 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1333
                        t = _175
                        continue 
                    mem[0] = (5 * _173) + sha3(0) + 1
                    mem[_180 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                    t = _180 + 32
                    u = sha3((5 * _173) + sha3(0) + 1)
                    while _180 + stor0[_173].field_257 % 128 > t:
                        mem[t + 32] = _getNodeNumberOf[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_175 + 32] = _180
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _668 = mem[64]
                    _678 = mem[s]
                    t = 0
                    while t < _678:
                        mem[t + _668 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_678) <= _678:
                        _1298 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _1298:
                            mem[s + _668 + _678 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_1298 + _668 + _678 + 32] = stor0[_173].field_512
                        if ceil32(_1298) <= _1298:
                            _2262 = mem[64]
                            mem[mem[64]] = _1298 + _668 + _678 + -mem[64] + 32
                            mem[64] = _1298 + _668 + _678 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2262
                            t = _175
                            continue 
                        _2280 = mem[64]
                        mem[mem[64]] = _1298 + _668 + _678 + -mem[64] + 32
                        mem[64] = _1298 + _668 + _678 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2280
                        t = _175
                        continue 
                    mem[_668 + _678 + 32] = 0
                    _1312 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _1312:
                        mem[s + _668 + _678 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_1312 + _668 + _678 + 32] = stor0[_173].field_512
                    if ceil32(_1312) <= _1312:
                        _2263 = mem[64]
                        mem[mem[64]] = _1312 + _668 + _678 + -mem[64] + 32
                        mem[64] = _1312 + _668 + _678 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2263
                        t = _175
                        continue 
                    _2281 = mem[64]
                    mem[mem[64]] = _1312 + _668 + _678 + -mem[64] + 32
                    mem[64] = _1312 + _668 + _678 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2281
                    t = _175
                    continue 
                if bool(stor0[_173].field_256) == stor0[_173].field_257 % 128 < 32:
                    revert with 0, 34
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_173].field_257 % 128) + 32
                mem[_182] = stor0[_173].field_257 % 128
                if bool(stor0[_173].field_256):
                    if bool(stor0[_173].field_256) == uint255(stor0[_173].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_173].field_256):
                        mem[_175 + 32] = _182
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _203 = mem[64]
                        _210 = mem[s]
                        t = 0
                        while t < _210:
                            mem[t + _203 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_210) <= _210:
                            _680 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _680:
                                mem[s + _203 + _210 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_680 + _203 + _210 + 32] = stor0[_173].field_512
                            if ceil32(_680) <= _680:
                                _1315 = mem[64]
                                mem[mem[64]] = _680 + _203 + _210 + -mem[64] + 32
                                mem[64] = _680 + _203 + _210 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1315
                                t = _175
                                continue 
                            _1334 = mem[64]
                            mem[mem[64]] = _680 + _203 + _210 + -mem[64] + 32
                            mem[64] = _680 + _203 + _210 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1334
                            t = _175
                            continue 
                        mem[_203 + _210 + 32] = 0
                        _693 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _693:
                            mem[s + _203 + _210 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_693 + _203 + _210 + 32] = stor0[_173].field_512
                        if ceil32(_693) <= _693:
                            _1316 = mem[64]
                            mem[mem[64]] = _693 + _203 + _210 + -mem[64] + 32
                            mem[64] = _693 + _203 + _210 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1316
                            t = _175
                            continue 
                        _1335 = mem[64]
                        mem[mem[64]] = _693 + _203 + _210 + -mem[64] + 32
                        mem[64] = _693 + _203 + _210 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1335
                        t = _175
                        continue 
                    if 31 >= uint255(stor0[_173].field_256) * 0.5:
                        mem[_182 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                        mem[_175 + 32] = _182
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _221 = mem[64]
                        _229 = mem[s]
                        t = 0
                        while t < _229:
                            mem[t + _221 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_229) <= _229:
                            _682 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _682:
                                mem[s + _221 + _229 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_682 + _221 + _229 + 32] = stor0[_173].field_512
                            if ceil32(_682) <= _682:
                                _1318 = mem[64]
                                mem[mem[64]] = _682 + _221 + _229 + -mem[64] + 32
                                mem[64] = _682 + _221 + _229 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1318
                                t = _175
                                continue 
                            _1336 = mem[64]
                            mem[mem[64]] = _682 + _221 + _229 + -mem[64] + 32
                            mem[64] = _682 + _221 + _229 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1336
                            t = _175
                            continue 
                        mem[_221 + _229 + 32] = 0
                        _694 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _694:
                            mem[s + _221 + _229 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_694 + _221 + _229 + 32] = stor0[_173].field_512
                        if ceil32(_694) <= _694:
                            _1319 = mem[64]
                            mem[mem[64]] = _694 + _221 + _229 + -mem[64] + 32
                            mem[64] = _694 + _221 + _229 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1319
                            t = _175
                            continue 
                        _1337 = mem[64]
                        mem[mem[64]] = _694 + _221 + _229 + -mem[64] + 32
                        mem[64] = _694 + _221 + _229 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1337
                        t = _175
                        continue 
                    mem[0] = (5 * _173) + sha3(0) + 1
                    mem[_182 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                    t = _182 + 32
                    u = sha3((5 * _173) + sha3(0) + 1)
                    while _182 + (uint255(stor0[_173].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_175 + 32] = _182
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _670 = mem[64]
                    _681 = mem[s]
                    t = 0
                    while t < _681:
                        mem[t + _670 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_681) <= _681:
                        _1299 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _1299:
                            mem[s + _670 + _681 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_1299 + _670 + _681 + 32] = stor0[_173].field_512
                        if ceil32(_1299) <= _1299:
                            _2264 = mem[64]
                            mem[mem[64]] = _1299 + _670 + _681 + -mem[64] + 32
                            mem[64] = _1299 + _670 + _681 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2264
                            t = _175
                            continue 
                        _2282 = mem[64]
                        mem[mem[64]] = _1299 + _670 + _681 + -mem[64] + 32
                        mem[64] = _1299 + _670 + _681 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2282
                        t = _175
                        continue 
                    mem[_670 + _681 + 32] = 0
                    _1317 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _1317:
                        mem[s + _670 + _681 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_1317 + _670 + _681 + 32] = stor0[_173].field_512
                    if ceil32(_1317) <= _1317:
                        _2265 = mem[64]
                        mem[mem[64]] = _1317 + _670 + _681 + -mem[64] + 32
                        mem[64] = _1317 + _670 + _681 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2265
                        t = _175
                        continue 
                    _2283 = mem[64]
                    mem[mem[64]] = _1317 + _670 + _681 + -mem[64] + 32
                    mem[64] = _1317 + _670 + _681 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2283
                    t = _175
                    continue 
                if bool(stor0[_173].field_256) == stor0[_173].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_173].field_257 % 128:
                    mem[_175 + 32] = _182
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _213 = mem[64]
                    _222 = mem[s]
                    t = 0
                    while t < _222:
                        mem[t + _213 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_222) <= _222:
                        _683 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _683:
                            mem[s + _213 + _222 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_683 + _213 + _222 + 32] = stor0[_173].field_512
                        if ceil32(_683) <= _683:
                            _1320 = mem[64]
                            mem[mem[64]] = _683 + _213 + _222 + -mem[64] + 32
                            mem[64] = _683 + _213 + _222 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1320
                            t = _175
                            continue 
                        _1338 = mem[64]
                        mem[mem[64]] = _683 + _213 + _222 + -mem[64] + 32
                        mem[64] = _683 + _213 + _222 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1338
                        t = _175
                        continue 
                    mem[_213 + _222 + 32] = 0
                    _695 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _695:
                        mem[s + _213 + _222 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_695 + _213 + _222 + 32] = stor0[_173].field_512
                    if ceil32(_695) <= _695:
                        _1321 = mem[64]
                        mem[mem[64]] = _695 + _213 + _222 + -mem[64] + 32
                        mem[64] = _695 + _213 + _222 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1321
                        t = _175
                        continue 
                    _1339 = mem[64]
                    mem[mem[64]] = _695 + _213 + _222 + -mem[64] + 32
                    mem[64] = _695 + _213 + _222 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1339
                    t = _175
                    continue 
                if 31 >= stor0[_173].field_257 % 128:
                    mem[_182 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                    mem[_175 + 32] = _182
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _231 = mem[64]
                    _239 = mem[s]
                    t = 0
                    while t < _239:
                        mem[t + _231 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_239) <= _239:
                        _685 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _685:
                            mem[s + _231 + _239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_685 + _231 + _239 + 32] = stor0[_173].field_512
                        if ceil32(_685) <= _685:
                            _1323 = mem[64]
                            mem[mem[64]] = _685 + _231 + _239 + -mem[64] + 32
                            mem[64] = _685 + _231 + _239 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1323
                            t = _175
                            continue 
                        _1340 = mem[64]
                        mem[mem[64]] = _685 + _231 + _239 + -mem[64] + 32
                        mem[64] = _685 + _231 + _239 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1340
                        t = _175
                        continue 
                    mem[_231 + _239 + 32] = 0
                    _696 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _696:
                        mem[s + _231 + _239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_696 + _231 + _239 + 32] = stor0[_173].field_512
                    if ceil32(_696) <= _696:
                        _1324 = mem[64]
                        mem[mem[64]] = _696 + _231 + _239 + -mem[64] + 32
                        mem[64] = _696 + _231 + _239 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1324
                        t = _175
                        continue 
                    _1341 = mem[64]
                    mem[mem[64]] = _696 + _231 + _239 + -mem[64] + 32
                    mem[64] = _696 + _231 + _239 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1341
                    t = _175
                    continue 
                mem[0] = (5 * _173) + sha3(0) + 1
                mem[_182 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                t = _182 + 32
                u = sha3((5 * _173) + sha3(0) + 1)
                while _182 + stor0[_173].field_257 % 128 > t:
                    mem[t + 32] = _getNodeNumberOf[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_175 + 32] = _182
                mem[_175 + 64] = stor0[_173].field_512
                mem[_175 + 96] = stor0[_173].field_768
                mem[_175 + 128] = stor0[_173].field_1024
                _672 = mem[64]
                _684 = mem[s]
                t = 0
                while t < _684:
                    mem[t + _672 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_684) <= _684:
                    _1300 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _1300:
                        mem[s + _672 + _684 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_1300 + _672 + _684 + 32] = stor0[_173].field_512
                    if ceil32(_1300) <= _1300:
                        _2266 = mem[64]
                        mem[mem[64]] = _1300 + _672 + _684 + -mem[64] + 32
                        mem[64] = _1300 + _672 + _684 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2266
                        t = _175
                        continue 
                    _2284 = mem[64]
                    mem[mem[64]] = _1300 + _672 + _684 + -mem[64] + 32
                    mem[64] = _1300 + _672 + _684 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2284
                    t = _175
                    continue 
                mem[_672 + _684 + 32] = 0
                _1322 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _1322:
                    mem[s + _672 + _684 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_1322 + _672 + _684 + 32] = stor0[_173].field_512
                if ceil32(_1322) <= _1322:
                    _2267 = mem[64]
                    mem[mem[64]] = _1322 + _672 + _684 + -mem[64] + 32
                    mem[64] = _1322 + _672 + _684 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2267
                    t = _175
                    continue 
                _2285 = mem[64]
                mem[mem[64]] = _1322 + _672 + _684 + -mem[64] + 32
                mem[64] = _1322 + _672 + _684 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _2285
                t = _175
                continue 
            mem[mem[64]] = 32
            _176 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_176)] = mem[s + 32 len ceil32(_176)]
            if ceil32(_176) > _176:
                mem[mem[64] + _176 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_176) + 32]
        s = 0
        idx = stor0[mem[128]].field_512
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = s
        if not s:
            t = s
            idx = stor0[mem[128]].field_512
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
                    revert with 0, 50
                mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
            idx = 1
            u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
            v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
            while idx < _getNodeNumberOf[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                _1287 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _1294 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1294] = address(stor0[mem[(32 * idx) + 128]].field_0)
                if bool(stor0[_1287].field_256):
                    if bool(stor0[_1287].field_256) == uint255(stor0[_1287].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _1348 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor0[_1287].field_256) * 0.5) + 32
                    mem[_1348] = uint255(stor0[_1287].field_256) * 0.5
                    if bool(stor0[_1287].field_256):
                        if bool(stor0[_1287].field_256) == uint255(stor0[_1287].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor0[_1287].field_256):
                            mem[_1294 + 32] = _1348
                            mem[_1294 + 64] = stor0[_1287].field_512
                            mem[_1294 + 96] = stor0[_1287].field_768
                            mem[_1294 + 128] = stor0[_1287].field_1024
                            _1390 = mem[64]
                            _1399 = mem[u]
                            t = 0
                            while t < _1399:
                                mem[t + _1390 + 32] = mem[t + u + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1399) <= _1399:
                                _2208 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                                t = 0
                                while t < _2208:
                                    mem[t + _1390 + _1399 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                    t = t + 32
                                    continue 
                                mem[_2208 + _1390 + _1399 + 32] = stor0[_1287].field_512
                                if ceil32(_2208) <= _2208:
                                    _2944 = mem[64]
                                    mem[mem[64]] = _2208 + _1390 + _1399 + -mem[64] + 32
                                    mem[64] = _2208 + _1390 + _1399 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = _2944
                                    v = _1294
                                    continue 
                                _3006 = mem[64]
                                mem[mem[64]] = _2208 + _1390 + _1399 + -mem[64] + 32
                                mem[64] = _2208 + _1390 + _1399 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3006
                                v = _1294
                                continue 
                            mem[_1390 + _1399 + 32] = 0
                            _2244 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2244:
                                mem[t + _1390 + _1399 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2244 + _1390 + _1399 + 32] = stor0[_1287].field_512
                            if ceil32(_2244) <= _2244:
                                _2945 = mem[64]
                                mem[mem[64]] = _2244 + _1390 + _1399 + -mem[64] + 32
                                mem[64] = _2244 + _1390 + _1399 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2945
                                v = _1294
                                continue 
                            _3007 = mem[64]
                            mem[mem[64]] = _2244 + _1390 + _1399 + -mem[64] + 32
                            mem[64] = _2244 + _1390 + _1399 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3007
                            v = _1294
                            continue 
                        if 31 >= uint255(stor0[_1287].field_256) * 0.5:
                            mem[_1348 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                            mem[_1294 + 32] = _1348
                            mem[_1294 + 64] = stor0[_1287].field_512
                            mem[_1294 + 96] = stor0[_1287].field_768
                            mem[_1294 + 128] = stor0[_1287].field_1024
                            _1420 = mem[64]
                            _1445 = mem[u]
                            t = 0
                            while t < _1445:
                                mem[t + _1420 + 32] = mem[t + u + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1445) <= _1445:
                                _2210 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                                t = 0
                                while t < _2210:
                                    mem[t + _1420 + _1445 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                    t = t + 32
                                    continue 
                                mem[_2210 + _1420 + _1445 + 32] = stor0[_1287].field_512
                                if ceil32(_2210) <= _2210:
                                    _2947 = mem[64]
                                    mem[mem[64]] = _2210 + _1420 + _1445 + -mem[64] + 32
                                    mem[64] = _2210 + _1420 + _1445 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = _2947
                                    v = _1294
                                    continue 
                                _3008 = mem[64]
                                mem[mem[64]] = _2210 + _1420 + _1445 + -mem[64] + 32
                                mem[64] = _2210 + _1420 + _1445 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3008
                                v = _1294
                                continue 
                            mem[_1420 + _1445 + 32] = 0
                            _2245 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2245:
                                mem[t + _1420 + _1445 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2245 + _1420 + _1445 + 32] = stor0[_1287].field_512
                            if ceil32(_2245) <= _2245:
                                _2948 = mem[64]
                                mem[mem[64]] = _2245 + _1420 + _1445 + -mem[64] + 32
                                mem[64] = _2245 + _1420 + _1445 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2948
                                v = _1294
                                continue 
                            _3009 = mem[64]
                            mem[mem[64]] = _2245 + _1420 + _1445 + -mem[64] + 32
                            mem[64] = _2245 + _1420 + _1445 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3009
                            v = _1294
                            continue 
                        mem[0] = (5 * _1287) + sha3(0) + 1
                        mem[_1348 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                        t = _1348 + 32
                        v = sha3((5 * _1287) + sha3(0) + 1)
                        while _1348 + (uint255(stor0[_1287].field_256) * 0.5) > t:
                            mem[t + 32] = _getNodeNumberOf[v].field_0
                            t = t + 32
                            v = v + 1
                            continue 
                        mem[_1294 + 32] = _1348
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _2183 = mem[64]
                        _2209 = mem[u]
                        t = 0
                        while t < _2209:
                            mem[t + _2183 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_2209) <= _2209:
                            _2928 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2928:
                                mem[t + _2183 + _2209 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2928 + _2183 + _2209 + 32] = stor0[_1287].field_512
                            if ceil32(_2928) <= _2928:
                                _3514 = mem[64]
                                mem[mem[64]] = _2928 + _2183 + _2209 + -mem[64] + 32
                                mem[64] = _2928 + _2183 + _2209 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3514
                                v = _1294
                                continue 
                            _3554 = mem[64]
                            mem[mem[64]] = _2928 + _2183 + _2209 + -mem[64] + 32
                            mem[64] = _2928 + _2183 + _2209 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3554
                            v = _1294
                            continue 
                        mem[_2183 + _2209 + 32] = 0
                        _2946 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2946:
                            mem[t + _2183 + _2209 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2946 + _2183 + _2209 + 32] = stor0[_1287].field_512
                        if ceil32(_2946) <= _2946:
                            _3515 = mem[64]
                            mem[mem[64]] = _2946 + _2183 + _2209 + -mem[64] + 32
                            mem[64] = _2946 + _2183 + _2209 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3515
                            v = _1294
                            continue 
                        _3555 = mem[64]
                        mem[mem[64]] = _2946 + _2183 + _2209 + -mem[64] + 32
                        mem[64] = _2946 + _2183 + _2209 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3555
                        v = _1294
                        continue 
                    if bool(stor0[_1287].field_256) == stor0[_1287].field_257 % 128 < 32:
                        revert with 0, 34
                    if not stor0[_1287].field_257 % 128:
                        mem[_1294 + 32] = _1348
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1402 = mem[64]
                        _1421 = mem[u]
                        t = 0
                        while t < _1421:
                            mem[t + _1402 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1421) <= _1421:
                            _2211 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2211:
                                mem[t + _1402 + _1421 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2211 + _1402 + _1421 + 32] = stor0[_1287].field_512
                            if ceil32(_2211) <= _2211:
                                _2949 = mem[64]
                                mem[mem[64]] = _2211 + _1402 + _1421 + -mem[64] + 32
                                mem[64] = _2211 + _1402 + _1421 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2949
                                v = _1294
                                continue 
                            _3010 = mem[64]
                            mem[mem[64]] = _2211 + _1402 + _1421 + -mem[64] + 32
                            mem[64] = _2211 + _1402 + _1421 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3010
                            v = _1294
                            continue 
                        mem[_1402 + _1421 + 32] = 0
                        _2246 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2246:
                            mem[t + _1402 + _1421 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2246 + _1402 + _1421 + 32] = stor0[_1287].field_512
                        if ceil32(_2246) <= _2246:
                            _2950 = mem[64]
                            mem[mem[64]] = _2246 + _1402 + _1421 + -mem[64] + 32
                            mem[64] = _2246 + _1402 + _1421 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2950
                            v = _1294
                            continue 
                        _3011 = mem[64]
                        mem[mem[64]] = _2246 + _1402 + _1421 + -mem[64] + 32
                        mem[64] = _2246 + _1402 + _1421 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3011
                        v = _1294
                        continue 
                    if 31 >= stor0[_1287].field_257 % 128:
                        mem[_1348 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                        mem[_1294 + 32] = _1348
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1447 = mem[64]
                        _1472 = mem[u]
                        t = 0
                        while t < _1472:
                            mem[t + _1447 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1472) <= _1472:
                            _2213 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2213:
                                mem[t + _1447 + _1472 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2213 + _1447 + _1472 + 32] = stor0[_1287].field_512
                            if ceil32(_2213) <= _2213:
                                _2952 = mem[64]
                                mem[mem[64]] = _2213 + _1447 + _1472 + -mem[64] + 32
                                mem[64] = _2213 + _1447 + _1472 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2952
                                v = _1294
                                continue 
                            _3012 = mem[64]
                            mem[mem[64]] = _2213 + _1447 + _1472 + -mem[64] + 32
                            mem[64] = _2213 + _1447 + _1472 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3012
                            v = _1294
                            continue 
                        mem[_1447 + _1472 + 32] = 0
                        _2247 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2247:
                            mem[t + _1447 + _1472 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2247 + _1447 + _1472 + 32] = stor0[_1287].field_512
                        if ceil32(_2247) <= _2247:
                            _2953 = mem[64]
                            mem[mem[64]] = _2247 + _1447 + _1472 + -mem[64] + 32
                            mem[64] = _2247 + _1447 + _1472 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2953
                            v = _1294
                            continue 
                        _3013 = mem[64]
                        mem[mem[64]] = _2247 + _1447 + _1472 + -mem[64] + 32
                        mem[64] = _2247 + _1447 + _1472 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3013
                        v = _1294
                        continue 
                    mem[0] = (5 * _1287) + sha3(0) + 1
                    mem[_1348 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                    v = _1348 + 32
                    t = sha3((5 * _1287) + sha3(0) + 1)
                    while _1348 + stor0[_1287].field_257 % 128 > v:
                        mem[v + 32] = _getNodeNumberOf[t].field_0
                        v = v + 32
                        t = t + 1
                        continue 
                    mem[_1294 + 32] = _1348
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _2185 = mem[64]
                    _2212 = mem[u]
                    t = 0
                    while t < _2212:
                        mem[t + _2185 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2212) <= _2212:
                        _2929 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2929:
                            mem[t + _2185 + _2212 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2929 + _2185 + _2212 + 32] = stor0[_1287].field_512
                        if ceil32(_2929) <= _2929:
                            _3516 = mem[64]
                            mem[mem[64]] = _2929 + _2185 + _2212 + -mem[64] + 32
                            mem[64] = _2929 + _2185 + _2212 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3516
                            v = _1294
                            continue 
                        _3556 = mem[64]
                        mem[mem[64]] = _2929 + _2185 + _2212 + -mem[64] + 32
                        mem[64] = _2929 + _2185 + _2212 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3556
                        v = _1294
                        continue 
                    mem[_2185 + _2212 + 32] = 0
                    _2951 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2951:
                        mem[t + _2185 + _2212 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2951 + _2185 + _2212 + 32] = stor0[_1287].field_512
                    if ceil32(_2951) <= _2951:
                        _3517 = mem[64]
                        mem[mem[64]] = _2951 + _2185 + _2212 + -mem[64] + 32
                        mem[64] = _2951 + _2185 + _2212 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3517
                        v = _1294
                        continue 
                    _3557 = mem[64]
                    mem[mem[64]] = _2951 + _2185 + _2212 + -mem[64] + 32
                    mem[64] = _2951 + _2185 + _2212 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3557
                    v = _1294
                    continue 
                if bool(stor0[_1287].field_256) == stor0[_1287].field_257 % 128 < 32:
                    revert with 0, 34
                _1358 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_1287].field_257 % 128) + 32
                mem[_1358] = stor0[_1287].field_257 % 128
                if bool(stor0[_1287].field_256):
                    if bool(stor0[_1287].field_256) == uint255(stor0[_1287].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_1287].field_256):
                        mem[_1294 + 32] = _1358
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1404 = mem[64]
                        _1423 = mem[u]
                        t = 0
                        while t < _1423:
                            mem[t + _1404 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1423) <= _1423:
                            _2214 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2214:
                                mem[t + _1404 + _1423 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2214 + _1404 + _1423 + 32] = stor0[_1287].field_512
                            if ceil32(_2214) <= _2214:
                                _2954 = mem[64]
                                mem[mem[64]] = _2214 + _1404 + _1423 + -mem[64] + 32
                                mem[64] = _2214 + _1404 + _1423 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2954
                                v = _1294
                                continue 
                            _3014 = mem[64]
                            mem[mem[64]] = _2214 + _1404 + _1423 + -mem[64] + 32
                            mem[64] = _2214 + _1404 + _1423 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3014
                            v = _1294
                            continue 
                        mem[_1404 + _1423 + 32] = 0
                        _2248 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2248:
                            mem[t + _1404 + _1423 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2248 + _1404 + _1423 + 32] = stor0[_1287].field_512
                        if ceil32(_2248) <= _2248:
                            _2955 = mem[64]
                            mem[mem[64]] = _2248 + _1404 + _1423 + -mem[64] + 32
                            mem[64] = _2248 + _1404 + _1423 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2955
                            v = _1294
                            continue 
                        _3015 = mem[64]
                        mem[mem[64]] = _2248 + _1404 + _1423 + -mem[64] + 32
                        mem[64] = _2248 + _1404 + _1423 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3015
                        v = _1294
                        continue 
                    if 31 >= uint255(stor0[_1287].field_256) * 0.5:
                        mem[_1358 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                        mem[_1294 + 32] = _1358
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1449 = mem[64]
                        _1473 = mem[u]
                        t = 0
                        while t < _1473:
                            mem[t + _1449 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1473) <= _1473:
                            _2216 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2216:
                                mem[t + _1449 + _1473 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2216 + _1449 + _1473 + 32] = stor0[_1287].field_512
                            if ceil32(_2216) <= _2216:
                                _2957 = mem[64]
                                mem[mem[64]] = _2216 + _1449 + _1473 + -mem[64] + 32
                                mem[64] = _2216 + _1449 + _1473 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2957
                                v = _1294
                                continue 
                            _3016 = mem[64]
                            mem[mem[64]] = _2216 + _1449 + _1473 + -mem[64] + 32
                            mem[64] = _2216 + _1449 + _1473 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3016
                            v = _1294
                            continue 
                        mem[_1449 + _1473 + 32] = 0
                        _2249 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2249:
                            mem[t + _1449 + _1473 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2249 + _1449 + _1473 + 32] = stor0[_1287].field_512
                        if ceil32(_2249) <= _2249:
                            _2958 = mem[64]
                            mem[mem[64]] = _2249 + _1449 + _1473 + -mem[64] + 32
                            mem[64] = _2249 + _1449 + _1473 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2958
                            v = _1294
                            continue 
                        _3017 = mem[64]
                        mem[mem[64]] = _2249 + _1449 + _1473 + -mem[64] + 32
                        mem[64] = _2249 + _1449 + _1473 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3017
                        v = _1294
                        continue 
                    mem[0] = (5 * _1287) + sha3(0) + 1
                    mem[_1358 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                    v = _1358 + 32
                    t = sha3((5 * _1287) + sha3(0) + 1)
                    while _1358 + (uint255(stor0[_1287].field_256) * 0.5) > v:
                        mem[v + 32] = _getNodeNumberOf[t].field_0
                        v = v + 32
                        t = t + 1
                        continue 
                    mem[_1294 + 32] = _1358
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _2187 = mem[64]
                    _2215 = mem[u]
                    t = 0
                    while t < _2215:
                        mem[t + _2187 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2215) <= _2215:
                        _2930 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2930:
                            mem[t + _2187 + _2215 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2930 + _2187 + _2215 + 32] = stor0[_1287].field_512
                        if ceil32(_2930) <= _2930:
                            _3518 = mem[64]
                            mem[mem[64]] = _2930 + _2187 + _2215 + -mem[64] + 32
                            mem[64] = _2930 + _2187 + _2215 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3518
                            v = _1294
                            continue 
                        _3558 = mem[64]
                        mem[mem[64]] = _2930 + _2187 + _2215 + -mem[64] + 32
                        mem[64] = _2930 + _2187 + _2215 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3558
                        v = _1294
                        continue 
                    mem[_2187 + _2215 + 32] = 0
                    _2956 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2956:
                        mem[t + _2187 + _2215 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2956 + _2187 + _2215 + 32] = stor0[_1287].field_512
                    if ceil32(_2956) <= _2956:
                        _3519 = mem[64]
                        mem[mem[64]] = _2956 + _2187 + _2215 + -mem[64] + 32
                        mem[64] = _2956 + _2187 + _2215 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3519
                        v = _1294
                        continue 
                    _3559 = mem[64]
                    mem[mem[64]] = _2956 + _2187 + _2215 + -mem[64] + 32
                    mem[64] = _2956 + _2187 + _2215 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3559
                    v = _1294
                    continue 
                if bool(stor0[_1287].field_256) == stor0[_1287].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_1287].field_257 % 128:
                    mem[_1294 + 32] = _1358
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _1426 = mem[64]
                    _1450 = mem[u]
                    t = 0
                    while t < _1450:
                        mem[t + _1426 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1450) <= _1450:
                        _2217 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2217:
                            mem[t + _1426 + _1450 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2217 + _1426 + _1450 + 32] = stor0[_1287].field_512
                        if ceil32(_2217) <= _2217:
                            _2959 = mem[64]
                            mem[mem[64]] = _2217 + _1426 + _1450 + -mem[64] + 32
                            mem[64] = _2217 + _1426 + _1450 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2959
                            v = _1294
                            continue 
                        _3018 = mem[64]
                        mem[mem[64]] = _2217 + _1426 + _1450 + -mem[64] + 32
                        mem[64] = _2217 + _1426 + _1450 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3018
                        v = _1294
                        continue 
                    mem[_1426 + _1450 + 32] = 0
                    _2250 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2250:
                        mem[t + _1426 + _1450 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2250 + _1426 + _1450 + 32] = stor0[_1287].field_512
                    if ceil32(_2250) <= _2250:
                        _2960 = mem[64]
                        mem[mem[64]] = _2250 + _1426 + _1450 + -mem[64] + 32
                        mem[64] = _2250 + _1426 + _1450 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2960
                        v = _1294
                        continue 
                    _3019 = mem[64]
                    mem[mem[64]] = _2250 + _1426 + _1450 + -mem[64] + 32
                    mem[64] = _2250 + _1426 + _1450 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3019
                    v = _1294
                    continue 
                if 31 >= stor0[_1287].field_257 % 128:
                    mem[_1358 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                    mem[_1294 + 32] = _1358
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _1475 = mem[64]
                    _1498 = mem[u]
                    t = 0
                    while t < _1498:
                        mem[t + _1475 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1498) <= _1498:
                        _2219 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2219:
                            mem[t + _1475 + _1498 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2219 + _1475 + _1498 + 32] = stor0[_1287].field_512
                        if ceil32(_2219) <= _2219:
                            _2962 = mem[64]
                            mem[mem[64]] = _2219 + _1475 + _1498 + -mem[64] + 32
                            mem[64] = _2219 + _1475 + _1498 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2962
                            v = _1294
                            continue 
                        _3020 = mem[64]
                        mem[mem[64]] = _2219 + _1475 + _1498 + -mem[64] + 32
                        mem[64] = _2219 + _1475 + _1498 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3020
                        v = _1294
                        continue 
                    mem[_1475 + _1498 + 32] = 0
                    _2251 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2251:
                        mem[t + _1475 + _1498 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2251 + _1475 + _1498 + 32] = stor0[_1287].field_512
                    if ceil32(_2251) <= _2251:
                        _2963 = mem[64]
                        mem[mem[64]] = _2251 + _1475 + _1498 + -mem[64] + 32
                        mem[64] = _2251 + _1475 + _1498 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2963
                        v = _1294
                        continue 
                    _3021 = mem[64]
                    mem[mem[64]] = _2251 + _1475 + _1498 + -mem[64] + 32
                    mem[64] = _2251 + _1475 + _1498 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3021
                    v = _1294
                    continue 
                mem[0] = (5 * _1287) + sha3(0) + 1
                mem[_1358 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                t = _1358 + 32
                v = sha3((5 * _1287) + sha3(0) + 1)
                while _1358 + stor0[_1287].field_257 % 128 > t:
                    mem[t + 32] = _getNodeNumberOf[v].field_0
                    t = t + 32
                    v = v + 1
                    continue 
                mem[_1294 + 32] = _1358
                mem[_1294 + 64] = stor0[_1287].field_512
                mem[_1294 + 96] = stor0[_1287].field_768
                mem[_1294 + 128] = stor0[_1287].field_1024
                _2189 = mem[64]
                _2218 = mem[u]
                t = 0
                while t < _2218:
                    mem[t + _2189 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_2218) <= _2218:
                    _2931 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2931:
                        mem[t + _2189 + _2218 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2931 + _2189 + _2218 + 32] = stor0[_1287].field_512
                    if ceil32(_2931) <= _2931:
                        _3520 = mem[64]
                        mem[mem[64]] = _2931 + _2189 + _2218 + -mem[64] + 32
                        mem[64] = _2931 + _2189 + _2218 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3520
                        v = _1294
                        continue 
                    _3560 = mem[64]
                    mem[mem[64]] = _2931 + _2189 + _2218 + -mem[64] + 32
                    mem[64] = _2931 + _2189 + _2218 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3560
                    v = _1294
                    continue 
                mem[_2189 + _2218 + 32] = 0
                _2961 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2961:
                    mem[t + _2189 + _2218 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2961 + _2189 + _2218 + 32] = stor0[_1287].field_512
                if ceil32(_2961) <= _2961:
                    _3521 = mem[64]
                    mem[mem[64]] = _2961 + _2189 + _2218 + -mem[64] + 32
                    mem[64] = _2961 + _2189 + _2218 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3521
                    v = _1294
                    continue 
                _3561 = mem[64]
                mem[mem[64]] = _2961 + _2189 + _2218 + -mem[64] + 32
                mem[64] = _2961 + _2189 + _2218 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3561
                v = _1294
                continue 
            _1286 = mem[64]
            mem[mem[64]] = 32
            _1303 = mem[u]
            mem[mem[64] + 32] = mem[u]
            mem[mem[64] + 64 len ceil32(_1303)] = mem[u + 32 len ceil32(_1303)]
            if ceil32(_1303) <= _1303:
                return 32, mem[mem[64] + 32 len ceil32(_1303) + 32]
            mem[mem[64] + _1303 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_1303) + _1286 + -mem[64] + 64
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320 len s] = call.data[calldata.size len s]
        t = s
        idx = stor0[mem[128]].field_512
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
                revert with 0, 50
            mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
        v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _1289 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _1296 = mem[64]
            mem[64] = mem[64] + 160
            mem[_1296] = address(stor0[mem[(32 * idx) + 128]].field_0)
            if bool(stor0[_1289].field_256):
                if bool(stor0[_1289].field_256) == uint255(stor0[_1289].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1350 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor0[_1289].field_256) * 0.5) + 32
                mem[_1350] = uint255(stor0[_1289].field_256) * 0.5
                if bool(stor0[_1289].field_256):
                    if bool(stor0[_1289].field_256) == uint255(stor0[_1289].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_1289].field_256):
                        mem[_1296 + 32] = _1350
                        mem[_1296 + 64] = stor0[_1289].field_512
                        mem[_1296 + 96] = stor0[_1289].field_768
                        mem[_1296 + 128] = stor0[_1289].field_1024
                        _1393 = mem[64]
                        _1406 = mem[u]
                        t = 0
                        while t < _1406:
                            mem[t + _1393 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1406) <= _1406:
                            _2220 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2220:
                                mem[t + _1393 + _1406 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2220 + _1393 + _1406 + 32] = stor0[_1289].field_512
                            if ceil32(_2220) <= _2220:
                                _2964 = mem[64]
                                mem[mem[64]] = _2220 + _1393 + _1406 + -mem[64] + 32
                                mem[64] = _2220 + _1393 + _1406 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2964
                                v = _1296
                                continue 
                            _3022 = mem[64]
                            mem[mem[64]] = _2220 + _1393 + _1406 + -mem[64] + 32
                            mem[64] = _2220 + _1393 + _1406 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3022
                            v = _1296
                            continue 
                        mem[_1393 + _1406 + 32] = 0
                        _2252 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2252:
                            mem[t + _1393 + _1406 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2252 + _1393 + _1406 + 32] = stor0[_1289].field_512
                        if ceil32(_2252) <= _2252:
                            _2965 = mem[64]
                            mem[mem[64]] = _2252 + _1393 + _1406 + -mem[64] + 32
                            mem[64] = _2252 + _1393 + _1406 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2965
                            v = _1296
                            continue 
                        _3023 = mem[64]
                        mem[mem[64]] = _2252 + _1393 + _1406 + -mem[64] + 32
                        mem[64] = _2252 + _1393 + _1406 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3023
                        v = _1296
                        continue 
                    if 31 >= uint255(stor0[_1289].field_256) * 0.5:
                        mem[_1350 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                        mem[_1296 + 32] = _1350
                        mem[_1296 + 64] = stor0[_1289].field_512
                        mem[_1296 + 96] = stor0[_1289].field_768
                        mem[_1296 + 128] = stor0[_1289].field_1024
                        _1428 = mem[64]
                        _1452 = mem[u]
                        t = 0
                        while t < _1452:
                            mem[t + _1428 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1452) <= _1452:
                            _2222 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2222:
                                mem[t + _1428 + _1452 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2222 + _1428 + _1452 + 32] = stor0[_1289].field_512
                            if ceil32(_2222) <= _2222:
                                _2967 = mem[64]
                                mem[mem[64]] = _2222 + _1428 + _1452 + -mem[64] + 32
                                mem[64] = _2222 + _1428 + _1452 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2967
                                v = _1296
                                continue 
                            _3024 = mem[64]
                            mem[mem[64]] = _2222 + _1428 + _1452 + -mem[64] + 32
                            mem[64] = _2222 + _1428 + _1452 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3024
                            v = _1296
                            continue 
                        mem[_1428 + _1452 + 32] = 0
                        _2253 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2253:
                            mem[t + _1428 + _1452 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2253 + _1428 + _1452 + 32] = stor0[_1289].field_512
                        if ceil32(_2253) <= _2253:
                            _2968 = mem[64]
                            mem[mem[64]] = _2253 + _1428 + _1452 + -mem[64] + 32
                            mem[64] = _2253 + _1428 + _1452 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2968
                            v = _1296
                            continue 
                        _3025 = mem[64]
                        mem[mem[64]] = _2253 + _1428 + _1452 + -mem[64] + 32
                        mem[64] = _2253 + _1428 + _1452 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3025
                        v = _1296
                        continue 
                    mem[0] = (5 * _1289) + sha3(0) + 1
                    mem[_1350 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
                    t = _1350 + 32
                    v = sha3((5 * _1289) + sha3(0) + 1)
                    while _1350 + (uint255(stor0[_1289].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[v].field_0
                        t = t + 32
                        v = v + 1
                        continue 
                    mem[_1296 + 32] = _1350
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _2191 = mem[64]
                    _2221 = mem[u]
                    t = 0
                    while t < _2221:
                        mem[t + _2191 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2221) <= _2221:
                        _2932 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2932:
                            mem[t + _2191 + _2221 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2932 + _2191 + _2221 + 32] = stor0[_1289].field_512
                        if ceil32(_2932) <= _2932:
                            _3522 = mem[64]
                            mem[mem[64]] = _2932 + _2191 + _2221 + -mem[64] + 32
                            mem[64] = _2932 + _2191 + _2221 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3522
                            v = _1296
                            continue 
                        _3562 = mem[64]
                        mem[mem[64]] = _2932 + _2191 + _2221 + -mem[64] + 32
                        mem[64] = _2932 + _2191 + _2221 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3562
                        v = _1296
                        continue 
                    mem[_2191 + _2221 + 32] = 0
                    _2966 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2966:
                        mem[t + _2191 + _2221 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2966 + _2191 + _2221 + 32] = stor0[_1289].field_512
                    if ceil32(_2966) <= _2966:
                        _3523 = mem[64]
                        mem[mem[64]] = _2966 + _2191 + _2221 + -mem[64] + 32
                        mem[64] = _2966 + _2191 + _2221 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3523
                        v = _1296
                        continue 
                    _3563 = mem[64]
                    mem[mem[64]] = _2966 + _2191 + _2221 + -mem[64] + 32
                    mem[64] = _2966 + _2191 + _2221 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3563
                    v = _1296
                    continue 
                if bool(stor0[_1289].field_256) == stor0[_1289].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_1289].field_257 % 128:
                    mem[_1296 + 32] = _1350
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1409 = mem[64]
                    _1429 = mem[u]
                    t = 0
                    while t < _1429:
                        mem[t + _1409 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1429) <= _1429:
                        _2223 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2223:
                            mem[t + _1409 + _1429 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2223 + _1409 + _1429 + 32] = stor0[_1289].field_512
                        if ceil32(_2223) <= _2223:
                            _2969 = mem[64]
                            mem[mem[64]] = _2223 + _1409 + _1429 + -mem[64] + 32
                            mem[64] = _2223 + _1409 + _1429 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2969
                            v = _1296
                            continue 
                        _3026 = mem[64]
                        mem[mem[64]] = _2223 + _1409 + _1429 + -mem[64] + 32
                        mem[64] = _2223 + _1409 + _1429 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3026
                        v = _1296
                        continue 
                    mem[_1409 + _1429 + 32] = 0
                    _2254 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2254:
                        mem[t + _1409 + _1429 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2254 + _1409 + _1429 + 32] = stor0[_1289].field_512
                    if ceil32(_2254) <= _2254:
                        _2970 = mem[64]
                        mem[mem[64]] = _2254 + _1409 + _1429 + -mem[64] + 32
                        mem[64] = _2254 + _1409 + _1429 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2970
                        v = _1296
                        continue 
                    _3027 = mem[64]
                    mem[mem[64]] = _2254 + _1409 + _1429 + -mem[64] + 32
                    mem[64] = _2254 + _1409 + _1429 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3027
                    v = _1296
                    continue 
                if 31 >= stor0[_1289].field_257 % 128:
                    mem[_1350 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                    mem[_1296 + 32] = _1350
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1454 = mem[64]
                    _1479 = mem[u]
                    t = 0
                    while t < _1479:
                        mem[t + _1454 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1479) <= _1479:
                        _2225 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2225:
                            mem[t + _1454 + _1479 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2225 + _1454 + _1479 + 32] = stor0[_1289].field_512
                        if ceil32(_2225) <= _2225:
                            _2972 = mem[64]
                            mem[mem[64]] = _2225 + _1454 + _1479 + -mem[64] + 32
                            mem[64] = _2225 + _1454 + _1479 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2972
                            v = _1296
                            continue 
                        _3028 = mem[64]
                        mem[mem[64]] = _2225 + _1454 + _1479 + -mem[64] + 32
                        mem[64] = _2225 + _1454 + _1479 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3028
                        v = _1296
                        continue 
                    mem[_1454 + _1479 + 32] = 0
                    _2255 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2255:
                        mem[t + _1454 + _1479 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2255 + _1454 + _1479 + 32] = stor0[_1289].field_512
                    if ceil32(_2255) <= _2255:
                        _2973 = mem[64]
                        mem[mem[64]] = _2255 + _1454 + _1479 + -mem[64] + 32
                        mem[64] = _2255 + _1454 + _1479 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2973
                        v = _1296
                        continue 
                    _3029 = mem[64]
                    mem[mem[64]] = _2255 + _1454 + _1479 + -mem[64] + 32
                    mem[64] = _2255 + _1454 + _1479 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3029
                    v = _1296
                    continue 
                mem[0] = (5 * _1289) + sha3(0) + 1
                mem[_1350 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
                v = _1350 + 32
                t = sha3((5 * _1289) + sha3(0) + 1)
                while _1350 + stor0[_1289].field_257 % 128 > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_1296 + 32] = _1350
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _2193 = mem[64]
                _2224 = mem[u]
                t = 0
                while t < _2224:
                    mem[t + _2193 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_2224) <= _2224:
                    _2933 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2933:
                        mem[t + _2193 + _2224 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2933 + _2193 + _2224 + 32] = stor0[_1289].field_512
                    if ceil32(_2933) <= _2933:
                        _3524 = mem[64]
                        mem[mem[64]] = _2933 + _2193 + _2224 + -mem[64] + 32
                        mem[64] = _2933 + _2193 + _2224 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3524
                        v = _1296
                        continue 
                    _3564 = mem[64]
                    mem[mem[64]] = _2933 + _2193 + _2224 + -mem[64] + 32
                    mem[64] = _2933 + _2193 + _2224 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3564
                    v = _1296
                    continue 
                mem[_2193 + _2224 + 32] = 0
                _2971 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2971:
                    mem[t + _2193 + _2224 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2971 + _2193 + _2224 + 32] = stor0[_1289].field_512
                if ceil32(_2971) <= _2971:
                    _3525 = mem[64]
                    mem[mem[64]] = _2971 + _2193 + _2224 + -mem[64] + 32
                    mem[64] = _2971 + _2193 + _2224 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3525
                    v = _1296
                    continue 
                _3565 = mem[64]
                mem[mem[64]] = _2971 + _2193 + _2224 + -mem[64] + 32
                mem[64] = _2971 + _2193 + _2224 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3565
                v = _1296
                continue 
            if bool(stor0[_1289].field_256) == stor0[_1289].field_257 % 128 < 32:
                revert with 0, 34
            _1359 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[_1289].field_257 % 128) + 32
            mem[_1359] = stor0[_1289].field_257 % 128
            if bool(stor0[_1289].field_256):
                if bool(stor0[_1289].field_256) == uint255(stor0[_1289].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_1289].field_256):
                    mem[_1296 + 32] = _1359
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1411 = mem[64]
                    _1431 = mem[u]
                    t = 0
                    while t < _1431:
                        mem[t + _1411 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1431) <= _1431:
                        _2226 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2226:
                            mem[t + _1411 + _1431 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2226 + _1411 + _1431 + 32] = stor0[_1289].field_512
                        if ceil32(_2226) <= _2226:
                            _2974 = mem[64]
                            mem[mem[64]] = _2226 + _1411 + _1431 + -mem[64] + 32
                            mem[64] = _2226 + _1411 + _1431 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2974
                            v = _1296
                            continue 
                        _3030 = mem[64]
                        mem[mem[64]] = _2226 + _1411 + _1431 + -mem[64] + 32
                        mem[64] = _2226 + _1411 + _1431 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3030
                        v = _1296
                        continue 
                    mem[_1411 + _1431 + 32] = 0
                    _2256 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2256:
                        mem[t + _1411 + _1431 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2256 + _1411 + _1431 + 32] = stor0[_1289].field_512
                    if ceil32(_2256) <= _2256:
                        _2975 = mem[64]
                        mem[mem[64]] = _2256 + _1411 + _1431 + -mem[64] + 32
                        mem[64] = _2256 + _1411 + _1431 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2975
                        v = _1296
                        continue 
                    _3031 = mem[64]
                    mem[mem[64]] = _2256 + _1411 + _1431 + -mem[64] + 32
                    mem[64] = _2256 + _1411 + _1431 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3031
                    v = _1296
                    continue 
                if 31 >= uint255(stor0[_1289].field_256) * 0.5:
                    mem[_1359 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                    mem[_1296 + 32] = _1359
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1456 = mem[64]
                    _1480 = mem[u]
                    t = 0
                    while t < _1480:
                        mem[t + _1456 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1480) <= _1480:
                        _2228 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2228:
                            mem[t + _1456 + _1480 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2228 + _1456 + _1480 + 32] = stor0[_1289].field_512
                        if ceil32(_2228) <= _2228:
                            _2977 = mem[64]
                            mem[mem[64]] = _2228 + _1456 + _1480 + -mem[64] + 32
                            mem[64] = _2228 + _1456 + _1480 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2977
                            v = _1296
                            continue 
                        _3032 = mem[64]
                        mem[mem[64]] = _2228 + _1456 + _1480 + -mem[64] + 32
                        mem[64] = _2228 + _1456 + _1480 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3032
                        v = _1296
                        continue 
                    mem[_1456 + _1480 + 32] = 0
                    _2257 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2257:
                        mem[t + _1456 + _1480 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2257 + _1456 + _1480 + 32] = stor0[_1289].field_512
                    if ceil32(_2257) <= _2257:
                        _2978 = mem[64]
                        mem[mem[64]] = _2257 + _1456 + _1480 + -mem[64] + 32
                        mem[64] = _2257 + _1456 + _1480 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2978
                        v = _1296
                        continue 
                    _3033 = mem[64]
                    mem[mem[64]] = _2257 + _1456 + _1480 + -mem[64] + 32
                    mem[64] = _2257 + _1456 + _1480 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3033
                    v = _1296
                    continue 
                mem[0] = (5 * _1289) + sha3(0) + 1
                mem[_1359 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
                v = _1359 + 32
                t = sha3((5 * _1289) + sha3(0) + 1)
                while _1359 + (uint255(stor0[_1289].field_256) * 0.5) > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_1296 + 32] = _1359
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _2195 = mem[64]
                _2227 = mem[u]
                t = 0
                while t < _2227:
                    mem[t + _2195 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_2227) <= _2227:
                    _2934 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2934:
                        mem[t + _2195 + _2227 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2934 + _2195 + _2227 + 32] = stor0[_1289].field_512
                    if ceil32(_2934) <= _2934:
                        _3526 = mem[64]
                        mem[mem[64]] = _2934 + _2195 + _2227 + -mem[64] + 32
                        mem[64] = _2934 + _2195 + _2227 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3526
                        v = _1296
                        continue 
                    _3566 = mem[64]
                    mem[mem[64]] = _2934 + _2195 + _2227 + -mem[64] + 32
                    mem[64] = _2934 + _2195 + _2227 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3566
                    v = _1296
                    continue 
                mem[_2195 + _2227 + 32] = 0
                _2976 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2976:
                    mem[t + _2195 + _2227 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2976 + _2195 + _2227 + 32] = stor0[_1289].field_512
                if ceil32(_2976) <= _2976:
                    _3527 = mem[64]
                    mem[mem[64]] = _2976 + _2195 + _2227 + -mem[64] + 32
                    mem[64] = _2976 + _2195 + _2227 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3527
                    v = _1296
                    continue 
                _3567 = mem[64]
                mem[mem[64]] = _2976 + _2195 + _2227 + -mem[64] + 32
                mem[64] = _2976 + _2195 + _2227 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3567
                v = _1296
                continue 
            if bool(stor0[_1289].field_256) == stor0[_1289].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_1289].field_257 % 128:
                mem[_1296 + 32] = _1359
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _1434 = mem[64]
                _1457 = mem[u]
                t = 0
                while t < _1457:
                    mem[t + _1434 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_1457) <= _1457:
                    _2229 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2229:
                        mem[t + _1434 + _1457 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2229 + _1434 + _1457 + 32] = stor0[_1289].field_512
                    if ceil32(_2229) <= _2229:
                        _2979 = mem[64]
                        mem[mem[64]] = _2229 + _1434 + _1457 + -mem[64] + 32
                        mem[64] = _2229 + _1434 + _1457 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2979
                        v = _1296
                        continue 
                    _3034 = mem[64]
                    mem[mem[64]] = _2229 + _1434 + _1457 + -mem[64] + 32
                    mem[64] = _2229 + _1434 + _1457 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3034
                    v = _1296
                    continue 
                mem[_1434 + _1457 + 32] = 0
                _2258 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2258:
                    mem[t + _1434 + _1457 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2258 + _1434 + _1457 + 32] = stor0[_1289].field_512
                if ceil32(_2258) <= _2258:
                    _2980 = mem[64]
                    mem[mem[64]] = _2258 + _1434 + _1457 + -mem[64] + 32
                    mem[64] = _2258 + _1434 + _1457 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _2980
                    v = _1296
                    continue 
                _3035 = mem[64]
                mem[mem[64]] = _2258 + _1434 + _1457 + -mem[64] + 32
                mem[64] = _2258 + _1434 + _1457 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3035
                v = _1296
                continue 
            if 31 >= stor0[_1289].field_257 % 128:
                mem[_1359 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                mem[_1296 + 32] = _1359
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _1482 = mem[64]
                _1506 = mem[u]
                t = 0
                while t < _1506:
                    mem[t + _1482 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_1506) <= _1506:
                    _2231 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2231:
                        mem[t + _1482 + _1506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2231 + _1482 + _1506 + 32] = stor0[_1289].field_512
                    if ceil32(_2231) <= _2231:
                        _2982 = mem[64]
                        mem[mem[64]] = _2231 + _1482 + _1506 + -mem[64] + 32
                        mem[64] = _2231 + _1482 + _1506 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2982
                        v = _1296
                        continue 
                    _3036 = mem[64]
                    mem[mem[64]] = _2231 + _1482 + _1506 + -mem[64] + 32
                    mem[64] = _2231 + _1482 + _1506 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3036
                    v = _1296
                    continue 
                mem[_1482 + _1506 + 32] = 0
                _2259 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2259:
                    mem[t + _1482 + _1506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2259 + _1482 + _1506 + 32] = stor0[_1289].field_512
                if ceil32(_2259) <= _2259:
                    _2983 = mem[64]
                    mem[mem[64]] = _2259 + _1482 + _1506 + -mem[64] + 32
                    mem[64] = _2259 + _1482 + _1506 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _2983
                    v = _1296
                    continue 
                _3037 = mem[64]
                mem[mem[64]] = _2259 + _1482 + _1506 + -mem[64] + 32
                mem[64] = _2259 + _1482 + _1506 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3037
                v = _1296
                continue 
            mem[0] = (5 * _1289) + sha3(0) + 1
            mem[_1359 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
            t = _1359 + 32
            v = sha3((5 * _1289) + sha3(0) + 1)
            while _1359 + stor0[_1289].field_257 % 128 > t:
                mem[t + 32] = _getNodeNumberOf[v].field_0
                t = t + 32
                v = v + 1
                continue 
            mem[_1296 + 32] = _1359
            mem[_1296 + 64] = stor0[_1289].field_512
            mem[_1296 + 96] = stor0[_1289].field_768
            mem[_1296 + 128] = stor0[_1289].field_1024
            _2197 = mem[64]
            _2230 = mem[u]
            t = 0
            while t < _2230:
                mem[t + _2197 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_2230) <= _2230:
                _2935 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2935:
                    mem[t + _2197 + _2230 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2935 + _2197 + _2230 + 32] = stor0[_1289].field_512
                if ceil32(_2935) <= _2935:
                    _3528 = mem[64]
                    mem[mem[64]] = _2935 + _2197 + _2230 + -mem[64] + 32
                    mem[64] = _2935 + _2197 + _2230 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3528
                    v = _1296
                    continue 
                _3568 = mem[64]
                mem[mem[64]] = _2935 + _2197 + _2230 + -mem[64] + 32
                mem[64] = _2935 + _2197 + _2230 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3568
                v = _1296
                continue 
            mem[_2197 + _2230 + 32] = 0
            _2981 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _2981:
                mem[t + _2197 + _2230 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_2981 + _2197 + _2230 + 32] = stor0[_1289].field_512
            if ceil32(_2981) <= _2981:
                _3529 = mem[64]
                mem[mem[64]] = _2981 + _2197 + _2230 + -mem[64] + 32
                mem[64] = _2981 + _2197 + _2230 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3529
                v = _1296
                continue 
            _3569 = mem[64]
            mem[mem[64]] = _2981 + _2197 + _2230 + -mem[64] + 32
            mem[64] = _2981 + _2197 + _2230 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3569
            v = _1296
            continue 
        mem[mem[64]] = 32
        _1304 = mem[u]
        mem[mem[64] + 32] = mem[u]
        mem[mem[64] + 64 len ceil32(_1304)] = mem[u + 32 len ceil32(_1304)]
        if ceil32(_1304) > _1304:
            mem[mem[64] + _1304 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_1304) + 32]
    mem[128] = _getNodeNumberOf[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * _getNodeNumberOf[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = _getNodeNumberOf[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 128] = 0
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 160] = 96
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 192] = 0
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 224] = 0
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 256] = 0
    if 0 >= _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 50
    if mem[128] >= stor0.length:
        revert with 0, 50
    mem[0] = 0
    if not stor0[mem[128]].field_512:
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 416
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 384] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
        t = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _1292 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _1302 = mem[64]
            mem[64] = mem[64] + 160
            mem[_1302] = address(stor0[mem[(32 * idx) + 128]].field_0)
            if bool(stor0[_1292].field_256):
                if bool(stor0[_1292].field_256) == uint255(stor0[_1292].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1357 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor0[_1292].field_256) * 0.5) + 32
                mem[_1357] = uint255(stor0[_1292].field_256) * 0.5
                if bool(stor0[_1292].field_256):
                    if bool(stor0[_1292].field_256) == uint255(stor0[_1292].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_1292].field_256):
                        mem[_1302 + 32] = _1357
                        mem[_1302 + 64] = stor0[_1292].field_512
                        mem[_1302 + 96] = stor0[_1292].field_768
                        mem[_1302 + 128] = stor0[_1292].field_1024
                        _1397 = mem[64]
                        _1413 = mem[s]
                        t = 0
                        while t < _1413:
                            mem[t + _1397 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1413) <= _1413:
                            _2232 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _2232:
                                mem[s + _1397 + _1413 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_2232 + _1397 + _1413 + 32] = stor0[_1292].field_512
                            if ceil32(_2232) <= _2232:
                                _2986 = mem[64]
                                mem[mem[64]] = _2232 + _1397 + _1413 + -mem[64] + 32
                                mem[64] = _2232 + _1397 + _1413 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _2986
                                t = _1302
                                continue 
                            _3038 = mem[64]
                            mem[mem[64]] = _2232 + _1397 + _1413 + -mem[64] + 32
                            mem[64] = _2232 + _1397 + _1413 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3038
                            t = _1302
                            continue 
                        mem[_1397 + _1413 + 32] = 0
                        _2270 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2270:
                            mem[s + _1397 + _1413 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2270 + _1397 + _1413 + 32] = stor0[_1292].field_512
                        if ceil32(_2270) <= _2270:
                            _2987 = mem[64]
                            mem[mem[64]] = _2270 + _1397 + _1413 + -mem[64] + 32
                            mem[64] = _2270 + _1397 + _1413 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2987
                            t = _1302
                            continue 
                        _3039 = mem[64]
                        mem[mem[64]] = _2270 + _1397 + _1413 + -mem[64] + 32
                        mem[64] = _2270 + _1397 + _1413 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3039
                        t = _1302
                        continue 
                    if 31 >= uint255(stor0[_1292].field_256) * 0.5:
                        mem[_1357 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                        mem[_1302 + 32] = _1357
                        mem[_1302 + 64] = stor0[_1292].field_512
                        mem[_1302 + 96] = stor0[_1292].field_768
                        mem[_1302 + 128] = stor0[_1292].field_1024
                        _1438 = mem[64]
                        _1462 = mem[s]
                        t = 0
                        while t < _1462:
                            mem[t + _1438 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1462) <= _1462:
                            _2234 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _2234:
                                mem[s + _1438 + _1462 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_2234 + _1438 + _1462 + 32] = stor0[_1292].field_512
                            if ceil32(_2234) <= _2234:
                                _2989 = mem[64]
                                mem[mem[64]] = _2234 + _1438 + _1462 + -mem[64] + 32
                                mem[64] = _2234 + _1438 + _1462 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _2989
                                t = _1302
                                continue 
                            _3040 = mem[64]
                            mem[mem[64]] = _2234 + _1438 + _1462 + -mem[64] + 32
                            mem[64] = _2234 + _1438 + _1462 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3040
                            t = _1302
                            continue 
                        mem[_1438 + _1462 + 32] = 0
                        _2271 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2271:
                            mem[s + _1438 + _1462 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2271 + _1438 + _1462 + 32] = stor0[_1292].field_512
                        if ceil32(_2271) <= _2271:
                            _2990 = mem[64]
                            mem[mem[64]] = _2271 + _1438 + _1462 + -mem[64] + 32
                            mem[64] = _2271 + _1438 + _1462 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2990
                            t = _1302
                            continue 
                        _3041 = mem[64]
                        mem[mem[64]] = _2271 + _1438 + _1462 + -mem[64] + 32
                        mem[64] = _2271 + _1438 + _1462 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3041
                        t = _1302
                        continue 
                    mem[0] = (5 * _1292) + sha3(0) + 1
                    mem[_1357 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
                    t = _1357 + 32
                    u = sha3((5 * _1292) + sha3(0) + 1)
                    while _1357 + (uint255(stor0[_1292].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1302 + 32] = _1357
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _2201 = mem[64]
                    _2233 = mem[s]
                    t = 0
                    while t < _2233:
                        mem[t + _2201 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2233) <= _2233:
                        _2940 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2940:
                            mem[s + _2201 + _2233 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2940 + _2201 + _2233 + 32] = stor0[_1292].field_512
                        if ceil32(_2940) <= _2940:
                            _3546 = mem[64]
                            mem[mem[64]] = _2940 + _2201 + _2233 + -mem[64] + 32
                            mem[64] = _2940 + _2201 + _2233 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3546
                            t = _1302
                            continue 
                        _3570 = mem[64]
                        mem[mem[64]] = _2940 + _2201 + _2233 + -mem[64] + 32
                        mem[64] = _2940 + _2201 + _2233 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3570
                        t = _1302
                        continue 
                    mem[_2201 + _2233 + 32] = 0
                    _2988 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2988:
                        mem[s + _2201 + _2233 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2988 + _2201 + _2233 + 32] = stor0[_1292].field_512
                    if ceil32(_2988) <= _2988:
                        _3547 = mem[64]
                        mem[mem[64]] = _2988 + _2201 + _2233 + -mem[64] + 32
                        mem[64] = _2988 + _2201 + _2233 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3547
                        t = _1302
                        continue 
                    _3571 = mem[64]
                    mem[mem[64]] = _2988 + _2201 + _2233 + -mem[64] + 32
                    mem[64] = _2988 + _2201 + _2233 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3571
                    t = _1302
                    continue 
                if bool(stor0[_1292].field_256) == stor0[_1292].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_1292].field_257 % 128:
                    mem[_1302 + 32] = _1357
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1416 = mem[64]
                    _1439 = mem[s]
                    t = 0
                    while t < _1439:
                        mem[t + _1416 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1439) <= _1439:
                        _2235 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2235:
                            mem[s + _1416 + _1439 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2235 + _1416 + _1439 + 32] = stor0[_1292].field_512
                        if ceil32(_2235) <= _2235:
                            _2991 = mem[64]
                            mem[mem[64]] = _2235 + _1416 + _1439 + -mem[64] + 32
                            mem[64] = _2235 + _1416 + _1439 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2991
                            t = _1302
                            continue 
                        _3042 = mem[64]
                        mem[mem[64]] = _2235 + _1416 + _1439 + -mem[64] + 32
                        mem[64] = _2235 + _1416 + _1439 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3042
                        t = _1302
                        continue 
                    mem[_1416 + _1439 + 32] = 0
                    _2272 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2272:
                        mem[s + _1416 + _1439 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2272 + _1416 + _1439 + 32] = stor0[_1292].field_512
                    if ceil32(_2272) <= _2272:
                        _2992 = mem[64]
                        mem[mem[64]] = _2272 + _1416 + _1439 + -mem[64] + 32
                        mem[64] = _2272 + _1416 + _1439 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2992
                        t = _1302
                        continue 
                    _3043 = mem[64]
                    mem[mem[64]] = _2272 + _1416 + _1439 + -mem[64] + 32
                    mem[64] = _2272 + _1416 + _1439 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3043
                    t = _1302
                    continue 
                if 31 >= stor0[_1292].field_257 % 128:
                    mem[_1357 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                    mem[_1302 + 32] = _1357
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1464 = mem[64]
                    _1487 = mem[s]
                    t = 0
                    while t < _1487:
                        mem[t + _1464 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1487) <= _1487:
                        _2237 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2237:
                            mem[s + _1464 + _1487 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2237 + _1464 + _1487 + 32] = stor0[_1292].field_512
                        if ceil32(_2237) <= _2237:
                            _2994 = mem[64]
                            mem[mem[64]] = _2237 + _1464 + _1487 + -mem[64] + 32
                            mem[64] = _2237 + _1464 + _1487 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2994
                            t = _1302
                            continue 
                        _3044 = mem[64]
                        mem[mem[64]] = _2237 + _1464 + _1487 + -mem[64] + 32
                        mem[64] = _2237 + _1464 + _1487 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3044
                        t = _1302
                        continue 
                    mem[_1464 + _1487 + 32] = 0
                    _2273 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2273:
                        mem[s + _1464 + _1487 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2273 + _1464 + _1487 + 32] = stor0[_1292].field_512
                    if ceil32(_2273) <= _2273:
                        _2995 = mem[64]
                        mem[mem[64]] = _2273 + _1464 + _1487 + -mem[64] + 32
                        mem[64] = _2273 + _1464 + _1487 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2995
                        t = _1302
                        continue 
                    _3045 = mem[64]
                    mem[mem[64]] = _2273 + _1464 + _1487 + -mem[64] + 32
                    mem[64] = _2273 + _1464 + _1487 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3045
                    t = _1302
                    continue 
                mem[0] = (5 * _1292) + sha3(0) + 1
                mem[_1357 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
                t = _1357 + 32
                u = sha3((5 * _1292) + sha3(0) + 1)
                while _1357 + stor0[_1292].field_257 % 128 > t:
                    mem[t + 32] = _getNodeNumberOf[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1302 + 32] = _1357
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _2203 = mem[64]
                _2236 = mem[s]
                t = 0
                while t < _2236:
                    mem[t + _2203 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2236) <= _2236:
                    _2941 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2941:
                        mem[s + _2203 + _2236 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2941 + _2203 + _2236 + 32] = stor0[_1292].field_512
                    if ceil32(_2941) <= _2941:
                        _3548 = mem[64]
                        mem[mem[64]] = _2941 + _2203 + _2236 + -mem[64] + 32
                        mem[64] = _2941 + _2203 + _2236 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3548
                        t = _1302
                        continue 
                    _3572 = mem[64]
                    mem[mem[64]] = _2941 + _2203 + _2236 + -mem[64] + 32
                    mem[64] = _2941 + _2203 + _2236 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3572
                    t = _1302
                    continue 
                mem[_2203 + _2236 + 32] = 0
                _2993 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2993:
                    mem[s + _2203 + _2236 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2993 + _2203 + _2236 + 32] = stor0[_1292].field_512
                if ceil32(_2993) <= _2993:
                    _3549 = mem[64]
                    mem[mem[64]] = _2993 + _2203 + _2236 + -mem[64] + 32
                    mem[64] = _2993 + _2203 + _2236 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3549
                    t = _1302
                    continue 
                _3573 = mem[64]
                mem[mem[64]] = _2993 + _2203 + _2236 + -mem[64] + 32
                mem[64] = _2993 + _2203 + _2236 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3573
                t = _1302
                continue 
            if bool(stor0[_1292].field_256) == stor0[_1292].field_257 % 128 < 32:
                revert with 0, 34
            _1361 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[_1292].field_257 % 128) + 32
            mem[_1361] = stor0[_1292].field_257 % 128
            if bool(stor0[_1292].field_256):
                if bool(stor0[_1292].field_256) == uint255(stor0[_1292].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_1292].field_256):
                    mem[_1302 + 32] = _1361
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1418 = mem[64]
                    _1441 = mem[s]
                    t = 0
                    while t < _1441:
                        mem[t + _1418 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1441) <= _1441:
                        _2238 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2238:
                            mem[s + _1418 + _1441 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2238 + _1418 + _1441 + 32] = stor0[_1292].field_512
                        if ceil32(_2238) <= _2238:
                            _2996 = mem[64]
                            mem[mem[64]] = _2238 + _1418 + _1441 + -mem[64] + 32
                            mem[64] = _2238 + _1418 + _1441 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2996
                            t = _1302
                            continue 
                        _3046 = mem[64]
                        mem[mem[64]] = _2238 + _1418 + _1441 + -mem[64] + 32
                        mem[64] = _2238 + _1418 + _1441 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3046
                        t = _1302
                        continue 
                    mem[_1418 + _1441 + 32] = 0
                    _2274 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2274:
                        mem[s + _1418 + _1441 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2274 + _1418 + _1441 + 32] = stor0[_1292].field_512
                    if ceil32(_2274) <= _2274:
                        _2997 = mem[64]
                        mem[mem[64]] = _2274 + _1418 + _1441 + -mem[64] + 32
                        mem[64] = _2274 + _1418 + _1441 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2997
                        t = _1302
                        continue 
                    _3047 = mem[64]
                    mem[mem[64]] = _2274 + _1418 + _1441 + -mem[64] + 32
                    mem[64] = _2274 + _1418 + _1441 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3047
                    t = _1302
                    continue 
                if 31 >= uint255(stor0[_1292].field_256) * 0.5:
                    mem[_1361 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                    mem[_1302 + 32] = _1361
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1466 = mem[64]
                    _1488 = mem[s]
                    t = 0
                    while t < _1488:
                        mem[t + _1466 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1488) <= _1488:
                        _2240 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2240:
                            mem[s + _1466 + _1488 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2240 + _1466 + _1488 + 32] = stor0[_1292].field_512
                        if ceil32(_2240) <= _2240:
                            _2999 = mem[64]
                            mem[mem[64]] = _2240 + _1466 + _1488 + -mem[64] + 32
                            mem[64] = _2240 + _1466 + _1488 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2999
                            t = _1302
                            continue 
                        _3048 = mem[64]
                        mem[mem[64]] = _2240 + _1466 + _1488 + -mem[64] + 32
                        mem[64] = _2240 + _1466 + _1488 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3048
                        t = _1302
                        continue 
                    mem[_1466 + _1488 + 32] = 0
                    _2275 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2275:
                        mem[s + _1466 + _1488 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2275 + _1466 + _1488 + 32] = stor0[_1292].field_512
                    if ceil32(_2275) <= _2275:
                        _3000 = mem[64]
                        mem[mem[64]] = _2275 + _1466 + _1488 + -mem[64] + 32
                        mem[64] = _2275 + _1466 + _1488 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3000
                        t = _1302
                        continue 
                    _3049 = mem[64]
                    mem[mem[64]] = _2275 + _1466 + _1488 + -mem[64] + 32
                    mem[64] = _2275 + _1466 + _1488 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3049
                    t = _1302
                    continue 
                mem[0] = (5 * _1292) + sha3(0) + 1
                mem[_1361 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
                t = _1361 + 32
                u = sha3((5 * _1292) + sha3(0) + 1)
                while _1361 + (uint255(stor0[_1292].field_256) * 0.5) > t:
                    mem[t + 32] = _getNodeNumberOf[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1302 + 32] = _1361
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _2205 = mem[64]
                _2239 = mem[s]
                t = 0
                while t < _2239:
                    mem[t + _2205 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2239) <= _2239:
                    _2942 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2942:
                        mem[s + _2205 + _2239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2942 + _2205 + _2239 + 32] = stor0[_1292].field_512
                    if ceil32(_2942) <= _2942:
                        _3550 = mem[64]
                        mem[mem[64]] = _2942 + _2205 + _2239 + -mem[64] + 32
                        mem[64] = _2942 + _2205 + _2239 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3550
                        t = _1302
                        continue 
                    _3574 = mem[64]
                    mem[mem[64]] = _2942 + _2205 + _2239 + -mem[64] + 32
                    mem[64] = _2942 + _2205 + _2239 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3574
                    t = _1302
                    continue 
                mem[_2205 + _2239 + 32] = 0
                _2998 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2998:
                    mem[s + _2205 + _2239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2998 + _2205 + _2239 + 32] = stor0[_1292].field_512
                if ceil32(_2998) <= _2998:
                    _3551 = mem[64]
                    mem[mem[64]] = _2998 + _2205 + _2239 + -mem[64] + 32
                    mem[64] = _2998 + _2205 + _2239 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3551
                    t = _1302
                    continue 
                _3575 = mem[64]
                mem[mem[64]] = _2998 + _2205 + _2239 + -mem[64] + 32
                mem[64] = _2998 + _2205 + _2239 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3575
                t = _1302
                continue 
            if bool(stor0[_1292].field_256) == stor0[_1292].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_1292].field_257 % 128:
                mem[_1302 + 32] = _1361
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _1444 = mem[64]
                _1467 = mem[s]
                t = 0
                while t < _1467:
                    mem[t + _1444 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_1467) <= _1467:
                    _2241 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2241:
                        mem[s + _1444 + _1467 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2241 + _1444 + _1467 + 32] = stor0[_1292].field_512
                    if ceil32(_2241) <= _2241:
                        _3001 = mem[64]
                        mem[mem[64]] = _2241 + _1444 + _1467 + -mem[64] + 32
                        mem[64] = _2241 + _1444 + _1467 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3001
                        t = _1302
                        continue 
                    _3050 = mem[64]
                    mem[mem[64]] = _2241 + _1444 + _1467 + -mem[64] + 32
                    mem[64] = _2241 + _1444 + _1467 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3050
                    t = _1302
                    continue 
                mem[_1444 + _1467 + 32] = 0
                _2276 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2276:
                    mem[s + _1444 + _1467 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2276 + _1444 + _1467 + 32] = stor0[_1292].field_512
                if ceil32(_2276) <= _2276:
                    _3002 = mem[64]
                    mem[mem[64]] = _2276 + _1444 + _1467 + -mem[64] + 32
                    mem[64] = _2276 + _1444 + _1467 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3002
                    t = _1302
                    continue 
                _3051 = mem[64]
                mem[mem[64]] = _2276 + _1444 + _1467 + -mem[64] + 32
                mem[64] = _2276 + _1444 + _1467 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3051
                t = _1302
                continue 
            if 31 >= stor0[_1292].field_257 % 128:
                mem[_1361 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                mem[_1302 + 32] = _1361
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _1490 = mem[64]
                _1514 = mem[s]
                t = 0
                while t < _1514:
                    mem[t + _1490 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_1514) <= _1514:
                    _2243 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2243:
                        mem[s + _1490 + _1514 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2243 + _1490 + _1514 + 32] = stor0[_1292].field_512
                    if ceil32(_2243) <= _2243:
                        _3004 = mem[64]
                        mem[mem[64]] = _2243 + _1490 + _1514 + -mem[64] + 32
                        mem[64] = _2243 + _1490 + _1514 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3004
                        t = _1302
                        continue 
                    _3052 = mem[64]
                    mem[mem[64]] = _2243 + _1490 + _1514 + -mem[64] + 32
                    mem[64] = _2243 + _1490 + _1514 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3052
                    t = _1302
                    continue 
                mem[_1490 + _1514 + 32] = 0
                _2277 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2277:
                    mem[s + _1490 + _1514 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2277 + _1490 + _1514 + 32] = stor0[_1292].field_512
                if ceil32(_2277) <= _2277:
                    _3005 = mem[64]
                    mem[mem[64]] = _2277 + _1490 + _1514 + -mem[64] + 32
                    mem[64] = _2277 + _1490 + _1514 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3005
                    t = _1302
                    continue 
                _3053 = mem[64]
                mem[mem[64]] = _2277 + _1490 + _1514 + -mem[64] + 32
                mem[64] = _2277 + _1490 + _1514 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3053
                t = _1302
                continue 
            mem[0] = (5 * _1292) + sha3(0) + 1
            mem[_1361 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
            t = _1361 + 32
            u = sha3((5 * _1292) + sha3(0) + 1)
            while _1361 + stor0[_1292].field_257 % 128 > t:
                mem[t + 32] = _getNodeNumberOf[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_1302 + 32] = _1361
            mem[_1302 + 64] = stor0[_1292].field_512
            mem[_1302 + 96] = stor0[_1292].field_768
            mem[_1302 + 128] = stor0[_1292].field_1024
            _2207 = mem[64]
            _2242 = mem[s]
            t = 0
            while t < _2242:
                mem[t + _2207 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_2242) <= _2242:
                _2943 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2943:
                    mem[s + _2207 + _2242 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2943 + _2207 + _2242 + 32] = stor0[_1292].field_512
                if ceil32(_2943) <= _2943:
                    _3552 = mem[64]
                    mem[mem[64]] = _2943 + _2207 + _2242 + -mem[64] + 32
                    mem[64] = _2943 + _2207 + _2242 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3552
                    t = _1302
                    continue 
                _3576 = mem[64]
                mem[mem[64]] = _2943 + _2207 + _2242 + -mem[64] + 32
                mem[64] = _2943 + _2207 + _2242 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3576
                t = _1302
                continue 
            mem[_2207 + _2242 + 32] = 0
            _3003 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
            s = 0
            while s < _3003:
                mem[s + _2207 + _2242 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                s = s + 32
                continue 
            mem[_3003 + _2207 + _2242 + 32] = stor0[_1292].field_512
            if ceil32(_3003) <= _3003:
                _3553 = mem[64]
                mem[mem[64]] = _3003 + _2207 + _2242 + -mem[64] + 32
                mem[64] = _3003 + _2207 + _2242 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3553
                t = _1302
                continue 
            _3577 = mem[64]
            mem[mem[64]] = _3003 + _2207 + _2242 + -mem[64] + 32
            mem[64] = _3003 + _2207 + _2242 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _3577
            t = _1302
            continue 
        _1291 = mem[64]
        mem[mem[64]] = 32
        _1325 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_1325)] = mem[s + 32 len ceil32(_1325)]
        if ceil32(_1325) <= _1325:
            return 32, mem[mem[64] + 32 len ceil32(_1325) + 32]
        mem[mem[64] + _1325 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_1325) + _1291 + -mem[64] + 64
    s = 0
    idx = stor0[mem[128]].field_512
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = s
    if not s:
        t = s
        idx = stor0[mem[128]].field_512
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
                revert with 0, 50
            mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
        v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _2925 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _2937 = mem[64]
            mem[64] = mem[64] + 160
            mem[_2937] = address(stor0[mem[(32 * idx) + 128]].field_0)
            if bool(stor0[_2925].field_256):
                if bool(stor0[_2925].field_256) == uint255(stor0[_2925].field_256) * 0.5 < 32:
                    revert with 0, 34
                _3075 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor0[_2925].field_256) * 0.5) + 32
                mem[_3075] = uint255(stor0[_2925].field_256) * 0.5
                if bool(stor0[_2925].field_256):
                    if bool(stor0[_2925].field_256) == uint255(stor0[_2925].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_2925].field_256):
                        mem[_2937 + 32] = _3075
                        mem[_2937 + 64] = stor0[_2925].field_512
                        mem[_2937 + 96] = stor0[_2925].field_768
                        mem[_2937 + 128] = stor0[_2925].field_1024
                        _3134 = mem[64]
                        _3139 = mem[u]
                        t = 0
                        while t < _3139:
                            mem[t + _3134 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_3139) <= _3139:
                            _3490 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _3490:
                                mem[t + _3134 + _3139 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_3490 + _3134 + _3139 + 32] = stor0[_2925].field_512
                            if ceil32(_3490) <= _3490:
                                _3798 = mem[64]
                                mem[mem[64]] = _3490 + _3134 + _3139 + -mem[64] + 32
                                mem[64] = _3490 + _3134 + _3139 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3798
                                v = _2937
                                continue 
                            _3838 = mem[64]
                            mem[mem[64]] = _3490 + _3134 + _3139 + -mem[64] + 32
                            mem[64] = _3490 + _3134 + _3139 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3838
                            v = _2937
                            continue 
                        mem[_3134 + _3139 + 32] = 0
                        _3530 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3530:
                            mem[t + _3134 + _3139 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3530 + _3134 + _3139 + 32] = stor0[_2925].field_512
                        if ceil32(_3530) <= _3530:
                            _3799 = mem[64]
                            mem[mem[64]] = _3530 + _3134 + _3139 + -mem[64] + 32
                            mem[64] = _3530 + _3134 + _3139 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3799
                            v = _2937
                            continue 
                        _3839 = mem[64]
                        mem[mem[64]] = _3530 + _3134 + _3139 + -mem[64] + 32
                        mem[64] = _3530 + _3134 + _3139 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3839
                        v = _2937
                        continue 
                    if 31 >= uint255(stor0[_2925].field_256) * 0.5:
                        mem[_3075 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                        mem[_2937 + 32] = _3075
                        mem[_2937 + 64] = stor0[_2925].field_512
                        mem[_2937 + 96] = stor0[_2925].field_768
                        mem[_2937 + 128] = stor0[_2925].field_1024
                        _3153 = mem[64]
                        _3168 = mem[u]
                        t = 0
                        while t < _3168:
                            mem[t + _3153 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_3168) <= _3168:
                            _3492 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _3492:
                                mem[t + _3153 + _3168 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_3492 + _3153 + _3168 + 32] = stor0[_2925].field_512
                            if ceil32(_3492) <= _3492:
                                _3801 = mem[64]
                                mem[mem[64]] = _3492 + _3153 + _3168 + -mem[64] + 32
                                mem[64] = _3492 + _3153 + _3168 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3801
                                v = _2937
                                continue 
                            _3840 = mem[64]
                            mem[mem[64]] = _3492 + _3153 + _3168 + -mem[64] + 32
                            mem[64] = _3492 + _3153 + _3168 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3840
                            v = _2937
                            continue 
                        mem[_3153 + _3168 + 32] = 0
                        _3531 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3531:
                            mem[t + _3153 + _3168 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3531 + _3153 + _3168 + 32] = stor0[_2925].field_512
                        if ceil32(_3531) <= _3531:
                            _3802 = mem[64]
                            mem[mem[64]] = _3531 + _3153 + _3168 + -mem[64] + 32
                            mem[64] = _3531 + _3153 + _3168 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3802
                            v = _2937
                            continue 
                        _3841 = mem[64]
                        mem[mem[64]] = _3531 + _3153 + _3168 + -mem[64] + 32
                        mem[64] = _3531 + _3153 + _3168 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3841
                        v = _2937
                        continue 
                    mem[0] = (5 * _2925) + sha3(0) + 1
                    mem[_3075 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
                    t = _3075 + 32
                    v = sha3((5 * _2925) + sha3(0) + 1)
                    while _3075 + (uint255(stor0[_2925].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[v].field_0
                        t = t + 32
                        v = v + 1
                        continue 
                    mem[_2937 + 32] = _3075
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3475 = mem[64]
                    _3491 = mem[u]
                    t = 0
                    while t < _3491:
                        mem[t + _3475 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3491) <= _3491:
                        _3790 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3790:
                            mem[t + _3475 + _3491 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3790 + _3475 + _3491 + 32] = stor0[_2925].field_512
                        if ceil32(_3790) <= _3790:
                            _3934 = mem[64]
                            mem[mem[64]] = _3790 + _3475 + _3491 + -mem[64] + 32
                            mem[64] = _3790 + _3475 + _3491 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3934
                            v = _2937
                            continue 
                        _3950 = mem[64]
                        mem[mem[64]] = _3790 + _3475 + _3491 + -mem[64] + 32
                        mem[64] = _3790 + _3475 + _3491 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3950
                        v = _2937
                        continue 
                    mem[_3475 + _3491 + 32] = 0
                    _3800 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3800:
                        mem[t + _3475 + _3491 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3800 + _3475 + _3491 + 32] = stor0[_2925].field_512
                    if ceil32(_3800) <= _3800:
                        _3935 = mem[64]
                        mem[mem[64]] = _3800 + _3475 + _3491 + -mem[64] + 32
                        mem[64] = _3800 + _3475 + _3491 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3935
                        v = _2937
                        continue 
                    _3951 = mem[64]
                    mem[mem[64]] = _3800 + _3475 + _3491 + -mem[64] + 32
                    mem[64] = _3800 + _3475 + _3491 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3951
                    v = _2937
                    continue 
                if bool(stor0[_2925].field_256) == stor0[_2925].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_2925].field_257 % 128:
                    mem[_2937 + 32] = _3075
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3142 = mem[64]
                    _3154 = mem[u]
                    t = 0
                    while t < _3154:
                        mem[t + _3142 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3154) <= _3154:
                        _3493 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3493:
                            mem[t + _3142 + _3154 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3493 + _3142 + _3154 + 32] = stor0[_2925].field_512
                        if ceil32(_3493) <= _3493:
                            _3803 = mem[64]
                            mem[mem[64]] = _3493 + _3142 + _3154 + -mem[64] + 32
                            mem[64] = _3493 + _3142 + _3154 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3803
                            v = _2937
                            continue 
                        _3842 = mem[64]
                        mem[mem[64]] = _3493 + _3142 + _3154 + -mem[64] + 32
                        mem[64] = _3493 + _3142 + _3154 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3842
                        v = _2937
                        continue 
                    mem[_3142 + _3154 + 32] = 0
                    _3532 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3532:
                        mem[t + _3142 + _3154 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3532 + _3142 + _3154 + 32] = stor0[_2925].field_512
                    if ceil32(_3532) <= _3532:
                        _3804 = mem[64]
                        mem[mem[64]] = _3532 + _3142 + _3154 + -mem[64] + 32
                        mem[64] = _3532 + _3142 + _3154 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3804
                        v = _2937
                        continue 
                    _3843 = mem[64]
                    mem[mem[64]] = _3532 + _3142 + _3154 + -mem[64] + 32
                    mem[64] = _3532 + _3142 + _3154 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3843
                    v = _2937
                    continue 
                if 31 >= stor0[_2925].field_257 % 128:
                    mem[_3075 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                    mem[_2937 + 32] = _3075
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3170 = mem[64]
                    _3185 = mem[u]
                    t = 0
                    while t < _3185:
                        mem[t + _3170 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3185) <= _3185:
                        _3495 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3495:
                            mem[t + _3170 + _3185 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3495 + _3170 + _3185 + 32] = stor0[_2925].field_512
                        if ceil32(_3495) <= _3495:
                            _3806 = mem[64]
                            mem[mem[64]] = _3495 + _3170 + _3185 + -mem[64] + 32
                            mem[64] = _3495 + _3170 + _3185 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3806
                            v = _2937
                            continue 
                        _3844 = mem[64]
                        mem[mem[64]] = _3495 + _3170 + _3185 + -mem[64] + 32
                        mem[64] = _3495 + _3170 + _3185 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3844
                        v = _2937
                        continue 
                    mem[_3170 + _3185 + 32] = 0
                    _3533 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3533:
                        mem[t + _3170 + _3185 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3533 + _3170 + _3185 + 32] = stor0[_2925].field_512
                    if ceil32(_3533) <= _3533:
                        _3807 = mem[64]
                        mem[mem[64]] = _3533 + _3170 + _3185 + -mem[64] + 32
                        mem[64] = _3533 + _3170 + _3185 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3807
                        v = _2937
                        continue 
                    _3845 = mem[64]
                    mem[mem[64]] = _3533 + _3170 + _3185 + -mem[64] + 32
                    mem[64] = _3533 + _3170 + _3185 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3845
                    v = _2937
                    continue 
                mem[0] = (5 * _2925) + sha3(0) + 1
                mem[_3075 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
                v = _3075 + 32
                t = sha3((5 * _2925) + sha3(0) + 1)
                while _3075 + stor0[_2925].field_257 % 128 > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_2937 + 32] = _3075
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3477 = mem[64]
                _3494 = mem[u]
                t = 0
                while t < _3494:
                    mem[t + _3477 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3494) <= _3494:
                    _3791 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3791:
                        mem[t + _3477 + _3494 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3791 + _3477 + _3494 + 32] = stor0[_2925].field_512
                    if ceil32(_3791) <= _3791:
                        _3936 = mem[64]
                        mem[mem[64]] = _3791 + _3477 + _3494 + -mem[64] + 32
                        mem[64] = _3791 + _3477 + _3494 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3936
                        v = _2937
                        continue 
                    _3952 = mem[64]
                    mem[mem[64]] = _3791 + _3477 + _3494 + -mem[64] + 32
                    mem[64] = _3791 + _3477 + _3494 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3952
                    v = _2937
                    continue 
                mem[_3477 + _3494 + 32] = 0
                _3805 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3805:
                    mem[t + _3477 + _3494 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3805 + _3477 + _3494 + 32] = stor0[_2925].field_512
                if ceil32(_3805) <= _3805:
                    _3937 = mem[64]
                    mem[mem[64]] = _3805 + _3477 + _3494 + -mem[64] + 32
                    mem[64] = _3805 + _3477 + _3494 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3937
                    v = _2937
                    continue 
                _3953 = mem[64]
                mem[mem[64]] = _3805 + _3477 + _3494 + -mem[64] + 32
                mem[64] = _3805 + _3477 + _3494 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3953
                v = _2937
                continue 
            if bool(stor0[_2925].field_256) == stor0[_2925].field_257 % 128 < 32:
                revert with 0, 34
            _3082 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[_2925].field_257 % 128) + 32
            mem[_3082] = stor0[_2925].field_257 % 128
            if bool(stor0[_2925].field_256):
                if bool(stor0[_2925].field_256) == uint255(stor0[_2925].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_2925].field_256):
                    mem[_2937 + 32] = _3082
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3144 = mem[64]
                    _3156 = mem[u]
                    t = 0
                    while t < _3156:
                        mem[t + _3144 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3156) <= _3156:
                        _3496 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3496:
                            mem[t + _3144 + _3156 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3496 + _3144 + _3156 + 32] = stor0[_2925].field_512
                        if ceil32(_3496) <= _3496:
                            _3808 = mem[64]
                            mem[mem[64]] = _3496 + _3144 + _3156 + -mem[64] + 32
                            mem[64] = _3496 + _3144 + _3156 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3808
                            v = _2937
                            continue 
                        _3846 = mem[64]
                        mem[mem[64]] = _3496 + _3144 + _3156 + -mem[64] + 32
                        mem[64] = _3496 + _3144 + _3156 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3846
                        v = _2937
                        continue 
                    mem[_3144 + _3156 + 32] = 0
                    _3534 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3534:
                        mem[t + _3144 + _3156 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3534 + _3144 + _3156 + 32] = stor0[_2925].field_512
                    if ceil32(_3534) <= _3534:
                        _3809 = mem[64]
                        mem[mem[64]] = _3534 + _3144 + _3156 + -mem[64] + 32
                        mem[64] = _3534 + _3144 + _3156 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3809
                        v = _2937
                        continue 
                    _3847 = mem[64]
                    mem[mem[64]] = _3534 + _3144 + _3156 + -mem[64] + 32
                    mem[64] = _3534 + _3144 + _3156 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3847
                    v = _2937
                    continue 
                if 31 >= uint255(stor0[_2925].field_256) * 0.5:
                    mem[_3082 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                    mem[_2937 + 32] = _3082
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3172 = mem[64]
                    _3186 = mem[u]
                    t = 0
                    while t < _3186:
                        mem[t + _3172 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3186) <= _3186:
                        _3498 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3498:
                            mem[t + _3172 + _3186 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3498 + _3172 + _3186 + 32] = stor0[_2925].field_512
                        if ceil32(_3498) <= _3498:
                            _3811 = mem[64]
                            mem[mem[64]] = _3498 + _3172 + _3186 + -mem[64] + 32
                            mem[64] = _3498 + _3172 + _3186 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3811
                            v = _2937
                            continue 
                        _3848 = mem[64]
                        mem[mem[64]] = _3498 + _3172 + _3186 + -mem[64] + 32
                        mem[64] = _3498 + _3172 + _3186 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3848
                        v = _2937
                        continue 
                    mem[_3172 + _3186 + 32] = 0
                    _3535 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3535:
                        mem[t + _3172 + _3186 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3535 + _3172 + _3186 + 32] = stor0[_2925].field_512
                    if ceil32(_3535) <= _3535:
                        _3812 = mem[64]
                        mem[mem[64]] = _3535 + _3172 + _3186 + -mem[64] + 32
                        mem[64] = _3535 + _3172 + _3186 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3812
                        v = _2937
                        continue 
                    _3849 = mem[64]
                    mem[mem[64]] = _3535 + _3172 + _3186 + -mem[64] + 32
                    mem[64] = _3535 + _3172 + _3186 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3849
                    v = _2937
                    continue 
                mem[0] = (5 * _2925) + sha3(0) + 1
                mem[_3082 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
                v = _3082 + 32
                t = sha3((5 * _2925) + sha3(0) + 1)
                while _3082 + (uint255(stor0[_2925].field_256) * 0.5) > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_2937 + 32] = _3082
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3479 = mem[64]
                _3497 = mem[u]
                t = 0
                while t < _3497:
                    mem[t + _3479 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3497) <= _3497:
                    _3792 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3792:
                        mem[t + _3479 + _3497 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3792 + _3479 + _3497 + 32] = stor0[_2925].field_512
                    if ceil32(_3792) <= _3792:
                        _3938 = mem[64]
                        mem[mem[64]] = _3792 + _3479 + _3497 + -mem[64] + 32
                        mem[64] = _3792 + _3479 + _3497 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3938
                        v = _2937
                        continue 
                    _3954 = mem[64]
                    mem[mem[64]] = _3792 + _3479 + _3497 + -mem[64] + 32
                    mem[64] = _3792 + _3479 + _3497 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3954
                    v = _2937
                    continue 
                mem[_3479 + _3497 + 32] = 0
                _3810 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3810:
                    mem[t + _3479 + _3497 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3810 + _3479 + _3497 + 32] = stor0[_2925].field_512
                if ceil32(_3810) <= _3810:
                    _3939 = mem[64]
                    mem[mem[64]] = _3810 + _3479 + _3497 + -mem[64] + 32
                    mem[64] = _3810 + _3479 + _3497 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3939
                    v = _2937
                    continue 
                _3955 = mem[64]
                mem[mem[64]] = _3810 + _3479 + _3497 + -mem[64] + 32
                mem[64] = _3810 + _3479 + _3497 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3955
                v = _2937
                continue 
            if bool(stor0[_2925].field_256) == stor0[_2925].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_2925].field_257 % 128:
                mem[_2937 + 32] = _3082
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3159 = mem[64]
                _3173 = mem[u]
                t = 0
                while t < _3173:
                    mem[t + _3159 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3173) <= _3173:
                    _3499 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3499:
                        mem[t + _3159 + _3173 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3499 + _3159 + _3173 + 32] = stor0[_2925].field_512
                    if ceil32(_3499) <= _3499:
                        _3813 = mem[64]
                        mem[mem[64]] = _3499 + _3159 + _3173 + -mem[64] + 32
                        mem[64] = _3499 + _3159 + _3173 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3813
                        v = _2937
                        continue 
                    _3850 = mem[64]
                    mem[mem[64]] = _3499 + _3159 + _3173 + -mem[64] + 32
                    mem[64] = _3499 + _3159 + _3173 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3850
                    v = _2937
                    continue 
                mem[_3159 + _3173 + 32] = 0
                _3536 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3536:
                    mem[t + _3159 + _3173 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3536 + _3159 + _3173 + 32] = stor0[_2925].field_512
                if ceil32(_3536) <= _3536:
                    _3814 = mem[64]
                    mem[mem[64]] = _3536 + _3159 + _3173 + -mem[64] + 32
                    mem[64] = _3536 + _3159 + _3173 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3814
                    v = _2937
                    continue 
                _3851 = mem[64]
                mem[mem[64]] = _3536 + _3159 + _3173 + -mem[64] + 32
                mem[64] = _3536 + _3159 + _3173 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3851
                v = _2937
                continue 
            if 31 >= stor0[_2925].field_257 % 128:
                mem[_3082 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                mem[_2937 + 32] = _3082
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3188 = mem[64]
                _3203 = mem[u]
                t = 0
                while t < _3203:
                    mem[t + _3188 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3203) <= _3203:
                    _3501 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3501:
                        mem[t + _3188 + _3203 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3501 + _3188 + _3203 + 32] = stor0[_2925].field_512
                    if ceil32(_3501) <= _3501:
                        _3816 = mem[64]
                        mem[mem[64]] = _3501 + _3188 + _3203 + -mem[64] + 32
                        mem[64] = _3501 + _3188 + _3203 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3816
                        v = _2937
                        continue 
                    _3852 = mem[64]
                    mem[mem[64]] = _3501 + _3188 + _3203 + -mem[64] + 32
                    mem[64] = _3501 + _3188 + _3203 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3852
                    v = _2937
                    continue 
                mem[_3188 + _3203 + 32] = 0
                _3537 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3537:
                    mem[t + _3188 + _3203 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3537 + _3188 + _3203 + 32] = stor0[_2925].field_512
                if ceil32(_3537) <= _3537:
                    _3817 = mem[64]
                    mem[mem[64]] = _3537 + _3188 + _3203 + -mem[64] + 32
                    mem[64] = _3537 + _3188 + _3203 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3817
                    v = _2937
                    continue 
                _3853 = mem[64]
                mem[mem[64]] = _3537 + _3188 + _3203 + -mem[64] + 32
                mem[64] = _3537 + _3188 + _3203 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3853
                v = _2937
                continue 
            mem[0] = (5 * _2925) + sha3(0) + 1
            mem[_3082 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
            t = _3082 + 32
            v = sha3((5 * _2925) + sha3(0) + 1)
            while _3082 + stor0[_2925].field_257 % 128 > t:
                mem[t + 32] = _getNodeNumberOf[v].field_0
                t = t + 32
                v = v + 1
                continue 
            mem[_2937 + 32] = _3082
            mem[_2937 + 64] = stor0[_2925].field_512
            mem[_2937 + 96] = stor0[_2925].field_768
            mem[_2937 + 128] = stor0[_2925].field_1024
            _3481 = mem[64]
            _3500 = mem[u]
            t = 0
            while t < _3500:
                mem[t + _3481 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3500) <= _3500:
                _3793 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3793:
                    mem[t + _3481 + _3500 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3793 + _3481 + _3500 + 32] = stor0[_2925].field_512
                if ceil32(_3793) <= _3793:
                    _3940 = mem[64]
                    mem[mem[64]] = _3793 + _3481 + _3500 + -mem[64] + 32
                    mem[64] = _3793 + _3481 + _3500 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3940
                    v = _2937
                    continue 
                _3956 = mem[64]
                mem[mem[64]] = _3793 + _3481 + _3500 + -mem[64] + 32
                mem[64] = _3793 + _3481 + _3500 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3956
                v = _2937
                continue 
            mem[_3481 + _3500 + 32] = 0
            _3815 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3815:
                mem[t + _3481 + _3500 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3815 + _3481 + _3500 + 32] = stor0[_2925].field_512
            if ceil32(_3815) <= _3815:
                _3941 = mem[64]
                mem[mem[64]] = _3815 + _3481 + _3500 + -mem[64] + 32
                mem[64] = _3815 + _3481 + _3500 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3941
                v = _2937
                continue 
            _3957 = mem[64]
            mem[mem[64]] = _3815 + _3481 + _3500 + -mem[64] + 32
            mem[64] = _3815 + _3481 + _3500 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3957
            v = _2937
            continue 
        mem[mem[64]] = 32
        _2984 = mem[u]
        mem[mem[64] + 32] = mem[u]
        mem[mem[64] + 64 len ceil32(_2984)] = mem[u + 32 len ceil32(_2984)]
        var39001 = ceil32(_2984)
        if ceil32(_2984) > _2984:
            mem[mem[64] + _2984 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_2984) + 32]
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320 len s] = call.data[calldata.size len s]
    t = s
    idx = stor0[mem[128]].field_512
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
            revert with 0, 50
        mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
    v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        if idx >= mem[96]:
            revert with 0, 50
        _2927 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= stor0.length:
            revert with 0, 50
        mem[0] = 0
        _2939 = mem[64]
        mem[64] = mem[64] + 160
        mem[_2939] = address(stor0[mem[(32 * idx) + 128]].field_0)
        if bool(stor0[_2927].field_256):
            if bool(stor0[_2927].field_256) == uint255(stor0[_2927].field_256) * 0.5 < 32:
                revert with 0, 34
            _3077 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor0[_2927].field_256) * 0.5) + 32
            mem[_3077] = uint255(stor0[_2927].field_256) * 0.5
            if bool(stor0[_2927].field_256):
                if bool(stor0[_2927].field_256) == uint255(stor0[_2927].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_2927].field_256):
                    mem[_2939 + 32] = _3077
                    mem[_2939 + 64] = stor0[_2927].field_512
                    mem[_2939 + 96] = stor0[_2927].field_768
                    mem[_2939 + 128] = stor0[_2927].field_1024
                    _3137 = mem[64]
                    _3146 = mem[u]
                    t = 0
                    while t < _3146:
                        mem[t + _3137 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3146) <= _3146:
                        _3502 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3502:
                            mem[t + _3137 + _3146 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3502 + _3137 + _3146 + 32] = stor0[_2927].field_512
                        if ceil32(_3502) <= _3502:
                            _3818 = mem[64]
                            mem[mem[64]] = _3502 + _3137 + _3146 + -mem[64] + 32
                            mem[64] = _3502 + _3137 + _3146 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3818
                            v = _2939
                            continue 
                        _3854 = mem[64]
                        mem[mem[64]] = _3502 + _3137 + _3146 + -mem[64] + 32
                        mem[64] = _3502 + _3137 + _3146 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3854
                        v = _2939
                        continue 
                    mem[_3137 + _3146 + 32] = 0
                    _3538 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3538:
                        mem[t + _3137 + _3146 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3538 + _3137 + _3146 + 32] = stor0[_2927].field_512
                    if ceil32(_3538) <= _3538:
                        _3819 = mem[64]
                        mem[mem[64]] = _3538 + _3137 + _3146 + -mem[64] + 32
                        mem[64] = _3538 + _3137 + _3146 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3819
                        v = _2939
                        continue 
                    _3855 = mem[64]
                    mem[mem[64]] = _3538 + _3137 + _3146 + -mem[64] + 32
                    mem[64] = _3538 + _3137 + _3146 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3855
                    v = _2939
                    continue 
                if 31 >= uint255(stor0[_2927].field_256) * 0.5:
                    mem[_3077 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
                    mem[_2939 + 32] = _3077
                    mem[_2939 + 64] = stor0[_2927].field_512
                    mem[_2939 + 96] = stor0[_2927].field_768
                    mem[_2939 + 128] = stor0[_2927].field_1024
                    _3161 = mem[64]
                    _3175 = mem[u]
                    t = 0
                    while t < _3175:
                        mem[t + _3161 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3175) <= _3175:
                        _3504 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3504:
                            mem[t + _3161 + _3175 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3504 + _3161 + _3175 + 32] = stor0[_2927].field_512
                        if ceil32(_3504) <= _3504:
                            _3821 = mem[64]
                            mem[mem[64]] = _3504 + _3161 + _3175 + -mem[64] + 32
                            mem[64] = _3504 + _3161 + _3175 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3821
                            v = _2939
                            continue 
                        _3856 = mem[64]
                        mem[mem[64]] = _3504 + _3161 + _3175 + -mem[64] + 32
                        mem[64] = _3504 + _3161 + _3175 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3856
                        v = _2939
                        continue 
                    mem[_3161 + _3175 + 32] = 0
                    _3539 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3539:
                        mem[t + _3161 + _3175 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3539 + _3161 + _3175 + 32] = stor0[_2927].field_512
                    if ceil32(_3539) <= _3539:
                        _3822 = mem[64]
                        mem[mem[64]] = _3539 + _3161 + _3175 + -mem[64] + 32
                        mem[64] = _3539 + _3161 + _3175 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3822
                        v = _2939
                        continue 
                    _3857 = mem[64]
                    mem[mem[64]] = _3539 + _3161 + _3175 + -mem[64] + 32
                    mem[64] = _3539 + _3161 + _3175 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3857
                    v = _2939
                    continue 
                mem[0] = (5 * _2927) + sha3(0) + 1
                mem[_3077 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
                t = _3077 + 32
                v = sha3((5 * _2927) + sha3(0) + 1)
                while _3077 + (uint255(stor0[_2927].field_256) * 0.5) > t:
                    mem[t + 32] = _getNodeNumberOf[v].field_0
                    t = t + 32
                    v = v + 1
                    continue 
                mem[_2939 + 32] = _3077
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3483 = mem[64]
                _3503 = mem[u]
                t = 0
                while t < _3503:
                    mem[t + _3483 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3503) <= _3503:
                    _3794 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3794:
                        mem[t + _3483 + _3503 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3794 + _3483 + _3503 + 32] = stor0[_2927].field_512
                    if ceil32(_3794) <= _3794:
                        _3942 = mem[64]
                        mem[mem[64]] = _3794 + _3483 + _3503 + -mem[64] + 32
                        mem[64] = _3794 + _3483 + _3503 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3942
                        v = _2939
                        continue 
                    _3958 = mem[64]
                    mem[mem[64]] = _3794 + _3483 + _3503 + -mem[64] + 32
                    mem[64] = _3794 + _3483 + _3503 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3958
                    v = _2939
                    continue 
                mem[_3483 + _3503 + 32] = 0
                _3820 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3820:
                    mem[t + _3483 + _3503 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3820 + _3483 + _3503 + 32] = stor0[_2927].field_512
                if ceil32(_3820) <= _3820:
                    _3943 = mem[64]
                    mem[mem[64]] = _3820 + _3483 + _3503 + -mem[64] + 32
                    mem[64] = _3820 + _3483 + _3503 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3943
                    v = _2939
                    continue 
                _3959 = mem[64]
                mem[mem[64]] = _3820 + _3483 + _3503 + -mem[64] + 32
                mem[64] = _3820 + _3483 + _3503 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3959
                v = _2939
                continue 
            if bool(stor0[_2927].field_256) == stor0[_2927].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_2927].field_257 % 128:
                mem[_2939 + 32] = _3077
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3149 = mem[64]
                _3162 = mem[u]
                t = 0
                while t < _3162:
                    mem[t + _3149 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3162) <= _3162:
                    _3505 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3505:
                        mem[t + _3149 + _3162 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3505 + _3149 + _3162 + 32] = stor0[_2927].field_512
                    if ceil32(_3505) <= _3505:
                        _3823 = mem[64]
                        mem[mem[64]] = _3505 + _3149 + _3162 + -mem[64] + 32
                        mem[64] = _3505 + _3149 + _3162 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3823
                        v = _2939
                        continue 
                    _3858 = mem[64]
                    mem[mem[64]] = _3505 + _3149 + _3162 + -mem[64] + 32
                    mem[64] = _3505 + _3149 + _3162 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3858
                    v = _2939
                    continue 
                mem[_3149 + _3162 + 32] = 0
                _3540 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3540:
                    mem[t + _3149 + _3162 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3540 + _3149 + _3162 + 32] = stor0[_2927].field_512
                if ceil32(_3540) <= _3540:
                    _3824 = mem[64]
                    mem[mem[64]] = _3540 + _3149 + _3162 + -mem[64] + 32
                    mem[64] = _3540 + _3149 + _3162 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3824
                    v = _2939
                    continue 
                _3859 = mem[64]
                mem[mem[64]] = _3540 + _3149 + _3162 + -mem[64] + 32
                mem[64] = _3540 + _3149 + _3162 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3859
                v = _2939
                continue 
            if 31 >= stor0[_2927].field_257 % 128:
                mem[_3077 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
                mem[_2939 + 32] = _3077
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3177 = mem[64]
                _3192 = mem[u]
                t = 0
                while t < _3192:
                    mem[t + _3177 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3192) <= _3192:
                    _3507 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3507:
                        mem[t + _3177 + _3192 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3507 + _3177 + _3192 + 32] = stor0[_2927].field_512
                    if ceil32(_3507) <= _3507:
                        _3826 = mem[64]
                        mem[mem[64]] = _3507 + _3177 + _3192 + -mem[64] + 32
                        mem[64] = _3507 + _3177 + _3192 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3826
                        v = _2939
                        continue 
                    _3860 = mem[64]
                    mem[mem[64]] = _3507 + _3177 + _3192 + -mem[64] + 32
                    mem[64] = _3507 + _3177 + _3192 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3860
                    v = _2939
                    continue 
                mem[_3177 + _3192 + 32] = 0
                _3541 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3541:
                    mem[t + _3177 + _3192 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3541 + _3177 + _3192 + 32] = stor0[_2927].field_512
                if ceil32(_3541) <= _3541:
                    _3827 = mem[64]
                    mem[mem[64]] = _3541 + _3177 + _3192 + -mem[64] + 32
                    mem[64] = _3541 + _3177 + _3192 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3827
                    v = _2939
                    continue 
                _3861 = mem[64]
                mem[mem[64]] = _3541 + _3177 + _3192 + -mem[64] + 32
                mem[64] = _3541 + _3177 + _3192 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3861
                v = _2939
                continue 
            mem[0] = (5 * _2927) + sha3(0) + 1
            mem[_3077 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
            v = _3077 + 32
            t = sha3((5 * _2927) + sha3(0) + 1)
            while _3077 + stor0[_2927].field_257 % 128 > v:
                mem[v + 32] = _getNodeNumberOf[t].field_0
                v = v + 32
                t = t + 1
                continue 
            mem[_2939 + 32] = _3077
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3485 = mem[64]
            _3506 = mem[u]
            t = 0
            while t < _3506:
                mem[t + _3485 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3506) <= _3506:
                _3795 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3795:
                    mem[t + _3485 + _3506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3795 + _3485 + _3506 + 32] = stor0[_2927].field_512
                if ceil32(_3795) <= _3795:
                    _3944 = mem[64]
                    mem[mem[64]] = _3795 + _3485 + _3506 + -mem[64] + 32
                    mem[64] = _3795 + _3485 + _3506 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3944
                    v = _2939
                    continue 
                _3960 = mem[64]
                mem[mem[64]] = _3795 + _3485 + _3506 + -mem[64] + 32
                mem[64] = _3795 + _3485 + _3506 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3960
                v = _2939
                continue 
            mem[_3485 + _3506 + 32] = 0
            _3825 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3825:
                mem[t + _3485 + _3506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3825 + _3485 + _3506 + 32] = stor0[_2927].field_512
            if ceil32(_3825) <= _3825:
                _3945 = mem[64]
                mem[mem[64]] = _3825 + _3485 + _3506 + -mem[64] + 32
                mem[64] = _3825 + _3485 + _3506 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3945
                v = _2939
                continue 
            _3961 = mem[64]
            mem[mem[64]] = _3825 + _3485 + _3506 + -mem[64] + 32
            mem[64] = _3825 + _3485 + _3506 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3961
            v = _2939
            continue 
        if bool(stor0[_2927].field_256) == stor0[_2927].field_257 % 128 < 32:
            revert with 0, 34
        _3083 = mem[64]
        mem[64] = mem[64] + ceil32(stor0[_2927].field_257 % 128) + 32
        mem[_3083] = stor0[_2927].field_257 % 128
        if bool(stor0[_2927].field_256):
            if bool(stor0[_2927].field_256) == uint255(stor0[_2927].field_256) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor0[_2927].field_256):
                mem[_2939 + 32] = _3083
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3151 = mem[64]
                _3164 = mem[u]
                t = 0
                while t < _3164:
                    mem[t + _3151 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3164) <= _3164:
                    _3508 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3508:
                        mem[t + _3151 + _3164 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3508 + _3151 + _3164 + 32] = stor0[_2927].field_512
                    if ceil32(_3508) <= _3508:
                        _3828 = mem[64]
                        mem[mem[64]] = _3508 + _3151 + _3164 + -mem[64] + 32
                        mem[64] = _3508 + _3151 + _3164 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3828
                        v = _2939
                        continue 
                    _3862 = mem[64]
                    mem[mem[64]] = _3508 + _3151 + _3164 + -mem[64] + 32
                    mem[64] = _3508 + _3151 + _3164 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3862
                    v = _2939
                    continue 
                mem[_3151 + _3164 + 32] = 0
                _3542 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3542:
                    mem[t + _3151 + _3164 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3542 + _3151 + _3164 + 32] = stor0[_2927].field_512
                if ceil32(_3542) <= _3542:
                    _3829 = mem[64]
                    mem[mem[64]] = _3542 + _3151 + _3164 + -mem[64] + 32
                    mem[64] = _3542 + _3151 + _3164 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3829
                    v = _2939
                    continue 
                _3863 = mem[64]
                mem[mem[64]] = _3542 + _3151 + _3164 + -mem[64] + 32
                mem[64] = _3542 + _3151 + _3164 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3863
                v = _2939
                continue 
            if 31 >= uint255(stor0[_2927].field_256) * 0.5:
                mem[_3083 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
                mem[_2939 + 32] = _3083
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3179 = mem[64]
                _3193 = mem[u]
                t = 0
                while t < _3193:
                    mem[t + _3179 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3193) <= _3193:
                    _3510 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3510:
                        mem[t + _3179 + _3193 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3510 + _3179 + _3193 + 32] = stor0[_2927].field_512
                    if ceil32(_3510) <= _3510:
                        _3831 = mem[64]
                        mem[mem[64]] = _3510 + _3179 + _3193 + -mem[64] + 32
                        mem[64] = _3510 + _3179 + _3193 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3831
                        v = _2939
                        continue 
                    _3864 = mem[64]
                    mem[mem[64]] = _3510 + _3179 + _3193 + -mem[64] + 32
                    mem[64] = _3510 + _3179 + _3193 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3864
                    v = _2939
                    continue 
                mem[_3179 + _3193 + 32] = 0
                _3543 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3543:
                    mem[t + _3179 + _3193 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3543 + _3179 + _3193 + 32] = stor0[_2927].field_512
                if ceil32(_3543) <= _3543:
                    _3832 = mem[64]
                    mem[mem[64]] = _3543 + _3179 + _3193 + -mem[64] + 32
                    mem[64] = _3543 + _3179 + _3193 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3832
                    v = _2939
                    continue 
                _3865 = mem[64]
                mem[mem[64]] = _3543 + _3179 + _3193 + -mem[64] + 32
                mem[64] = _3543 + _3179 + _3193 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3865
                v = _2939
                continue 
            mem[0] = (5 * _2927) + sha3(0) + 1
            mem[_3083 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
            v = _3083 + 32
            t = sha3((5 * _2927) + sha3(0) + 1)
            while _3083 + (uint255(stor0[_2927].field_256) * 0.5) > v:
                mem[v + 32] = _getNodeNumberOf[t].field_0
                v = v + 32
                t = t + 1
                continue 
            mem[_2939 + 32] = _3083
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3487 = mem[64]
            _3509 = mem[u]
            t = 0
            while t < _3509:
                mem[t + _3487 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3509) <= _3509:
                _3796 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3796:
                    mem[t + _3487 + _3509 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3796 + _3487 + _3509 + 32] = stor0[_2927].field_512
                if ceil32(_3796) <= _3796:
                    _3946 = mem[64]
                    mem[mem[64]] = _3796 + _3487 + _3509 + -mem[64] + 32
                    mem[64] = _3796 + _3487 + _3509 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3946
                    v = _2939
                    continue 
                _3962 = mem[64]
                mem[mem[64]] = _3796 + _3487 + _3509 + -mem[64] + 32
                mem[64] = _3796 + _3487 + _3509 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3962
                v = _2939
                continue 
            mem[_3487 + _3509 + 32] = 0
            _3830 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3830:
                mem[t + _3487 + _3509 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3830 + _3487 + _3509 + 32] = stor0[_2927].field_512
            if ceil32(_3830) <= _3830:
                _3947 = mem[64]
                mem[mem[64]] = _3830 + _3487 + _3509 + -mem[64] + 32
                mem[64] = _3830 + _3487 + _3509 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3947
                v = _2939
                continue 
            _3963 = mem[64]
            mem[mem[64]] = _3830 + _3487 + _3509 + -mem[64] + 32
            mem[64] = _3830 + _3487 + _3509 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3963
            v = _2939
            continue 
        if bool(stor0[_2927].field_256) == stor0[_2927].field_257 % 128 < 32:
            revert with 0, 34
        if not stor0[_2927].field_257 % 128:
            mem[_2939 + 32] = _3083
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3167 = mem[64]
            _3180 = mem[u]
            t = 0
            while t < _3180:
                mem[t + _3167 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3180) <= _3180:
                _3511 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3511:
                    mem[t + _3167 + _3180 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3511 + _3167 + _3180 + 32] = stor0[_2927].field_512
                if ceil32(_3511) <= _3511:
                    _3833 = mem[64]
                    mem[mem[64]] = _3511 + _3167 + _3180 + -mem[64] + 32
                    mem[64] = _3511 + _3167 + _3180 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3833
                    v = _2939
                    continue 
                _3866 = mem[64]
                mem[mem[64]] = _3511 + _3167 + _3180 + -mem[64] + 32
                mem[64] = _3511 + _3167 + _3180 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3866
                v = _2939
                continue 
            mem[_3167 + _3180 + 32] = 0
            _3544 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3544:
                mem[t + _3167 + _3180 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3544 + _3167 + _3180 + 32] = stor0[_2927].field_512
            if ceil32(_3544) <= _3544:
                _3834 = mem[64]
                mem[mem[64]] = _3544 + _3167 + _3180 + -mem[64] + 32
                mem[64] = _3544 + _3167 + _3180 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3834
                v = _2939
                continue 
            _3867 = mem[64]
            mem[mem[64]] = _3544 + _3167 + _3180 + -mem[64] + 32
            mem[64] = _3544 + _3167 + _3180 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3867
            v = _2939
            continue 
        if 31 >= stor0[_2927].field_257 % 128:
            mem[_3083 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
            mem[_2939 + 32] = _3083
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3195 = mem[64]
            _3211 = mem[u]
            t = 0
            while t < _3211:
                mem[t + _3195 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3211) <= _3211:
                _3513 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3513:
                    mem[t + _3195 + _3211 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3513 + _3195 + _3211 + 32] = stor0[_2927].field_512
                if ceil32(_3513) <= _3513:
                    _3836 = mem[64]
                    mem[mem[64]] = _3513 + _3195 + _3211 + -mem[64] + 32
                    mem[64] = _3513 + _3195 + _3211 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3836
                    v = _2939
                    continue 
                _3868 = mem[64]
                mem[mem[64]] = _3513 + _3195 + _3211 + -mem[64] + 32
                mem[64] = _3513 + _3195 + _3211 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3868
                v = _2939
                continue 
            mem[_3195 + _3211 + 32] = 0
            _3545 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3545:
                mem[t + _3195 + _3211 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3545 + _3195 + _3211 + 32] = stor0[_2927].field_512
            if ceil32(_3545) <= _3545:
                _3837 = mem[64]
                mem[mem[64]] = _3545 + _3195 + _3211 + -mem[64] + 32
                mem[64] = _3545 + _3195 + _3211 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3837
                v = _2939
                continue 
            _3869 = mem[64]
            mem[mem[64]] = _3545 + _3195 + _3211 + -mem[64] + 32
            mem[64] = _3545 + _3195 + _3211 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3869
            v = _2939
            continue 
        mem[0] = (5 * _2927) + sha3(0) + 1
        mem[_3083 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
        t = _3083 + 32
        v = sha3((5 * _2927) + sha3(0) + 1)
        while _3083 + stor0[_2927].field_257 % 128 > t:
            mem[t + 32] = _getNodeNumberOf[v].field_0
            t = t + 32
            v = v + 1
            continue 
        mem[_2939 + 32] = _3083
        mem[_2939 + 64] = stor0[_2927].field_512
        mem[_2939 + 96] = stor0[_2927].field_768
        mem[_2939 + 128] = stor0[_2927].field_1024
        _3489 = mem[64]
        _3512 = mem[u]
        t = 0
        while t < _3512:
            mem[t + _3489 + 32] = mem[t + u + 32]
            t = t + 32
            continue 
        if ceil32(_3512) <= _3512:
            _3797 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3797:
                mem[t + _3489 + _3512 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3797 + _3489 + _3512 + 32] = stor0[_2927].field_512
            if ceil32(_3797) <= _3797:
                _3948 = mem[64]
                mem[mem[64]] = _3797 + _3489 + _3512 + -mem[64] + 32
                mem[64] = _3797 + _3489 + _3512 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3948
                v = _2939
                continue 
            _3964 = mem[64]
            mem[mem[64]] = _3797 + _3489 + _3512 + -mem[64] + 32
            mem[64] = _3797 + _3489 + _3512 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3964
            v = _2939
            continue 
        mem[_3489 + _3512 + 32] = 0
        _3835 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
        t = 0
        while t < _3835:
            mem[t + _3489 + _3512 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
            t = t + 32
            continue 
        mem[_3835 + _3489 + _3512 + 32] = stor0[_2927].field_512
        if ceil32(_3835) <= _3835:
            _3949 = mem[64]
            mem[mem[64]] = _3835 + _3489 + _3512 + -mem[64] + 32
            mem[64] = _3835 + _3489 + _3512 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3949
            v = _2939
            continue 
        _3965 = mem[64]
        mem[mem[64]] = _3835 + _3489 + _3512 + -mem[64] + 32
        mem[64] = _3835 + _3489 + _3512 + 64
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = _3965
        v = _2939
        continue 
    mem[mem[64]] = 32
    _2985 = mem[u]
    mem[mem[64] + 32] = mem[u]
    mem[mem[64] + 64 len ceil32(_2985)] = mem[u + 32 len ceil32(_2985)]
    var40001 = ceil32(_2985)
    if ceil32(_2985) > _2985:
        mem[mem[64] + _2985 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_2985) + 32]
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[32] = 1
    mem[96] = _getNodeNumberOf[address(arg1)].field_0
    if not _getNodeNumberOf[address(arg1)].field_0:
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 128] = 0
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 160] = 96
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 192] = 0
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 224] = 0
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 256] = 0
        if 0 >= _getNodeNumberOf[address(arg1)].field_0:
            revert with 0, 50
        if mem[128] >= stor0.length:
            revert with 0, 50
        mem[0] = 0
        if not stor0[mem[128]].field_768:
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = 1
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 416
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352] = 1
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 384] = 0x2300000000000000000000000000000000000000000000000000000000000000
            idx = 1
            s = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
            t = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
            while idx < _getNodeNumberOf[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                _173 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _175 = mem[64]
                mem[64] = mem[64] + 160
                mem[_175] = address(stor0[mem[(32 * idx) + 128]].field_0)
                if bool(stor0[_173].field_256):
                    if bool(stor0[_173].field_256) == uint255(stor0[_173].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _180 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor0[_173].field_256) * 0.5) + 32
                    mem[_180] = uint255(stor0[_173].field_256) * 0.5
                    if bool(stor0[_173].field_256):
                        if bool(stor0[_173].field_256) == uint255(stor0[_173].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor0[_173].field_256):
                            mem[_175 + 32] = _180
                            mem[_175 + 64] = stor0[_173].field_512
                            mem[_175 + 96] = stor0[_173].field_768
                            mem[_175 + 128] = stor0[_173].field_1024
                            _196 = mem[64]
                            _198 = mem[s]
                            t = 0
                            while t < _198:
                                mem[t + _196 + 32] = mem[t + s + 32]
                                t = t + 32
                                continue 
                            if ceil32(_198) <= _198:
                                _674 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                                s = 0
                                while s < _674:
                                    mem[s + _196 + _198 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                    s = s + 32
                                    continue 
                                mem[_674 + _196 + _198 + 32] = stor0[_173].field_768
                                if ceil32(_674) <= _674:
                                    _1305 = mem[64]
                                    mem[mem[64]] = _674 + _196 + _198 + -mem[64] + 32
                                    mem[64] = _674 + _196 + _198 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _1305
                                    t = _175
                                    continue 
                                _1326 = mem[64]
                                mem[mem[64]] = _674 + _196 + _198 + -mem[64] + 32
                                mem[64] = _674 + _196 + _198 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1326
                                t = _175
                                continue 
                            mem[_196 + _198 + 32] = 0
                            _689 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _689:
                                mem[s + _196 + _198 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_689 + _196 + _198 + 32] = stor0[_173].field_768
                            if ceil32(_689) <= _689:
                                _1306 = mem[64]
                                mem[mem[64]] = _689 + _196 + _198 + -mem[64] + 32
                                mem[64] = _689 + _196 + _198 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1306
                                t = _175
                                continue 
                            _1327 = mem[64]
                            mem[mem[64]] = _689 + _196 + _198 + -mem[64] + 32
                            mem[64] = _689 + _196 + _198 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1327
                            t = _175
                            continue 
                        if 31 >= uint255(stor0[_173].field_256) * 0.5:
                            mem[_180 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                            mem[_175 + 32] = _180
                            mem[_175 + 64] = stor0[_173].field_512
                            mem[_175 + 96] = stor0[_173].field_768
                            mem[_175 + 128] = stor0[_173].field_1024
                            _207 = mem[64]
                            _217 = mem[s]
                            t = 0
                            while t < _217:
                                mem[t + _207 + 32] = mem[t + s + 32]
                                t = t + 32
                                continue 
                            if ceil32(_217) <= _217:
                                _676 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                                s = 0
                                while s < _676:
                                    mem[s + _207 + _217 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                    s = s + 32
                                    continue 
                                mem[_676 + _207 + _217 + 32] = stor0[_173].field_768
                                if ceil32(_676) <= _676:
                                    _1308 = mem[64]
                                    mem[mem[64]] = _676 + _207 + _217 + -mem[64] + 32
                                    mem[64] = _676 + _207 + _217 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _1308
                                    t = _175
                                    continue 
                                _1328 = mem[64]
                                mem[mem[64]] = _676 + _207 + _217 + -mem[64] + 32
                                mem[64] = _676 + _207 + _217 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1328
                                t = _175
                                continue 
                            mem[_207 + _217 + 32] = 0
                            _690 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _690:
                                mem[s + _207 + _217 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_690 + _207 + _217 + 32] = stor0[_173].field_768
                            if ceil32(_690) <= _690:
                                _1309 = mem[64]
                                mem[mem[64]] = _690 + _207 + _217 + -mem[64] + 32
                                mem[64] = _690 + _207 + _217 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1309
                                t = _175
                                continue 
                            _1329 = mem[64]
                            mem[mem[64]] = _690 + _207 + _217 + -mem[64] + 32
                            mem[64] = _690 + _207 + _217 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1329
                            t = _175
                            continue 
                        mem[0] = (5 * _173) + sha3(0) + 1
                        mem[_180 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                        t = _180 + 32
                        u = sha3((5 * _173) + sha3(0) + 1)
                        while _180 + (uint255(stor0[_173].field_256) * 0.5) > t:
                            mem[t + 32] = _getNodeNumberOf[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_175 + 32] = _180
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _666 = mem[64]
                        _675 = mem[s]
                        t = 0
                        while t < _675:
                            mem[t + _666 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_675) <= _675:
                            _1297 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _1297:
                                mem[s + _666 + _675 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_1297 + _666 + _675 + 32] = stor0[_173].field_768
                            if ceil32(_1297) <= _1297:
                                _2260 = mem[64]
                                mem[mem[64]] = _1297 + _666 + _675 + -mem[64] + 32
                                mem[64] = _1297 + _666 + _675 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _2260
                                t = _175
                                continue 
                            _2278 = mem[64]
                            mem[mem[64]] = _1297 + _666 + _675 + -mem[64] + 32
                            mem[64] = _1297 + _666 + _675 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2278
                            t = _175
                            continue 
                        mem[_666 + _675 + 32] = 0
                        _1307 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _1307:
                            mem[s + _666 + _675 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_1307 + _666 + _675 + 32] = stor0[_173].field_768
                        if ceil32(_1307) <= _1307:
                            _2261 = mem[64]
                            mem[mem[64]] = _1307 + _666 + _675 + -mem[64] + 32
                            mem[64] = _1307 + _666 + _675 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2261
                            t = _175
                            continue 
                        _2279 = mem[64]
                        mem[mem[64]] = _1307 + _666 + _675 + -mem[64] + 32
                        mem[64] = _1307 + _666 + _675 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2279
                        t = _175
                        continue 
                    if bool(stor0[_173].field_256) == stor0[_173].field_257 % 128 < 32:
                        revert with 0, 34
                    if not stor0[_173].field_257 % 128:
                        mem[_175 + 32] = _180
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _201 = mem[64]
                        _208 = mem[s]
                        t = 0
                        while t < _208:
                            mem[t + _201 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_208) <= _208:
                            _677 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _677:
                                mem[s + _201 + _208 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_677 + _201 + _208 + 32] = stor0[_173].field_768
                            if ceil32(_677) <= _677:
                                _1310 = mem[64]
                                mem[mem[64]] = _677 + _201 + _208 + -mem[64] + 32
                                mem[64] = _677 + _201 + _208 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1310
                                t = _175
                                continue 
                            _1330 = mem[64]
                            mem[mem[64]] = _677 + _201 + _208 + -mem[64] + 32
                            mem[64] = _677 + _201 + _208 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1330
                            t = _175
                            continue 
                        mem[_201 + _208 + 32] = 0
                        _691 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _691:
                            mem[s + _201 + _208 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_691 + _201 + _208 + 32] = stor0[_173].field_768
                        if ceil32(_691) <= _691:
                            _1311 = mem[64]
                            mem[mem[64]] = _691 + _201 + _208 + -mem[64] + 32
                            mem[64] = _691 + _201 + _208 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1311
                            t = _175
                            continue 
                        _1331 = mem[64]
                        mem[mem[64]] = _691 + _201 + _208 + -mem[64] + 32
                        mem[64] = _691 + _201 + _208 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1331
                        t = _175
                        continue 
                    if 31 >= stor0[_173].field_257 % 128:
                        mem[_180 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                        mem[_175 + 32] = _180
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _219 = mem[64]
                        _228 = mem[s]
                        t = 0
                        while t < _228:
                            mem[t + _219 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_228) <= _228:
                            _679 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _679:
                                mem[s + _219 + _228 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_679 + _219 + _228 + 32] = stor0[_173].field_768
                            if ceil32(_679) <= _679:
                                _1313 = mem[64]
                                mem[mem[64]] = _679 + _219 + _228 + -mem[64] + 32
                                mem[64] = _679 + _219 + _228 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1313
                                t = _175
                                continue 
                            _1332 = mem[64]
                            mem[mem[64]] = _679 + _219 + _228 + -mem[64] + 32
                            mem[64] = _679 + _219 + _228 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1332
                            t = _175
                            continue 
                        mem[_219 + _228 + 32] = 0
                        _692 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _692:
                            mem[s + _219 + _228 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_692 + _219 + _228 + 32] = stor0[_173].field_768
                        if ceil32(_692) <= _692:
                            _1314 = mem[64]
                            mem[mem[64]] = _692 + _219 + _228 + -mem[64] + 32
                            mem[64] = _692 + _219 + _228 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1314
                            t = _175
                            continue 
                        _1333 = mem[64]
                        mem[mem[64]] = _692 + _219 + _228 + -mem[64] + 32
                        mem[64] = _692 + _219 + _228 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1333
                        t = _175
                        continue 
                    mem[0] = (5 * _173) + sha3(0) + 1
                    mem[_180 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                    t = _180 + 32
                    u = sha3((5 * _173) + sha3(0) + 1)
                    while _180 + stor0[_173].field_257 % 128 > t:
                        mem[t + 32] = _getNodeNumberOf[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_175 + 32] = _180
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _668 = mem[64]
                    _678 = mem[s]
                    t = 0
                    while t < _678:
                        mem[t + _668 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_678) <= _678:
                        _1298 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _1298:
                            mem[s + _668 + _678 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_1298 + _668 + _678 + 32] = stor0[_173].field_768
                        if ceil32(_1298) <= _1298:
                            _2262 = mem[64]
                            mem[mem[64]] = _1298 + _668 + _678 + -mem[64] + 32
                            mem[64] = _1298 + _668 + _678 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2262
                            t = _175
                            continue 
                        _2280 = mem[64]
                        mem[mem[64]] = _1298 + _668 + _678 + -mem[64] + 32
                        mem[64] = _1298 + _668 + _678 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2280
                        t = _175
                        continue 
                    mem[_668 + _678 + 32] = 0
                    _1312 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _1312:
                        mem[s + _668 + _678 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_1312 + _668 + _678 + 32] = stor0[_173].field_768
                    if ceil32(_1312) <= _1312:
                        _2263 = mem[64]
                        mem[mem[64]] = _1312 + _668 + _678 + -mem[64] + 32
                        mem[64] = _1312 + _668 + _678 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2263
                        t = _175
                        continue 
                    _2281 = mem[64]
                    mem[mem[64]] = _1312 + _668 + _678 + -mem[64] + 32
                    mem[64] = _1312 + _668 + _678 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2281
                    t = _175
                    continue 
                if bool(stor0[_173].field_256) == stor0[_173].field_257 % 128 < 32:
                    revert with 0, 34
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_173].field_257 % 128) + 32
                mem[_182] = stor0[_173].field_257 % 128
                if bool(stor0[_173].field_256):
                    if bool(stor0[_173].field_256) == uint255(stor0[_173].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_173].field_256):
                        mem[_175 + 32] = _182
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _203 = mem[64]
                        _210 = mem[s]
                        t = 0
                        while t < _210:
                            mem[t + _203 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_210) <= _210:
                            _680 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _680:
                                mem[s + _203 + _210 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_680 + _203 + _210 + 32] = stor0[_173].field_768
                            if ceil32(_680) <= _680:
                                _1315 = mem[64]
                                mem[mem[64]] = _680 + _203 + _210 + -mem[64] + 32
                                mem[64] = _680 + _203 + _210 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1315
                                t = _175
                                continue 
                            _1334 = mem[64]
                            mem[mem[64]] = _680 + _203 + _210 + -mem[64] + 32
                            mem[64] = _680 + _203 + _210 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1334
                            t = _175
                            continue 
                        mem[_203 + _210 + 32] = 0
                        _693 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _693:
                            mem[s + _203 + _210 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_693 + _203 + _210 + 32] = stor0[_173].field_768
                        if ceil32(_693) <= _693:
                            _1316 = mem[64]
                            mem[mem[64]] = _693 + _203 + _210 + -mem[64] + 32
                            mem[64] = _693 + _203 + _210 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1316
                            t = _175
                            continue 
                        _1335 = mem[64]
                        mem[mem[64]] = _693 + _203 + _210 + -mem[64] + 32
                        mem[64] = _693 + _203 + _210 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1335
                        t = _175
                        continue 
                    if 31 >= uint255(stor0[_173].field_256) * 0.5:
                        mem[_182 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                        mem[_175 + 32] = _182
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _221 = mem[64]
                        _229 = mem[s]
                        t = 0
                        while t < _229:
                            mem[t + _221 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_229) <= _229:
                            _682 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _682:
                                mem[s + _221 + _229 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_682 + _221 + _229 + 32] = stor0[_173].field_768
                            if ceil32(_682) <= _682:
                                _1318 = mem[64]
                                mem[mem[64]] = _682 + _221 + _229 + -mem[64] + 32
                                mem[64] = _682 + _221 + _229 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1318
                                t = _175
                                continue 
                            _1336 = mem[64]
                            mem[mem[64]] = _682 + _221 + _229 + -mem[64] + 32
                            mem[64] = _682 + _221 + _229 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1336
                            t = _175
                            continue 
                        mem[_221 + _229 + 32] = 0
                        _694 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _694:
                            mem[s + _221 + _229 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_694 + _221 + _229 + 32] = stor0[_173].field_768
                        if ceil32(_694) <= _694:
                            _1319 = mem[64]
                            mem[mem[64]] = _694 + _221 + _229 + -mem[64] + 32
                            mem[64] = _694 + _221 + _229 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1319
                            t = _175
                            continue 
                        _1337 = mem[64]
                        mem[mem[64]] = _694 + _221 + _229 + -mem[64] + 32
                        mem[64] = _694 + _221 + _229 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1337
                        t = _175
                        continue 
                    mem[0] = (5 * _173) + sha3(0) + 1
                    mem[_182 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                    t = _182 + 32
                    u = sha3((5 * _173) + sha3(0) + 1)
                    while _182 + (uint255(stor0[_173].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_175 + 32] = _182
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _670 = mem[64]
                    _681 = mem[s]
                    t = 0
                    while t < _681:
                        mem[t + _670 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_681) <= _681:
                        _1299 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _1299:
                            mem[s + _670 + _681 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_1299 + _670 + _681 + 32] = stor0[_173].field_768
                        if ceil32(_1299) <= _1299:
                            _2264 = mem[64]
                            mem[mem[64]] = _1299 + _670 + _681 + -mem[64] + 32
                            mem[64] = _1299 + _670 + _681 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2264
                            t = _175
                            continue 
                        _2282 = mem[64]
                        mem[mem[64]] = _1299 + _670 + _681 + -mem[64] + 32
                        mem[64] = _1299 + _670 + _681 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2282
                        t = _175
                        continue 
                    mem[_670 + _681 + 32] = 0
                    _1317 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _1317:
                        mem[s + _670 + _681 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_1317 + _670 + _681 + 32] = stor0[_173].field_768
                    if ceil32(_1317) <= _1317:
                        _2265 = mem[64]
                        mem[mem[64]] = _1317 + _670 + _681 + -mem[64] + 32
                        mem[64] = _1317 + _670 + _681 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2265
                        t = _175
                        continue 
                    _2283 = mem[64]
                    mem[mem[64]] = _1317 + _670 + _681 + -mem[64] + 32
                    mem[64] = _1317 + _670 + _681 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2283
                    t = _175
                    continue 
                if bool(stor0[_173].field_256) == stor0[_173].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_173].field_257 % 128:
                    mem[_175 + 32] = _182
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _213 = mem[64]
                    _222 = mem[s]
                    t = 0
                    while t < _222:
                        mem[t + _213 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_222) <= _222:
                        _683 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _683:
                            mem[s + _213 + _222 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_683 + _213 + _222 + 32] = stor0[_173].field_768
                        if ceil32(_683) <= _683:
                            _1320 = mem[64]
                            mem[mem[64]] = _683 + _213 + _222 + -mem[64] + 32
                            mem[64] = _683 + _213 + _222 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1320
                            t = _175
                            continue 
                        _1338 = mem[64]
                        mem[mem[64]] = _683 + _213 + _222 + -mem[64] + 32
                        mem[64] = _683 + _213 + _222 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1338
                        t = _175
                        continue 
                    mem[_213 + _222 + 32] = 0
                    _695 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _695:
                        mem[s + _213 + _222 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_695 + _213 + _222 + 32] = stor0[_173].field_768
                    if ceil32(_695) <= _695:
                        _1321 = mem[64]
                        mem[mem[64]] = _695 + _213 + _222 + -mem[64] + 32
                        mem[64] = _695 + _213 + _222 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1321
                        t = _175
                        continue 
                    _1339 = mem[64]
                    mem[mem[64]] = _695 + _213 + _222 + -mem[64] + 32
                    mem[64] = _695 + _213 + _222 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1339
                    t = _175
                    continue 
                if 31 >= stor0[_173].field_257 % 128:
                    mem[_182 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                    mem[_175 + 32] = _182
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _231 = mem[64]
                    _239 = mem[s]
                    t = 0
                    while t < _239:
                        mem[t + _231 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_239) <= _239:
                        _685 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _685:
                            mem[s + _231 + _239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_685 + _231 + _239 + 32] = stor0[_173].field_768
                        if ceil32(_685) <= _685:
                            _1323 = mem[64]
                            mem[mem[64]] = _685 + _231 + _239 + -mem[64] + 32
                            mem[64] = _685 + _231 + _239 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1323
                            t = _175
                            continue 
                        _1340 = mem[64]
                        mem[mem[64]] = _685 + _231 + _239 + -mem[64] + 32
                        mem[64] = _685 + _231 + _239 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1340
                        t = _175
                        continue 
                    mem[_231 + _239 + 32] = 0
                    _696 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _696:
                        mem[s + _231 + _239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_696 + _231 + _239 + 32] = stor0[_173].field_768
                    if ceil32(_696) <= _696:
                        _1324 = mem[64]
                        mem[mem[64]] = _696 + _231 + _239 + -mem[64] + 32
                        mem[64] = _696 + _231 + _239 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1324
                        t = _175
                        continue 
                    _1341 = mem[64]
                    mem[mem[64]] = _696 + _231 + _239 + -mem[64] + 32
                    mem[64] = _696 + _231 + _239 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1341
                    t = _175
                    continue 
                mem[0] = (5 * _173) + sha3(0) + 1
                mem[_182 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                t = _182 + 32
                u = sha3((5 * _173) + sha3(0) + 1)
                while _182 + stor0[_173].field_257 % 128 > t:
                    mem[t + 32] = _getNodeNumberOf[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_175 + 32] = _182
                mem[_175 + 64] = stor0[_173].field_512
                mem[_175 + 96] = stor0[_173].field_768
                mem[_175 + 128] = stor0[_173].field_1024
                _672 = mem[64]
                _684 = mem[s]
                t = 0
                while t < _684:
                    mem[t + _672 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_684) <= _684:
                    _1300 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _1300:
                        mem[s + _672 + _684 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_1300 + _672 + _684 + 32] = stor0[_173].field_768
                    if ceil32(_1300) <= _1300:
                        _2266 = mem[64]
                        mem[mem[64]] = _1300 + _672 + _684 + -mem[64] + 32
                        mem[64] = _1300 + _672 + _684 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2266
                        t = _175
                        continue 
                    _2284 = mem[64]
                    mem[mem[64]] = _1300 + _672 + _684 + -mem[64] + 32
                    mem[64] = _1300 + _672 + _684 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2284
                    t = _175
                    continue 
                mem[_672 + _684 + 32] = 0
                _1322 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _1322:
                    mem[s + _672 + _684 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_1322 + _672 + _684 + 32] = stor0[_173].field_768
                if ceil32(_1322) <= _1322:
                    _2267 = mem[64]
                    mem[mem[64]] = _1322 + _672 + _684 + -mem[64] + 32
                    mem[64] = _1322 + _672 + _684 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2267
                    t = _175
                    continue 
                _2285 = mem[64]
                mem[mem[64]] = _1322 + _672 + _684 + -mem[64] + 32
                mem[64] = _1322 + _672 + _684 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _2285
                t = _175
                continue 
            mem[mem[64]] = 32
            _176 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_176)] = mem[s + 32 len ceil32(_176)]
            if ceil32(_176) > _176:
                mem[mem[64] + _176 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_176) + 32]
        s = 0
        idx = stor0[mem[128]].field_768
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = s
        if not s:
            t = s
            idx = stor0[mem[128]].field_768
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
                    revert with 0, 50
                mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
            idx = 1
            u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
            v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
            while idx < _getNodeNumberOf[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                _1287 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _1294 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1294] = address(stor0[mem[(32 * idx) + 128]].field_0)
                if bool(stor0[_1287].field_256):
                    if bool(stor0[_1287].field_256) == uint255(stor0[_1287].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _1348 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor0[_1287].field_256) * 0.5) + 32
                    mem[_1348] = uint255(stor0[_1287].field_256) * 0.5
                    if bool(stor0[_1287].field_256):
                        if bool(stor0[_1287].field_256) == uint255(stor0[_1287].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor0[_1287].field_256):
                            mem[_1294 + 32] = _1348
                            mem[_1294 + 64] = stor0[_1287].field_512
                            mem[_1294 + 96] = stor0[_1287].field_768
                            mem[_1294 + 128] = stor0[_1287].field_1024
                            _1390 = mem[64]
                            _1399 = mem[u]
                            t = 0
                            while t < _1399:
                                mem[t + _1390 + 32] = mem[t + u + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1399) <= _1399:
                                _2208 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                                t = 0
                                while t < _2208:
                                    mem[t + _1390 + _1399 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                    t = t + 32
                                    continue 
                                mem[_2208 + _1390 + _1399 + 32] = stor0[_1287].field_768
                                if ceil32(_2208) <= _2208:
                                    _2944 = mem[64]
                                    mem[mem[64]] = _2208 + _1390 + _1399 + -mem[64] + 32
                                    mem[64] = _2208 + _1390 + _1399 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = _2944
                                    v = _1294
                                    continue 
                                _3006 = mem[64]
                                mem[mem[64]] = _2208 + _1390 + _1399 + -mem[64] + 32
                                mem[64] = _2208 + _1390 + _1399 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3006
                                v = _1294
                                continue 
                            mem[_1390 + _1399 + 32] = 0
                            _2244 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2244:
                                mem[t + _1390 + _1399 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2244 + _1390 + _1399 + 32] = stor0[_1287].field_768
                            if ceil32(_2244) <= _2244:
                                _2945 = mem[64]
                                mem[mem[64]] = _2244 + _1390 + _1399 + -mem[64] + 32
                                mem[64] = _2244 + _1390 + _1399 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2945
                                v = _1294
                                continue 
                            _3007 = mem[64]
                            mem[mem[64]] = _2244 + _1390 + _1399 + -mem[64] + 32
                            mem[64] = _2244 + _1390 + _1399 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3007
                            v = _1294
                            continue 
                        if 31 >= uint255(stor0[_1287].field_256) * 0.5:
                            mem[_1348 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                            mem[_1294 + 32] = _1348
                            mem[_1294 + 64] = stor0[_1287].field_512
                            mem[_1294 + 96] = stor0[_1287].field_768
                            mem[_1294 + 128] = stor0[_1287].field_1024
                            _1420 = mem[64]
                            _1445 = mem[u]
                            t = 0
                            while t < _1445:
                                mem[t + _1420 + 32] = mem[t + u + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1445) <= _1445:
                                _2210 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                                t = 0
                                while t < _2210:
                                    mem[t + _1420 + _1445 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                    t = t + 32
                                    continue 
                                mem[_2210 + _1420 + _1445 + 32] = stor0[_1287].field_768
                                if ceil32(_2210) <= _2210:
                                    _2947 = mem[64]
                                    mem[mem[64]] = _2210 + _1420 + _1445 + -mem[64] + 32
                                    mem[64] = _2210 + _1420 + _1445 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = _2947
                                    v = _1294
                                    continue 
                                _3008 = mem[64]
                                mem[mem[64]] = _2210 + _1420 + _1445 + -mem[64] + 32
                                mem[64] = _2210 + _1420 + _1445 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3008
                                v = _1294
                                continue 
                            mem[_1420 + _1445 + 32] = 0
                            _2245 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2245:
                                mem[t + _1420 + _1445 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2245 + _1420 + _1445 + 32] = stor0[_1287].field_768
                            if ceil32(_2245) <= _2245:
                                _2948 = mem[64]
                                mem[mem[64]] = _2245 + _1420 + _1445 + -mem[64] + 32
                                mem[64] = _2245 + _1420 + _1445 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2948
                                v = _1294
                                continue 
                            _3009 = mem[64]
                            mem[mem[64]] = _2245 + _1420 + _1445 + -mem[64] + 32
                            mem[64] = _2245 + _1420 + _1445 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3009
                            v = _1294
                            continue 
                        mem[0] = (5 * _1287) + sha3(0) + 1
                        mem[_1348 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                        t = _1348 + 32
                        v = sha3((5 * _1287) + sha3(0) + 1)
                        while _1348 + (uint255(stor0[_1287].field_256) * 0.5) > t:
                            mem[t + 32] = _getNodeNumberOf[v].field_0
                            t = t + 32
                            v = v + 1
                            continue 
                        mem[_1294 + 32] = _1348
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _2183 = mem[64]
                        _2209 = mem[u]
                        t = 0
                        while t < _2209:
                            mem[t + _2183 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_2209) <= _2209:
                            _2928 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2928:
                                mem[t + _2183 + _2209 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2928 + _2183 + _2209 + 32] = stor0[_1287].field_768
                            if ceil32(_2928) <= _2928:
                                _3514 = mem[64]
                                mem[mem[64]] = _2928 + _2183 + _2209 + -mem[64] + 32
                                mem[64] = _2928 + _2183 + _2209 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3514
                                v = _1294
                                continue 
                            _3554 = mem[64]
                            mem[mem[64]] = _2928 + _2183 + _2209 + -mem[64] + 32
                            mem[64] = _2928 + _2183 + _2209 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3554
                            v = _1294
                            continue 
                        mem[_2183 + _2209 + 32] = 0
                        _2946 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2946:
                            mem[t + _2183 + _2209 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2946 + _2183 + _2209 + 32] = stor0[_1287].field_768
                        if ceil32(_2946) <= _2946:
                            _3515 = mem[64]
                            mem[mem[64]] = _2946 + _2183 + _2209 + -mem[64] + 32
                            mem[64] = _2946 + _2183 + _2209 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3515
                            v = _1294
                            continue 
                        _3555 = mem[64]
                        mem[mem[64]] = _2946 + _2183 + _2209 + -mem[64] + 32
                        mem[64] = _2946 + _2183 + _2209 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3555
                        v = _1294
                        continue 
                    if bool(stor0[_1287].field_256) == stor0[_1287].field_257 % 128 < 32:
                        revert with 0, 34
                    if not stor0[_1287].field_257 % 128:
                        mem[_1294 + 32] = _1348
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1402 = mem[64]
                        _1421 = mem[u]
                        t = 0
                        while t < _1421:
                            mem[t + _1402 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1421) <= _1421:
                            _2211 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2211:
                                mem[t + _1402 + _1421 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2211 + _1402 + _1421 + 32] = stor0[_1287].field_768
                            if ceil32(_2211) <= _2211:
                                _2949 = mem[64]
                                mem[mem[64]] = _2211 + _1402 + _1421 + -mem[64] + 32
                                mem[64] = _2211 + _1402 + _1421 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2949
                                v = _1294
                                continue 
                            _3010 = mem[64]
                            mem[mem[64]] = _2211 + _1402 + _1421 + -mem[64] + 32
                            mem[64] = _2211 + _1402 + _1421 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3010
                            v = _1294
                            continue 
                        mem[_1402 + _1421 + 32] = 0
                        _2246 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2246:
                            mem[t + _1402 + _1421 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2246 + _1402 + _1421 + 32] = stor0[_1287].field_768
                        if ceil32(_2246) <= _2246:
                            _2950 = mem[64]
                            mem[mem[64]] = _2246 + _1402 + _1421 + -mem[64] + 32
                            mem[64] = _2246 + _1402 + _1421 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2950
                            v = _1294
                            continue 
                        _3011 = mem[64]
                        mem[mem[64]] = _2246 + _1402 + _1421 + -mem[64] + 32
                        mem[64] = _2246 + _1402 + _1421 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3011
                        v = _1294
                        continue 
                    if 31 >= stor0[_1287].field_257 % 128:
                        mem[_1348 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                        mem[_1294 + 32] = _1348
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1447 = mem[64]
                        _1472 = mem[u]
                        t = 0
                        while t < _1472:
                            mem[t + _1447 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1472) <= _1472:
                            _2213 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2213:
                                mem[t + _1447 + _1472 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2213 + _1447 + _1472 + 32] = stor0[_1287].field_768
                            if ceil32(_2213) <= _2213:
                                _2952 = mem[64]
                                mem[mem[64]] = _2213 + _1447 + _1472 + -mem[64] + 32
                                mem[64] = _2213 + _1447 + _1472 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2952
                                v = _1294
                                continue 
                            _3012 = mem[64]
                            mem[mem[64]] = _2213 + _1447 + _1472 + -mem[64] + 32
                            mem[64] = _2213 + _1447 + _1472 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3012
                            v = _1294
                            continue 
                        mem[_1447 + _1472 + 32] = 0
                        _2247 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2247:
                            mem[t + _1447 + _1472 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2247 + _1447 + _1472 + 32] = stor0[_1287].field_768
                        if ceil32(_2247) <= _2247:
                            _2953 = mem[64]
                            mem[mem[64]] = _2247 + _1447 + _1472 + -mem[64] + 32
                            mem[64] = _2247 + _1447 + _1472 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2953
                            v = _1294
                            continue 
                        _3013 = mem[64]
                        mem[mem[64]] = _2247 + _1447 + _1472 + -mem[64] + 32
                        mem[64] = _2247 + _1447 + _1472 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3013
                        v = _1294
                        continue 
                    mem[0] = (5 * _1287) + sha3(0) + 1
                    mem[_1348 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                    v = _1348 + 32
                    t = sha3((5 * _1287) + sha3(0) + 1)
                    while _1348 + stor0[_1287].field_257 % 128 > v:
                        mem[v + 32] = _getNodeNumberOf[t].field_0
                        v = v + 32
                        t = t + 1
                        continue 
                    mem[_1294 + 32] = _1348
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _2185 = mem[64]
                    _2212 = mem[u]
                    t = 0
                    while t < _2212:
                        mem[t + _2185 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2212) <= _2212:
                        _2929 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2929:
                            mem[t + _2185 + _2212 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2929 + _2185 + _2212 + 32] = stor0[_1287].field_768
                        if ceil32(_2929) <= _2929:
                            _3516 = mem[64]
                            mem[mem[64]] = _2929 + _2185 + _2212 + -mem[64] + 32
                            mem[64] = _2929 + _2185 + _2212 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3516
                            v = _1294
                            continue 
                        _3556 = mem[64]
                        mem[mem[64]] = _2929 + _2185 + _2212 + -mem[64] + 32
                        mem[64] = _2929 + _2185 + _2212 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3556
                        v = _1294
                        continue 
                    mem[_2185 + _2212 + 32] = 0
                    _2951 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2951:
                        mem[t + _2185 + _2212 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2951 + _2185 + _2212 + 32] = stor0[_1287].field_768
                    if ceil32(_2951) <= _2951:
                        _3517 = mem[64]
                        mem[mem[64]] = _2951 + _2185 + _2212 + -mem[64] + 32
                        mem[64] = _2951 + _2185 + _2212 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3517
                        v = _1294
                        continue 
                    _3557 = mem[64]
                    mem[mem[64]] = _2951 + _2185 + _2212 + -mem[64] + 32
                    mem[64] = _2951 + _2185 + _2212 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3557
                    v = _1294
                    continue 
                if bool(stor0[_1287].field_256) == stor0[_1287].field_257 % 128 < 32:
                    revert with 0, 34
                _1358 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_1287].field_257 % 128) + 32
                mem[_1358] = stor0[_1287].field_257 % 128
                if bool(stor0[_1287].field_256):
                    if bool(stor0[_1287].field_256) == uint255(stor0[_1287].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_1287].field_256):
                        mem[_1294 + 32] = _1358
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1404 = mem[64]
                        _1423 = mem[u]
                        t = 0
                        while t < _1423:
                            mem[t + _1404 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1423) <= _1423:
                            _2214 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2214:
                                mem[t + _1404 + _1423 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2214 + _1404 + _1423 + 32] = stor0[_1287].field_768
                            if ceil32(_2214) <= _2214:
                                _2954 = mem[64]
                                mem[mem[64]] = _2214 + _1404 + _1423 + -mem[64] + 32
                                mem[64] = _2214 + _1404 + _1423 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2954
                                v = _1294
                                continue 
                            _3014 = mem[64]
                            mem[mem[64]] = _2214 + _1404 + _1423 + -mem[64] + 32
                            mem[64] = _2214 + _1404 + _1423 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3014
                            v = _1294
                            continue 
                        mem[_1404 + _1423 + 32] = 0
                        _2248 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2248:
                            mem[t + _1404 + _1423 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2248 + _1404 + _1423 + 32] = stor0[_1287].field_768
                        if ceil32(_2248) <= _2248:
                            _2955 = mem[64]
                            mem[mem[64]] = _2248 + _1404 + _1423 + -mem[64] + 32
                            mem[64] = _2248 + _1404 + _1423 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2955
                            v = _1294
                            continue 
                        _3015 = mem[64]
                        mem[mem[64]] = _2248 + _1404 + _1423 + -mem[64] + 32
                        mem[64] = _2248 + _1404 + _1423 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3015
                        v = _1294
                        continue 
                    if 31 >= uint255(stor0[_1287].field_256) * 0.5:
                        mem[_1358 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                        mem[_1294 + 32] = _1358
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1449 = mem[64]
                        _1473 = mem[u]
                        t = 0
                        while t < _1473:
                            mem[t + _1449 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1473) <= _1473:
                            _2216 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2216:
                                mem[t + _1449 + _1473 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2216 + _1449 + _1473 + 32] = stor0[_1287].field_768
                            if ceil32(_2216) <= _2216:
                                _2957 = mem[64]
                                mem[mem[64]] = _2216 + _1449 + _1473 + -mem[64] + 32
                                mem[64] = _2216 + _1449 + _1473 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2957
                                v = _1294
                                continue 
                            _3016 = mem[64]
                            mem[mem[64]] = _2216 + _1449 + _1473 + -mem[64] + 32
                            mem[64] = _2216 + _1449 + _1473 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3016
                            v = _1294
                            continue 
                        mem[_1449 + _1473 + 32] = 0
                        _2249 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2249:
                            mem[t + _1449 + _1473 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2249 + _1449 + _1473 + 32] = stor0[_1287].field_768
                        if ceil32(_2249) <= _2249:
                            _2958 = mem[64]
                            mem[mem[64]] = _2249 + _1449 + _1473 + -mem[64] + 32
                            mem[64] = _2249 + _1449 + _1473 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2958
                            v = _1294
                            continue 
                        _3017 = mem[64]
                        mem[mem[64]] = _2249 + _1449 + _1473 + -mem[64] + 32
                        mem[64] = _2249 + _1449 + _1473 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3017
                        v = _1294
                        continue 
                    mem[0] = (5 * _1287) + sha3(0) + 1
                    mem[_1358 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                    v = _1358 + 32
                    t = sha3((5 * _1287) + sha3(0) + 1)
                    while _1358 + (uint255(stor0[_1287].field_256) * 0.5) > v:
                        mem[v + 32] = _getNodeNumberOf[t].field_0
                        v = v + 32
                        t = t + 1
                        continue 
                    mem[_1294 + 32] = _1358
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _2187 = mem[64]
                    _2215 = mem[u]
                    t = 0
                    while t < _2215:
                        mem[t + _2187 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2215) <= _2215:
                        _2930 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2930:
                            mem[t + _2187 + _2215 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2930 + _2187 + _2215 + 32] = stor0[_1287].field_768
                        if ceil32(_2930) <= _2930:
                            _3518 = mem[64]
                            mem[mem[64]] = _2930 + _2187 + _2215 + -mem[64] + 32
                            mem[64] = _2930 + _2187 + _2215 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3518
                            v = _1294
                            continue 
                        _3558 = mem[64]
                        mem[mem[64]] = _2930 + _2187 + _2215 + -mem[64] + 32
                        mem[64] = _2930 + _2187 + _2215 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3558
                        v = _1294
                        continue 
                    mem[_2187 + _2215 + 32] = 0
                    _2956 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2956:
                        mem[t + _2187 + _2215 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2956 + _2187 + _2215 + 32] = stor0[_1287].field_768
                    if ceil32(_2956) <= _2956:
                        _3519 = mem[64]
                        mem[mem[64]] = _2956 + _2187 + _2215 + -mem[64] + 32
                        mem[64] = _2956 + _2187 + _2215 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3519
                        v = _1294
                        continue 
                    _3559 = mem[64]
                    mem[mem[64]] = _2956 + _2187 + _2215 + -mem[64] + 32
                    mem[64] = _2956 + _2187 + _2215 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3559
                    v = _1294
                    continue 
                if bool(stor0[_1287].field_256) == stor0[_1287].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_1287].field_257 % 128:
                    mem[_1294 + 32] = _1358
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _1426 = mem[64]
                    _1450 = mem[u]
                    t = 0
                    while t < _1450:
                        mem[t + _1426 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1450) <= _1450:
                        _2217 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2217:
                            mem[t + _1426 + _1450 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2217 + _1426 + _1450 + 32] = stor0[_1287].field_768
                        if ceil32(_2217) <= _2217:
                            _2959 = mem[64]
                            mem[mem[64]] = _2217 + _1426 + _1450 + -mem[64] + 32
                            mem[64] = _2217 + _1426 + _1450 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2959
                            v = _1294
                            continue 
                        _3018 = mem[64]
                        mem[mem[64]] = _2217 + _1426 + _1450 + -mem[64] + 32
                        mem[64] = _2217 + _1426 + _1450 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3018
                        v = _1294
                        continue 
                    mem[_1426 + _1450 + 32] = 0
                    _2250 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2250:
                        mem[t + _1426 + _1450 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2250 + _1426 + _1450 + 32] = stor0[_1287].field_768
                    if ceil32(_2250) <= _2250:
                        _2960 = mem[64]
                        mem[mem[64]] = _2250 + _1426 + _1450 + -mem[64] + 32
                        mem[64] = _2250 + _1426 + _1450 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2960
                        v = _1294
                        continue 
                    _3019 = mem[64]
                    mem[mem[64]] = _2250 + _1426 + _1450 + -mem[64] + 32
                    mem[64] = _2250 + _1426 + _1450 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3019
                    v = _1294
                    continue 
                if 31 >= stor0[_1287].field_257 % 128:
                    mem[_1358 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                    mem[_1294 + 32] = _1358
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _1475 = mem[64]
                    _1498 = mem[u]
                    t = 0
                    while t < _1498:
                        mem[t + _1475 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1498) <= _1498:
                        _2219 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2219:
                            mem[t + _1475 + _1498 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2219 + _1475 + _1498 + 32] = stor0[_1287].field_768
                        if ceil32(_2219) <= _2219:
                            _2962 = mem[64]
                            mem[mem[64]] = _2219 + _1475 + _1498 + -mem[64] + 32
                            mem[64] = _2219 + _1475 + _1498 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2962
                            v = _1294
                            continue 
                        _3020 = mem[64]
                        mem[mem[64]] = _2219 + _1475 + _1498 + -mem[64] + 32
                        mem[64] = _2219 + _1475 + _1498 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3020
                        v = _1294
                        continue 
                    mem[_1475 + _1498 + 32] = 0
                    _2251 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2251:
                        mem[t + _1475 + _1498 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2251 + _1475 + _1498 + 32] = stor0[_1287].field_768
                    if ceil32(_2251) <= _2251:
                        _2963 = mem[64]
                        mem[mem[64]] = _2251 + _1475 + _1498 + -mem[64] + 32
                        mem[64] = _2251 + _1475 + _1498 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2963
                        v = _1294
                        continue 
                    _3021 = mem[64]
                    mem[mem[64]] = _2251 + _1475 + _1498 + -mem[64] + 32
                    mem[64] = _2251 + _1475 + _1498 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3021
                    v = _1294
                    continue 
                mem[0] = (5 * _1287) + sha3(0) + 1
                mem[_1358 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                t = _1358 + 32
                v = sha3((5 * _1287) + sha3(0) + 1)
                while _1358 + stor0[_1287].field_257 % 128 > t:
                    mem[t + 32] = _getNodeNumberOf[v].field_0
                    t = t + 32
                    v = v + 1
                    continue 
                mem[_1294 + 32] = _1358
                mem[_1294 + 64] = stor0[_1287].field_512
                mem[_1294 + 96] = stor0[_1287].field_768
                mem[_1294 + 128] = stor0[_1287].field_1024
                _2189 = mem[64]
                _2218 = mem[u]
                t = 0
                while t < _2218:
                    mem[t + _2189 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_2218) <= _2218:
                    _2931 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2931:
                        mem[t + _2189 + _2218 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2931 + _2189 + _2218 + 32] = stor0[_1287].field_768
                    if ceil32(_2931) <= _2931:
                        _3520 = mem[64]
                        mem[mem[64]] = _2931 + _2189 + _2218 + -mem[64] + 32
                        mem[64] = _2931 + _2189 + _2218 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3520
                        v = _1294
                        continue 
                    _3560 = mem[64]
                    mem[mem[64]] = _2931 + _2189 + _2218 + -mem[64] + 32
                    mem[64] = _2931 + _2189 + _2218 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3560
                    v = _1294
                    continue 
                mem[_2189 + _2218 + 32] = 0
                _2961 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2961:
                    mem[t + _2189 + _2218 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2961 + _2189 + _2218 + 32] = stor0[_1287].field_768
                if ceil32(_2961) <= _2961:
                    _3521 = mem[64]
                    mem[mem[64]] = _2961 + _2189 + _2218 + -mem[64] + 32
                    mem[64] = _2961 + _2189 + _2218 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3521
                    v = _1294
                    continue 
                _3561 = mem[64]
                mem[mem[64]] = _2961 + _2189 + _2218 + -mem[64] + 32
                mem[64] = _2961 + _2189 + _2218 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3561
                v = _1294
                continue 
            _1286 = mem[64]
            mem[mem[64]] = 32
            _1303 = mem[u]
            mem[mem[64] + 32] = mem[u]
            mem[mem[64] + 64 len ceil32(_1303)] = mem[u + 32 len ceil32(_1303)]
            if ceil32(_1303) <= _1303:
                return 32, mem[mem[64] + 32 len ceil32(_1303) + 32]
            mem[mem[64] + _1303 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_1303) + _1286 + -mem[64] + 64
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320 len s] = call.data[calldata.size len s]
        t = s
        idx = stor0[mem[128]].field_768
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
                revert with 0, 50
            mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
        v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _1289 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _1296 = mem[64]
            mem[64] = mem[64] + 160
            mem[_1296] = address(stor0[mem[(32 * idx) + 128]].field_0)
            if bool(stor0[_1289].field_256):
                if bool(stor0[_1289].field_256) == uint255(stor0[_1289].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1350 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor0[_1289].field_256) * 0.5) + 32
                mem[_1350] = uint255(stor0[_1289].field_256) * 0.5
                if bool(stor0[_1289].field_256):
                    if bool(stor0[_1289].field_256) == uint255(stor0[_1289].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_1289].field_256):
                        mem[_1296 + 32] = _1350
                        mem[_1296 + 64] = stor0[_1289].field_512
                        mem[_1296 + 96] = stor0[_1289].field_768
                        mem[_1296 + 128] = stor0[_1289].field_1024
                        _1393 = mem[64]
                        _1406 = mem[u]
                        t = 0
                        while t < _1406:
                            mem[t + _1393 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1406) <= _1406:
                            _2220 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2220:
                                mem[t + _1393 + _1406 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2220 + _1393 + _1406 + 32] = stor0[_1289].field_768
                            if ceil32(_2220) <= _2220:
                                _2964 = mem[64]
                                mem[mem[64]] = _2220 + _1393 + _1406 + -mem[64] + 32
                                mem[64] = _2220 + _1393 + _1406 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2964
                                v = _1296
                                continue 
                            _3022 = mem[64]
                            mem[mem[64]] = _2220 + _1393 + _1406 + -mem[64] + 32
                            mem[64] = _2220 + _1393 + _1406 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3022
                            v = _1296
                            continue 
                        mem[_1393 + _1406 + 32] = 0
                        _2252 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2252:
                            mem[t + _1393 + _1406 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2252 + _1393 + _1406 + 32] = stor0[_1289].field_768
                        if ceil32(_2252) <= _2252:
                            _2965 = mem[64]
                            mem[mem[64]] = _2252 + _1393 + _1406 + -mem[64] + 32
                            mem[64] = _2252 + _1393 + _1406 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2965
                            v = _1296
                            continue 
                        _3023 = mem[64]
                        mem[mem[64]] = _2252 + _1393 + _1406 + -mem[64] + 32
                        mem[64] = _2252 + _1393 + _1406 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3023
                        v = _1296
                        continue 
                    if 31 >= uint255(stor0[_1289].field_256) * 0.5:
                        mem[_1350 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                        mem[_1296 + 32] = _1350
                        mem[_1296 + 64] = stor0[_1289].field_512
                        mem[_1296 + 96] = stor0[_1289].field_768
                        mem[_1296 + 128] = stor0[_1289].field_1024
                        _1428 = mem[64]
                        _1452 = mem[u]
                        t = 0
                        while t < _1452:
                            mem[t + _1428 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1452) <= _1452:
                            _2222 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2222:
                                mem[t + _1428 + _1452 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2222 + _1428 + _1452 + 32] = stor0[_1289].field_768
                            if ceil32(_2222) <= _2222:
                                _2967 = mem[64]
                                mem[mem[64]] = _2222 + _1428 + _1452 + -mem[64] + 32
                                mem[64] = _2222 + _1428 + _1452 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2967
                                v = _1296
                                continue 
                            _3024 = mem[64]
                            mem[mem[64]] = _2222 + _1428 + _1452 + -mem[64] + 32
                            mem[64] = _2222 + _1428 + _1452 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3024
                            v = _1296
                            continue 
                        mem[_1428 + _1452 + 32] = 0
                        _2253 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2253:
                            mem[t + _1428 + _1452 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2253 + _1428 + _1452 + 32] = stor0[_1289].field_768
                        if ceil32(_2253) <= _2253:
                            _2968 = mem[64]
                            mem[mem[64]] = _2253 + _1428 + _1452 + -mem[64] + 32
                            mem[64] = _2253 + _1428 + _1452 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2968
                            v = _1296
                            continue 
                        _3025 = mem[64]
                        mem[mem[64]] = _2253 + _1428 + _1452 + -mem[64] + 32
                        mem[64] = _2253 + _1428 + _1452 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3025
                        v = _1296
                        continue 
                    mem[0] = (5 * _1289) + sha3(0) + 1
                    mem[_1350 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
                    t = _1350 + 32
                    v = sha3((5 * _1289) + sha3(0) + 1)
                    while _1350 + (uint255(stor0[_1289].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[v].field_0
                        t = t + 32
                        v = v + 1
                        continue 
                    mem[_1296 + 32] = _1350
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _2191 = mem[64]
                    _2221 = mem[u]
                    t = 0
                    while t < _2221:
                        mem[t + _2191 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2221) <= _2221:
                        _2932 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2932:
                            mem[t + _2191 + _2221 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2932 + _2191 + _2221 + 32] = stor0[_1289].field_768
                        if ceil32(_2932) <= _2932:
                            _3522 = mem[64]
                            mem[mem[64]] = _2932 + _2191 + _2221 + -mem[64] + 32
                            mem[64] = _2932 + _2191 + _2221 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3522
                            v = _1296
                            continue 
                        _3562 = mem[64]
                        mem[mem[64]] = _2932 + _2191 + _2221 + -mem[64] + 32
                        mem[64] = _2932 + _2191 + _2221 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3562
                        v = _1296
                        continue 
                    mem[_2191 + _2221 + 32] = 0
                    _2966 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2966:
                        mem[t + _2191 + _2221 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2966 + _2191 + _2221 + 32] = stor0[_1289].field_768
                    if ceil32(_2966) <= _2966:
                        _3523 = mem[64]
                        mem[mem[64]] = _2966 + _2191 + _2221 + -mem[64] + 32
                        mem[64] = _2966 + _2191 + _2221 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3523
                        v = _1296
                        continue 
                    _3563 = mem[64]
                    mem[mem[64]] = _2966 + _2191 + _2221 + -mem[64] + 32
                    mem[64] = _2966 + _2191 + _2221 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3563
                    v = _1296
                    continue 
                if bool(stor0[_1289].field_256) == stor0[_1289].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_1289].field_257 % 128:
                    mem[_1296 + 32] = _1350
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1409 = mem[64]
                    _1429 = mem[u]
                    t = 0
                    while t < _1429:
                        mem[t + _1409 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1429) <= _1429:
                        _2223 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2223:
                            mem[t + _1409 + _1429 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2223 + _1409 + _1429 + 32] = stor0[_1289].field_768
                        if ceil32(_2223) <= _2223:
                            _2969 = mem[64]
                            mem[mem[64]] = _2223 + _1409 + _1429 + -mem[64] + 32
                            mem[64] = _2223 + _1409 + _1429 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2969
                            v = _1296
                            continue 
                        _3026 = mem[64]
                        mem[mem[64]] = _2223 + _1409 + _1429 + -mem[64] + 32
                        mem[64] = _2223 + _1409 + _1429 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3026
                        v = _1296
                        continue 
                    mem[_1409 + _1429 + 32] = 0
                    _2254 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2254:
                        mem[t + _1409 + _1429 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2254 + _1409 + _1429 + 32] = stor0[_1289].field_768
                    if ceil32(_2254) <= _2254:
                        _2970 = mem[64]
                        mem[mem[64]] = _2254 + _1409 + _1429 + -mem[64] + 32
                        mem[64] = _2254 + _1409 + _1429 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2970
                        v = _1296
                        continue 
                    _3027 = mem[64]
                    mem[mem[64]] = _2254 + _1409 + _1429 + -mem[64] + 32
                    mem[64] = _2254 + _1409 + _1429 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3027
                    v = _1296
                    continue 
                if 31 >= stor0[_1289].field_257 % 128:
                    mem[_1350 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                    mem[_1296 + 32] = _1350
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1454 = mem[64]
                    _1479 = mem[u]
                    t = 0
                    while t < _1479:
                        mem[t + _1454 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1479) <= _1479:
                        _2225 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2225:
                            mem[t + _1454 + _1479 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2225 + _1454 + _1479 + 32] = stor0[_1289].field_768
                        if ceil32(_2225) <= _2225:
                            _2972 = mem[64]
                            mem[mem[64]] = _2225 + _1454 + _1479 + -mem[64] + 32
                            mem[64] = _2225 + _1454 + _1479 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2972
                            v = _1296
                            continue 
                        _3028 = mem[64]
                        mem[mem[64]] = _2225 + _1454 + _1479 + -mem[64] + 32
                        mem[64] = _2225 + _1454 + _1479 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3028
                        v = _1296
                        continue 
                    mem[_1454 + _1479 + 32] = 0
                    _2255 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2255:
                        mem[t + _1454 + _1479 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2255 + _1454 + _1479 + 32] = stor0[_1289].field_768
                    if ceil32(_2255) <= _2255:
                        _2973 = mem[64]
                        mem[mem[64]] = _2255 + _1454 + _1479 + -mem[64] + 32
                        mem[64] = _2255 + _1454 + _1479 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2973
                        v = _1296
                        continue 
                    _3029 = mem[64]
                    mem[mem[64]] = _2255 + _1454 + _1479 + -mem[64] + 32
                    mem[64] = _2255 + _1454 + _1479 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3029
                    v = _1296
                    continue 
                mem[0] = (5 * _1289) + sha3(0) + 1
                mem[_1350 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
                v = _1350 + 32
                t = sha3((5 * _1289) + sha3(0) + 1)
                while _1350 + stor0[_1289].field_257 % 128 > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_1296 + 32] = _1350
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _2193 = mem[64]
                _2224 = mem[u]
                t = 0
                while t < _2224:
                    mem[t + _2193 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_2224) <= _2224:
                    _2933 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2933:
                        mem[t + _2193 + _2224 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2933 + _2193 + _2224 + 32] = stor0[_1289].field_768
                    if ceil32(_2933) <= _2933:
                        _3524 = mem[64]
                        mem[mem[64]] = _2933 + _2193 + _2224 + -mem[64] + 32
                        mem[64] = _2933 + _2193 + _2224 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3524
                        v = _1296
                        continue 
                    _3564 = mem[64]
                    mem[mem[64]] = _2933 + _2193 + _2224 + -mem[64] + 32
                    mem[64] = _2933 + _2193 + _2224 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3564
                    v = _1296
                    continue 
                mem[_2193 + _2224 + 32] = 0
                _2971 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2971:
                    mem[t + _2193 + _2224 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2971 + _2193 + _2224 + 32] = stor0[_1289].field_768
                if ceil32(_2971) <= _2971:
                    _3525 = mem[64]
                    mem[mem[64]] = _2971 + _2193 + _2224 + -mem[64] + 32
                    mem[64] = _2971 + _2193 + _2224 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3525
                    v = _1296
                    continue 
                _3565 = mem[64]
                mem[mem[64]] = _2971 + _2193 + _2224 + -mem[64] + 32
                mem[64] = _2971 + _2193 + _2224 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3565
                v = _1296
                continue 
            if bool(stor0[_1289].field_256) == stor0[_1289].field_257 % 128 < 32:
                revert with 0, 34
            _1359 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[_1289].field_257 % 128) + 32
            mem[_1359] = stor0[_1289].field_257 % 128
            if bool(stor0[_1289].field_256):
                if bool(stor0[_1289].field_256) == uint255(stor0[_1289].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_1289].field_256):
                    mem[_1296 + 32] = _1359
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1411 = mem[64]
                    _1431 = mem[u]
                    t = 0
                    while t < _1431:
                        mem[t + _1411 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1431) <= _1431:
                        _2226 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2226:
                            mem[t + _1411 + _1431 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2226 + _1411 + _1431 + 32] = stor0[_1289].field_768
                        if ceil32(_2226) <= _2226:
                            _2974 = mem[64]
                            mem[mem[64]] = _2226 + _1411 + _1431 + -mem[64] + 32
                            mem[64] = _2226 + _1411 + _1431 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2974
                            v = _1296
                            continue 
                        _3030 = mem[64]
                        mem[mem[64]] = _2226 + _1411 + _1431 + -mem[64] + 32
                        mem[64] = _2226 + _1411 + _1431 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3030
                        v = _1296
                        continue 
                    mem[_1411 + _1431 + 32] = 0
                    _2256 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2256:
                        mem[t + _1411 + _1431 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2256 + _1411 + _1431 + 32] = stor0[_1289].field_768
                    if ceil32(_2256) <= _2256:
                        _2975 = mem[64]
                        mem[mem[64]] = _2256 + _1411 + _1431 + -mem[64] + 32
                        mem[64] = _2256 + _1411 + _1431 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2975
                        v = _1296
                        continue 
                    _3031 = mem[64]
                    mem[mem[64]] = _2256 + _1411 + _1431 + -mem[64] + 32
                    mem[64] = _2256 + _1411 + _1431 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3031
                    v = _1296
                    continue 
                if 31 >= uint255(stor0[_1289].field_256) * 0.5:
                    mem[_1359 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                    mem[_1296 + 32] = _1359
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1456 = mem[64]
                    _1480 = mem[u]
                    t = 0
                    while t < _1480:
                        mem[t + _1456 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1480) <= _1480:
                        _2228 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2228:
                            mem[t + _1456 + _1480 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2228 + _1456 + _1480 + 32] = stor0[_1289].field_768
                        if ceil32(_2228) <= _2228:
                            _2977 = mem[64]
                            mem[mem[64]] = _2228 + _1456 + _1480 + -mem[64] + 32
                            mem[64] = _2228 + _1456 + _1480 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2977
                            v = _1296
                            continue 
                        _3032 = mem[64]
                        mem[mem[64]] = _2228 + _1456 + _1480 + -mem[64] + 32
                        mem[64] = _2228 + _1456 + _1480 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3032
                        v = _1296
                        continue 
                    mem[_1456 + _1480 + 32] = 0
                    _2257 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2257:
                        mem[t + _1456 + _1480 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2257 + _1456 + _1480 + 32] = stor0[_1289].field_768
                    if ceil32(_2257) <= _2257:
                        _2978 = mem[64]
                        mem[mem[64]] = _2257 + _1456 + _1480 + -mem[64] + 32
                        mem[64] = _2257 + _1456 + _1480 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2978
                        v = _1296
                        continue 
                    _3033 = mem[64]
                    mem[mem[64]] = _2257 + _1456 + _1480 + -mem[64] + 32
                    mem[64] = _2257 + _1456 + _1480 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3033
                    v = _1296
                    continue 
                mem[0] = (5 * _1289) + sha3(0) + 1
                mem[_1359 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
                v = _1359 + 32
                t = sha3((5 * _1289) + sha3(0) + 1)
                while _1359 + (uint255(stor0[_1289].field_256) * 0.5) > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_1296 + 32] = _1359
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _2195 = mem[64]
                _2227 = mem[u]
                t = 0
                while t < _2227:
                    mem[t + _2195 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_2227) <= _2227:
                    _2934 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2934:
                        mem[t + _2195 + _2227 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2934 + _2195 + _2227 + 32] = stor0[_1289].field_768
                    if ceil32(_2934) <= _2934:
                        _3526 = mem[64]
                        mem[mem[64]] = _2934 + _2195 + _2227 + -mem[64] + 32
                        mem[64] = _2934 + _2195 + _2227 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3526
                        v = _1296
                        continue 
                    _3566 = mem[64]
                    mem[mem[64]] = _2934 + _2195 + _2227 + -mem[64] + 32
                    mem[64] = _2934 + _2195 + _2227 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3566
                    v = _1296
                    continue 
                mem[_2195 + _2227 + 32] = 0
                _2976 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2976:
                    mem[t + _2195 + _2227 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2976 + _2195 + _2227 + 32] = stor0[_1289].field_768
                if ceil32(_2976) <= _2976:
                    _3527 = mem[64]
                    mem[mem[64]] = _2976 + _2195 + _2227 + -mem[64] + 32
                    mem[64] = _2976 + _2195 + _2227 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3527
                    v = _1296
                    continue 
                _3567 = mem[64]
                mem[mem[64]] = _2976 + _2195 + _2227 + -mem[64] + 32
                mem[64] = _2976 + _2195 + _2227 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3567
                v = _1296
                continue 
            if bool(stor0[_1289].field_256) == stor0[_1289].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_1289].field_257 % 128:
                mem[_1296 + 32] = _1359
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _1434 = mem[64]
                _1457 = mem[u]
                t = 0
                while t < _1457:
                    mem[t + _1434 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_1457) <= _1457:
                    _2229 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2229:
                        mem[t + _1434 + _1457 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2229 + _1434 + _1457 + 32] = stor0[_1289].field_768
                    if ceil32(_2229) <= _2229:
                        _2979 = mem[64]
                        mem[mem[64]] = _2229 + _1434 + _1457 + -mem[64] + 32
                        mem[64] = _2229 + _1434 + _1457 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2979
                        v = _1296
                        continue 
                    _3034 = mem[64]
                    mem[mem[64]] = _2229 + _1434 + _1457 + -mem[64] + 32
                    mem[64] = _2229 + _1434 + _1457 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3034
                    v = _1296
                    continue 
                mem[_1434 + _1457 + 32] = 0
                _2258 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2258:
                    mem[t + _1434 + _1457 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2258 + _1434 + _1457 + 32] = stor0[_1289].field_768
                if ceil32(_2258) <= _2258:
                    _2980 = mem[64]
                    mem[mem[64]] = _2258 + _1434 + _1457 + -mem[64] + 32
                    mem[64] = _2258 + _1434 + _1457 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _2980
                    v = _1296
                    continue 
                _3035 = mem[64]
                mem[mem[64]] = _2258 + _1434 + _1457 + -mem[64] + 32
                mem[64] = _2258 + _1434 + _1457 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3035
                v = _1296
                continue 
            if 31 >= stor0[_1289].field_257 % 128:
                mem[_1359 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                mem[_1296 + 32] = _1359
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _1482 = mem[64]
                _1506 = mem[u]
                t = 0
                while t < _1506:
                    mem[t + _1482 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_1506) <= _1506:
                    _2231 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2231:
                        mem[t + _1482 + _1506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2231 + _1482 + _1506 + 32] = stor0[_1289].field_768
                    if ceil32(_2231) <= _2231:
                        _2982 = mem[64]
                        mem[mem[64]] = _2231 + _1482 + _1506 + -mem[64] + 32
                        mem[64] = _2231 + _1482 + _1506 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2982
                        v = _1296
                        continue 
                    _3036 = mem[64]
                    mem[mem[64]] = _2231 + _1482 + _1506 + -mem[64] + 32
                    mem[64] = _2231 + _1482 + _1506 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3036
                    v = _1296
                    continue 
                mem[_1482 + _1506 + 32] = 0
                _2259 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2259:
                    mem[t + _1482 + _1506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2259 + _1482 + _1506 + 32] = stor0[_1289].field_768
                if ceil32(_2259) <= _2259:
                    _2983 = mem[64]
                    mem[mem[64]] = _2259 + _1482 + _1506 + -mem[64] + 32
                    mem[64] = _2259 + _1482 + _1506 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _2983
                    v = _1296
                    continue 
                _3037 = mem[64]
                mem[mem[64]] = _2259 + _1482 + _1506 + -mem[64] + 32
                mem[64] = _2259 + _1482 + _1506 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3037
                v = _1296
                continue 
            mem[0] = (5 * _1289) + sha3(0) + 1
            mem[_1359 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
            t = _1359 + 32
            v = sha3((5 * _1289) + sha3(0) + 1)
            while _1359 + stor0[_1289].field_257 % 128 > t:
                mem[t + 32] = _getNodeNumberOf[v].field_0
                t = t + 32
                v = v + 1
                continue 
            mem[_1296 + 32] = _1359
            mem[_1296 + 64] = stor0[_1289].field_512
            mem[_1296 + 96] = stor0[_1289].field_768
            mem[_1296 + 128] = stor0[_1289].field_1024
            _2197 = mem[64]
            _2230 = mem[u]
            t = 0
            while t < _2230:
                mem[t + _2197 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_2230) <= _2230:
                _2935 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2935:
                    mem[t + _2197 + _2230 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2935 + _2197 + _2230 + 32] = stor0[_1289].field_768
                if ceil32(_2935) <= _2935:
                    _3528 = mem[64]
                    mem[mem[64]] = _2935 + _2197 + _2230 + -mem[64] + 32
                    mem[64] = _2935 + _2197 + _2230 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3528
                    v = _1296
                    continue 
                _3568 = mem[64]
                mem[mem[64]] = _2935 + _2197 + _2230 + -mem[64] + 32
                mem[64] = _2935 + _2197 + _2230 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3568
                v = _1296
                continue 
            mem[_2197 + _2230 + 32] = 0
            _2981 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _2981:
                mem[t + _2197 + _2230 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_2981 + _2197 + _2230 + 32] = stor0[_1289].field_768
            if ceil32(_2981) <= _2981:
                _3529 = mem[64]
                mem[mem[64]] = _2981 + _2197 + _2230 + -mem[64] + 32
                mem[64] = _2981 + _2197 + _2230 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3529
                v = _1296
                continue 
            _3569 = mem[64]
            mem[mem[64]] = _2981 + _2197 + _2230 + -mem[64] + 32
            mem[64] = _2981 + _2197 + _2230 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3569
            v = _1296
            continue 
        mem[mem[64]] = 32
        _1304 = mem[u]
        mem[mem[64] + 32] = mem[u]
        mem[mem[64] + 64 len ceil32(_1304)] = mem[u + 32 len ceil32(_1304)]
        if ceil32(_1304) > _1304:
            mem[mem[64] + _1304 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_1304) + 32]
    mem[128] = _getNodeNumberOf[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * _getNodeNumberOf[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = _getNodeNumberOf[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 128] = 0
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 160] = 96
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 192] = 0
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 224] = 0
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 256] = 0
    if 0 >= _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 50
    if mem[128] >= stor0.length:
        revert with 0, 50
    mem[0] = 0
    if not stor0[mem[128]].field_768:
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 416
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 384] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
        t = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _1292 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _1302 = mem[64]
            mem[64] = mem[64] + 160
            mem[_1302] = address(stor0[mem[(32 * idx) + 128]].field_0)
            if bool(stor0[_1292].field_256):
                if bool(stor0[_1292].field_256) == uint255(stor0[_1292].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1357 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor0[_1292].field_256) * 0.5) + 32
                mem[_1357] = uint255(stor0[_1292].field_256) * 0.5
                if bool(stor0[_1292].field_256):
                    if bool(stor0[_1292].field_256) == uint255(stor0[_1292].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_1292].field_256):
                        mem[_1302 + 32] = _1357
                        mem[_1302 + 64] = stor0[_1292].field_512
                        mem[_1302 + 96] = stor0[_1292].field_768
                        mem[_1302 + 128] = stor0[_1292].field_1024
                        _1397 = mem[64]
                        _1413 = mem[s]
                        t = 0
                        while t < _1413:
                            mem[t + _1397 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1413) <= _1413:
                            _2232 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _2232:
                                mem[s + _1397 + _1413 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_2232 + _1397 + _1413 + 32] = stor0[_1292].field_768
                            if ceil32(_2232) <= _2232:
                                _2986 = mem[64]
                                mem[mem[64]] = _2232 + _1397 + _1413 + -mem[64] + 32
                                mem[64] = _2232 + _1397 + _1413 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _2986
                                t = _1302
                                continue 
                            _3038 = mem[64]
                            mem[mem[64]] = _2232 + _1397 + _1413 + -mem[64] + 32
                            mem[64] = _2232 + _1397 + _1413 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3038
                            t = _1302
                            continue 
                        mem[_1397 + _1413 + 32] = 0
                        _2270 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2270:
                            mem[s + _1397 + _1413 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2270 + _1397 + _1413 + 32] = stor0[_1292].field_768
                        if ceil32(_2270) <= _2270:
                            _2987 = mem[64]
                            mem[mem[64]] = _2270 + _1397 + _1413 + -mem[64] + 32
                            mem[64] = _2270 + _1397 + _1413 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2987
                            t = _1302
                            continue 
                        _3039 = mem[64]
                        mem[mem[64]] = _2270 + _1397 + _1413 + -mem[64] + 32
                        mem[64] = _2270 + _1397 + _1413 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3039
                        t = _1302
                        continue 
                    if 31 >= uint255(stor0[_1292].field_256) * 0.5:
                        mem[_1357 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                        mem[_1302 + 32] = _1357
                        mem[_1302 + 64] = stor0[_1292].field_512
                        mem[_1302 + 96] = stor0[_1292].field_768
                        mem[_1302 + 128] = stor0[_1292].field_1024
                        _1438 = mem[64]
                        _1462 = mem[s]
                        t = 0
                        while t < _1462:
                            mem[t + _1438 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1462) <= _1462:
                            _2234 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _2234:
                                mem[s + _1438 + _1462 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_2234 + _1438 + _1462 + 32] = stor0[_1292].field_768
                            if ceil32(_2234) <= _2234:
                                _2989 = mem[64]
                                mem[mem[64]] = _2234 + _1438 + _1462 + -mem[64] + 32
                                mem[64] = _2234 + _1438 + _1462 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _2989
                                t = _1302
                                continue 
                            _3040 = mem[64]
                            mem[mem[64]] = _2234 + _1438 + _1462 + -mem[64] + 32
                            mem[64] = _2234 + _1438 + _1462 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3040
                            t = _1302
                            continue 
                        mem[_1438 + _1462 + 32] = 0
                        _2271 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2271:
                            mem[s + _1438 + _1462 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2271 + _1438 + _1462 + 32] = stor0[_1292].field_768
                        if ceil32(_2271) <= _2271:
                            _2990 = mem[64]
                            mem[mem[64]] = _2271 + _1438 + _1462 + -mem[64] + 32
                            mem[64] = _2271 + _1438 + _1462 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2990
                            t = _1302
                            continue 
                        _3041 = mem[64]
                        mem[mem[64]] = _2271 + _1438 + _1462 + -mem[64] + 32
                        mem[64] = _2271 + _1438 + _1462 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3041
                        t = _1302
                        continue 
                    mem[0] = (5 * _1292) + sha3(0) + 1
                    mem[_1357 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
                    t = _1357 + 32
                    u = sha3((5 * _1292) + sha3(0) + 1)
                    while _1357 + (uint255(stor0[_1292].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1302 + 32] = _1357
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _2201 = mem[64]
                    _2233 = mem[s]
                    t = 0
                    while t < _2233:
                        mem[t + _2201 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2233) <= _2233:
                        _2940 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2940:
                            mem[s + _2201 + _2233 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2940 + _2201 + _2233 + 32] = stor0[_1292].field_768
                        if ceil32(_2940) <= _2940:
                            _3546 = mem[64]
                            mem[mem[64]] = _2940 + _2201 + _2233 + -mem[64] + 32
                            mem[64] = _2940 + _2201 + _2233 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3546
                            t = _1302
                            continue 
                        _3570 = mem[64]
                        mem[mem[64]] = _2940 + _2201 + _2233 + -mem[64] + 32
                        mem[64] = _2940 + _2201 + _2233 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3570
                        t = _1302
                        continue 
                    mem[_2201 + _2233 + 32] = 0
                    _2988 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2988:
                        mem[s + _2201 + _2233 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2988 + _2201 + _2233 + 32] = stor0[_1292].field_768
                    if ceil32(_2988) <= _2988:
                        _3547 = mem[64]
                        mem[mem[64]] = _2988 + _2201 + _2233 + -mem[64] + 32
                        mem[64] = _2988 + _2201 + _2233 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3547
                        t = _1302
                        continue 
                    _3571 = mem[64]
                    mem[mem[64]] = _2988 + _2201 + _2233 + -mem[64] + 32
                    mem[64] = _2988 + _2201 + _2233 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3571
                    t = _1302
                    continue 
                if bool(stor0[_1292].field_256) == stor0[_1292].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_1292].field_257 % 128:
                    mem[_1302 + 32] = _1357
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1416 = mem[64]
                    _1439 = mem[s]
                    t = 0
                    while t < _1439:
                        mem[t + _1416 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1439) <= _1439:
                        _2235 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2235:
                            mem[s + _1416 + _1439 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2235 + _1416 + _1439 + 32] = stor0[_1292].field_768
                        if ceil32(_2235) <= _2235:
                            _2991 = mem[64]
                            mem[mem[64]] = _2235 + _1416 + _1439 + -mem[64] + 32
                            mem[64] = _2235 + _1416 + _1439 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2991
                            t = _1302
                            continue 
                        _3042 = mem[64]
                        mem[mem[64]] = _2235 + _1416 + _1439 + -mem[64] + 32
                        mem[64] = _2235 + _1416 + _1439 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3042
                        t = _1302
                        continue 
                    mem[_1416 + _1439 + 32] = 0
                    _2272 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2272:
                        mem[s + _1416 + _1439 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2272 + _1416 + _1439 + 32] = stor0[_1292].field_768
                    if ceil32(_2272) <= _2272:
                        _2992 = mem[64]
                        mem[mem[64]] = _2272 + _1416 + _1439 + -mem[64] + 32
                        mem[64] = _2272 + _1416 + _1439 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2992
                        t = _1302
                        continue 
                    _3043 = mem[64]
                    mem[mem[64]] = _2272 + _1416 + _1439 + -mem[64] + 32
                    mem[64] = _2272 + _1416 + _1439 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3043
                    t = _1302
                    continue 
                if 31 >= stor0[_1292].field_257 % 128:
                    mem[_1357 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                    mem[_1302 + 32] = _1357
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1464 = mem[64]
                    _1487 = mem[s]
                    t = 0
                    while t < _1487:
                        mem[t + _1464 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1487) <= _1487:
                        _2237 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2237:
                            mem[s + _1464 + _1487 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2237 + _1464 + _1487 + 32] = stor0[_1292].field_768
                        if ceil32(_2237) <= _2237:
                            _2994 = mem[64]
                            mem[mem[64]] = _2237 + _1464 + _1487 + -mem[64] + 32
                            mem[64] = _2237 + _1464 + _1487 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2994
                            t = _1302
                            continue 
                        _3044 = mem[64]
                        mem[mem[64]] = _2237 + _1464 + _1487 + -mem[64] + 32
                        mem[64] = _2237 + _1464 + _1487 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3044
                        t = _1302
                        continue 
                    mem[_1464 + _1487 + 32] = 0
                    _2273 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2273:
                        mem[s + _1464 + _1487 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2273 + _1464 + _1487 + 32] = stor0[_1292].field_768
                    if ceil32(_2273) <= _2273:
                        _2995 = mem[64]
                        mem[mem[64]] = _2273 + _1464 + _1487 + -mem[64] + 32
                        mem[64] = _2273 + _1464 + _1487 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2995
                        t = _1302
                        continue 
                    _3045 = mem[64]
                    mem[mem[64]] = _2273 + _1464 + _1487 + -mem[64] + 32
                    mem[64] = _2273 + _1464 + _1487 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3045
                    t = _1302
                    continue 
                mem[0] = (5 * _1292) + sha3(0) + 1
                mem[_1357 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
                t = _1357 + 32
                u = sha3((5 * _1292) + sha3(0) + 1)
                while _1357 + stor0[_1292].field_257 % 128 > t:
                    mem[t + 32] = _getNodeNumberOf[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1302 + 32] = _1357
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _2203 = mem[64]
                _2236 = mem[s]
                t = 0
                while t < _2236:
                    mem[t + _2203 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2236) <= _2236:
                    _2941 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2941:
                        mem[s + _2203 + _2236 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2941 + _2203 + _2236 + 32] = stor0[_1292].field_768
                    if ceil32(_2941) <= _2941:
                        _3548 = mem[64]
                        mem[mem[64]] = _2941 + _2203 + _2236 + -mem[64] + 32
                        mem[64] = _2941 + _2203 + _2236 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3548
                        t = _1302
                        continue 
                    _3572 = mem[64]
                    mem[mem[64]] = _2941 + _2203 + _2236 + -mem[64] + 32
                    mem[64] = _2941 + _2203 + _2236 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3572
                    t = _1302
                    continue 
                mem[_2203 + _2236 + 32] = 0
                _2993 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2993:
                    mem[s + _2203 + _2236 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2993 + _2203 + _2236 + 32] = stor0[_1292].field_768
                if ceil32(_2993) <= _2993:
                    _3549 = mem[64]
                    mem[mem[64]] = _2993 + _2203 + _2236 + -mem[64] + 32
                    mem[64] = _2993 + _2203 + _2236 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3549
                    t = _1302
                    continue 
                _3573 = mem[64]
                mem[mem[64]] = _2993 + _2203 + _2236 + -mem[64] + 32
                mem[64] = _2993 + _2203 + _2236 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3573
                t = _1302
                continue 
            if bool(stor0[_1292].field_256) == stor0[_1292].field_257 % 128 < 32:
                revert with 0, 34
            _1361 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[_1292].field_257 % 128) + 32
            mem[_1361] = stor0[_1292].field_257 % 128
            if bool(stor0[_1292].field_256):
                if bool(stor0[_1292].field_256) == uint255(stor0[_1292].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_1292].field_256):
                    mem[_1302 + 32] = _1361
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1418 = mem[64]
                    _1441 = mem[s]
                    t = 0
                    while t < _1441:
                        mem[t + _1418 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1441) <= _1441:
                        _2238 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2238:
                            mem[s + _1418 + _1441 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2238 + _1418 + _1441 + 32] = stor0[_1292].field_768
                        if ceil32(_2238) <= _2238:
                            _2996 = mem[64]
                            mem[mem[64]] = _2238 + _1418 + _1441 + -mem[64] + 32
                            mem[64] = _2238 + _1418 + _1441 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2996
                            t = _1302
                            continue 
                        _3046 = mem[64]
                        mem[mem[64]] = _2238 + _1418 + _1441 + -mem[64] + 32
                        mem[64] = _2238 + _1418 + _1441 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3046
                        t = _1302
                        continue 
                    mem[_1418 + _1441 + 32] = 0
                    _2274 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2274:
                        mem[s + _1418 + _1441 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2274 + _1418 + _1441 + 32] = stor0[_1292].field_768
                    if ceil32(_2274) <= _2274:
                        _2997 = mem[64]
                        mem[mem[64]] = _2274 + _1418 + _1441 + -mem[64] + 32
                        mem[64] = _2274 + _1418 + _1441 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2997
                        t = _1302
                        continue 
                    _3047 = mem[64]
                    mem[mem[64]] = _2274 + _1418 + _1441 + -mem[64] + 32
                    mem[64] = _2274 + _1418 + _1441 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3047
                    t = _1302
                    continue 
                if 31 >= uint255(stor0[_1292].field_256) * 0.5:
                    mem[_1361 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                    mem[_1302 + 32] = _1361
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1466 = mem[64]
                    _1488 = mem[s]
                    t = 0
                    while t < _1488:
                        mem[t + _1466 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1488) <= _1488:
                        _2240 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2240:
                            mem[s + _1466 + _1488 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2240 + _1466 + _1488 + 32] = stor0[_1292].field_768
                        if ceil32(_2240) <= _2240:
                            _2999 = mem[64]
                            mem[mem[64]] = _2240 + _1466 + _1488 + -mem[64] + 32
                            mem[64] = _2240 + _1466 + _1488 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2999
                            t = _1302
                            continue 
                        _3048 = mem[64]
                        mem[mem[64]] = _2240 + _1466 + _1488 + -mem[64] + 32
                        mem[64] = _2240 + _1466 + _1488 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3048
                        t = _1302
                        continue 
                    mem[_1466 + _1488 + 32] = 0
                    _2275 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2275:
                        mem[s + _1466 + _1488 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2275 + _1466 + _1488 + 32] = stor0[_1292].field_768
                    if ceil32(_2275) <= _2275:
                        _3000 = mem[64]
                        mem[mem[64]] = _2275 + _1466 + _1488 + -mem[64] + 32
                        mem[64] = _2275 + _1466 + _1488 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3000
                        t = _1302
                        continue 
                    _3049 = mem[64]
                    mem[mem[64]] = _2275 + _1466 + _1488 + -mem[64] + 32
                    mem[64] = _2275 + _1466 + _1488 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3049
                    t = _1302
                    continue 
                mem[0] = (5 * _1292) + sha3(0) + 1
                mem[_1361 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
                t = _1361 + 32
                u = sha3((5 * _1292) + sha3(0) + 1)
                while _1361 + (uint255(stor0[_1292].field_256) * 0.5) > t:
                    mem[t + 32] = _getNodeNumberOf[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1302 + 32] = _1361
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _2205 = mem[64]
                _2239 = mem[s]
                t = 0
                while t < _2239:
                    mem[t + _2205 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2239) <= _2239:
                    _2942 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2942:
                        mem[s + _2205 + _2239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2942 + _2205 + _2239 + 32] = stor0[_1292].field_768
                    if ceil32(_2942) <= _2942:
                        _3550 = mem[64]
                        mem[mem[64]] = _2942 + _2205 + _2239 + -mem[64] + 32
                        mem[64] = _2942 + _2205 + _2239 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3550
                        t = _1302
                        continue 
                    _3574 = mem[64]
                    mem[mem[64]] = _2942 + _2205 + _2239 + -mem[64] + 32
                    mem[64] = _2942 + _2205 + _2239 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3574
                    t = _1302
                    continue 
                mem[_2205 + _2239 + 32] = 0
                _2998 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2998:
                    mem[s + _2205 + _2239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2998 + _2205 + _2239 + 32] = stor0[_1292].field_768
                if ceil32(_2998) <= _2998:
                    _3551 = mem[64]
                    mem[mem[64]] = _2998 + _2205 + _2239 + -mem[64] + 32
                    mem[64] = _2998 + _2205 + _2239 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3551
                    t = _1302
                    continue 
                _3575 = mem[64]
                mem[mem[64]] = _2998 + _2205 + _2239 + -mem[64] + 32
                mem[64] = _2998 + _2205 + _2239 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3575
                t = _1302
                continue 
            if bool(stor0[_1292].field_256) == stor0[_1292].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_1292].field_257 % 128:
                mem[_1302 + 32] = _1361
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _1444 = mem[64]
                _1467 = mem[s]
                t = 0
                while t < _1467:
                    mem[t + _1444 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_1467) <= _1467:
                    _2241 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2241:
                        mem[s + _1444 + _1467 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2241 + _1444 + _1467 + 32] = stor0[_1292].field_768
                    if ceil32(_2241) <= _2241:
                        _3001 = mem[64]
                        mem[mem[64]] = _2241 + _1444 + _1467 + -mem[64] + 32
                        mem[64] = _2241 + _1444 + _1467 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3001
                        t = _1302
                        continue 
                    _3050 = mem[64]
                    mem[mem[64]] = _2241 + _1444 + _1467 + -mem[64] + 32
                    mem[64] = _2241 + _1444 + _1467 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3050
                    t = _1302
                    continue 
                mem[_1444 + _1467 + 32] = 0
                _2276 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2276:
                    mem[s + _1444 + _1467 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2276 + _1444 + _1467 + 32] = stor0[_1292].field_768
                if ceil32(_2276) <= _2276:
                    _3002 = mem[64]
                    mem[mem[64]] = _2276 + _1444 + _1467 + -mem[64] + 32
                    mem[64] = _2276 + _1444 + _1467 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3002
                    t = _1302
                    continue 
                _3051 = mem[64]
                mem[mem[64]] = _2276 + _1444 + _1467 + -mem[64] + 32
                mem[64] = _2276 + _1444 + _1467 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3051
                t = _1302
                continue 
            if 31 >= stor0[_1292].field_257 % 128:
                mem[_1361 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                mem[_1302 + 32] = _1361
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _1490 = mem[64]
                _1514 = mem[s]
                t = 0
                while t < _1514:
                    mem[t + _1490 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_1514) <= _1514:
                    _2243 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2243:
                        mem[s + _1490 + _1514 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2243 + _1490 + _1514 + 32] = stor0[_1292].field_768
                    if ceil32(_2243) <= _2243:
                        _3004 = mem[64]
                        mem[mem[64]] = _2243 + _1490 + _1514 + -mem[64] + 32
                        mem[64] = _2243 + _1490 + _1514 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3004
                        t = _1302
                        continue 
                    _3052 = mem[64]
                    mem[mem[64]] = _2243 + _1490 + _1514 + -mem[64] + 32
                    mem[64] = _2243 + _1490 + _1514 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3052
                    t = _1302
                    continue 
                mem[_1490 + _1514 + 32] = 0
                _2277 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2277:
                    mem[s + _1490 + _1514 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2277 + _1490 + _1514 + 32] = stor0[_1292].field_768
                if ceil32(_2277) <= _2277:
                    _3005 = mem[64]
                    mem[mem[64]] = _2277 + _1490 + _1514 + -mem[64] + 32
                    mem[64] = _2277 + _1490 + _1514 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3005
                    t = _1302
                    continue 
                _3053 = mem[64]
                mem[mem[64]] = _2277 + _1490 + _1514 + -mem[64] + 32
                mem[64] = _2277 + _1490 + _1514 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3053
                t = _1302
                continue 
            mem[0] = (5 * _1292) + sha3(0) + 1
            mem[_1361 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
            t = _1361 + 32
            u = sha3((5 * _1292) + sha3(0) + 1)
            while _1361 + stor0[_1292].field_257 % 128 > t:
                mem[t + 32] = _getNodeNumberOf[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_1302 + 32] = _1361
            mem[_1302 + 64] = stor0[_1292].field_512
            mem[_1302 + 96] = stor0[_1292].field_768
            mem[_1302 + 128] = stor0[_1292].field_1024
            _2207 = mem[64]
            _2242 = mem[s]
            t = 0
            while t < _2242:
                mem[t + _2207 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_2242) <= _2242:
                _2943 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2943:
                    mem[s + _2207 + _2242 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2943 + _2207 + _2242 + 32] = stor0[_1292].field_768
                if ceil32(_2943) <= _2943:
                    _3552 = mem[64]
                    mem[mem[64]] = _2943 + _2207 + _2242 + -mem[64] + 32
                    mem[64] = _2943 + _2207 + _2242 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3552
                    t = _1302
                    continue 
                _3576 = mem[64]
                mem[mem[64]] = _2943 + _2207 + _2242 + -mem[64] + 32
                mem[64] = _2943 + _2207 + _2242 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3576
                t = _1302
                continue 
            mem[_2207 + _2242 + 32] = 0
            _3003 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
            s = 0
            while s < _3003:
                mem[s + _2207 + _2242 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                s = s + 32
                continue 
            mem[_3003 + _2207 + _2242 + 32] = stor0[_1292].field_768
            if ceil32(_3003) <= _3003:
                _3553 = mem[64]
                mem[mem[64]] = _3003 + _2207 + _2242 + -mem[64] + 32
                mem[64] = _3003 + _2207 + _2242 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3553
                t = _1302
                continue 
            _3577 = mem[64]
            mem[mem[64]] = _3003 + _2207 + _2242 + -mem[64] + 32
            mem[64] = _3003 + _2207 + _2242 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _3577
            t = _1302
            continue 
        _1291 = mem[64]
        mem[mem[64]] = 32
        _1325 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_1325)] = mem[s + 32 len ceil32(_1325)]
        if ceil32(_1325) <= _1325:
            return 32, mem[mem[64] + 32 len ceil32(_1325) + 32]
        mem[mem[64] + _1325 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_1325) + _1291 + -mem[64] + 64
    s = 0
    idx = stor0[mem[128]].field_768
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = s
    if not s:
        t = s
        idx = stor0[mem[128]].field_768
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
                revert with 0, 50
            mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
        v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _2925 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _2937 = mem[64]
            mem[64] = mem[64] + 160
            mem[_2937] = address(stor0[mem[(32 * idx) + 128]].field_0)
            if bool(stor0[_2925].field_256):
                if bool(stor0[_2925].field_256) == uint255(stor0[_2925].field_256) * 0.5 < 32:
                    revert with 0, 34
                _3075 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor0[_2925].field_256) * 0.5) + 32
                mem[_3075] = uint255(stor0[_2925].field_256) * 0.5
                if bool(stor0[_2925].field_256):
                    if bool(stor0[_2925].field_256) == uint255(stor0[_2925].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_2925].field_256):
                        mem[_2937 + 32] = _3075
                        mem[_2937 + 64] = stor0[_2925].field_512
                        mem[_2937 + 96] = stor0[_2925].field_768
                        mem[_2937 + 128] = stor0[_2925].field_1024
                        _3134 = mem[64]
                        _3139 = mem[u]
                        t = 0
                        while t < _3139:
                            mem[t + _3134 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_3139) <= _3139:
                            _3490 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _3490:
                                mem[t + _3134 + _3139 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_3490 + _3134 + _3139 + 32] = stor0[_2925].field_768
                            if ceil32(_3490) <= _3490:
                                _3798 = mem[64]
                                mem[mem[64]] = _3490 + _3134 + _3139 + -mem[64] + 32
                                mem[64] = _3490 + _3134 + _3139 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3798
                                v = _2937
                                continue 
                            _3838 = mem[64]
                            mem[mem[64]] = _3490 + _3134 + _3139 + -mem[64] + 32
                            mem[64] = _3490 + _3134 + _3139 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3838
                            v = _2937
                            continue 
                        mem[_3134 + _3139 + 32] = 0
                        _3530 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3530:
                            mem[t + _3134 + _3139 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3530 + _3134 + _3139 + 32] = stor0[_2925].field_768
                        if ceil32(_3530) <= _3530:
                            _3799 = mem[64]
                            mem[mem[64]] = _3530 + _3134 + _3139 + -mem[64] + 32
                            mem[64] = _3530 + _3134 + _3139 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3799
                            v = _2937
                            continue 
                        _3839 = mem[64]
                        mem[mem[64]] = _3530 + _3134 + _3139 + -mem[64] + 32
                        mem[64] = _3530 + _3134 + _3139 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3839
                        v = _2937
                        continue 
                    if 31 >= uint255(stor0[_2925].field_256) * 0.5:
                        mem[_3075 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                        mem[_2937 + 32] = _3075
                        mem[_2937 + 64] = stor0[_2925].field_512
                        mem[_2937 + 96] = stor0[_2925].field_768
                        mem[_2937 + 128] = stor0[_2925].field_1024
                        _3153 = mem[64]
                        _3168 = mem[u]
                        t = 0
                        while t < _3168:
                            mem[t + _3153 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_3168) <= _3168:
                            _3492 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _3492:
                                mem[t + _3153 + _3168 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_3492 + _3153 + _3168 + 32] = stor0[_2925].field_768
                            if ceil32(_3492) <= _3492:
                                _3801 = mem[64]
                                mem[mem[64]] = _3492 + _3153 + _3168 + -mem[64] + 32
                                mem[64] = _3492 + _3153 + _3168 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3801
                                v = _2937
                                continue 
                            _3840 = mem[64]
                            mem[mem[64]] = _3492 + _3153 + _3168 + -mem[64] + 32
                            mem[64] = _3492 + _3153 + _3168 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3840
                            v = _2937
                            continue 
                        mem[_3153 + _3168 + 32] = 0
                        _3531 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3531:
                            mem[t + _3153 + _3168 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3531 + _3153 + _3168 + 32] = stor0[_2925].field_768
                        if ceil32(_3531) <= _3531:
                            _3802 = mem[64]
                            mem[mem[64]] = _3531 + _3153 + _3168 + -mem[64] + 32
                            mem[64] = _3531 + _3153 + _3168 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3802
                            v = _2937
                            continue 
                        _3841 = mem[64]
                        mem[mem[64]] = _3531 + _3153 + _3168 + -mem[64] + 32
                        mem[64] = _3531 + _3153 + _3168 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3841
                        v = _2937
                        continue 
                    mem[0] = (5 * _2925) + sha3(0) + 1
                    mem[_3075 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
                    t = _3075 + 32
                    v = sha3((5 * _2925) + sha3(0) + 1)
                    while _3075 + (uint255(stor0[_2925].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[v].field_0
                        t = t + 32
                        v = v + 1
                        continue 
                    mem[_2937 + 32] = _3075
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3475 = mem[64]
                    _3491 = mem[u]
                    t = 0
                    while t < _3491:
                        mem[t + _3475 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3491) <= _3491:
                        _3790 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3790:
                            mem[t + _3475 + _3491 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3790 + _3475 + _3491 + 32] = stor0[_2925].field_768
                        if ceil32(_3790) <= _3790:
                            _3934 = mem[64]
                            mem[mem[64]] = _3790 + _3475 + _3491 + -mem[64] + 32
                            mem[64] = _3790 + _3475 + _3491 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3934
                            v = _2937
                            continue 
                        _3950 = mem[64]
                        mem[mem[64]] = _3790 + _3475 + _3491 + -mem[64] + 32
                        mem[64] = _3790 + _3475 + _3491 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3950
                        v = _2937
                        continue 
                    mem[_3475 + _3491 + 32] = 0
                    _3800 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3800:
                        mem[t + _3475 + _3491 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3800 + _3475 + _3491 + 32] = stor0[_2925].field_768
                    if ceil32(_3800) <= _3800:
                        _3935 = mem[64]
                        mem[mem[64]] = _3800 + _3475 + _3491 + -mem[64] + 32
                        mem[64] = _3800 + _3475 + _3491 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3935
                        v = _2937
                        continue 
                    _3951 = mem[64]
                    mem[mem[64]] = _3800 + _3475 + _3491 + -mem[64] + 32
                    mem[64] = _3800 + _3475 + _3491 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3951
                    v = _2937
                    continue 
                if bool(stor0[_2925].field_256) == stor0[_2925].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_2925].field_257 % 128:
                    mem[_2937 + 32] = _3075
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3142 = mem[64]
                    _3154 = mem[u]
                    t = 0
                    while t < _3154:
                        mem[t + _3142 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3154) <= _3154:
                        _3493 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3493:
                            mem[t + _3142 + _3154 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3493 + _3142 + _3154 + 32] = stor0[_2925].field_768
                        if ceil32(_3493) <= _3493:
                            _3803 = mem[64]
                            mem[mem[64]] = _3493 + _3142 + _3154 + -mem[64] + 32
                            mem[64] = _3493 + _3142 + _3154 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3803
                            v = _2937
                            continue 
                        _3842 = mem[64]
                        mem[mem[64]] = _3493 + _3142 + _3154 + -mem[64] + 32
                        mem[64] = _3493 + _3142 + _3154 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3842
                        v = _2937
                        continue 
                    mem[_3142 + _3154 + 32] = 0
                    _3532 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3532:
                        mem[t + _3142 + _3154 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3532 + _3142 + _3154 + 32] = stor0[_2925].field_768
                    if ceil32(_3532) <= _3532:
                        _3804 = mem[64]
                        mem[mem[64]] = _3532 + _3142 + _3154 + -mem[64] + 32
                        mem[64] = _3532 + _3142 + _3154 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3804
                        v = _2937
                        continue 
                    _3843 = mem[64]
                    mem[mem[64]] = _3532 + _3142 + _3154 + -mem[64] + 32
                    mem[64] = _3532 + _3142 + _3154 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3843
                    v = _2937
                    continue 
                if 31 >= stor0[_2925].field_257 % 128:
                    mem[_3075 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                    mem[_2937 + 32] = _3075
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3170 = mem[64]
                    _3185 = mem[u]
                    t = 0
                    while t < _3185:
                        mem[t + _3170 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3185) <= _3185:
                        _3495 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3495:
                            mem[t + _3170 + _3185 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3495 + _3170 + _3185 + 32] = stor0[_2925].field_768
                        if ceil32(_3495) <= _3495:
                            _3806 = mem[64]
                            mem[mem[64]] = _3495 + _3170 + _3185 + -mem[64] + 32
                            mem[64] = _3495 + _3170 + _3185 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3806
                            v = _2937
                            continue 
                        _3844 = mem[64]
                        mem[mem[64]] = _3495 + _3170 + _3185 + -mem[64] + 32
                        mem[64] = _3495 + _3170 + _3185 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3844
                        v = _2937
                        continue 
                    mem[_3170 + _3185 + 32] = 0
                    _3533 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3533:
                        mem[t + _3170 + _3185 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3533 + _3170 + _3185 + 32] = stor0[_2925].field_768
                    if ceil32(_3533) <= _3533:
                        _3807 = mem[64]
                        mem[mem[64]] = _3533 + _3170 + _3185 + -mem[64] + 32
                        mem[64] = _3533 + _3170 + _3185 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3807
                        v = _2937
                        continue 
                    _3845 = mem[64]
                    mem[mem[64]] = _3533 + _3170 + _3185 + -mem[64] + 32
                    mem[64] = _3533 + _3170 + _3185 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3845
                    v = _2937
                    continue 
                mem[0] = (5 * _2925) + sha3(0) + 1
                mem[_3075 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
                v = _3075 + 32
                t = sha3((5 * _2925) + sha3(0) + 1)
                while _3075 + stor0[_2925].field_257 % 128 > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_2937 + 32] = _3075
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3477 = mem[64]
                _3494 = mem[u]
                t = 0
                while t < _3494:
                    mem[t + _3477 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3494) <= _3494:
                    _3791 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3791:
                        mem[t + _3477 + _3494 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3791 + _3477 + _3494 + 32] = stor0[_2925].field_768
                    if ceil32(_3791) <= _3791:
                        _3936 = mem[64]
                        mem[mem[64]] = _3791 + _3477 + _3494 + -mem[64] + 32
                        mem[64] = _3791 + _3477 + _3494 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3936
                        v = _2937
                        continue 
                    _3952 = mem[64]
                    mem[mem[64]] = _3791 + _3477 + _3494 + -mem[64] + 32
                    mem[64] = _3791 + _3477 + _3494 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3952
                    v = _2937
                    continue 
                mem[_3477 + _3494 + 32] = 0
                _3805 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3805:
                    mem[t + _3477 + _3494 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3805 + _3477 + _3494 + 32] = stor0[_2925].field_768
                if ceil32(_3805) <= _3805:
                    _3937 = mem[64]
                    mem[mem[64]] = _3805 + _3477 + _3494 + -mem[64] + 32
                    mem[64] = _3805 + _3477 + _3494 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3937
                    v = _2937
                    continue 
                _3953 = mem[64]
                mem[mem[64]] = _3805 + _3477 + _3494 + -mem[64] + 32
                mem[64] = _3805 + _3477 + _3494 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3953
                v = _2937
                continue 
            if bool(stor0[_2925].field_256) == stor0[_2925].field_257 % 128 < 32:
                revert with 0, 34
            _3082 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[_2925].field_257 % 128) + 32
            mem[_3082] = stor0[_2925].field_257 % 128
            if bool(stor0[_2925].field_256):
                if bool(stor0[_2925].field_256) == uint255(stor0[_2925].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_2925].field_256):
                    mem[_2937 + 32] = _3082
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3144 = mem[64]
                    _3156 = mem[u]
                    t = 0
                    while t < _3156:
                        mem[t + _3144 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3156) <= _3156:
                        _3496 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3496:
                            mem[t + _3144 + _3156 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3496 + _3144 + _3156 + 32] = stor0[_2925].field_768
                        if ceil32(_3496) <= _3496:
                            _3808 = mem[64]
                            mem[mem[64]] = _3496 + _3144 + _3156 + -mem[64] + 32
                            mem[64] = _3496 + _3144 + _3156 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3808
                            v = _2937
                            continue 
                        _3846 = mem[64]
                        mem[mem[64]] = _3496 + _3144 + _3156 + -mem[64] + 32
                        mem[64] = _3496 + _3144 + _3156 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3846
                        v = _2937
                        continue 
                    mem[_3144 + _3156 + 32] = 0
                    _3534 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3534:
                        mem[t + _3144 + _3156 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3534 + _3144 + _3156 + 32] = stor0[_2925].field_768
                    if ceil32(_3534) <= _3534:
                        _3809 = mem[64]
                        mem[mem[64]] = _3534 + _3144 + _3156 + -mem[64] + 32
                        mem[64] = _3534 + _3144 + _3156 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3809
                        v = _2937
                        continue 
                    _3847 = mem[64]
                    mem[mem[64]] = _3534 + _3144 + _3156 + -mem[64] + 32
                    mem[64] = _3534 + _3144 + _3156 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3847
                    v = _2937
                    continue 
                if 31 >= uint255(stor0[_2925].field_256) * 0.5:
                    mem[_3082 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                    mem[_2937 + 32] = _3082
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3172 = mem[64]
                    _3186 = mem[u]
                    t = 0
                    while t < _3186:
                        mem[t + _3172 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3186) <= _3186:
                        _3498 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3498:
                            mem[t + _3172 + _3186 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3498 + _3172 + _3186 + 32] = stor0[_2925].field_768
                        if ceil32(_3498) <= _3498:
                            _3811 = mem[64]
                            mem[mem[64]] = _3498 + _3172 + _3186 + -mem[64] + 32
                            mem[64] = _3498 + _3172 + _3186 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3811
                            v = _2937
                            continue 
                        _3848 = mem[64]
                        mem[mem[64]] = _3498 + _3172 + _3186 + -mem[64] + 32
                        mem[64] = _3498 + _3172 + _3186 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3848
                        v = _2937
                        continue 
                    mem[_3172 + _3186 + 32] = 0
                    _3535 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3535:
                        mem[t + _3172 + _3186 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3535 + _3172 + _3186 + 32] = stor0[_2925].field_768
                    if ceil32(_3535) <= _3535:
                        _3812 = mem[64]
                        mem[mem[64]] = _3535 + _3172 + _3186 + -mem[64] + 32
                        mem[64] = _3535 + _3172 + _3186 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3812
                        v = _2937
                        continue 
                    _3849 = mem[64]
                    mem[mem[64]] = _3535 + _3172 + _3186 + -mem[64] + 32
                    mem[64] = _3535 + _3172 + _3186 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3849
                    v = _2937
                    continue 
                mem[0] = (5 * _2925) + sha3(0) + 1
                mem[_3082 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
                v = _3082 + 32
                t = sha3((5 * _2925) + sha3(0) + 1)
                while _3082 + (uint255(stor0[_2925].field_256) * 0.5) > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_2937 + 32] = _3082
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3479 = mem[64]
                _3497 = mem[u]
                t = 0
                while t < _3497:
                    mem[t + _3479 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3497) <= _3497:
                    _3792 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3792:
                        mem[t + _3479 + _3497 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3792 + _3479 + _3497 + 32] = stor0[_2925].field_768
                    if ceil32(_3792) <= _3792:
                        _3938 = mem[64]
                        mem[mem[64]] = _3792 + _3479 + _3497 + -mem[64] + 32
                        mem[64] = _3792 + _3479 + _3497 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3938
                        v = _2937
                        continue 
                    _3954 = mem[64]
                    mem[mem[64]] = _3792 + _3479 + _3497 + -mem[64] + 32
                    mem[64] = _3792 + _3479 + _3497 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3954
                    v = _2937
                    continue 
                mem[_3479 + _3497 + 32] = 0
                _3810 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3810:
                    mem[t + _3479 + _3497 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3810 + _3479 + _3497 + 32] = stor0[_2925].field_768
                if ceil32(_3810) <= _3810:
                    _3939 = mem[64]
                    mem[mem[64]] = _3810 + _3479 + _3497 + -mem[64] + 32
                    mem[64] = _3810 + _3479 + _3497 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3939
                    v = _2937
                    continue 
                _3955 = mem[64]
                mem[mem[64]] = _3810 + _3479 + _3497 + -mem[64] + 32
                mem[64] = _3810 + _3479 + _3497 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3955
                v = _2937
                continue 
            if bool(stor0[_2925].field_256) == stor0[_2925].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_2925].field_257 % 128:
                mem[_2937 + 32] = _3082
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3159 = mem[64]
                _3173 = mem[u]
                t = 0
                while t < _3173:
                    mem[t + _3159 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3173) <= _3173:
                    _3499 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3499:
                        mem[t + _3159 + _3173 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3499 + _3159 + _3173 + 32] = stor0[_2925].field_768
                    if ceil32(_3499) <= _3499:
                        _3813 = mem[64]
                        mem[mem[64]] = _3499 + _3159 + _3173 + -mem[64] + 32
                        mem[64] = _3499 + _3159 + _3173 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3813
                        v = _2937
                        continue 
                    _3850 = mem[64]
                    mem[mem[64]] = _3499 + _3159 + _3173 + -mem[64] + 32
                    mem[64] = _3499 + _3159 + _3173 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3850
                    v = _2937
                    continue 
                mem[_3159 + _3173 + 32] = 0
                _3536 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3536:
                    mem[t + _3159 + _3173 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3536 + _3159 + _3173 + 32] = stor0[_2925].field_768
                if ceil32(_3536) <= _3536:
                    _3814 = mem[64]
                    mem[mem[64]] = _3536 + _3159 + _3173 + -mem[64] + 32
                    mem[64] = _3536 + _3159 + _3173 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3814
                    v = _2937
                    continue 
                _3851 = mem[64]
                mem[mem[64]] = _3536 + _3159 + _3173 + -mem[64] + 32
                mem[64] = _3536 + _3159 + _3173 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3851
                v = _2937
                continue 
            if 31 >= stor0[_2925].field_257 % 128:
                mem[_3082 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                mem[_2937 + 32] = _3082
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3188 = mem[64]
                _3203 = mem[u]
                t = 0
                while t < _3203:
                    mem[t + _3188 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3203) <= _3203:
                    _3501 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3501:
                        mem[t + _3188 + _3203 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3501 + _3188 + _3203 + 32] = stor0[_2925].field_768
                    if ceil32(_3501) <= _3501:
                        _3816 = mem[64]
                        mem[mem[64]] = _3501 + _3188 + _3203 + -mem[64] + 32
                        mem[64] = _3501 + _3188 + _3203 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3816
                        v = _2937
                        continue 
                    _3852 = mem[64]
                    mem[mem[64]] = _3501 + _3188 + _3203 + -mem[64] + 32
                    mem[64] = _3501 + _3188 + _3203 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3852
                    v = _2937
                    continue 
                mem[_3188 + _3203 + 32] = 0
                _3537 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3537:
                    mem[t + _3188 + _3203 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3537 + _3188 + _3203 + 32] = stor0[_2925].field_768
                if ceil32(_3537) <= _3537:
                    _3817 = mem[64]
                    mem[mem[64]] = _3537 + _3188 + _3203 + -mem[64] + 32
                    mem[64] = _3537 + _3188 + _3203 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3817
                    v = _2937
                    continue 
                _3853 = mem[64]
                mem[mem[64]] = _3537 + _3188 + _3203 + -mem[64] + 32
                mem[64] = _3537 + _3188 + _3203 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3853
                v = _2937
                continue 
            mem[0] = (5 * _2925) + sha3(0) + 1
            mem[_3082 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
            t = _3082 + 32
            v = sha3((5 * _2925) + sha3(0) + 1)
            while _3082 + stor0[_2925].field_257 % 128 > t:
                mem[t + 32] = _getNodeNumberOf[v].field_0
                t = t + 32
                v = v + 1
                continue 
            mem[_2937 + 32] = _3082
            mem[_2937 + 64] = stor0[_2925].field_512
            mem[_2937 + 96] = stor0[_2925].field_768
            mem[_2937 + 128] = stor0[_2925].field_1024
            _3481 = mem[64]
            _3500 = mem[u]
            t = 0
            while t < _3500:
                mem[t + _3481 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3500) <= _3500:
                _3793 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3793:
                    mem[t + _3481 + _3500 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3793 + _3481 + _3500 + 32] = stor0[_2925].field_768
                if ceil32(_3793) <= _3793:
                    _3940 = mem[64]
                    mem[mem[64]] = _3793 + _3481 + _3500 + -mem[64] + 32
                    mem[64] = _3793 + _3481 + _3500 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3940
                    v = _2937
                    continue 
                _3956 = mem[64]
                mem[mem[64]] = _3793 + _3481 + _3500 + -mem[64] + 32
                mem[64] = _3793 + _3481 + _3500 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3956
                v = _2937
                continue 
            mem[_3481 + _3500 + 32] = 0
            _3815 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3815:
                mem[t + _3481 + _3500 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3815 + _3481 + _3500 + 32] = stor0[_2925].field_768
            if ceil32(_3815) <= _3815:
                _3941 = mem[64]
                mem[mem[64]] = _3815 + _3481 + _3500 + -mem[64] + 32
                mem[64] = _3815 + _3481 + _3500 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3941
                v = _2937
                continue 
            _3957 = mem[64]
            mem[mem[64]] = _3815 + _3481 + _3500 + -mem[64] + 32
            mem[64] = _3815 + _3481 + _3500 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3957
            v = _2937
            continue 
        mem[mem[64]] = 32
        _2984 = mem[u]
        mem[mem[64] + 32] = mem[u]
        mem[mem[64] + 64 len ceil32(_2984)] = mem[u + 32 len ceil32(_2984)]
        var39001 = ceil32(_2984)
        if ceil32(_2984) > _2984:
            mem[mem[64] + _2984 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_2984) + 32]
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320 len s] = call.data[calldata.size len s]
    t = s
    idx = stor0[mem[128]].field_768
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
            revert with 0, 50
        mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
    v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        if idx >= mem[96]:
            revert with 0, 50
        _2927 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= stor0.length:
            revert with 0, 50
        mem[0] = 0
        _2939 = mem[64]
        mem[64] = mem[64] + 160
        mem[_2939] = address(stor0[mem[(32 * idx) + 128]].field_0)
        if bool(stor0[_2927].field_256):
            if bool(stor0[_2927].field_256) == uint255(stor0[_2927].field_256) * 0.5 < 32:
                revert with 0, 34
            _3077 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor0[_2927].field_256) * 0.5) + 32
            mem[_3077] = uint255(stor0[_2927].field_256) * 0.5
            if bool(stor0[_2927].field_256):
                if bool(stor0[_2927].field_256) == uint255(stor0[_2927].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_2927].field_256):
                    mem[_2939 + 32] = _3077
                    mem[_2939 + 64] = stor0[_2927].field_512
                    mem[_2939 + 96] = stor0[_2927].field_768
                    mem[_2939 + 128] = stor0[_2927].field_1024
                    _3137 = mem[64]
                    _3146 = mem[u]
                    t = 0
                    while t < _3146:
                        mem[t + _3137 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3146) <= _3146:
                        _3502 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3502:
                            mem[t + _3137 + _3146 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3502 + _3137 + _3146 + 32] = stor0[_2927].field_768
                        if ceil32(_3502) <= _3502:
                            _3818 = mem[64]
                            mem[mem[64]] = _3502 + _3137 + _3146 + -mem[64] + 32
                            mem[64] = _3502 + _3137 + _3146 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3818
                            v = _2939
                            continue 
                        _3854 = mem[64]
                        mem[mem[64]] = _3502 + _3137 + _3146 + -mem[64] + 32
                        mem[64] = _3502 + _3137 + _3146 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3854
                        v = _2939
                        continue 
                    mem[_3137 + _3146 + 32] = 0
                    _3538 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3538:
                        mem[t + _3137 + _3146 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3538 + _3137 + _3146 + 32] = stor0[_2927].field_768
                    if ceil32(_3538) <= _3538:
                        _3819 = mem[64]
                        mem[mem[64]] = _3538 + _3137 + _3146 + -mem[64] + 32
                        mem[64] = _3538 + _3137 + _3146 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3819
                        v = _2939
                        continue 
                    _3855 = mem[64]
                    mem[mem[64]] = _3538 + _3137 + _3146 + -mem[64] + 32
                    mem[64] = _3538 + _3137 + _3146 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3855
                    v = _2939
                    continue 
                if 31 >= uint255(stor0[_2927].field_256) * 0.5:
                    mem[_3077 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
                    mem[_2939 + 32] = _3077
                    mem[_2939 + 64] = stor0[_2927].field_512
                    mem[_2939 + 96] = stor0[_2927].field_768
                    mem[_2939 + 128] = stor0[_2927].field_1024
                    _3161 = mem[64]
                    _3175 = mem[u]
                    t = 0
                    while t < _3175:
                        mem[t + _3161 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3175) <= _3175:
                        _3504 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3504:
                            mem[t + _3161 + _3175 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3504 + _3161 + _3175 + 32] = stor0[_2927].field_768
                        if ceil32(_3504) <= _3504:
                            _3821 = mem[64]
                            mem[mem[64]] = _3504 + _3161 + _3175 + -mem[64] + 32
                            mem[64] = _3504 + _3161 + _3175 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3821
                            v = _2939
                            continue 
                        _3856 = mem[64]
                        mem[mem[64]] = _3504 + _3161 + _3175 + -mem[64] + 32
                        mem[64] = _3504 + _3161 + _3175 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3856
                        v = _2939
                        continue 
                    mem[_3161 + _3175 + 32] = 0
                    _3539 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3539:
                        mem[t + _3161 + _3175 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3539 + _3161 + _3175 + 32] = stor0[_2927].field_768
                    if ceil32(_3539) <= _3539:
                        _3822 = mem[64]
                        mem[mem[64]] = _3539 + _3161 + _3175 + -mem[64] + 32
                        mem[64] = _3539 + _3161 + _3175 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3822
                        v = _2939
                        continue 
                    _3857 = mem[64]
                    mem[mem[64]] = _3539 + _3161 + _3175 + -mem[64] + 32
                    mem[64] = _3539 + _3161 + _3175 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3857
                    v = _2939
                    continue 
                mem[0] = (5 * _2927) + sha3(0) + 1
                mem[_3077 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
                t = _3077 + 32
                v = sha3((5 * _2927) + sha3(0) + 1)
                while _3077 + (uint255(stor0[_2927].field_256) * 0.5) > t:
                    mem[t + 32] = _getNodeNumberOf[v].field_0
                    t = t + 32
                    v = v + 1
                    continue 
                mem[_2939 + 32] = _3077
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3483 = mem[64]
                _3503 = mem[u]
                t = 0
                while t < _3503:
                    mem[t + _3483 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3503) <= _3503:
                    _3794 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3794:
                        mem[t + _3483 + _3503 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3794 + _3483 + _3503 + 32] = stor0[_2927].field_768
                    if ceil32(_3794) <= _3794:
                        _3942 = mem[64]
                        mem[mem[64]] = _3794 + _3483 + _3503 + -mem[64] + 32
                        mem[64] = _3794 + _3483 + _3503 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3942
                        v = _2939
                        continue 
                    _3958 = mem[64]
                    mem[mem[64]] = _3794 + _3483 + _3503 + -mem[64] + 32
                    mem[64] = _3794 + _3483 + _3503 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3958
                    v = _2939
                    continue 
                mem[_3483 + _3503 + 32] = 0
                _3820 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3820:
                    mem[t + _3483 + _3503 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3820 + _3483 + _3503 + 32] = stor0[_2927].field_768
                if ceil32(_3820) <= _3820:
                    _3943 = mem[64]
                    mem[mem[64]] = _3820 + _3483 + _3503 + -mem[64] + 32
                    mem[64] = _3820 + _3483 + _3503 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3943
                    v = _2939
                    continue 
                _3959 = mem[64]
                mem[mem[64]] = _3820 + _3483 + _3503 + -mem[64] + 32
                mem[64] = _3820 + _3483 + _3503 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3959
                v = _2939
                continue 
            if bool(stor0[_2927].field_256) == stor0[_2927].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_2927].field_257 % 128:
                mem[_2939 + 32] = _3077
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3149 = mem[64]
                _3162 = mem[u]
                t = 0
                while t < _3162:
                    mem[t + _3149 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3162) <= _3162:
                    _3505 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3505:
                        mem[t + _3149 + _3162 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3505 + _3149 + _3162 + 32] = stor0[_2927].field_768
                    if ceil32(_3505) <= _3505:
                        _3823 = mem[64]
                        mem[mem[64]] = _3505 + _3149 + _3162 + -mem[64] + 32
                        mem[64] = _3505 + _3149 + _3162 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3823
                        v = _2939
                        continue 
                    _3858 = mem[64]
                    mem[mem[64]] = _3505 + _3149 + _3162 + -mem[64] + 32
                    mem[64] = _3505 + _3149 + _3162 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3858
                    v = _2939
                    continue 
                mem[_3149 + _3162 + 32] = 0
                _3540 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3540:
                    mem[t + _3149 + _3162 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3540 + _3149 + _3162 + 32] = stor0[_2927].field_768
                if ceil32(_3540) <= _3540:
                    _3824 = mem[64]
                    mem[mem[64]] = _3540 + _3149 + _3162 + -mem[64] + 32
                    mem[64] = _3540 + _3149 + _3162 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3824
                    v = _2939
                    continue 
                _3859 = mem[64]
                mem[mem[64]] = _3540 + _3149 + _3162 + -mem[64] + 32
                mem[64] = _3540 + _3149 + _3162 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3859
                v = _2939
                continue 
            if 31 >= stor0[_2927].field_257 % 128:
                mem[_3077 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
                mem[_2939 + 32] = _3077
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3177 = mem[64]
                _3192 = mem[u]
                t = 0
                while t < _3192:
                    mem[t + _3177 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3192) <= _3192:
                    _3507 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3507:
                        mem[t + _3177 + _3192 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3507 + _3177 + _3192 + 32] = stor0[_2927].field_768
                    if ceil32(_3507) <= _3507:
                        _3826 = mem[64]
                        mem[mem[64]] = _3507 + _3177 + _3192 + -mem[64] + 32
                        mem[64] = _3507 + _3177 + _3192 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3826
                        v = _2939
                        continue 
                    _3860 = mem[64]
                    mem[mem[64]] = _3507 + _3177 + _3192 + -mem[64] + 32
                    mem[64] = _3507 + _3177 + _3192 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3860
                    v = _2939
                    continue 
                mem[_3177 + _3192 + 32] = 0
                _3541 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3541:
                    mem[t + _3177 + _3192 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3541 + _3177 + _3192 + 32] = stor0[_2927].field_768
                if ceil32(_3541) <= _3541:
                    _3827 = mem[64]
                    mem[mem[64]] = _3541 + _3177 + _3192 + -mem[64] + 32
                    mem[64] = _3541 + _3177 + _3192 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3827
                    v = _2939
                    continue 
                _3861 = mem[64]
                mem[mem[64]] = _3541 + _3177 + _3192 + -mem[64] + 32
                mem[64] = _3541 + _3177 + _3192 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3861
                v = _2939
                continue 
            mem[0] = (5 * _2927) + sha3(0) + 1
            mem[_3077 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
            v = _3077 + 32
            t = sha3((5 * _2927) + sha3(0) + 1)
            while _3077 + stor0[_2927].field_257 % 128 > v:
                mem[v + 32] = _getNodeNumberOf[t].field_0
                v = v + 32
                t = t + 1
                continue 
            mem[_2939 + 32] = _3077
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3485 = mem[64]
            _3506 = mem[u]
            t = 0
            while t < _3506:
                mem[t + _3485 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3506) <= _3506:
                _3795 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3795:
                    mem[t + _3485 + _3506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3795 + _3485 + _3506 + 32] = stor0[_2927].field_768
                if ceil32(_3795) <= _3795:
                    _3944 = mem[64]
                    mem[mem[64]] = _3795 + _3485 + _3506 + -mem[64] + 32
                    mem[64] = _3795 + _3485 + _3506 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3944
                    v = _2939
                    continue 
                _3960 = mem[64]
                mem[mem[64]] = _3795 + _3485 + _3506 + -mem[64] + 32
                mem[64] = _3795 + _3485 + _3506 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3960
                v = _2939
                continue 
            mem[_3485 + _3506 + 32] = 0
            _3825 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3825:
                mem[t + _3485 + _3506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3825 + _3485 + _3506 + 32] = stor0[_2927].field_768
            if ceil32(_3825) <= _3825:
                _3945 = mem[64]
                mem[mem[64]] = _3825 + _3485 + _3506 + -mem[64] + 32
                mem[64] = _3825 + _3485 + _3506 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3945
                v = _2939
                continue 
            _3961 = mem[64]
            mem[mem[64]] = _3825 + _3485 + _3506 + -mem[64] + 32
            mem[64] = _3825 + _3485 + _3506 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3961
            v = _2939
            continue 
        if bool(stor0[_2927].field_256) == stor0[_2927].field_257 % 128 < 32:
            revert with 0, 34
        _3083 = mem[64]
        mem[64] = mem[64] + ceil32(stor0[_2927].field_257 % 128) + 32
        mem[_3083] = stor0[_2927].field_257 % 128
        if bool(stor0[_2927].field_256):
            if bool(stor0[_2927].field_256) == uint255(stor0[_2927].field_256) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor0[_2927].field_256):
                mem[_2939 + 32] = _3083
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3151 = mem[64]
                _3164 = mem[u]
                t = 0
                while t < _3164:
                    mem[t + _3151 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3164) <= _3164:
                    _3508 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3508:
                        mem[t + _3151 + _3164 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3508 + _3151 + _3164 + 32] = stor0[_2927].field_768
                    if ceil32(_3508) <= _3508:
                        _3828 = mem[64]
                        mem[mem[64]] = _3508 + _3151 + _3164 + -mem[64] + 32
                        mem[64] = _3508 + _3151 + _3164 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3828
                        v = _2939
                        continue 
                    _3862 = mem[64]
                    mem[mem[64]] = _3508 + _3151 + _3164 + -mem[64] + 32
                    mem[64] = _3508 + _3151 + _3164 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3862
                    v = _2939
                    continue 
                mem[_3151 + _3164 + 32] = 0
                _3542 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3542:
                    mem[t + _3151 + _3164 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3542 + _3151 + _3164 + 32] = stor0[_2927].field_768
                if ceil32(_3542) <= _3542:
                    _3829 = mem[64]
                    mem[mem[64]] = _3542 + _3151 + _3164 + -mem[64] + 32
                    mem[64] = _3542 + _3151 + _3164 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3829
                    v = _2939
                    continue 
                _3863 = mem[64]
                mem[mem[64]] = _3542 + _3151 + _3164 + -mem[64] + 32
                mem[64] = _3542 + _3151 + _3164 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3863
                v = _2939
                continue 
            if 31 >= uint255(stor0[_2927].field_256) * 0.5:
                mem[_3083 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
                mem[_2939 + 32] = _3083
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3179 = mem[64]
                _3193 = mem[u]
                t = 0
                while t < _3193:
                    mem[t + _3179 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3193) <= _3193:
                    _3510 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3510:
                        mem[t + _3179 + _3193 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3510 + _3179 + _3193 + 32] = stor0[_2927].field_768
                    if ceil32(_3510) <= _3510:
                        _3831 = mem[64]
                        mem[mem[64]] = _3510 + _3179 + _3193 + -mem[64] + 32
                        mem[64] = _3510 + _3179 + _3193 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3831
                        v = _2939
                        continue 
                    _3864 = mem[64]
                    mem[mem[64]] = _3510 + _3179 + _3193 + -mem[64] + 32
                    mem[64] = _3510 + _3179 + _3193 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3864
                    v = _2939
                    continue 
                mem[_3179 + _3193 + 32] = 0
                _3543 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3543:
                    mem[t + _3179 + _3193 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3543 + _3179 + _3193 + 32] = stor0[_2927].field_768
                if ceil32(_3543) <= _3543:
                    _3832 = mem[64]
                    mem[mem[64]] = _3543 + _3179 + _3193 + -mem[64] + 32
                    mem[64] = _3543 + _3179 + _3193 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3832
                    v = _2939
                    continue 
                _3865 = mem[64]
                mem[mem[64]] = _3543 + _3179 + _3193 + -mem[64] + 32
                mem[64] = _3543 + _3179 + _3193 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3865
                v = _2939
                continue 
            mem[0] = (5 * _2927) + sha3(0) + 1
            mem[_3083 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
            v = _3083 + 32
            t = sha3((5 * _2927) + sha3(0) + 1)
            while _3083 + (uint255(stor0[_2927].field_256) * 0.5) > v:
                mem[v + 32] = _getNodeNumberOf[t].field_0
                v = v + 32
                t = t + 1
                continue 
            mem[_2939 + 32] = _3083
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3487 = mem[64]
            _3509 = mem[u]
            t = 0
            while t < _3509:
                mem[t + _3487 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3509) <= _3509:
                _3796 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3796:
                    mem[t + _3487 + _3509 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3796 + _3487 + _3509 + 32] = stor0[_2927].field_768
                if ceil32(_3796) <= _3796:
                    _3946 = mem[64]
                    mem[mem[64]] = _3796 + _3487 + _3509 + -mem[64] + 32
                    mem[64] = _3796 + _3487 + _3509 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3946
                    v = _2939
                    continue 
                _3962 = mem[64]
                mem[mem[64]] = _3796 + _3487 + _3509 + -mem[64] + 32
                mem[64] = _3796 + _3487 + _3509 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3962
                v = _2939
                continue 
            mem[_3487 + _3509 + 32] = 0
            _3830 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3830:
                mem[t + _3487 + _3509 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3830 + _3487 + _3509 + 32] = stor0[_2927].field_768
            if ceil32(_3830) <= _3830:
                _3947 = mem[64]
                mem[mem[64]] = _3830 + _3487 + _3509 + -mem[64] + 32
                mem[64] = _3830 + _3487 + _3509 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3947
                v = _2939
                continue 
            _3963 = mem[64]
            mem[mem[64]] = _3830 + _3487 + _3509 + -mem[64] + 32
            mem[64] = _3830 + _3487 + _3509 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3963
            v = _2939
            continue 
        if bool(stor0[_2927].field_256) == stor0[_2927].field_257 % 128 < 32:
            revert with 0, 34
        if not stor0[_2927].field_257 % 128:
            mem[_2939 + 32] = _3083
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3167 = mem[64]
            _3180 = mem[u]
            t = 0
            while t < _3180:
                mem[t + _3167 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3180) <= _3180:
                _3511 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3511:
                    mem[t + _3167 + _3180 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3511 + _3167 + _3180 + 32] = stor0[_2927].field_768
                if ceil32(_3511) <= _3511:
                    _3833 = mem[64]
                    mem[mem[64]] = _3511 + _3167 + _3180 + -mem[64] + 32
                    mem[64] = _3511 + _3167 + _3180 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3833
                    v = _2939
                    continue 
                _3866 = mem[64]
                mem[mem[64]] = _3511 + _3167 + _3180 + -mem[64] + 32
                mem[64] = _3511 + _3167 + _3180 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3866
                v = _2939
                continue 
            mem[_3167 + _3180 + 32] = 0
            _3544 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3544:
                mem[t + _3167 + _3180 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3544 + _3167 + _3180 + 32] = stor0[_2927].field_768
            if ceil32(_3544) <= _3544:
                _3834 = mem[64]
                mem[mem[64]] = _3544 + _3167 + _3180 + -mem[64] + 32
                mem[64] = _3544 + _3167 + _3180 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3834
                v = _2939
                continue 
            _3867 = mem[64]
            mem[mem[64]] = _3544 + _3167 + _3180 + -mem[64] + 32
            mem[64] = _3544 + _3167 + _3180 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3867
            v = _2939
            continue 
        if 31 >= stor0[_2927].field_257 % 128:
            mem[_3083 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
            mem[_2939 + 32] = _3083
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3195 = mem[64]
            _3211 = mem[u]
            t = 0
            while t < _3211:
                mem[t + _3195 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3211) <= _3211:
                _3513 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3513:
                    mem[t + _3195 + _3211 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3513 + _3195 + _3211 + 32] = stor0[_2927].field_768
                if ceil32(_3513) <= _3513:
                    _3836 = mem[64]
                    mem[mem[64]] = _3513 + _3195 + _3211 + -mem[64] + 32
                    mem[64] = _3513 + _3195 + _3211 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3836
                    v = _2939
                    continue 
                _3868 = mem[64]
                mem[mem[64]] = _3513 + _3195 + _3211 + -mem[64] + 32
                mem[64] = _3513 + _3195 + _3211 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3868
                v = _2939
                continue 
            mem[_3195 + _3211 + 32] = 0
            _3545 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3545:
                mem[t + _3195 + _3211 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3545 + _3195 + _3211 + 32] = stor0[_2927].field_768
            if ceil32(_3545) <= _3545:
                _3837 = mem[64]
                mem[mem[64]] = _3545 + _3195 + _3211 + -mem[64] + 32
                mem[64] = _3545 + _3195 + _3211 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3837
                v = _2939
                continue 
            _3869 = mem[64]
            mem[mem[64]] = _3545 + _3195 + _3211 + -mem[64] + 32
            mem[64] = _3545 + _3195 + _3211 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3869
            v = _2939
            continue 
        mem[0] = (5 * _2927) + sha3(0) + 1
        mem[_3083 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
        t = _3083 + 32
        v = sha3((5 * _2927) + sha3(0) + 1)
        while _3083 + stor0[_2927].field_257 % 128 > t:
            mem[t + 32] = _getNodeNumberOf[v].field_0
            t = t + 32
            v = v + 1
            continue 
        mem[_2939 + 32] = _3083
        mem[_2939 + 64] = stor0[_2927].field_512
        mem[_2939 + 96] = stor0[_2927].field_768
        mem[_2939 + 128] = stor0[_2927].field_1024
        _3489 = mem[64]
        _3512 = mem[u]
        t = 0
        while t < _3512:
            mem[t + _3489 + 32] = mem[t + u + 32]
            t = t + 32
            continue 
        if ceil32(_3512) <= _3512:
            _3797 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3797:
                mem[t + _3489 + _3512 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3797 + _3489 + _3512 + 32] = stor0[_2927].field_768
            if ceil32(_3797) <= _3797:
                _3948 = mem[64]
                mem[mem[64]] = _3797 + _3489 + _3512 + -mem[64] + 32
                mem[64] = _3797 + _3489 + _3512 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3948
                v = _2939
                continue 
            _3964 = mem[64]
            mem[mem[64]] = _3797 + _3489 + _3512 + -mem[64] + 32
            mem[64] = _3797 + _3489 + _3512 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3964
            v = _2939
            continue 
        mem[_3489 + _3512 + 32] = 0
        _3835 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
        t = 0
        while t < _3835:
            mem[t + _3489 + _3512 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
            t = t + 32
            continue 
        mem[_3835 + _3489 + _3512 + 32] = stor0[_2927].field_768
        if ceil32(_3835) <= _3835:
            _3949 = mem[64]
            mem[mem[64]] = _3835 + _3489 + _3512 + -mem[64] + 32
            mem[64] = _3835 + _3489 + _3512 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3949
            v = _2939
            continue 
        _3965 = mem[64]
        mem[mem[64]] = _3835 + _3489 + _3512 + -mem[64] + 32
        mem[64] = _3835 + _3489 + _3512 + 64
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = _3965
        v = _2939
        continue 
    mem[mem[64]] = 32
    _2985 = mem[u]
    mem[mem[64] + 32] = mem[u]
    mem[mem[64] + 64 len ceil32(_2985)] = mem[u + 32 len ceil32(_2985)]
    var40001 = ceil32(_2985)
    if ceil32(_2985) > _2985:
        mem[mem[64] + _2985 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_2985) + 32]
}

function _getNodesRewardAvailable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[32] = 1
    mem[96] = _getNodeNumberOf[address(arg1)].field_0
    if not _getNodeNumberOf[address(arg1)].field_0:
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 128] = 0
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 160] = 96
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 192] = 0
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 224] = 0
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 256] = 0
        if 0 >= _getNodeNumberOf[address(arg1)].field_0:
            revert with 0, 50
        if mem[128] >= stor0.length:
            revert with 0, 50
        mem[0] = 0
        if not stor0[mem[128]].field_1024:
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = 1
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 416
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352] = 1
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 384] = 0x2300000000000000000000000000000000000000000000000000000000000000
            idx = 1
            s = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
            t = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
            while idx < _getNodeNumberOf[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                _173 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _175 = mem[64]
                mem[64] = mem[64] + 160
                mem[_175] = address(stor0[mem[(32 * idx) + 128]].field_0)
                if bool(stor0[_173].field_256):
                    if bool(stor0[_173].field_256) == uint255(stor0[_173].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _180 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor0[_173].field_256) * 0.5) + 32
                    mem[_180] = uint255(stor0[_173].field_256) * 0.5
                    if bool(stor0[_173].field_256):
                        if bool(stor0[_173].field_256) == uint255(stor0[_173].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor0[_173].field_256):
                            mem[_175 + 32] = _180
                            mem[_175 + 64] = stor0[_173].field_512
                            mem[_175 + 96] = stor0[_173].field_768
                            mem[_175 + 128] = stor0[_173].field_1024
                            _196 = mem[64]
                            _198 = mem[s]
                            t = 0
                            while t < _198:
                                mem[t + _196 + 32] = mem[t + s + 32]
                                t = t + 32
                                continue 
                            if ceil32(_198) <= _198:
                                _674 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                                s = 0
                                while s < _674:
                                    mem[s + _196 + _198 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                    s = s + 32
                                    continue 
                                mem[_674 + _196 + _198 + 32] = stor0[_173].field_1024
                                if ceil32(_674) <= _674:
                                    _1305 = mem[64]
                                    mem[mem[64]] = _674 + _196 + _198 + -mem[64] + 32
                                    mem[64] = _674 + _196 + _198 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _1305
                                    t = _175
                                    continue 
                                _1326 = mem[64]
                                mem[mem[64]] = _674 + _196 + _198 + -mem[64] + 32
                                mem[64] = _674 + _196 + _198 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1326
                                t = _175
                                continue 
                            mem[_196 + _198 + 32] = 0
                            _689 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _689:
                                mem[s + _196 + _198 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_689 + _196 + _198 + 32] = stor0[_173].field_1024
                            if ceil32(_689) <= _689:
                                _1306 = mem[64]
                                mem[mem[64]] = _689 + _196 + _198 + -mem[64] + 32
                                mem[64] = _689 + _196 + _198 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1306
                                t = _175
                                continue 
                            _1327 = mem[64]
                            mem[mem[64]] = _689 + _196 + _198 + -mem[64] + 32
                            mem[64] = _689 + _196 + _198 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1327
                            t = _175
                            continue 
                        if 31 >= uint255(stor0[_173].field_256) * 0.5:
                            mem[_180 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                            mem[_175 + 32] = _180
                            mem[_175 + 64] = stor0[_173].field_512
                            mem[_175 + 96] = stor0[_173].field_768
                            mem[_175 + 128] = stor0[_173].field_1024
                            _207 = mem[64]
                            _217 = mem[s]
                            t = 0
                            while t < _217:
                                mem[t + _207 + 32] = mem[t + s + 32]
                                t = t + 32
                                continue 
                            if ceil32(_217) <= _217:
                                _676 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                                s = 0
                                while s < _676:
                                    mem[s + _207 + _217 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                    s = s + 32
                                    continue 
                                mem[_676 + _207 + _217 + 32] = stor0[_173].field_1024
                                if ceil32(_676) <= _676:
                                    _1308 = mem[64]
                                    mem[mem[64]] = _676 + _207 + _217 + -mem[64] + 32
                                    mem[64] = _676 + _207 + _217 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _1308
                                    t = _175
                                    continue 
                                _1328 = mem[64]
                                mem[mem[64]] = _676 + _207 + _217 + -mem[64] + 32
                                mem[64] = _676 + _207 + _217 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1328
                                t = _175
                                continue 
                            mem[_207 + _217 + 32] = 0
                            _690 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _690:
                                mem[s + _207 + _217 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_690 + _207 + _217 + 32] = stor0[_173].field_1024
                            if ceil32(_690) <= _690:
                                _1309 = mem[64]
                                mem[mem[64]] = _690 + _207 + _217 + -mem[64] + 32
                                mem[64] = _690 + _207 + _217 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1309
                                t = _175
                                continue 
                            _1329 = mem[64]
                            mem[mem[64]] = _690 + _207 + _217 + -mem[64] + 32
                            mem[64] = _690 + _207 + _217 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1329
                            t = _175
                            continue 
                        mem[0] = (5 * _173) + sha3(0) + 1
                        mem[_180 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                        t = _180 + 32
                        u = sha3((5 * _173) + sha3(0) + 1)
                        while _180 + (uint255(stor0[_173].field_256) * 0.5) > t:
                            mem[t + 32] = _getNodeNumberOf[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_175 + 32] = _180
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _666 = mem[64]
                        _675 = mem[s]
                        t = 0
                        while t < _675:
                            mem[t + _666 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_675) <= _675:
                            _1297 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _1297:
                                mem[s + _666 + _675 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_1297 + _666 + _675 + 32] = stor0[_173].field_1024
                            if ceil32(_1297) <= _1297:
                                _2260 = mem[64]
                                mem[mem[64]] = _1297 + _666 + _675 + -mem[64] + 32
                                mem[64] = _1297 + _666 + _675 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _2260
                                t = _175
                                continue 
                            _2278 = mem[64]
                            mem[mem[64]] = _1297 + _666 + _675 + -mem[64] + 32
                            mem[64] = _1297 + _666 + _675 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2278
                            t = _175
                            continue 
                        mem[_666 + _675 + 32] = 0
                        _1307 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _1307:
                            mem[s + _666 + _675 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_1307 + _666 + _675 + 32] = stor0[_173].field_1024
                        if ceil32(_1307) <= _1307:
                            _2261 = mem[64]
                            mem[mem[64]] = _1307 + _666 + _675 + -mem[64] + 32
                            mem[64] = _1307 + _666 + _675 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2261
                            t = _175
                            continue 
                        _2279 = mem[64]
                        mem[mem[64]] = _1307 + _666 + _675 + -mem[64] + 32
                        mem[64] = _1307 + _666 + _675 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2279
                        t = _175
                        continue 
                    if bool(stor0[_173].field_256) == stor0[_173].field_257 % 128 < 32:
                        revert with 0, 34
                    if not stor0[_173].field_257 % 128:
                        mem[_175 + 32] = _180
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _201 = mem[64]
                        _208 = mem[s]
                        t = 0
                        while t < _208:
                            mem[t + _201 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_208) <= _208:
                            _677 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _677:
                                mem[s + _201 + _208 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_677 + _201 + _208 + 32] = stor0[_173].field_1024
                            if ceil32(_677) <= _677:
                                _1310 = mem[64]
                                mem[mem[64]] = _677 + _201 + _208 + -mem[64] + 32
                                mem[64] = _677 + _201 + _208 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1310
                                t = _175
                                continue 
                            _1330 = mem[64]
                            mem[mem[64]] = _677 + _201 + _208 + -mem[64] + 32
                            mem[64] = _677 + _201 + _208 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1330
                            t = _175
                            continue 
                        mem[_201 + _208 + 32] = 0
                        _691 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _691:
                            mem[s + _201 + _208 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_691 + _201 + _208 + 32] = stor0[_173].field_1024
                        if ceil32(_691) <= _691:
                            _1311 = mem[64]
                            mem[mem[64]] = _691 + _201 + _208 + -mem[64] + 32
                            mem[64] = _691 + _201 + _208 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1311
                            t = _175
                            continue 
                        _1331 = mem[64]
                        mem[mem[64]] = _691 + _201 + _208 + -mem[64] + 32
                        mem[64] = _691 + _201 + _208 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1331
                        t = _175
                        continue 
                    if 31 >= stor0[_173].field_257 % 128:
                        mem[_180 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                        mem[_175 + 32] = _180
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _219 = mem[64]
                        _228 = mem[s]
                        t = 0
                        while t < _228:
                            mem[t + _219 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_228) <= _228:
                            _679 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _679:
                                mem[s + _219 + _228 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_679 + _219 + _228 + 32] = stor0[_173].field_1024
                            if ceil32(_679) <= _679:
                                _1313 = mem[64]
                                mem[mem[64]] = _679 + _219 + _228 + -mem[64] + 32
                                mem[64] = _679 + _219 + _228 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1313
                                t = _175
                                continue 
                            _1332 = mem[64]
                            mem[mem[64]] = _679 + _219 + _228 + -mem[64] + 32
                            mem[64] = _679 + _219 + _228 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1332
                            t = _175
                            continue 
                        mem[_219 + _228 + 32] = 0
                        _692 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _692:
                            mem[s + _219 + _228 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_692 + _219 + _228 + 32] = stor0[_173].field_1024
                        if ceil32(_692) <= _692:
                            _1314 = mem[64]
                            mem[mem[64]] = _692 + _219 + _228 + -mem[64] + 32
                            mem[64] = _692 + _219 + _228 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1314
                            t = _175
                            continue 
                        _1333 = mem[64]
                        mem[mem[64]] = _692 + _219 + _228 + -mem[64] + 32
                        mem[64] = _692 + _219 + _228 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1333
                        t = _175
                        continue 
                    mem[0] = (5 * _173) + sha3(0) + 1
                    mem[_180 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                    t = _180 + 32
                    u = sha3((5 * _173) + sha3(0) + 1)
                    while _180 + stor0[_173].field_257 % 128 > t:
                        mem[t + 32] = _getNodeNumberOf[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_175 + 32] = _180
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _668 = mem[64]
                    _678 = mem[s]
                    t = 0
                    while t < _678:
                        mem[t + _668 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_678) <= _678:
                        _1298 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _1298:
                            mem[s + _668 + _678 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_1298 + _668 + _678 + 32] = stor0[_173].field_1024
                        if ceil32(_1298) <= _1298:
                            _2262 = mem[64]
                            mem[mem[64]] = _1298 + _668 + _678 + -mem[64] + 32
                            mem[64] = _1298 + _668 + _678 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2262
                            t = _175
                            continue 
                        _2280 = mem[64]
                        mem[mem[64]] = _1298 + _668 + _678 + -mem[64] + 32
                        mem[64] = _1298 + _668 + _678 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2280
                        t = _175
                        continue 
                    mem[_668 + _678 + 32] = 0
                    _1312 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _1312:
                        mem[s + _668 + _678 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_1312 + _668 + _678 + 32] = stor0[_173].field_1024
                    if ceil32(_1312) <= _1312:
                        _2263 = mem[64]
                        mem[mem[64]] = _1312 + _668 + _678 + -mem[64] + 32
                        mem[64] = _1312 + _668 + _678 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2263
                        t = _175
                        continue 
                    _2281 = mem[64]
                    mem[mem[64]] = _1312 + _668 + _678 + -mem[64] + 32
                    mem[64] = _1312 + _668 + _678 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2281
                    t = _175
                    continue 
                if bool(stor0[_173].field_256) == stor0[_173].field_257 % 128 < 32:
                    revert with 0, 34
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_173].field_257 % 128) + 32
                mem[_182] = stor0[_173].field_257 % 128
                if bool(stor0[_173].field_256):
                    if bool(stor0[_173].field_256) == uint255(stor0[_173].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_173].field_256):
                        mem[_175 + 32] = _182
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _203 = mem[64]
                        _210 = mem[s]
                        t = 0
                        while t < _210:
                            mem[t + _203 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_210) <= _210:
                            _680 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _680:
                                mem[s + _203 + _210 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_680 + _203 + _210 + 32] = stor0[_173].field_1024
                            if ceil32(_680) <= _680:
                                _1315 = mem[64]
                                mem[mem[64]] = _680 + _203 + _210 + -mem[64] + 32
                                mem[64] = _680 + _203 + _210 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1315
                                t = _175
                                continue 
                            _1334 = mem[64]
                            mem[mem[64]] = _680 + _203 + _210 + -mem[64] + 32
                            mem[64] = _680 + _203 + _210 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1334
                            t = _175
                            continue 
                        mem[_203 + _210 + 32] = 0
                        _693 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _693:
                            mem[s + _203 + _210 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_693 + _203 + _210 + 32] = stor0[_173].field_1024
                        if ceil32(_693) <= _693:
                            _1316 = mem[64]
                            mem[mem[64]] = _693 + _203 + _210 + -mem[64] + 32
                            mem[64] = _693 + _203 + _210 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1316
                            t = _175
                            continue 
                        _1335 = mem[64]
                        mem[mem[64]] = _693 + _203 + _210 + -mem[64] + 32
                        mem[64] = _693 + _203 + _210 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1335
                        t = _175
                        continue 
                    if 31 >= uint255(stor0[_173].field_256) * 0.5:
                        mem[_182 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                        mem[_175 + 32] = _182
                        mem[_175 + 64] = stor0[_173].field_512
                        mem[_175 + 96] = stor0[_173].field_768
                        mem[_175 + 128] = stor0[_173].field_1024
                        _221 = mem[64]
                        _229 = mem[s]
                        t = 0
                        while t < _229:
                            mem[t + _221 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_229) <= _229:
                            _682 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _682:
                                mem[s + _221 + _229 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_682 + _221 + _229 + 32] = stor0[_173].field_1024
                            if ceil32(_682) <= _682:
                                _1318 = mem[64]
                                mem[mem[64]] = _682 + _221 + _229 + -mem[64] + 32
                                mem[64] = _682 + _221 + _229 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _1318
                                t = _175
                                continue 
                            _1336 = mem[64]
                            mem[mem[64]] = _682 + _221 + _229 + -mem[64] + 32
                            mem[64] = _682 + _221 + _229 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1336
                            t = _175
                            continue 
                        mem[_221 + _229 + 32] = 0
                        _694 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _694:
                            mem[s + _221 + _229 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_694 + _221 + _229 + 32] = stor0[_173].field_1024
                        if ceil32(_694) <= _694:
                            _1319 = mem[64]
                            mem[mem[64]] = _694 + _221 + _229 + -mem[64] + 32
                            mem[64] = _694 + _221 + _229 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1319
                            t = _175
                            continue 
                        _1337 = mem[64]
                        mem[mem[64]] = _694 + _221 + _229 + -mem[64] + 32
                        mem[64] = _694 + _221 + _229 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1337
                        t = _175
                        continue 
                    mem[0] = (5 * _173) + sha3(0) + 1
                    mem[_182 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                    t = _182 + 32
                    u = sha3((5 * _173) + sha3(0) + 1)
                    while _182 + (uint255(stor0[_173].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_175 + 32] = _182
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _670 = mem[64]
                    _681 = mem[s]
                    t = 0
                    while t < _681:
                        mem[t + _670 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_681) <= _681:
                        _1299 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _1299:
                            mem[s + _670 + _681 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_1299 + _670 + _681 + 32] = stor0[_173].field_1024
                        if ceil32(_1299) <= _1299:
                            _2264 = mem[64]
                            mem[mem[64]] = _1299 + _670 + _681 + -mem[64] + 32
                            mem[64] = _1299 + _670 + _681 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2264
                            t = _175
                            continue 
                        _2282 = mem[64]
                        mem[mem[64]] = _1299 + _670 + _681 + -mem[64] + 32
                        mem[64] = _1299 + _670 + _681 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2282
                        t = _175
                        continue 
                    mem[_670 + _681 + 32] = 0
                    _1317 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _1317:
                        mem[s + _670 + _681 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_1317 + _670 + _681 + 32] = stor0[_173].field_1024
                    if ceil32(_1317) <= _1317:
                        _2265 = mem[64]
                        mem[mem[64]] = _1317 + _670 + _681 + -mem[64] + 32
                        mem[64] = _1317 + _670 + _681 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2265
                        t = _175
                        continue 
                    _2283 = mem[64]
                    mem[mem[64]] = _1317 + _670 + _681 + -mem[64] + 32
                    mem[64] = _1317 + _670 + _681 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2283
                    t = _175
                    continue 
                if bool(stor0[_173].field_256) == stor0[_173].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_173].field_257 % 128:
                    mem[_175 + 32] = _182
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _213 = mem[64]
                    _222 = mem[s]
                    t = 0
                    while t < _222:
                        mem[t + _213 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_222) <= _222:
                        _683 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _683:
                            mem[s + _213 + _222 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_683 + _213 + _222 + 32] = stor0[_173].field_1024
                        if ceil32(_683) <= _683:
                            _1320 = mem[64]
                            mem[mem[64]] = _683 + _213 + _222 + -mem[64] + 32
                            mem[64] = _683 + _213 + _222 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1320
                            t = _175
                            continue 
                        _1338 = mem[64]
                        mem[mem[64]] = _683 + _213 + _222 + -mem[64] + 32
                        mem[64] = _683 + _213 + _222 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1338
                        t = _175
                        continue 
                    mem[_213 + _222 + 32] = 0
                    _695 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _695:
                        mem[s + _213 + _222 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_695 + _213 + _222 + 32] = stor0[_173].field_1024
                    if ceil32(_695) <= _695:
                        _1321 = mem[64]
                        mem[mem[64]] = _695 + _213 + _222 + -mem[64] + 32
                        mem[64] = _695 + _213 + _222 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1321
                        t = _175
                        continue 
                    _1339 = mem[64]
                    mem[mem[64]] = _695 + _213 + _222 + -mem[64] + 32
                    mem[64] = _695 + _213 + _222 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1339
                    t = _175
                    continue 
                if 31 >= stor0[_173].field_257 % 128:
                    mem[_182 + 32] = 256 * Mask(248, 0, stor0[_173].field_264)
                    mem[_175 + 32] = _182
                    mem[_175 + 64] = stor0[_173].field_512
                    mem[_175 + 96] = stor0[_173].field_768
                    mem[_175 + 128] = stor0[_173].field_1024
                    _231 = mem[64]
                    _239 = mem[s]
                    t = 0
                    while t < _239:
                        mem[t + _231 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_239) <= _239:
                        _685 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _685:
                            mem[s + _231 + _239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_685 + _231 + _239 + 32] = stor0[_173].field_1024
                        if ceil32(_685) <= _685:
                            _1323 = mem[64]
                            mem[mem[64]] = _685 + _231 + _239 + -mem[64] + 32
                            mem[64] = _685 + _231 + _239 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1323
                            t = _175
                            continue 
                        _1340 = mem[64]
                        mem[mem[64]] = _685 + _231 + _239 + -mem[64] + 32
                        mem[64] = _685 + _231 + _239 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1340
                        t = _175
                        continue 
                    mem[_231 + _239 + 32] = 0
                    _696 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _696:
                        mem[s + _231 + _239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_696 + _231 + _239 + 32] = stor0[_173].field_1024
                    if ceil32(_696) <= _696:
                        _1324 = mem[64]
                        mem[mem[64]] = _696 + _231 + _239 + -mem[64] + 32
                        mem[64] = _696 + _231 + _239 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1324
                        t = _175
                        continue 
                    _1341 = mem[64]
                    mem[mem[64]] = _696 + _231 + _239 + -mem[64] + 32
                    mem[64] = _696 + _231 + _239 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1341
                    t = _175
                    continue 
                mem[0] = (5 * _173) + sha3(0) + 1
                mem[_182 + 32] = stor[sha3((5 * _173) + ('name', 'stor0', 0) + 1)].field_0
                t = _182 + 32
                u = sha3((5 * _173) + sha3(0) + 1)
                while _182 + stor0[_173].field_257 % 128 > t:
                    mem[t + 32] = _getNodeNumberOf[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_175 + 32] = _182
                mem[_175 + 64] = stor0[_173].field_512
                mem[_175 + 96] = stor0[_173].field_768
                mem[_175 + 128] = stor0[_173].field_1024
                _672 = mem[64]
                _684 = mem[s]
                t = 0
                while t < _684:
                    mem[t + _672 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_684) <= _684:
                    _1300 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _1300:
                        mem[s + _672 + _684 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_1300 + _672 + _684 + 32] = stor0[_173].field_1024
                    if ceil32(_1300) <= _1300:
                        _2266 = mem[64]
                        mem[mem[64]] = _1300 + _672 + _684 + -mem[64] + 32
                        mem[64] = _1300 + _672 + _684 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2266
                        t = _175
                        continue 
                    _2284 = mem[64]
                    mem[mem[64]] = _1300 + _672 + _684 + -mem[64] + 32
                    mem[64] = _1300 + _672 + _684 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2284
                    t = _175
                    continue 
                mem[_672 + _684 + 32] = 0
                _1322 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _1322:
                    mem[s + _672 + _684 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_1322 + _672 + _684 + 32] = stor0[_173].field_1024
                if ceil32(_1322) <= _1322:
                    _2267 = mem[64]
                    mem[mem[64]] = _1322 + _672 + _684 + -mem[64] + 32
                    mem[64] = _1322 + _672 + _684 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2267
                    t = _175
                    continue 
                _2285 = mem[64]
                mem[mem[64]] = _1322 + _672 + _684 + -mem[64] + 32
                mem[64] = _1322 + _672 + _684 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _2285
                t = _175
                continue 
            mem[mem[64]] = 32
            _176 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_176)] = mem[s + 32 len ceil32(_176)]
            if ceil32(_176) > _176:
                mem[mem[64] + _176 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_176) + 32]
        s = 0
        idx = stor0[mem[128]].field_1024
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = s
        if not s:
            t = s
            idx = stor0[mem[128]].field_1024
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
                    revert with 0, 50
                mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
            mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
            idx = 1
            u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
            v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
            while idx < _getNodeNumberOf[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                _1287 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _1294 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1294] = address(stor0[mem[(32 * idx) + 128]].field_0)
                if bool(stor0[_1287].field_256):
                    if bool(stor0[_1287].field_256) == uint255(stor0[_1287].field_256) * 0.5 < 32:
                        revert with 0, 34
                    _1348 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor0[_1287].field_256) * 0.5) + 32
                    mem[_1348] = uint255(stor0[_1287].field_256) * 0.5
                    if bool(stor0[_1287].field_256):
                        if bool(stor0[_1287].field_256) == uint255(stor0[_1287].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor0[_1287].field_256):
                            mem[_1294 + 32] = _1348
                            mem[_1294 + 64] = stor0[_1287].field_512
                            mem[_1294 + 96] = stor0[_1287].field_768
                            mem[_1294 + 128] = stor0[_1287].field_1024
                            _1390 = mem[64]
                            _1399 = mem[u]
                            t = 0
                            while t < _1399:
                                mem[t + _1390 + 32] = mem[t + u + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1399) <= _1399:
                                _2208 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                                t = 0
                                while t < _2208:
                                    mem[t + _1390 + _1399 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                    t = t + 32
                                    continue 
                                mem[_2208 + _1390 + _1399 + 32] = stor0[_1287].field_1024
                                if ceil32(_2208) <= _2208:
                                    _2944 = mem[64]
                                    mem[mem[64]] = _2208 + _1390 + _1399 + -mem[64] + 32
                                    mem[64] = _2208 + _1390 + _1399 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = _2944
                                    v = _1294
                                    continue 
                                _3006 = mem[64]
                                mem[mem[64]] = _2208 + _1390 + _1399 + -mem[64] + 32
                                mem[64] = _2208 + _1390 + _1399 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3006
                                v = _1294
                                continue 
                            mem[_1390 + _1399 + 32] = 0
                            _2244 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2244:
                                mem[t + _1390 + _1399 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2244 + _1390 + _1399 + 32] = stor0[_1287].field_1024
                            if ceil32(_2244) <= _2244:
                                _2945 = mem[64]
                                mem[mem[64]] = _2244 + _1390 + _1399 + -mem[64] + 32
                                mem[64] = _2244 + _1390 + _1399 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2945
                                v = _1294
                                continue 
                            _3007 = mem[64]
                            mem[mem[64]] = _2244 + _1390 + _1399 + -mem[64] + 32
                            mem[64] = _2244 + _1390 + _1399 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3007
                            v = _1294
                            continue 
                        if 31 >= uint255(stor0[_1287].field_256) * 0.5:
                            mem[_1348 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                            mem[_1294 + 32] = _1348
                            mem[_1294 + 64] = stor0[_1287].field_512
                            mem[_1294 + 96] = stor0[_1287].field_768
                            mem[_1294 + 128] = stor0[_1287].field_1024
                            _1420 = mem[64]
                            _1445 = mem[u]
                            t = 0
                            while t < _1445:
                                mem[t + _1420 + 32] = mem[t + u + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1445) <= _1445:
                                _2210 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                                t = 0
                                while t < _2210:
                                    mem[t + _1420 + _1445 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                    t = t + 32
                                    continue 
                                mem[_2210 + _1420 + _1445 + 32] = stor0[_1287].field_1024
                                if ceil32(_2210) <= _2210:
                                    _2947 = mem[64]
                                    mem[mem[64]] = _2210 + _1420 + _1445 + -mem[64] + 32
                                    mem[64] = _2210 + _1420 + _1445 + 64
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    u = _2947
                                    v = _1294
                                    continue 
                                _3008 = mem[64]
                                mem[mem[64]] = _2210 + _1420 + _1445 + -mem[64] + 32
                                mem[64] = _2210 + _1420 + _1445 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3008
                                v = _1294
                                continue 
                            mem[_1420 + _1445 + 32] = 0
                            _2245 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2245:
                                mem[t + _1420 + _1445 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2245 + _1420 + _1445 + 32] = stor0[_1287].field_1024
                            if ceil32(_2245) <= _2245:
                                _2948 = mem[64]
                                mem[mem[64]] = _2245 + _1420 + _1445 + -mem[64] + 32
                                mem[64] = _2245 + _1420 + _1445 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2948
                                v = _1294
                                continue 
                            _3009 = mem[64]
                            mem[mem[64]] = _2245 + _1420 + _1445 + -mem[64] + 32
                            mem[64] = _2245 + _1420 + _1445 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3009
                            v = _1294
                            continue 
                        mem[0] = (5 * _1287) + sha3(0) + 1
                        mem[_1348 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                        t = _1348 + 32
                        v = sha3((5 * _1287) + sha3(0) + 1)
                        while _1348 + (uint255(stor0[_1287].field_256) * 0.5) > t:
                            mem[t + 32] = _getNodeNumberOf[v].field_0
                            t = t + 32
                            v = v + 1
                            continue 
                        mem[_1294 + 32] = _1348
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _2183 = mem[64]
                        _2209 = mem[u]
                        t = 0
                        while t < _2209:
                            mem[t + _2183 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_2209) <= _2209:
                            _2928 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2928:
                                mem[t + _2183 + _2209 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2928 + _2183 + _2209 + 32] = stor0[_1287].field_1024
                            if ceil32(_2928) <= _2928:
                                _3514 = mem[64]
                                mem[mem[64]] = _2928 + _2183 + _2209 + -mem[64] + 32
                                mem[64] = _2928 + _2183 + _2209 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3514
                                v = _1294
                                continue 
                            _3554 = mem[64]
                            mem[mem[64]] = _2928 + _2183 + _2209 + -mem[64] + 32
                            mem[64] = _2928 + _2183 + _2209 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3554
                            v = _1294
                            continue 
                        mem[_2183 + _2209 + 32] = 0
                        _2946 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2946:
                            mem[t + _2183 + _2209 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2946 + _2183 + _2209 + 32] = stor0[_1287].field_1024
                        if ceil32(_2946) <= _2946:
                            _3515 = mem[64]
                            mem[mem[64]] = _2946 + _2183 + _2209 + -mem[64] + 32
                            mem[64] = _2946 + _2183 + _2209 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3515
                            v = _1294
                            continue 
                        _3555 = mem[64]
                        mem[mem[64]] = _2946 + _2183 + _2209 + -mem[64] + 32
                        mem[64] = _2946 + _2183 + _2209 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3555
                        v = _1294
                        continue 
                    if bool(stor0[_1287].field_256) == stor0[_1287].field_257 % 128 < 32:
                        revert with 0, 34
                    if not stor0[_1287].field_257 % 128:
                        mem[_1294 + 32] = _1348
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1402 = mem[64]
                        _1421 = mem[u]
                        t = 0
                        while t < _1421:
                            mem[t + _1402 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1421) <= _1421:
                            _2211 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2211:
                                mem[t + _1402 + _1421 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2211 + _1402 + _1421 + 32] = stor0[_1287].field_1024
                            if ceil32(_2211) <= _2211:
                                _2949 = mem[64]
                                mem[mem[64]] = _2211 + _1402 + _1421 + -mem[64] + 32
                                mem[64] = _2211 + _1402 + _1421 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2949
                                v = _1294
                                continue 
                            _3010 = mem[64]
                            mem[mem[64]] = _2211 + _1402 + _1421 + -mem[64] + 32
                            mem[64] = _2211 + _1402 + _1421 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3010
                            v = _1294
                            continue 
                        mem[_1402 + _1421 + 32] = 0
                        _2246 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2246:
                            mem[t + _1402 + _1421 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2246 + _1402 + _1421 + 32] = stor0[_1287].field_1024
                        if ceil32(_2246) <= _2246:
                            _2950 = mem[64]
                            mem[mem[64]] = _2246 + _1402 + _1421 + -mem[64] + 32
                            mem[64] = _2246 + _1402 + _1421 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2950
                            v = _1294
                            continue 
                        _3011 = mem[64]
                        mem[mem[64]] = _2246 + _1402 + _1421 + -mem[64] + 32
                        mem[64] = _2246 + _1402 + _1421 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3011
                        v = _1294
                        continue 
                    if 31 >= stor0[_1287].field_257 % 128:
                        mem[_1348 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                        mem[_1294 + 32] = _1348
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1447 = mem[64]
                        _1472 = mem[u]
                        t = 0
                        while t < _1472:
                            mem[t + _1447 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1472) <= _1472:
                            _2213 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2213:
                                mem[t + _1447 + _1472 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2213 + _1447 + _1472 + 32] = stor0[_1287].field_1024
                            if ceil32(_2213) <= _2213:
                                _2952 = mem[64]
                                mem[mem[64]] = _2213 + _1447 + _1472 + -mem[64] + 32
                                mem[64] = _2213 + _1447 + _1472 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2952
                                v = _1294
                                continue 
                            _3012 = mem[64]
                            mem[mem[64]] = _2213 + _1447 + _1472 + -mem[64] + 32
                            mem[64] = _2213 + _1447 + _1472 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3012
                            v = _1294
                            continue 
                        mem[_1447 + _1472 + 32] = 0
                        _2247 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2247:
                            mem[t + _1447 + _1472 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2247 + _1447 + _1472 + 32] = stor0[_1287].field_1024
                        if ceil32(_2247) <= _2247:
                            _2953 = mem[64]
                            mem[mem[64]] = _2247 + _1447 + _1472 + -mem[64] + 32
                            mem[64] = _2247 + _1447 + _1472 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2953
                            v = _1294
                            continue 
                        _3013 = mem[64]
                        mem[mem[64]] = _2247 + _1447 + _1472 + -mem[64] + 32
                        mem[64] = _2247 + _1447 + _1472 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3013
                        v = _1294
                        continue 
                    mem[0] = (5 * _1287) + sha3(0) + 1
                    mem[_1348 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                    v = _1348 + 32
                    t = sha3((5 * _1287) + sha3(0) + 1)
                    while _1348 + stor0[_1287].field_257 % 128 > v:
                        mem[v + 32] = _getNodeNumberOf[t].field_0
                        v = v + 32
                        t = t + 1
                        continue 
                    mem[_1294 + 32] = _1348
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _2185 = mem[64]
                    _2212 = mem[u]
                    t = 0
                    while t < _2212:
                        mem[t + _2185 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2212) <= _2212:
                        _2929 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2929:
                            mem[t + _2185 + _2212 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2929 + _2185 + _2212 + 32] = stor0[_1287].field_1024
                        if ceil32(_2929) <= _2929:
                            _3516 = mem[64]
                            mem[mem[64]] = _2929 + _2185 + _2212 + -mem[64] + 32
                            mem[64] = _2929 + _2185 + _2212 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3516
                            v = _1294
                            continue 
                        _3556 = mem[64]
                        mem[mem[64]] = _2929 + _2185 + _2212 + -mem[64] + 32
                        mem[64] = _2929 + _2185 + _2212 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3556
                        v = _1294
                        continue 
                    mem[_2185 + _2212 + 32] = 0
                    _2951 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2951:
                        mem[t + _2185 + _2212 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2951 + _2185 + _2212 + 32] = stor0[_1287].field_1024
                    if ceil32(_2951) <= _2951:
                        _3517 = mem[64]
                        mem[mem[64]] = _2951 + _2185 + _2212 + -mem[64] + 32
                        mem[64] = _2951 + _2185 + _2212 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3517
                        v = _1294
                        continue 
                    _3557 = mem[64]
                    mem[mem[64]] = _2951 + _2185 + _2212 + -mem[64] + 32
                    mem[64] = _2951 + _2185 + _2212 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3557
                    v = _1294
                    continue 
                if bool(stor0[_1287].field_256) == stor0[_1287].field_257 % 128 < 32:
                    revert with 0, 34
                _1358 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[_1287].field_257 % 128) + 32
                mem[_1358] = stor0[_1287].field_257 % 128
                if bool(stor0[_1287].field_256):
                    if bool(stor0[_1287].field_256) == uint255(stor0[_1287].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_1287].field_256):
                        mem[_1294 + 32] = _1358
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1404 = mem[64]
                        _1423 = mem[u]
                        t = 0
                        while t < _1423:
                            mem[t + _1404 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1423) <= _1423:
                            _2214 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2214:
                                mem[t + _1404 + _1423 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2214 + _1404 + _1423 + 32] = stor0[_1287].field_1024
                            if ceil32(_2214) <= _2214:
                                _2954 = mem[64]
                                mem[mem[64]] = _2214 + _1404 + _1423 + -mem[64] + 32
                                mem[64] = _2214 + _1404 + _1423 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2954
                                v = _1294
                                continue 
                            _3014 = mem[64]
                            mem[mem[64]] = _2214 + _1404 + _1423 + -mem[64] + 32
                            mem[64] = _2214 + _1404 + _1423 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3014
                            v = _1294
                            continue 
                        mem[_1404 + _1423 + 32] = 0
                        _2248 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2248:
                            mem[t + _1404 + _1423 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2248 + _1404 + _1423 + 32] = stor0[_1287].field_1024
                        if ceil32(_2248) <= _2248:
                            _2955 = mem[64]
                            mem[mem[64]] = _2248 + _1404 + _1423 + -mem[64] + 32
                            mem[64] = _2248 + _1404 + _1423 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2955
                            v = _1294
                            continue 
                        _3015 = mem[64]
                        mem[mem[64]] = _2248 + _1404 + _1423 + -mem[64] + 32
                        mem[64] = _2248 + _1404 + _1423 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3015
                        v = _1294
                        continue 
                    if 31 >= uint255(stor0[_1287].field_256) * 0.5:
                        mem[_1358 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                        mem[_1294 + 32] = _1358
                        mem[_1294 + 64] = stor0[_1287].field_512
                        mem[_1294 + 96] = stor0[_1287].field_768
                        mem[_1294 + 128] = stor0[_1287].field_1024
                        _1449 = mem[64]
                        _1473 = mem[u]
                        t = 0
                        while t < _1473:
                            mem[t + _1449 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1473) <= _1473:
                            _2216 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2216:
                                mem[t + _1449 + _1473 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2216 + _1449 + _1473 + 32] = stor0[_1287].field_1024
                            if ceil32(_2216) <= _2216:
                                _2957 = mem[64]
                                mem[mem[64]] = _2216 + _1449 + _1473 + -mem[64] + 32
                                mem[64] = _2216 + _1449 + _1473 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2957
                                v = _1294
                                continue 
                            _3016 = mem[64]
                            mem[mem[64]] = _2216 + _1449 + _1473 + -mem[64] + 32
                            mem[64] = _2216 + _1449 + _1473 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3016
                            v = _1294
                            continue 
                        mem[_1449 + _1473 + 32] = 0
                        _2249 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2249:
                            mem[t + _1449 + _1473 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2249 + _1449 + _1473 + 32] = stor0[_1287].field_1024
                        if ceil32(_2249) <= _2249:
                            _2958 = mem[64]
                            mem[mem[64]] = _2249 + _1449 + _1473 + -mem[64] + 32
                            mem[64] = _2249 + _1449 + _1473 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2958
                            v = _1294
                            continue 
                        _3017 = mem[64]
                        mem[mem[64]] = _2249 + _1449 + _1473 + -mem[64] + 32
                        mem[64] = _2249 + _1449 + _1473 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3017
                        v = _1294
                        continue 
                    mem[0] = (5 * _1287) + sha3(0) + 1
                    mem[_1358 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                    v = _1358 + 32
                    t = sha3((5 * _1287) + sha3(0) + 1)
                    while _1358 + (uint255(stor0[_1287].field_256) * 0.5) > v:
                        mem[v + 32] = _getNodeNumberOf[t].field_0
                        v = v + 32
                        t = t + 1
                        continue 
                    mem[_1294 + 32] = _1358
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _2187 = mem[64]
                    _2215 = mem[u]
                    t = 0
                    while t < _2215:
                        mem[t + _2187 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2215) <= _2215:
                        _2930 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2930:
                            mem[t + _2187 + _2215 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2930 + _2187 + _2215 + 32] = stor0[_1287].field_1024
                        if ceil32(_2930) <= _2930:
                            _3518 = mem[64]
                            mem[mem[64]] = _2930 + _2187 + _2215 + -mem[64] + 32
                            mem[64] = _2930 + _2187 + _2215 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3518
                            v = _1294
                            continue 
                        _3558 = mem[64]
                        mem[mem[64]] = _2930 + _2187 + _2215 + -mem[64] + 32
                        mem[64] = _2930 + _2187 + _2215 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3558
                        v = _1294
                        continue 
                    mem[_2187 + _2215 + 32] = 0
                    _2956 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2956:
                        mem[t + _2187 + _2215 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2956 + _2187 + _2215 + 32] = stor0[_1287].field_1024
                    if ceil32(_2956) <= _2956:
                        _3519 = mem[64]
                        mem[mem[64]] = _2956 + _2187 + _2215 + -mem[64] + 32
                        mem[64] = _2956 + _2187 + _2215 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3519
                        v = _1294
                        continue 
                    _3559 = mem[64]
                    mem[mem[64]] = _2956 + _2187 + _2215 + -mem[64] + 32
                    mem[64] = _2956 + _2187 + _2215 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3559
                    v = _1294
                    continue 
                if bool(stor0[_1287].field_256) == stor0[_1287].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_1287].field_257 % 128:
                    mem[_1294 + 32] = _1358
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _1426 = mem[64]
                    _1450 = mem[u]
                    t = 0
                    while t < _1450:
                        mem[t + _1426 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1450) <= _1450:
                        _2217 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2217:
                            mem[t + _1426 + _1450 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2217 + _1426 + _1450 + 32] = stor0[_1287].field_1024
                        if ceil32(_2217) <= _2217:
                            _2959 = mem[64]
                            mem[mem[64]] = _2217 + _1426 + _1450 + -mem[64] + 32
                            mem[64] = _2217 + _1426 + _1450 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2959
                            v = _1294
                            continue 
                        _3018 = mem[64]
                        mem[mem[64]] = _2217 + _1426 + _1450 + -mem[64] + 32
                        mem[64] = _2217 + _1426 + _1450 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3018
                        v = _1294
                        continue 
                    mem[_1426 + _1450 + 32] = 0
                    _2250 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2250:
                        mem[t + _1426 + _1450 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2250 + _1426 + _1450 + 32] = stor0[_1287].field_1024
                    if ceil32(_2250) <= _2250:
                        _2960 = mem[64]
                        mem[mem[64]] = _2250 + _1426 + _1450 + -mem[64] + 32
                        mem[64] = _2250 + _1426 + _1450 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2960
                        v = _1294
                        continue 
                    _3019 = mem[64]
                    mem[mem[64]] = _2250 + _1426 + _1450 + -mem[64] + 32
                    mem[64] = _2250 + _1426 + _1450 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3019
                    v = _1294
                    continue 
                if 31 >= stor0[_1287].field_257 % 128:
                    mem[_1358 + 32] = 256 * Mask(248, 0, stor0[_1287].field_264)
                    mem[_1294 + 32] = _1358
                    mem[_1294 + 64] = stor0[_1287].field_512
                    mem[_1294 + 96] = stor0[_1287].field_768
                    mem[_1294 + 128] = stor0[_1287].field_1024
                    _1475 = mem[64]
                    _1498 = mem[u]
                    t = 0
                    while t < _1498:
                        mem[t + _1475 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1498) <= _1498:
                        _2219 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2219:
                            mem[t + _1475 + _1498 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2219 + _1475 + _1498 + 32] = stor0[_1287].field_1024
                        if ceil32(_2219) <= _2219:
                            _2962 = mem[64]
                            mem[mem[64]] = _2219 + _1475 + _1498 + -mem[64] + 32
                            mem[64] = _2219 + _1475 + _1498 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2962
                            v = _1294
                            continue 
                        _3020 = mem[64]
                        mem[mem[64]] = _2219 + _1475 + _1498 + -mem[64] + 32
                        mem[64] = _2219 + _1475 + _1498 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3020
                        v = _1294
                        continue 
                    mem[_1475 + _1498 + 32] = 0
                    _2251 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2251:
                        mem[t + _1475 + _1498 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2251 + _1475 + _1498 + 32] = stor0[_1287].field_1024
                    if ceil32(_2251) <= _2251:
                        _2963 = mem[64]
                        mem[mem[64]] = _2251 + _1475 + _1498 + -mem[64] + 32
                        mem[64] = _2251 + _1475 + _1498 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2963
                        v = _1294
                        continue 
                    _3021 = mem[64]
                    mem[mem[64]] = _2251 + _1475 + _1498 + -mem[64] + 32
                    mem[64] = _2251 + _1475 + _1498 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3021
                    v = _1294
                    continue 
                mem[0] = (5 * _1287) + sha3(0) + 1
                mem[_1358 + 32] = stor[sha3((5 * _1287) + ('name', 'stor0', 0) + 1)].field_0
                t = _1358 + 32
                v = sha3((5 * _1287) + sha3(0) + 1)
                while _1358 + stor0[_1287].field_257 % 128 > t:
                    mem[t + 32] = _getNodeNumberOf[v].field_0
                    t = t + 32
                    v = v + 1
                    continue 
                mem[_1294 + 32] = _1358
                mem[_1294 + 64] = stor0[_1287].field_512
                mem[_1294 + 96] = stor0[_1287].field_768
                mem[_1294 + 128] = stor0[_1287].field_1024
                _2189 = mem[64]
                _2218 = mem[u]
                t = 0
                while t < _2218:
                    mem[t + _2189 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_2218) <= _2218:
                    _2931 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2931:
                        mem[t + _2189 + _2218 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2931 + _2189 + _2218 + 32] = stor0[_1287].field_1024
                    if ceil32(_2931) <= _2931:
                        _3520 = mem[64]
                        mem[mem[64]] = _2931 + _2189 + _2218 + -mem[64] + 32
                        mem[64] = _2931 + _2189 + _2218 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3520
                        v = _1294
                        continue 
                    _3560 = mem[64]
                    mem[mem[64]] = _2931 + _2189 + _2218 + -mem[64] + 32
                    mem[64] = _2931 + _2189 + _2218 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3560
                    v = _1294
                    continue 
                mem[_2189 + _2218 + 32] = 0
                _2961 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2961:
                    mem[t + _2189 + _2218 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2961 + _2189 + _2218 + 32] = stor0[_1287].field_1024
                if ceil32(_2961) <= _2961:
                    _3521 = mem[64]
                    mem[mem[64]] = _2961 + _2189 + _2218 + -mem[64] + 32
                    mem[64] = _2961 + _2189 + _2218 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3521
                    v = _1294
                    continue 
                _3561 = mem[64]
                mem[mem[64]] = _2961 + _2189 + _2218 + -mem[64] + 32
                mem[64] = _2961 + _2189 + _2218 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3561
                v = _1294
                continue 
            _1286 = mem[64]
            mem[mem[64]] = 32
            _1303 = mem[u]
            mem[mem[64] + 32] = mem[u]
            mem[mem[64] + 64 len ceil32(_1303)] = mem[u + 32 len ceil32(_1303)]
            if ceil32(_1303) <= _1303:
                return 32, mem[mem[64] + 32 len ceil32(_1303) + 32]
            mem[mem[64] + _1303 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_1303) + _1286 + -mem[64] + 64
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320 len s] = call.data[calldata.size len s]
        t = s
        idx = stor0[mem[128]].field_1024
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
                revert with 0, 50
            mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
        v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _1289 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _1296 = mem[64]
            mem[64] = mem[64] + 160
            mem[_1296] = address(stor0[mem[(32 * idx) + 128]].field_0)
            if bool(stor0[_1289].field_256):
                if bool(stor0[_1289].field_256) == uint255(stor0[_1289].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1350 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor0[_1289].field_256) * 0.5) + 32
                mem[_1350] = uint255(stor0[_1289].field_256) * 0.5
                if bool(stor0[_1289].field_256):
                    if bool(stor0[_1289].field_256) == uint255(stor0[_1289].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_1289].field_256):
                        mem[_1296 + 32] = _1350
                        mem[_1296 + 64] = stor0[_1289].field_512
                        mem[_1296 + 96] = stor0[_1289].field_768
                        mem[_1296 + 128] = stor0[_1289].field_1024
                        _1393 = mem[64]
                        _1406 = mem[u]
                        t = 0
                        while t < _1406:
                            mem[t + _1393 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1406) <= _1406:
                            _2220 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2220:
                                mem[t + _1393 + _1406 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2220 + _1393 + _1406 + 32] = stor0[_1289].field_1024
                            if ceil32(_2220) <= _2220:
                                _2964 = mem[64]
                                mem[mem[64]] = _2220 + _1393 + _1406 + -mem[64] + 32
                                mem[64] = _2220 + _1393 + _1406 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2964
                                v = _1296
                                continue 
                            _3022 = mem[64]
                            mem[mem[64]] = _2220 + _1393 + _1406 + -mem[64] + 32
                            mem[64] = _2220 + _1393 + _1406 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3022
                            v = _1296
                            continue 
                        mem[_1393 + _1406 + 32] = 0
                        _2252 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2252:
                            mem[t + _1393 + _1406 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2252 + _1393 + _1406 + 32] = stor0[_1289].field_1024
                        if ceil32(_2252) <= _2252:
                            _2965 = mem[64]
                            mem[mem[64]] = _2252 + _1393 + _1406 + -mem[64] + 32
                            mem[64] = _2252 + _1393 + _1406 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2965
                            v = _1296
                            continue 
                        _3023 = mem[64]
                        mem[mem[64]] = _2252 + _1393 + _1406 + -mem[64] + 32
                        mem[64] = _2252 + _1393 + _1406 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3023
                        v = _1296
                        continue 
                    if 31 >= uint255(stor0[_1289].field_256) * 0.5:
                        mem[_1350 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                        mem[_1296 + 32] = _1350
                        mem[_1296 + 64] = stor0[_1289].field_512
                        mem[_1296 + 96] = stor0[_1289].field_768
                        mem[_1296 + 128] = stor0[_1289].field_1024
                        _1428 = mem[64]
                        _1452 = mem[u]
                        t = 0
                        while t < _1452:
                            mem[t + _1428 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1452) <= _1452:
                            _2222 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _2222:
                                mem[t + _1428 + _1452 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_2222 + _1428 + _1452 + 32] = stor0[_1289].field_1024
                            if ceil32(_2222) <= _2222:
                                _2967 = mem[64]
                                mem[mem[64]] = _2222 + _1428 + _1452 + -mem[64] + 32
                                mem[64] = _2222 + _1428 + _1452 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _2967
                                v = _1296
                                continue 
                            _3024 = mem[64]
                            mem[mem[64]] = _2222 + _1428 + _1452 + -mem[64] + 32
                            mem[64] = _2222 + _1428 + _1452 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3024
                            v = _1296
                            continue 
                        mem[_1428 + _1452 + 32] = 0
                        _2253 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2253:
                            mem[t + _1428 + _1452 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2253 + _1428 + _1452 + 32] = stor0[_1289].field_1024
                        if ceil32(_2253) <= _2253:
                            _2968 = mem[64]
                            mem[mem[64]] = _2253 + _1428 + _1452 + -mem[64] + 32
                            mem[64] = _2253 + _1428 + _1452 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2968
                            v = _1296
                            continue 
                        _3025 = mem[64]
                        mem[mem[64]] = _2253 + _1428 + _1452 + -mem[64] + 32
                        mem[64] = _2253 + _1428 + _1452 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3025
                        v = _1296
                        continue 
                    mem[0] = (5 * _1289) + sha3(0) + 1
                    mem[_1350 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
                    t = _1350 + 32
                    v = sha3((5 * _1289) + sha3(0) + 1)
                    while _1350 + (uint255(stor0[_1289].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[v].field_0
                        t = t + 32
                        v = v + 1
                        continue 
                    mem[_1296 + 32] = _1350
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _2191 = mem[64]
                    _2221 = mem[u]
                    t = 0
                    while t < _2221:
                        mem[t + _2191 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2221) <= _2221:
                        _2932 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2932:
                            mem[t + _2191 + _2221 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2932 + _2191 + _2221 + 32] = stor0[_1289].field_1024
                        if ceil32(_2932) <= _2932:
                            _3522 = mem[64]
                            mem[mem[64]] = _2932 + _2191 + _2221 + -mem[64] + 32
                            mem[64] = _2932 + _2191 + _2221 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3522
                            v = _1296
                            continue 
                        _3562 = mem[64]
                        mem[mem[64]] = _2932 + _2191 + _2221 + -mem[64] + 32
                        mem[64] = _2932 + _2191 + _2221 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3562
                        v = _1296
                        continue 
                    mem[_2191 + _2221 + 32] = 0
                    _2966 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2966:
                        mem[t + _2191 + _2221 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2966 + _2191 + _2221 + 32] = stor0[_1289].field_1024
                    if ceil32(_2966) <= _2966:
                        _3523 = mem[64]
                        mem[mem[64]] = _2966 + _2191 + _2221 + -mem[64] + 32
                        mem[64] = _2966 + _2191 + _2221 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3523
                        v = _1296
                        continue 
                    _3563 = mem[64]
                    mem[mem[64]] = _2966 + _2191 + _2221 + -mem[64] + 32
                    mem[64] = _2966 + _2191 + _2221 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3563
                    v = _1296
                    continue 
                if bool(stor0[_1289].field_256) == stor0[_1289].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_1289].field_257 % 128:
                    mem[_1296 + 32] = _1350
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1409 = mem[64]
                    _1429 = mem[u]
                    t = 0
                    while t < _1429:
                        mem[t + _1409 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1429) <= _1429:
                        _2223 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2223:
                            mem[t + _1409 + _1429 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2223 + _1409 + _1429 + 32] = stor0[_1289].field_1024
                        if ceil32(_2223) <= _2223:
                            _2969 = mem[64]
                            mem[mem[64]] = _2223 + _1409 + _1429 + -mem[64] + 32
                            mem[64] = _2223 + _1409 + _1429 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2969
                            v = _1296
                            continue 
                        _3026 = mem[64]
                        mem[mem[64]] = _2223 + _1409 + _1429 + -mem[64] + 32
                        mem[64] = _2223 + _1409 + _1429 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3026
                        v = _1296
                        continue 
                    mem[_1409 + _1429 + 32] = 0
                    _2254 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2254:
                        mem[t + _1409 + _1429 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2254 + _1409 + _1429 + 32] = stor0[_1289].field_1024
                    if ceil32(_2254) <= _2254:
                        _2970 = mem[64]
                        mem[mem[64]] = _2254 + _1409 + _1429 + -mem[64] + 32
                        mem[64] = _2254 + _1409 + _1429 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2970
                        v = _1296
                        continue 
                    _3027 = mem[64]
                    mem[mem[64]] = _2254 + _1409 + _1429 + -mem[64] + 32
                    mem[64] = _2254 + _1409 + _1429 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3027
                    v = _1296
                    continue 
                if 31 >= stor0[_1289].field_257 % 128:
                    mem[_1350 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                    mem[_1296 + 32] = _1350
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1454 = mem[64]
                    _1479 = mem[u]
                    t = 0
                    while t < _1479:
                        mem[t + _1454 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1479) <= _1479:
                        _2225 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2225:
                            mem[t + _1454 + _1479 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2225 + _1454 + _1479 + 32] = stor0[_1289].field_1024
                        if ceil32(_2225) <= _2225:
                            _2972 = mem[64]
                            mem[mem[64]] = _2225 + _1454 + _1479 + -mem[64] + 32
                            mem[64] = _2225 + _1454 + _1479 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2972
                            v = _1296
                            continue 
                        _3028 = mem[64]
                        mem[mem[64]] = _2225 + _1454 + _1479 + -mem[64] + 32
                        mem[64] = _2225 + _1454 + _1479 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3028
                        v = _1296
                        continue 
                    mem[_1454 + _1479 + 32] = 0
                    _2255 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2255:
                        mem[t + _1454 + _1479 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2255 + _1454 + _1479 + 32] = stor0[_1289].field_1024
                    if ceil32(_2255) <= _2255:
                        _2973 = mem[64]
                        mem[mem[64]] = _2255 + _1454 + _1479 + -mem[64] + 32
                        mem[64] = _2255 + _1454 + _1479 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2973
                        v = _1296
                        continue 
                    _3029 = mem[64]
                    mem[mem[64]] = _2255 + _1454 + _1479 + -mem[64] + 32
                    mem[64] = _2255 + _1454 + _1479 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3029
                    v = _1296
                    continue 
                mem[0] = (5 * _1289) + sha3(0) + 1
                mem[_1350 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
                v = _1350 + 32
                t = sha3((5 * _1289) + sha3(0) + 1)
                while _1350 + stor0[_1289].field_257 % 128 > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_1296 + 32] = _1350
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _2193 = mem[64]
                _2224 = mem[u]
                t = 0
                while t < _2224:
                    mem[t + _2193 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_2224) <= _2224:
                    _2933 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2933:
                        mem[t + _2193 + _2224 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2933 + _2193 + _2224 + 32] = stor0[_1289].field_1024
                    if ceil32(_2933) <= _2933:
                        _3524 = mem[64]
                        mem[mem[64]] = _2933 + _2193 + _2224 + -mem[64] + 32
                        mem[64] = _2933 + _2193 + _2224 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3524
                        v = _1296
                        continue 
                    _3564 = mem[64]
                    mem[mem[64]] = _2933 + _2193 + _2224 + -mem[64] + 32
                    mem[64] = _2933 + _2193 + _2224 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3564
                    v = _1296
                    continue 
                mem[_2193 + _2224 + 32] = 0
                _2971 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2971:
                    mem[t + _2193 + _2224 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2971 + _2193 + _2224 + 32] = stor0[_1289].field_1024
                if ceil32(_2971) <= _2971:
                    _3525 = mem[64]
                    mem[mem[64]] = _2971 + _2193 + _2224 + -mem[64] + 32
                    mem[64] = _2971 + _2193 + _2224 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3525
                    v = _1296
                    continue 
                _3565 = mem[64]
                mem[mem[64]] = _2971 + _2193 + _2224 + -mem[64] + 32
                mem[64] = _2971 + _2193 + _2224 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3565
                v = _1296
                continue 
            if bool(stor0[_1289].field_256) == stor0[_1289].field_257 % 128 < 32:
                revert with 0, 34
            _1359 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[_1289].field_257 % 128) + 32
            mem[_1359] = stor0[_1289].field_257 % 128
            if bool(stor0[_1289].field_256):
                if bool(stor0[_1289].field_256) == uint255(stor0[_1289].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_1289].field_256):
                    mem[_1296 + 32] = _1359
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1411 = mem[64]
                    _1431 = mem[u]
                    t = 0
                    while t < _1431:
                        mem[t + _1411 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1431) <= _1431:
                        _2226 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2226:
                            mem[t + _1411 + _1431 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2226 + _1411 + _1431 + 32] = stor0[_1289].field_1024
                        if ceil32(_2226) <= _2226:
                            _2974 = mem[64]
                            mem[mem[64]] = _2226 + _1411 + _1431 + -mem[64] + 32
                            mem[64] = _2226 + _1411 + _1431 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2974
                            v = _1296
                            continue 
                        _3030 = mem[64]
                        mem[mem[64]] = _2226 + _1411 + _1431 + -mem[64] + 32
                        mem[64] = _2226 + _1411 + _1431 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3030
                        v = _1296
                        continue 
                    mem[_1411 + _1431 + 32] = 0
                    _2256 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2256:
                        mem[t + _1411 + _1431 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2256 + _1411 + _1431 + 32] = stor0[_1289].field_1024
                    if ceil32(_2256) <= _2256:
                        _2975 = mem[64]
                        mem[mem[64]] = _2256 + _1411 + _1431 + -mem[64] + 32
                        mem[64] = _2256 + _1411 + _1431 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2975
                        v = _1296
                        continue 
                    _3031 = mem[64]
                    mem[mem[64]] = _2256 + _1411 + _1431 + -mem[64] + 32
                    mem[64] = _2256 + _1411 + _1431 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3031
                    v = _1296
                    continue 
                if 31 >= uint255(stor0[_1289].field_256) * 0.5:
                    mem[_1359 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                    mem[_1296 + 32] = _1359
                    mem[_1296 + 64] = stor0[_1289].field_512
                    mem[_1296 + 96] = stor0[_1289].field_768
                    mem[_1296 + 128] = stor0[_1289].field_1024
                    _1456 = mem[64]
                    _1480 = mem[u]
                    t = 0
                    while t < _1480:
                        mem[t + _1456 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1480) <= _1480:
                        _2228 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _2228:
                            mem[t + _1456 + _1480 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_2228 + _1456 + _1480 + 32] = stor0[_1289].field_1024
                        if ceil32(_2228) <= _2228:
                            _2977 = mem[64]
                            mem[mem[64]] = _2228 + _1456 + _1480 + -mem[64] + 32
                            mem[64] = _2228 + _1456 + _1480 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _2977
                            v = _1296
                            continue 
                        _3032 = mem[64]
                        mem[mem[64]] = _2228 + _1456 + _1480 + -mem[64] + 32
                        mem[64] = _2228 + _1456 + _1480 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3032
                        v = _1296
                        continue 
                    mem[_1456 + _1480 + 32] = 0
                    _2257 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2257:
                        mem[t + _1456 + _1480 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2257 + _1456 + _1480 + 32] = stor0[_1289].field_1024
                    if ceil32(_2257) <= _2257:
                        _2978 = mem[64]
                        mem[mem[64]] = _2257 + _1456 + _1480 + -mem[64] + 32
                        mem[64] = _2257 + _1456 + _1480 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2978
                        v = _1296
                        continue 
                    _3033 = mem[64]
                    mem[mem[64]] = _2257 + _1456 + _1480 + -mem[64] + 32
                    mem[64] = _2257 + _1456 + _1480 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3033
                    v = _1296
                    continue 
                mem[0] = (5 * _1289) + sha3(0) + 1
                mem[_1359 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
                v = _1359 + 32
                t = sha3((5 * _1289) + sha3(0) + 1)
                while _1359 + (uint255(stor0[_1289].field_256) * 0.5) > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_1296 + 32] = _1359
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _2195 = mem[64]
                _2227 = mem[u]
                t = 0
                while t < _2227:
                    mem[t + _2195 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_2227) <= _2227:
                    _2934 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2934:
                        mem[t + _2195 + _2227 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2934 + _2195 + _2227 + 32] = stor0[_1289].field_1024
                    if ceil32(_2934) <= _2934:
                        _3526 = mem[64]
                        mem[mem[64]] = _2934 + _2195 + _2227 + -mem[64] + 32
                        mem[64] = _2934 + _2195 + _2227 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3526
                        v = _1296
                        continue 
                    _3566 = mem[64]
                    mem[mem[64]] = _2934 + _2195 + _2227 + -mem[64] + 32
                    mem[64] = _2934 + _2195 + _2227 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3566
                    v = _1296
                    continue 
                mem[_2195 + _2227 + 32] = 0
                _2976 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2976:
                    mem[t + _2195 + _2227 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2976 + _2195 + _2227 + 32] = stor0[_1289].field_1024
                if ceil32(_2976) <= _2976:
                    _3527 = mem[64]
                    mem[mem[64]] = _2976 + _2195 + _2227 + -mem[64] + 32
                    mem[64] = _2976 + _2195 + _2227 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3527
                    v = _1296
                    continue 
                _3567 = mem[64]
                mem[mem[64]] = _2976 + _2195 + _2227 + -mem[64] + 32
                mem[64] = _2976 + _2195 + _2227 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3567
                v = _1296
                continue 
            if bool(stor0[_1289].field_256) == stor0[_1289].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_1289].field_257 % 128:
                mem[_1296 + 32] = _1359
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _1434 = mem[64]
                _1457 = mem[u]
                t = 0
                while t < _1457:
                    mem[t + _1434 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_1457) <= _1457:
                    _2229 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2229:
                        mem[t + _1434 + _1457 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2229 + _1434 + _1457 + 32] = stor0[_1289].field_1024
                    if ceil32(_2229) <= _2229:
                        _2979 = mem[64]
                        mem[mem[64]] = _2229 + _1434 + _1457 + -mem[64] + 32
                        mem[64] = _2229 + _1434 + _1457 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2979
                        v = _1296
                        continue 
                    _3034 = mem[64]
                    mem[mem[64]] = _2229 + _1434 + _1457 + -mem[64] + 32
                    mem[64] = _2229 + _1434 + _1457 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3034
                    v = _1296
                    continue 
                mem[_1434 + _1457 + 32] = 0
                _2258 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2258:
                    mem[t + _1434 + _1457 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2258 + _1434 + _1457 + 32] = stor0[_1289].field_1024
                if ceil32(_2258) <= _2258:
                    _2980 = mem[64]
                    mem[mem[64]] = _2258 + _1434 + _1457 + -mem[64] + 32
                    mem[64] = _2258 + _1434 + _1457 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _2980
                    v = _1296
                    continue 
                _3035 = mem[64]
                mem[mem[64]] = _2258 + _1434 + _1457 + -mem[64] + 32
                mem[64] = _2258 + _1434 + _1457 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3035
                v = _1296
                continue 
            if 31 >= stor0[_1289].field_257 % 128:
                mem[_1359 + 32] = 256 * Mask(248, 0, stor0[_1289].field_264)
                mem[_1296 + 32] = _1359
                mem[_1296 + 64] = stor0[_1289].field_512
                mem[_1296 + 96] = stor0[_1289].field_768
                mem[_1296 + 128] = stor0[_1289].field_1024
                _1482 = mem[64]
                _1506 = mem[u]
                t = 0
                while t < _1506:
                    mem[t + _1482 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_1506) <= _1506:
                    _2231 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _2231:
                        mem[t + _1482 + _1506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_2231 + _1482 + _1506 + 32] = stor0[_1289].field_1024
                    if ceil32(_2231) <= _2231:
                        _2982 = mem[64]
                        mem[mem[64]] = _2231 + _1482 + _1506 + -mem[64] + 32
                        mem[64] = _2231 + _1482 + _1506 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _2982
                        v = _1296
                        continue 
                    _3036 = mem[64]
                    mem[mem[64]] = _2231 + _1482 + _1506 + -mem[64] + 32
                    mem[64] = _2231 + _1482 + _1506 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3036
                    v = _1296
                    continue 
                mem[_1482 + _1506 + 32] = 0
                _2259 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2259:
                    mem[t + _1482 + _1506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2259 + _1482 + _1506 + 32] = stor0[_1289].field_1024
                if ceil32(_2259) <= _2259:
                    _2983 = mem[64]
                    mem[mem[64]] = _2259 + _1482 + _1506 + -mem[64] + 32
                    mem[64] = _2259 + _1482 + _1506 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _2983
                    v = _1296
                    continue 
                _3037 = mem[64]
                mem[mem[64]] = _2259 + _1482 + _1506 + -mem[64] + 32
                mem[64] = _2259 + _1482 + _1506 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3037
                v = _1296
                continue 
            mem[0] = (5 * _1289) + sha3(0) + 1
            mem[_1359 + 32] = stor[sha3((5 * _1289) + ('name', 'stor0', 0) + 1)].field_0
            t = _1359 + 32
            v = sha3((5 * _1289) + sha3(0) + 1)
            while _1359 + stor0[_1289].field_257 % 128 > t:
                mem[t + 32] = _getNodeNumberOf[v].field_0
                t = t + 32
                v = v + 1
                continue 
            mem[_1296 + 32] = _1359
            mem[_1296 + 64] = stor0[_1289].field_512
            mem[_1296 + 96] = stor0[_1289].field_768
            mem[_1296 + 128] = stor0[_1289].field_1024
            _2197 = mem[64]
            _2230 = mem[u]
            t = 0
            while t < _2230:
                mem[t + _2197 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_2230) <= _2230:
                _2935 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _2935:
                    mem[t + _2197 + _2230 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_2935 + _2197 + _2230 + 32] = stor0[_1289].field_1024
                if ceil32(_2935) <= _2935:
                    _3528 = mem[64]
                    mem[mem[64]] = _2935 + _2197 + _2230 + -mem[64] + 32
                    mem[64] = _2935 + _2197 + _2230 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3528
                    v = _1296
                    continue 
                _3568 = mem[64]
                mem[mem[64]] = _2935 + _2197 + _2230 + -mem[64] + 32
                mem[64] = _2935 + _2197 + _2230 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3568
                v = _1296
                continue 
            mem[_2197 + _2230 + 32] = 0
            _2981 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _2981:
                mem[t + _2197 + _2230 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_2981 + _2197 + _2230 + 32] = stor0[_1289].field_1024
            if ceil32(_2981) <= _2981:
                _3529 = mem[64]
                mem[mem[64]] = _2981 + _2197 + _2230 + -mem[64] + 32
                mem[64] = _2981 + _2197 + _2230 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3529
                v = _1296
                continue 
            _3569 = mem[64]
            mem[mem[64]] = _2981 + _2197 + _2230 + -mem[64] + 32
            mem[64] = _2981 + _2197 + _2230 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3569
            v = _1296
            continue 
        mem[mem[64]] = 32
        _1304 = mem[u]
        mem[mem[64] + 32] = mem[u]
        mem[mem[64] + 64 len ceil32(_1304)] = mem[u + 32 len ceil32(_1304)]
        if ceil32(_1304) > _1304:
            mem[mem[64] + _1304 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_1304) + 32]
    mem[128] = _getNodeNumberOf[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * _getNodeNumberOf[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = _getNodeNumberOf[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 128] = 0
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 160] = 96
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 192] = 0
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 224] = 0
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 256] = 0
    if 0 >= _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 50
    if mem[128] >= stor0.length:
        revert with 0, 50
    mem[0] = 0
    if not stor0[mem[128]].field_1024:
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 416
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 384] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
        t = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _1292 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _1302 = mem[64]
            mem[64] = mem[64] + 160
            mem[_1302] = address(stor0[mem[(32 * idx) + 128]].field_0)
            if bool(stor0[_1292].field_256):
                if bool(stor0[_1292].field_256) == uint255(stor0[_1292].field_256) * 0.5 < 32:
                    revert with 0, 34
                _1357 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor0[_1292].field_256) * 0.5) + 32
                mem[_1357] = uint255(stor0[_1292].field_256) * 0.5
                if bool(stor0[_1292].field_256):
                    if bool(stor0[_1292].field_256) == uint255(stor0[_1292].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_1292].field_256):
                        mem[_1302 + 32] = _1357
                        mem[_1302 + 64] = stor0[_1292].field_512
                        mem[_1302 + 96] = stor0[_1292].field_768
                        mem[_1302 + 128] = stor0[_1292].field_1024
                        _1397 = mem[64]
                        _1413 = mem[s]
                        t = 0
                        while t < _1413:
                            mem[t + _1397 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1413) <= _1413:
                            _2232 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _2232:
                                mem[s + _1397 + _1413 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_2232 + _1397 + _1413 + 32] = stor0[_1292].field_1024
                            if ceil32(_2232) <= _2232:
                                _2986 = mem[64]
                                mem[mem[64]] = _2232 + _1397 + _1413 + -mem[64] + 32
                                mem[64] = _2232 + _1397 + _1413 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _2986
                                t = _1302
                                continue 
                            _3038 = mem[64]
                            mem[mem[64]] = _2232 + _1397 + _1413 + -mem[64] + 32
                            mem[64] = _2232 + _1397 + _1413 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3038
                            t = _1302
                            continue 
                        mem[_1397 + _1413 + 32] = 0
                        _2270 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2270:
                            mem[s + _1397 + _1413 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2270 + _1397 + _1413 + 32] = stor0[_1292].field_1024
                        if ceil32(_2270) <= _2270:
                            _2987 = mem[64]
                            mem[mem[64]] = _2270 + _1397 + _1413 + -mem[64] + 32
                            mem[64] = _2270 + _1397 + _1413 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2987
                            t = _1302
                            continue 
                        _3039 = mem[64]
                        mem[mem[64]] = _2270 + _1397 + _1413 + -mem[64] + 32
                        mem[64] = _2270 + _1397 + _1413 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3039
                        t = _1302
                        continue 
                    if 31 >= uint255(stor0[_1292].field_256) * 0.5:
                        mem[_1357 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                        mem[_1302 + 32] = _1357
                        mem[_1302 + 64] = stor0[_1292].field_512
                        mem[_1302 + 96] = stor0[_1292].field_768
                        mem[_1302 + 128] = stor0[_1292].field_1024
                        _1438 = mem[64]
                        _1462 = mem[s]
                        t = 0
                        while t < _1462:
                            mem[t + _1438 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1462) <= _1462:
                            _2234 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                            s = 0
                            while s < _2234:
                                mem[s + _1438 + _1462 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                                s = s + 32
                                continue 
                            mem[_2234 + _1438 + _1462 + 32] = stor0[_1292].field_1024
                            if ceil32(_2234) <= _2234:
                                _2989 = mem[64]
                                mem[mem[64]] = _2234 + _1438 + _1462 + -mem[64] + 32
                                mem[64] = _2234 + _1438 + _1462 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _2989
                                t = _1302
                                continue 
                            _3040 = mem[64]
                            mem[mem[64]] = _2234 + _1438 + _1462 + -mem[64] + 32
                            mem[64] = _2234 + _1438 + _1462 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3040
                            t = _1302
                            continue 
                        mem[_1438 + _1462 + 32] = 0
                        _2271 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2271:
                            mem[s + _1438 + _1462 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2271 + _1438 + _1462 + 32] = stor0[_1292].field_1024
                        if ceil32(_2271) <= _2271:
                            _2990 = mem[64]
                            mem[mem[64]] = _2271 + _1438 + _1462 + -mem[64] + 32
                            mem[64] = _2271 + _1438 + _1462 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2990
                            t = _1302
                            continue 
                        _3041 = mem[64]
                        mem[mem[64]] = _2271 + _1438 + _1462 + -mem[64] + 32
                        mem[64] = _2271 + _1438 + _1462 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3041
                        t = _1302
                        continue 
                    mem[0] = (5 * _1292) + sha3(0) + 1
                    mem[_1357 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
                    t = _1357 + 32
                    u = sha3((5 * _1292) + sha3(0) + 1)
                    while _1357 + (uint255(stor0[_1292].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1302 + 32] = _1357
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _2201 = mem[64]
                    _2233 = mem[s]
                    t = 0
                    while t < _2233:
                        mem[t + _2201 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2233) <= _2233:
                        _2940 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2940:
                            mem[s + _2201 + _2233 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2940 + _2201 + _2233 + 32] = stor0[_1292].field_1024
                        if ceil32(_2940) <= _2940:
                            _3546 = mem[64]
                            mem[mem[64]] = _2940 + _2201 + _2233 + -mem[64] + 32
                            mem[64] = _2940 + _2201 + _2233 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3546
                            t = _1302
                            continue 
                        _3570 = mem[64]
                        mem[mem[64]] = _2940 + _2201 + _2233 + -mem[64] + 32
                        mem[64] = _2940 + _2201 + _2233 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3570
                        t = _1302
                        continue 
                    mem[_2201 + _2233 + 32] = 0
                    _2988 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2988:
                        mem[s + _2201 + _2233 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2988 + _2201 + _2233 + 32] = stor0[_1292].field_1024
                    if ceil32(_2988) <= _2988:
                        _3547 = mem[64]
                        mem[mem[64]] = _2988 + _2201 + _2233 + -mem[64] + 32
                        mem[64] = _2988 + _2201 + _2233 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3547
                        t = _1302
                        continue 
                    _3571 = mem[64]
                    mem[mem[64]] = _2988 + _2201 + _2233 + -mem[64] + 32
                    mem[64] = _2988 + _2201 + _2233 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3571
                    t = _1302
                    continue 
                if bool(stor0[_1292].field_256) == stor0[_1292].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_1292].field_257 % 128:
                    mem[_1302 + 32] = _1357
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1416 = mem[64]
                    _1439 = mem[s]
                    t = 0
                    while t < _1439:
                        mem[t + _1416 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1439) <= _1439:
                        _2235 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2235:
                            mem[s + _1416 + _1439 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2235 + _1416 + _1439 + 32] = stor0[_1292].field_1024
                        if ceil32(_2235) <= _2235:
                            _2991 = mem[64]
                            mem[mem[64]] = _2235 + _1416 + _1439 + -mem[64] + 32
                            mem[64] = _2235 + _1416 + _1439 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2991
                            t = _1302
                            continue 
                        _3042 = mem[64]
                        mem[mem[64]] = _2235 + _1416 + _1439 + -mem[64] + 32
                        mem[64] = _2235 + _1416 + _1439 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3042
                        t = _1302
                        continue 
                    mem[_1416 + _1439 + 32] = 0
                    _2272 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2272:
                        mem[s + _1416 + _1439 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2272 + _1416 + _1439 + 32] = stor0[_1292].field_1024
                    if ceil32(_2272) <= _2272:
                        _2992 = mem[64]
                        mem[mem[64]] = _2272 + _1416 + _1439 + -mem[64] + 32
                        mem[64] = _2272 + _1416 + _1439 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2992
                        t = _1302
                        continue 
                    _3043 = mem[64]
                    mem[mem[64]] = _2272 + _1416 + _1439 + -mem[64] + 32
                    mem[64] = _2272 + _1416 + _1439 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3043
                    t = _1302
                    continue 
                if 31 >= stor0[_1292].field_257 % 128:
                    mem[_1357 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                    mem[_1302 + 32] = _1357
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1464 = mem[64]
                    _1487 = mem[s]
                    t = 0
                    while t < _1487:
                        mem[t + _1464 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1487) <= _1487:
                        _2237 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2237:
                            mem[s + _1464 + _1487 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2237 + _1464 + _1487 + 32] = stor0[_1292].field_1024
                        if ceil32(_2237) <= _2237:
                            _2994 = mem[64]
                            mem[mem[64]] = _2237 + _1464 + _1487 + -mem[64] + 32
                            mem[64] = _2237 + _1464 + _1487 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2994
                            t = _1302
                            continue 
                        _3044 = mem[64]
                        mem[mem[64]] = _2237 + _1464 + _1487 + -mem[64] + 32
                        mem[64] = _2237 + _1464 + _1487 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3044
                        t = _1302
                        continue 
                    mem[_1464 + _1487 + 32] = 0
                    _2273 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2273:
                        mem[s + _1464 + _1487 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2273 + _1464 + _1487 + 32] = stor0[_1292].field_1024
                    if ceil32(_2273) <= _2273:
                        _2995 = mem[64]
                        mem[mem[64]] = _2273 + _1464 + _1487 + -mem[64] + 32
                        mem[64] = _2273 + _1464 + _1487 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2995
                        t = _1302
                        continue 
                    _3045 = mem[64]
                    mem[mem[64]] = _2273 + _1464 + _1487 + -mem[64] + 32
                    mem[64] = _2273 + _1464 + _1487 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3045
                    t = _1302
                    continue 
                mem[0] = (5 * _1292) + sha3(0) + 1
                mem[_1357 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
                t = _1357 + 32
                u = sha3((5 * _1292) + sha3(0) + 1)
                while _1357 + stor0[_1292].field_257 % 128 > t:
                    mem[t + 32] = _getNodeNumberOf[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1302 + 32] = _1357
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _2203 = mem[64]
                _2236 = mem[s]
                t = 0
                while t < _2236:
                    mem[t + _2203 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2236) <= _2236:
                    _2941 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2941:
                        mem[s + _2203 + _2236 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2941 + _2203 + _2236 + 32] = stor0[_1292].field_1024
                    if ceil32(_2941) <= _2941:
                        _3548 = mem[64]
                        mem[mem[64]] = _2941 + _2203 + _2236 + -mem[64] + 32
                        mem[64] = _2941 + _2203 + _2236 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3548
                        t = _1302
                        continue 
                    _3572 = mem[64]
                    mem[mem[64]] = _2941 + _2203 + _2236 + -mem[64] + 32
                    mem[64] = _2941 + _2203 + _2236 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3572
                    t = _1302
                    continue 
                mem[_2203 + _2236 + 32] = 0
                _2993 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2993:
                    mem[s + _2203 + _2236 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2993 + _2203 + _2236 + 32] = stor0[_1292].field_1024
                if ceil32(_2993) <= _2993:
                    _3549 = mem[64]
                    mem[mem[64]] = _2993 + _2203 + _2236 + -mem[64] + 32
                    mem[64] = _2993 + _2203 + _2236 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3549
                    t = _1302
                    continue 
                _3573 = mem[64]
                mem[mem[64]] = _2993 + _2203 + _2236 + -mem[64] + 32
                mem[64] = _2993 + _2203 + _2236 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3573
                t = _1302
                continue 
            if bool(stor0[_1292].field_256) == stor0[_1292].field_257 % 128 < 32:
                revert with 0, 34
            _1361 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[_1292].field_257 % 128) + 32
            mem[_1361] = stor0[_1292].field_257 % 128
            if bool(stor0[_1292].field_256):
                if bool(stor0[_1292].field_256) == uint255(stor0[_1292].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_1292].field_256):
                    mem[_1302 + 32] = _1361
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1418 = mem[64]
                    _1441 = mem[s]
                    t = 0
                    while t < _1441:
                        mem[t + _1418 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1441) <= _1441:
                        _2238 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2238:
                            mem[s + _1418 + _1441 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2238 + _1418 + _1441 + 32] = stor0[_1292].field_1024
                        if ceil32(_2238) <= _2238:
                            _2996 = mem[64]
                            mem[mem[64]] = _2238 + _1418 + _1441 + -mem[64] + 32
                            mem[64] = _2238 + _1418 + _1441 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2996
                            t = _1302
                            continue 
                        _3046 = mem[64]
                        mem[mem[64]] = _2238 + _1418 + _1441 + -mem[64] + 32
                        mem[64] = _2238 + _1418 + _1441 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3046
                        t = _1302
                        continue 
                    mem[_1418 + _1441 + 32] = 0
                    _2274 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2274:
                        mem[s + _1418 + _1441 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2274 + _1418 + _1441 + 32] = stor0[_1292].field_1024
                    if ceil32(_2274) <= _2274:
                        _2997 = mem[64]
                        mem[mem[64]] = _2274 + _1418 + _1441 + -mem[64] + 32
                        mem[64] = _2274 + _1418 + _1441 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2997
                        t = _1302
                        continue 
                    _3047 = mem[64]
                    mem[mem[64]] = _2274 + _1418 + _1441 + -mem[64] + 32
                    mem[64] = _2274 + _1418 + _1441 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3047
                    t = _1302
                    continue 
                if 31 >= uint255(stor0[_1292].field_256) * 0.5:
                    mem[_1361 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                    mem[_1302 + 32] = _1361
                    mem[_1302 + 64] = stor0[_1292].field_512
                    mem[_1302 + 96] = stor0[_1292].field_768
                    mem[_1302 + 128] = stor0[_1292].field_1024
                    _1466 = mem[64]
                    _1488 = mem[s]
                    t = 0
                    while t < _1488:
                        mem[t + _1466 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1488) <= _1488:
                        _2240 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                        s = 0
                        while s < _2240:
                            mem[s + _1466 + _1488 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                            s = s + 32
                            continue 
                        mem[_2240 + _1466 + _1488 + 32] = stor0[_1292].field_1024
                        if ceil32(_2240) <= _2240:
                            _2999 = mem[64]
                            mem[mem[64]] = _2240 + _1466 + _1488 + -mem[64] + 32
                            mem[64] = _2240 + _1466 + _1488 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2999
                            t = _1302
                            continue 
                        _3048 = mem[64]
                        mem[mem[64]] = _2240 + _1466 + _1488 + -mem[64] + 32
                        mem[64] = _2240 + _1466 + _1488 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3048
                        t = _1302
                        continue 
                    mem[_1466 + _1488 + 32] = 0
                    _2275 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2275:
                        mem[s + _1466 + _1488 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2275 + _1466 + _1488 + 32] = stor0[_1292].field_1024
                    if ceil32(_2275) <= _2275:
                        _3000 = mem[64]
                        mem[mem[64]] = _2275 + _1466 + _1488 + -mem[64] + 32
                        mem[64] = _2275 + _1466 + _1488 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3000
                        t = _1302
                        continue 
                    _3049 = mem[64]
                    mem[mem[64]] = _2275 + _1466 + _1488 + -mem[64] + 32
                    mem[64] = _2275 + _1466 + _1488 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3049
                    t = _1302
                    continue 
                mem[0] = (5 * _1292) + sha3(0) + 1
                mem[_1361 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
                t = _1361 + 32
                u = sha3((5 * _1292) + sha3(0) + 1)
                while _1361 + (uint255(stor0[_1292].field_256) * 0.5) > t:
                    mem[t + 32] = _getNodeNumberOf[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1302 + 32] = _1361
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _2205 = mem[64]
                _2239 = mem[s]
                t = 0
                while t < _2239:
                    mem[t + _2205 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2239) <= _2239:
                    _2942 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2942:
                        mem[s + _2205 + _2239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2942 + _2205 + _2239 + 32] = stor0[_1292].field_1024
                    if ceil32(_2942) <= _2942:
                        _3550 = mem[64]
                        mem[mem[64]] = _2942 + _2205 + _2239 + -mem[64] + 32
                        mem[64] = _2942 + _2205 + _2239 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3550
                        t = _1302
                        continue 
                    _3574 = mem[64]
                    mem[mem[64]] = _2942 + _2205 + _2239 + -mem[64] + 32
                    mem[64] = _2942 + _2205 + _2239 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3574
                    t = _1302
                    continue 
                mem[_2205 + _2239 + 32] = 0
                _2998 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2998:
                    mem[s + _2205 + _2239 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2998 + _2205 + _2239 + 32] = stor0[_1292].field_1024
                if ceil32(_2998) <= _2998:
                    _3551 = mem[64]
                    mem[mem[64]] = _2998 + _2205 + _2239 + -mem[64] + 32
                    mem[64] = _2998 + _2205 + _2239 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3551
                    t = _1302
                    continue 
                _3575 = mem[64]
                mem[mem[64]] = _2998 + _2205 + _2239 + -mem[64] + 32
                mem[64] = _2998 + _2205 + _2239 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3575
                t = _1302
                continue 
            if bool(stor0[_1292].field_256) == stor0[_1292].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_1292].field_257 % 128:
                mem[_1302 + 32] = _1361
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _1444 = mem[64]
                _1467 = mem[s]
                t = 0
                while t < _1467:
                    mem[t + _1444 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_1467) <= _1467:
                    _2241 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2241:
                        mem[s + _1444 + _1467 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2241 + _1444 + _1467 + 32] = stor0[_1292].field_1024
                    if ceil32(_2241) <= _2241:
                        _3001 = mem[64]
                        mem[mem[64]] = _2241 + _1444 + _1467 + -mem[64] + 32
                        mem[64] = _2241 + _1444 + _1467 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3001
                        t = _1302
                        continue 
                    _3050 = mem[64]
                    mem[mem[64]] = _2241 + _1444 + _1467 + -mem[64] + 32
                    mem[64] = _2241 + _1444 + _1467 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3050
                    t = _1302
                    continue 
                mem[_1444 + _1467 + 32] = 0
                _2276 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2276:
                    mem[s + _1444 + _1467 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2276 + _1444 + _1467 + 32] = stor0[_1292].field_1024
                if ceil32(_2276) <= _2276:
                    _3002 = mem[64]
                    mem[mem[64]] = _2276 + _1444 + _1467 + -mem[64] + 32
                    mem[64] = _2276 + _1444 + _1467 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3002
                    t = _1302
                    continue 
                _3051 = mem[64]
                mem[mem[64]] = _2276 + _1444 + _1467 + -mem[64] + 32
                mem[64] = _2276 + _1444 + _1467 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3051
                t = _1302
                continue 
            if 31 >= stor0[_1292].field_257 % 128:
                mem[_1361 + 32] = 256 * Mask(248, 0, stor0[_1292].field_264)
                mem[_1302 + 32] = _1361
                mem[_1302 + 64] = stor0[_1292].field_512
                mem[_1302 + 96] = stor0[_1292].field_768
                mem[_1302 + 128] = stor0[_1292].field_1024
                _1490 = mem[64]
                _1514 = mem[s]
                t = 0
                while t < _1514:
                    mem[t + _1490 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_1514) <= _1514:
                    _2243 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                    s = 0
                    while s < _2243:
                        mem[s + _1490 + _1514 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                        s = s + 32
                        continue 
                    mem[_2243 + _1490 + _1514 + 32] = stor0[_1292].field_1024
                    if ceil32(_2243) <= _2243:
                        _3004 = mem[64]
                        mem[mem[64]] = _2243 + _1490 + _1514 + -mem[64] + 32
                        mem[64] = _2243 + _1490 + _1514 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3004
                        t = _1302
                        continue 
                    _3052 = mem[64]
                    mem[mem[64]] = _2243 + _1490 + _1514 + -mem[64] + 32
                    mem[64] = _2243 + _1490 + _1514 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3052
                    t = _1302
                    continue 
                mem[_1490 + _1514 + 32] = 0
                _2277 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2277:
                    mem[s + _1490 + _1514 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2277 + _1490 + _1514 + 32] = stor0[_1292].field_1024
                if ceil32(_2277) <= _2277:
                    _3005 = mem[64]
                    mem[mem[64]] = _2277 + _1490 + _1514 + -mem[64] + 32
                    mem[64] = _2277 + _1490 + _1514 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3005
                    t = _1302
                    continue 
                _3053 = mem[64]
                mem[mem[64]] = _2277 + _1490 + _1514 + -mem[64] + 32
                mem[64] = _2277 + _1490 + _1514 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3053
                t = _1302
                continue 
            mem[0] = (5 * _1292) + sha3(0) + 1
            mem[_1361 + 32] = stor[sha3((5 * _1292) + ('name', 'stor0', 0) + 1)].field_0
            t = _1361 + 32
            u = sha3((5 * _1292) + sha3(0) + 1)
            while _1361 + stor0[_1292].field_257 % 128 > t:
                mem[t + 32] = _getNodeNumberOf[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_1302 + 32] = _1361
            mem[_1302 + 64] = stor0[_1292].field_512
            mem[_1302 + 96] = stor0[_1292].field_768
            mem[_1302 + 128] = stor0[_1292].field_1024
            _2207 = mem[64]
            _2242 = mem[s]
            t = 0
            while t < _2242:
                mem[t + _2207 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_2242) <= _2242:
                _2943 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
                s = 0
                while s < _2943:
                    mem[s + _2207 + _2242 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                    s = s + 32
                    continue 
                mem[_2943 + _2207 + _2242 + 32] = stor0[_1292].field_1024
                if ceil32(_2943) <= _2943:
                    _3552 = mem[64]
                    mem[mem[64]] = _2943 + _2207 + _2242 + -mem[64] + 32
                    mem[64] = _2943 + _2207 + _2242 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3552
                    t = _1302
                    continue 
                _3576 = mem[64]
                mem[mem[64]] = _2943 + _2207 + _2242 + -mem[64] + 32
                mem[64] = _2943 + _2207 + _2242 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3576
                t = _1302
                continue 
            mem[_2207 + _2242 + 32] = 0
            _3003 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 352]
            s = 0
            while s < _3003:
                mem[s + _2207 + _2242 + 32] = mem[s + (32 * _getNodeNumberOf[address(arg1)].field_0) + 384]
                s = s + 32
                continue 
            mem[_3003 + _2207 + _2242 + 32] = stor0[_1292].field_1024
            if ceil32(_3003) <= _3003:
                _3553 = mem[64]
                mem[mem[64]] = _3003 + _2207 + _2242 + -mem[64] + 32
                mem[64] = _3003 + _2207 + _2242 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3553
                t = _1302
                continue 
            _3577 = mem[64]
            mem[mem[64]] = _3003 + _2207 + _2242 + -mem[64] + 32
            mem[64] = _3003 + _2207 + _2242 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _3577
            t = _1302
            continue 
        _1291 = mem[64]
        mem[mem[64]] = 32
        _1325 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_1325)] = mem[s + 32 len ceil32(_1325)]
        if ceil32(_1325) <= _1325:
            return 32, mem[mem[64] + 32 len ceil32(_1325) + 32]
        mem[mem[64] + _1325 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_1325) + _1291 + -mem[64] + 64
    s = 0
    idx = stor0[mem[128]].field_1024
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288] = s
    if not s:
        t = s
        idx = stor0[mem[128]].field_1024
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
                revert with 0, 50
            mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
        mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
        v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            _2925 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _2937 = mem[64]
            mem[64] = mem[64] + 160
            mem[_2937] = address(stor0[mem[(32 * idx) + 128]].field_0)
            if bool(stor0[_2925].field_256):
                if bool(stor0[_2925].field_256) == uint255(stor0[_2925].field_256) * 0.5 < 32:
                    revert with 0, 34
                _3075 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor0[_2925].field_256) * 0.5) + 32
                mem[_3075] = uint255(stor0[_2925].field_256) * 0.5
                if bool(stor0[_2925].field_256):
                    if bool(stor0[_2925].field_256) == uint255(stor0[_2925].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor0[_2925].field_256):
                        mem[_2937 + 32] = _3075
                        mem[_2937 + 64] = stor0[_2925].field_512
                        mem[_2937 + 96] = stor0[_2925].field_768
                        mem[_2937 + 128] = stor0[_2925].field_1024
                        _3134 = mem[64]
                        _3139 = mem[u]
                        t = 0
                        while t < _3139:
                            mem[t + _3134 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_3139) <= _3139:
                            _3490 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _3490:
                                mem[t + _3134 + _3139 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_3490 + _3134 + _3139 + 32] = stor0[_2925].field_1024
                            if ceil32(_3490) <= _3490:
                                _3798 = mem[64]
                                mem[mem[64]] = _3490 + _3134 + _3139 + -mem[64] + 32
                                mem[64] = _3490 + _3134 + _3139 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3798
                                v = _2937
                                continue 
                            _3838 = mem[64]
                            mem[mem[64]] = _3490 + _3134 + _3139 + -mem[64] + 32
                            mem[64] = _3490 + _3134 + _3139 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3838
                            v = _2937
                            continue 
                        mem[_3134 + _3139 + 32] = 0
                        _3530 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3530:
                            mem[t + _3134 + _3139 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3530 + _3134 + _3139 + 32] = stor0[_2925].field_1024
                        if ceil32(_3530) <= _3530:
                            _3799 = mem[64]
                            mem[mem[64]] = _3530 + _3134 + _3139 + -mem[64] + 32
                            mem[64] = _3530 + _3134 + _3139 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3799
                            v = _2937
                            continue 
                        _3839 = mem[64]
                        mem[mem[64]] = _3530 + _3134 + _3139 + -mem[64] + 32
                        mem[64] = _3530 + _3134 + _3139 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3839
                        v = _2937
                        continue 
                    if 31 >= uint255(stor0[_2925].field_256) * 0.5:
                        mem[_3075 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                        mem[_2937 + 32] = _3075
                        mem[_2937 + 64] = stor0[_2925].field_512
                        mem[_2937 + 96] = stor0[_2925].field_768
                        mem[_2937 + 128] = stor0[_2925].field_1024
                        _3153 = mem[64]
                        _3168 = mem[u]
                        t = 0
                        while t < _3168:
                            mem[t + _3153 + 32] = mem[t + u + 32]
                            t = t + 32
                            continue 
                        if ceil32(_3168) <= _3168:
                            _3492 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                            t = 0
                            while t < _3492:
                                mem[t + _3153 + _3168 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                                t = t + 32
                                continue 
                            mem[_3492 + _3153 + _3168 + 32] = stor0[_2925].field_1024
                            if ceil32(_3492) <= _3492:
                                _3801 = mem[64]
                                mem[mem[64]] = _3492 + _3153 + _3168 + -mem[64] + 32
                                mem[64] = _3492 + _3153 + _3168 + 64
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                u = _3801
                                v = _2937
                                continue 
                            _3840 = mem[64]
                            mem[mem[64]] = _3492 + _3153 + _3168 + -mem[64] + 32
                            mem[64] = _3492 + _3153 + _3168 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3840
                            v = _2937
                            continue 
                        mem[_3153 + _3168 + 32] = 0
                        _3531 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3531:
                            mem[t + _3153 + _3168 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3531 + _3153 + _3168 + 32] = stor0[_2925].field_1024
                        if ceil32(_3531) <= _3531:
                            _3802 = mem[64]
                            mem[mem[64]] = _3531 + _3153 + _3168 + -mem[64] + 32
                            mem[64] = _3531 + _3153 + _3168 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3802
                            v = _2937
                            continue 
                        _3841 = mem[64]
                        mem[mem[64]] = _3531 + _3153 + _3168 + -mem[64] + 32
                        mem[64] = _3531 + _3153 + _3168 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3841
                        v = _2937
                        continue 
                    mem[0] = (5 * _2925) + sha3(0) + 1
                    mem[_3075 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
                    t = _3075 + 32
                    v = sha3((5 * _2925) + sha3(0) + 1)
                    while _3075 + (uint255(stor0[_2925].field_256) * 0.5) > t:
                        mem[t + 32] = _getNodeNumberOf[v].field_0
                        t = t + 32
                        v = v + 1
                        continue 
                    mem[_2937 + 32] = _3075
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3475 = mem[64]
                    _3491 = mem[u]
                    t = 0
                    while t < _3491:
                        mem[t + _3475 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3491) <= _3491:
                        _3790 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3790:
                            mem[t + _3475 + _3491 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3790 + _3475 + _3491 + 32] = stor0[_2925].field_1024
                        if ceil32(_3790) <= _3790:
                            _3934 = mem[64]
                            mem[mem[64]] = _3790 + _3475 + _3491 + -mem[64] + 32
                            mem[64] = _3790 + _3475 + _3491 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3934
                            v = _2937
                            continue 
                        _3950 = mem[64]
                        mem[mem[64]] = _3790 + _3475 + _3491 + -mem[64] + 32
                        mem[64] = _3790 + _3475 + _3491 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3950
                        v = _2937
                        continue 
                    mem[_3475 + _3491 + 32] = 0
                    _3800 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3800:
                        mem[t + _3475 + _3491 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3800 + _3475 + _3491 + 32] = stor0[_2925].field_1024
                    if ceil32(_3800) <= _3800:
                        _3935 = mem[64]
                        mem[mem[64]] = _3800 + _3475 + _3491 + -mem[64] + 32
                        mem[64] = _3800 + _3475 + _3491 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3935
                        v = _2937
                        continue 
                    _3951 = mem[64]
                    mem[mem[64]] = _3800 + _3475 + _3491 + -mem[64] + 32
                    mem[64] = _3800 + _3475 + _3491 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3951
                    v = _2937
                    continue 
                if bool(stor0[_2925].field_256) == stor0[_2925].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor0[_2925].field_257 % 128:
                    mem[_2937 + 32] = _3075
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3142 = mem[64]
                    _3154 = mem[u]
                    t = 0
                    while t < _3154:
                        mem[t + _3142 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3154) <= _3154:
                        _3493 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3493:
                            mem[t + _3142 + _3154 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3493 + _3142 + _3154 + 32] = stor0[_2925].field_1024
                        if ceil32(_3493) <= _3493:
                            _3803 = mem[64]
                            mem[mem[64]] = _3493 + _3142 + _3154 + -mem[64] + 32
                            mem[64] = _3493 + _3142 + _3154 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3803
                            v = _2937
                            continue 
                        _3842 = mem[64]
                        mem[mem[64]] = _3493 + _3142 + _3154 + -mem[64] + 32
                        mem[64] = _3493 + _3142 + _3154 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3842
                        v = _2937
                        continue 
                    mem[_3142 + _3154 + 32] = 0
                    _3532 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3532:
                        mem[t + _3142 + _3154 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3532 + _3142 + _3154 + 32] = stor0[_2925].field_1024
                    if ceil32(_3532) <= _3532:
                        _3804 = mem[64]
                        mem[mem[64]] = _3532 + _3142 + _3154 + -mem[64] + 32
                        mem[64] = _3532 + _3142 + _3154 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3804
                        v = _2937
                        continue 
                    _3843 = mem[64]
                    mem[mem[64]] = _3532 + _3142 + _3154 + -mem[64] + 32
                    mem[64] = _3532 + _3142 + _3154 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3843
                    v = _2937
                    continue 
                if 31 >= stor0[_2925].field_257 % 128:
                    mem[_3075 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                    mem[_2937 + 32] = _3075
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3170 = mem[64]
                    _3185 = mem[u]
                    t = 0
                    while t < _3185:
                        mem[t + _3170 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3185) <= _3185:
                        _3495 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3495:
                            mem[t + _3170 + _3185 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3495 + _3170 + _3185 + 32] = stor0[_2925].field_1024
                        if ceil32(_3495) <= _3495:
                            _3806 = mem[64]
                            mem[mem[64]] = _3495 + _3170 + _3185 + -mem[64] + 32
                            mem[64] = _3495 + _3170 + _3185 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3806
                            v = _2937
                            continue 
                        _3844 = mem[64]
                        mem[mem[64]] = _3495 + _3170 + _3185 + -mem[64] + 32
                        mem[64] = _3495 + _3170 + _3185 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3844
                        v = _2937
                        continue 
                    mem[_3170 + _3185 + 32] = 0
                    _3533 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3533:
                        mem[t + _3170 + _3185 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3533 + _3170 + _3185 + 32] = stor0[_2925].field_1024
                    if ceil32(_3533) <= _3533:
                        _3807 = mem[64]
                        mem[mem[64]] = _3533 + _3170 + _3185 + -mem[64] + 32
                        mem[64] = _3533 + _3170 + _3185 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3807
                        v = _2937
                        continue 
                    _3845 = mem[64]
                    mem[mem[64]] = _3533 + _3170 + _3185 + -mem[64] + 32
                    mem[64] = _3533 + _3170 + _3185 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3845
                    v = _2937
                    continue 
                mem[0] = (5 * _2925) + sha3(0) + 1
                mem[_3075 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
                v = _3075 + 32
                t = sha3((5 * _2925) + sha3(0) + 1)
                while _3075 + stor0[_2925].field_257 % 128 > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_2937 + 32] = _3075
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3477 = mem[64]
                _3494 = mem[u]
                t = 0
                while t < _3494:
                    mem[t + _3477 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3494) <= _3494:
                    _3791 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3791:
                        mem[t + _3477 + _3494 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3791 + _3477 + _3494 + 32] = stor0[_2925].field_1024
                    if ceil32(_3791) <= _3791:
                        _3936 = mem[64]
                        mem[mem[64]] = _3791 + _3477 + _3494 + -mem[64] + 32
                        mem[64] = _3791 + _3477 + _3494 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3936
                        v = _2937
                        continue 
                    _3952 = mem[64]
                    mem[mem[64]] = _3791 + _3477 + _3494 + -mem[64] + 32
                    mem[64] = _3791 + _3477 + _3494 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3952
                    v = _2937
                    continue 
                mem[_3477 + _3494 + 32] = 0
                _3805 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3805:
                    mem[t + _3477 + _3494 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3805 + _3477 + _3494 + 32] = stor0[_2925].field_1024
                if ceil32(_3805) <= _3805:
                    _3937 = mem[64]
                    mem[mem[64]] = _3805 + _3477 + _3494 + -mem[64] + 32
                    mem[64] = _3805 + _3477 + _3494 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3937
                    v = _2937
                    continue 
                _3953 = mem[64]
                mem[mem[64]] = _3805 + _3477 + _3494 + -mem[64] + 32
                mem[64] = _3805 + _3477 + _3494 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3953
                v = _2937
                continue 
            if bool(stor0[_2925].field_256) == stor0[_2925].field_257 % 128 < 32:
                revert with 0, 34
            _3082 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[_2925].field_257 % 128) + 32
            mem[_3082] = stor0[_2925].field_257 % 128
            if bool(stor0[_2925].field_256):
                if bool(stor0[_2925].field_256) == uint255(stor0[_2925].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_2925].field_256):
                    mem[_2937 + 32] = _3082
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3144 = mem[64]
                    _3156 = mem[u]
                    t = 0
                    while t < _3156:
                        mem[t + _3144 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3156) <= _3156:
                        _3496 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3496:
                            mem[t + _3144 + _3156 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3496 + _3144 + _3156 + 32] = stor0[_2925].field_1024
                        if ceil32(_3496) <= _3496:
                            _3808 = mem[64]
                            mem[mem[64]] = _3496 + _3144 + _3156 + -mem[64] + 32
                            mem[64] = _3496 + _3144 + _3156 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3808
                            v = _2937
                            continue 
                        _3846 = mem[64]
                        mem[mem[64]] = _3496 + _3144 + _3156 + -mem[64] + 32
                        mem[64] = _3496 + _3144 + _3156 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3846
                        v = _2937
                        continue 
                    mem[_3144 + _3156 + 32] = 0
                    _3534 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3534:
                        mem[t + _3144 + _3156 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3534 + _3144 + _3156 + 32] = stor0[_2925].field_1024
                    if ceil32(_3534) <= _3534:
                        _3809 = mem[64]
                        mem[mem[64]] = _3534 + _3144 + _3156 + -mem[64] + 32
                        mem[64] = _3534 + _3144 + _3156 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3809
                        v = _2937
                        continue 
                    _3847 = mem[64]
                    mem[mem[64]] = _3534 + _3144 + _3156 + -mem[64] + 32
                    mem[64] = _3534 + _3144 + _3156 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3847
                    v = _2937
                    continue 
                if 31 >= uint255(stor0[_2925].field_256) * 0.5:
                    mem[_3082 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                    mem[_2937 + 32] = _3082
                    mem[_2937 + 64] = stor0[_2925].field_512
                    mem[_2937 + 96] = stor0[_2925].field_768
                    mem[_2937 + 128] = stor0[_2925].field_1024
                    _3172 = mem[64]
                    _3186 = mem[u]
                    t = 0
                    while t < _3186:
                        mem[t + _3172 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3186) <= _3186:
                        _3498 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3498:
                            mem[t + _3172 + _3186 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3498 + _3172 + _3186 + 32] = stor0[_2925].field_1024
                        if ceil32(_3498) <= _3498:
                            _3811 = mem[64]
                            mem[mem[64]] = _3498 + _3172 + _3186 + -mem[64] + 32
                            mem[64] = _3498 + _3172 + _3186 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3811
                            v = _2937
                            continue 
                        _3848 = mem[64]
                        mem[mem[64]] = _3498 + _3172 + _3186 + -mem[64] + 32
                        mem[64] = _3498 + _3172 + _3186 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3848
                        v = _2937
                        continue 
                    mem[_3172 + _3186 + 32] = 0
                    _3535 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3535:
                        mem[t + _3172 + _3186 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3535 + _3172 + _3186 + 32] = stor0[_2925].field_1024
                    if ceil32(_3535) <= _3535:
                        _3812 = mem[64]
                        mem[mem[64]] = _3535 + _3172 + _3186 + -mem[64] + 32
                        mem[64] = _3535 + _3172 + _3186 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3812
                        v = _2937
                        continue 
                    _3849 = mem[64]
                    mem[mem[64]] = _3535 + _3172 + _3186 + -mem[64] + 32
                    mem[64] = _3535 + _3172 + _3186 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3849
                    v = _2937
                    continue 
                mem[0] = (5 * _2925) + sha3(0) + 1
                mem[_3082 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
                v = _3082 + 32
                t = sha3((5 * _2925) + sha3(0) + 1)
                while _3082 + (uint255(stor0[_2925].field_256) * 0.5) > v:
                    mem[v + 32] = _getNodeNumberOf[t].field_0
                    v = v + 32
                    t = t + 1
                    continue 
                mem[_2937 + 32] = _3082
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3479 = mem[64]
                _3497 = mem[u]
                t = 0
                while t < _3497:
                    mem[t + _3479 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3497) <= _3497:
                    _3792 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3792:
                        mem[t + _3479 + _3497 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3792 + _3479 + _3497 + 32] = stor0[_2925].field_1024
                    if ceil32(_3792) <= _3792:
                        _3938 = mem[64]
                        mem[mem[64]] = _3792 + _3479 + _3497 + -mem[64] + 32
                        mem[64] = _3792 + _3479 + _3497 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3938
                        v = _2937
                        continue 
                    _3954 = mem[64]
                    mem[mem[64]] = _3792 + _3479 + _3497 + -mem[64] + 32
                    mem[64] = _3792 + _3479 + _3497 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3954
                    v = _2937
                    continue 
                mem[_3479 + _3497 + 32] = 0
                _3810 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3810:
                    mem[t + _3479 + _3497 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3810 + _3479 + _3497 + 32] = stor0[_2925].field_1024
                if ceil32(_3810) <= _3810:
                    _3939 = mem[64]
                    mem[mem[64]] = _3810 + _3479 + _3497 + -mem[64] + 32
                    mem[64] = _3810 + _3479 + _3497 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3939
                    v = _2937
                    continue 
                _3955 = mem[64]
                mem[mem[64]] = _3810 + _3479 + _3497 + -mem[64] + 32
                mem[64] = _3810 + _3479 + _3497 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3955
                v = _2937
                continue 
            if bool(stor0[_2925].field_256) == stor0[_2925].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_2925].field_257 % 128:
                mem[_2937 + 32] = _3082
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3159 = mem[64]
                _3173 = mem[u]
                t = 0
                while t < _3173:
                    mem[t + _3159 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3173) <= _3173:
                    _3499 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3499:
                        mem[t + _3159 + _3173 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3499 + _3159 + _3173 + 32] = stor0[_2925].field_1024
                    if ceil32(_3499) <= _3499:
                        _3813 = mem[64]
                        mem[mem[64]] = _3499 + _3159 + _3173 + -mem[64] + 32
                        mem[64] = _3499 + _3159 + _3173 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3813
                        v = _2937
                        continue 
                    _3850 = mem[64]
                    mem[mem[64]] = _3499 + _3159 + _3173 + -mem[64] + 32
                    mem[64] = _3499 + _3159 + _3173 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3850
                    v = _2937
                    continue 
                mem[_3159 + _3173 + 32] = 0
                _3536 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3536:
                    mem[t + _3159 + _3173 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3536 + _3159 + _3173 + 32] = stor0[_2925].field_1024
                if ceil32(_3536) <= _3536:
                    _3814 = mem[64]
                    mem[mem[64]] = _3536 + _3159 + _3173 + -mem[64] + 32
                    mem[64] = _3536 + _3159 + _3173 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3814
                    v = _2937
                    continue 
                _3851 = mem[64]
                mem[mem[64]] = _3536 + _3159 + _3173 + -mem[64] + 32
                mem[64] = _3536 + _3159 + _3173 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3851
                v = _2937
                continue 
            if 31 >= stor0[_2925].field_257 % 128:
                mem[_3082 + 32] = 256 * Mask(248, 0, stor0[_2925].field_264)
                mem[_2937 + 32] = _3082
                mem[_2937 + 64] = stor0[_2925].field_512
                mem[_2937 + 96] = stor0[_2925].field_768
                mem[_2937 + 128] = stor0[_2925].field_1024
                _3188 = mem[64]
                _3203 = mem[u]
                t = 0
                while t < _3203:
                    mem[t + _3188 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3203) <= _3203:
                    _3501 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3501:
                        mem[t + _3188 + _3203 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3501 + _3188 + _3203 + 32] = stor0[_2925].field_1024
                    if ceil32(_3501) <= _3501:
                        _3816 = mem[64]
                        mem[mem[64]] = _3501 + _3188 + _3203 + -mem[64] + 32
                        mem[64] = _3501 + _3188 + _3203 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3816
                        v = _2937
                        continue 
                    _3852 = mem[64]
                    mem[mem[64]] = _3501 + _3188 + _3203 + -mem[64] + 32
                    mem[64] = _3501 + _3188 + _3203 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3852
                    v = _2937
                    continue 
                mem[_3188 + _3203 + 32] = 0
                _3537 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3537:
                    mem[t + _3188 + _3203 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3537 + _3188 + _3203 + 32] = stor0[_2925].field_1024
                if ceil32(_3537) <= _3537:
                    _3817 = mem[64]
                    mem[mem[64]] = _3537 + _3188 + _3203 + -mem[64] + 32
                    mem[64] = _3537 + _3188 + _3203 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3817
                    v = _2937
                    continue 
                _3853 = mem[64]
                mem[mem[64]] = _3537 + _3188 + _3203 + -mem[64] + 32
                mem[64] = _3537 + _3188 + _3203 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3853
                v = _2937
                continue 
            mem[0] = (5 * _2925) + sha3(0) + 1
            mem[_3082 + 32] = stor[sha3((5 * _2925) + ('name', 'stor0', 0) + 1)].field_0
            t = _3082 + 32
            v = sha3((5 * _2925) + sha3(0) + 1)
            while _3082 + stor0[_2925].field_257 % 128 > t:
                mem[t + 32] = _getNodeNumberOf[v].field_0
                t = t + 32
                v = v + 1
                continue 
            mem[_2937 + 32] = _3082
            mem[_2937 + 64] = stor0[_2925].field_512
            mem[_2937 + 96] = stor0[_2925].field_768
            mem[_2937 + 128] = stor0[_2925].field_1024
            _3481 = mem[64]
            _3500 = mem[u]
            t = 0
            while t < _3500:
                mem[t + _3481 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3500) <= _3500:
                _3793 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3793:
                    mem[t + _3481 + _3500 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3793 + _3481 + _3500 + 32] = stor0[_2925].field_1024
                if ceil32(_3793) <= _3793:
                    _3940 = mem[64]
                    mem[mem[64]] = _3793 + _3481 + _3500 + -mem[64] + 32
                    mem[64] = _3793 + _3481 + _3500 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3940
                    v = _2937
                    continue 
                _3956 = mem[64]
                mem[mem[64]] = _3793 + _3481 + _3500 + -mem[64] + 32
                mem[64] = _3793 + _3481 + _3500 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3956
                v = _2937
                continue 
            mem[_3481 + _3500 + 32] = 0
            _3815 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3815:
                mem[t + _3481 + _3500 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3815 + _3481 + _3500 + 32] = stor0[_2925].field_1024
            if ceil32(_3815) <= _3815:
                _3941 = mem[64]
                mem[mem[64]] = _3815 + _3481 + _3500 + -mem[64] + 32
                mem[64] = _3815 + _3481 + _3500 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3941
                v = _2937
                continue 
            _3957 = mem[64]
            mem[mem[64]] = _3815 + _3481 + _3500 + -mem[64] + 32
            mem[64] = _3815 + _3481 + _3500 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3957
            v = _2937
            continue 
        mem[mem[64]] = 32
        _2984 = mem[u]
        mem[mem[64] + 32] = mem[u]
        mem[mem[64] + 64 len ceil32(_2984)] = mem[u + 32 len ceil32(_2984)]
        var39001 = ceil32(_2984)
        if ceil32(_2984) > _2984:
            mem[mem[64] + _2984 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_2984) + 32]
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 320 len s] = call.data[calldata.size len s]
    t = s
    idx = stor0[mem[128]].field_1024
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + 288]:
            revert with 0, 50
        mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 384
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320] = 1
    mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    u = (32 * _getNodeNumberOf[address(arg1)].field_0) + 288
    v = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        if idx >= mem[96]:
            revert with 0, 50
        _2927 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= stor0.length:
            revert with 0, 50
        mem[0] = 0
        _2939 = mem[64]
        mem[64] = mem[64] + 160
        mem[_2939] = address(stor0[mem[(32 * idx) + 128]].field_0)
        if bool(stor0[_2927].field_256):
            if bool(stor0[_2927].field_256) == uint255(stor0[_2927].field_256) * 0.5 < 32:
                revert with 0, 34
            _3077 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor0[_2927].field_256) * 0.5) + 32
            mem[_3077] = uint255(stor0[_2927].field_256) * 0.5
            if bool(stor0[_2927].field_256):
                if bool(stor0[_2927].field_256) == uint255(stor0[_2927].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor0[_2927].field_256):
                    mem[_2939 + 32] = _3077
                    mem[_2939 + 64] = stor0[_2927].field_512
                    mem[_2939 + 96] = stor0[_2927].field_768
                    mem[_2939 + 128] = stor0[_2927].field_1024
                    _3137 = mem[64]
                    _3146 = mem[u]
                    t = 0
                    while t < _3146:
                        mem[t + _3137 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3146) <= _3146:
                        _3502 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3502:
                            mem[t + _3137 + _3146 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3502 + _3137 + _3146 + 32] = stor0[_2927].field_1024
                        if ceil32(_3502) <= _3502:
                            _3818 = mem[64]
                            mem[mem[64]] = _3502 + _3137 + _3146 + -mem[64] + 32
                            mem[64] = _3502 + _3137 + _3146 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3818
                            v = _2939
                            continue 
                        _3854 = mem[64]
                        mem[mem[64]] = _3502 + _3137 + _3146 + -mem[64] + 32
                        mem[64] = _3502 + _3137 + _3146 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3854
                        v = _2939
                        continue 
                    mem[_3137 + _3146 + 32] = 0
                    _3538 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3538:
                        mem[t + _3137 + _3146 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3538 + _3137 + _3146 + 32] = stor0[_2927].field_1024
                    if ceil32(_3538) <= _3538:
                        _3819 = mem[64]
                        mem[mem[64]] = _3538 + _3137 + _3146 + -mem[64] + 32
                        mem[64] = _3538 + _3137 + _3146 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3819
                        v = _2939
                        continue 
                    _3855 = mem[64]
                    mem[mem[64]] = _3538 + _3137 + _3146 + -mem[64] + 32
                    mem[64] = _3538 + _3137 + _3146 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3855
                    v = _2939
                    continue 
                if 31 >= uint255(stor0[_2927].field_256) * 0.5:
                    mem[_3077 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
                    mem[_2939 + 32] = _3077
                    mem[_2939 + 64] = stor0[_2927].field_512
                    mem[_2939 + 96] = stor0[_2927].field_768
                    mem[_2939 + 128] = stor0[_2927].field_1024
                    _3161 = mem[64]
                    _3175 = mem[u]
                    t = 0
                    while t < _3175:
                        mem[t + _3161 + 32] = mem[t + u + 32]
                        t = t + 32
                        continue 
                    if ceil32(_3175) <= _3175:
                        _3504 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                        t = 0
                        while t < _3504:
                            mem[t + _3161 + _3175 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                            t = t + 32
                            continue 
                        mem[_3504 + _3161 + _3175 + 32] = stor0[_2927].field_1024
                        if ceil32(_3504) <= _3504:
                            _3821 = mem[64]
                            mem[mem[64]] = _3504 + _3161 + _3175 + -mem[64] + 32
                            mem[64] = _3504 + _3161 + _3175 + 64
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            u = _3821
                            v = _2939
                            continue 
                        _3856 = mem[64]
                        mem[mem[64]] = _3504 + _3161 + _3175 + -mem[64] + 32
                        mem[64] = _3504 + _3161 + _3175 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3856
                        v = _2939
                        continue 
                    mem[_3161 + _3175 + 32] = 0
                    _3539 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3539:
                        mem[t + _3161 + _3175 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3539 + _3161 + _3175 + 32] = stor0[_2927].field_1024
                    if ceil32(_3539) <= _3539:
                        _3822 = mem[64]
                        mem[mem[64]] = _3539 + _3161 + _3175 + -mem[64] + 32
                        mem[64] = _3539 + _3161 + _3175 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3822
                        v = _2939
                        continue 
                    _3857 = mem[64]
                    mem[mem[64]] = _3539 + _3161 + _3175 + -mem[64] + 32
                    mem[64] = _3539 + _3161 + _3175 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3857
                    v = _2939
                    continue 
                mem[0] = (5 * _2927) + sha3(0) + 1
                mem[_3077 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
                t = _3077 + 32
                v = sha3((5 * _2927) + sha3(0) + 1)
                while _3077 + (uint255(stor0[_2927].field_256) * 0.5) > t:
                    mem[t + 32] = _getNodeNumberOf[v].field_0
                    t = t + 32
                    v = v + 1
                    continue 
                mem[_2939 + 32] = _3077
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3483 = mem[64]
                _3503 = mem[u]
                t = 0
                while t < _3503:
                    mem[t + _3483 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3503) <= _3503:
                    _3794 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3794:
                        mem[t + _3483 + _3503 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3794 + _3483 + _3503 + 32] = stor0[_2927].field_1024
                    if ceil32(_3794) <= _3794:
                        _3942 = mem[64]
                        mem[mem[64]] = _3794 + _3483 + _3503 + -mem[64] + 32
                        mem[64] = _3794 + _3483 + _3503 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3942
                        v = _2939
                        continue 
                    _3958 = mem[64]
                    mem[mem[64]] = _3794 + _3483 + _3503 + -mem[64] + 32
                    mem[64] = _3794 + _3483 + _3503 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3958
                    v = _2939
                    continue 
                mem[_3483 + _3503 + 32] = 0
                _3820 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3820:
                    mem[t + _3483 + _3503 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3820 + _3483 + _3503 + 32] = stor0[_2927].field_1024
                if ceil32(_3820) <= _3820:
                    _3943 = mem[64]
                    mem[mem[64]] = _3820 + _3483 + _3503 + -mem[64] + 32
                    mem[64] = _3820 + _3483 + _3503 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3943
                    v = _2939
                    continue 
                _3959 = mem[64]
                mem[mem[64]] = _3820 + _3483 + _3503 + -mem[64] + 32
                mem[64] = _3820 + _3483 + _3503 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3959
                v = _2939
                continue 
            if bool(stor0[_2927].field_256) == stor0[_2927].field_257 % 128 < 32:
                revert with 0, 34
            if not stor0[_2927].field_257 % 128:
                mem[_2939 + 32] = _3077
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3149 = mem[64]
                _3162 = mem[u]
                t = 0
                while t < _3162:
                    mem[t + _3149 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3162) <= _3162:
                    _3505 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3505:
                        mem[t + _3149 + _3162 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3505 + _3149 + _3162 + 32] = stor0[_2927].field_1024
                    if ceil32(_3505) <= _3505:
                        _3823 = mem[64]
                        mem[mem[64]] = _3505 + _3149 + _3162 + -mem[64] + 32
                        mem[64] = _3505 + _3149 + _3162 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3823
                        v = _2939
                        continue 
                    _3858 = mem[64]
                    mem[mem[64]] = _3505 + _3149 + _3162 + -mem[64] + 32
                    mem[64] = _3505 + _3149 + _3162 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3858
                    v = _2939
                    continue 
                mem[_3149 + _3162 + 32] = 0
                _3540 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3540:
                    mem[t + _3149 + _3162 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3540 + _3149 + _3162 + 32] = stor0[_2927].field_1024
                if ceil32(_3540) <= _3540:
                    _3824 = mem[64]
                    mem[mem[64]] = _3540 + _3149 + _3162 + -mem[64] + 32
                    mem[64] = _3540 + _3149 + _3162 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3824
                    v = _2939
                    continue 
                _3859 = mem[64]
                mem[mem[64]] = _3540 + _3149 + _3162 + -mem[64] + 32
                mem[64] = _3540 + _3149 + _3162 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3859
                v = _2939
                continue 
            if 31 >= stor0[_2927].field_257 % 128:
                mem[_3077 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
                mem[_2939 + 32] = _3077
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3177 = mem[64]
                _3192 = mem[u]
                t = 0
                while t < _3192:
                    mem[t + _3177 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3192) <= _3192:
                    _3507 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3507:
                        mem[t + _3177 + _3192 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3507 + _3177 + _3192 + 32] = stor0[_2927].field_1024
                    if ceil32(_3507) <= _3507:
                        _3826 = mem[64]
                        mem[mem[64]] = _3507 + _3177 + _3192 + -mem[64] + 32
                        mem[64] = _3507 + _3177 + _3192 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3826
                        v = _2939
                        continue 
                    _3860 = mem[64]
                    mem[mem[64]] = _3507 + _3177 + _3192 + -mem[64] + 32
                    mem[64] = _3507 + _3177 + _3192 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3860
                    v = _2939
                    continue 
                mem[_3177 + _3192 + 32] = 0
                _3541 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3541:
                    mem[t + _3177 + _3192 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3541 + _3177 + _3192 + 32] = stor0[_2927].field_1024
                if ceil32(_3541) <= _3541:
                    _3827 = mem[64]
                    mem[mem[64]] = _3541 + _3177 + _3192 + -mem[64] + 32
                    mem[64] = _3541 + _3177 + _3192 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3827
                    v = _2939
                    continue 
                _3861 = mem[64]
                mem[mem[64]] = _3541 + _3177 + _3192 + -mem[64] + 32
                mem[64] = _3541 + _3177 + _3192 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3861
                v = _2939
                continue 
            mem[0] = (5 * _2927) + sha3(0) + 1
            mem[_3077 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
            v = _3077 + 32
            t = sha3((5 * _2927) + sha3(0) + 1)
            while _3077 + stor0[_2927].field_257 % 128 > v:
                mem[v + 32] = _getNodeNumberOf[t].field_0
                v = v + 32
                t = t + 1
                continue 
            mem[_2939 + 32] = _3077
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3485 = mem[64]
            _3506 = mem[u]
            t = 0
            while t < _3506:
                mem[t + _3485 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3506) <= _3506:
                _3795 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3795:
                    mem[t + _3485 + _3506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3795 + _3485 + _3506 + 32] = stor0[_2927].field_1024
                if ceil32(_3795) <= _3795:
                    _3944 = mem[64]
                    mem[mem[64]] = _3795 + _3485 + _3506 + -mem[64] + 32
                    mem[64] = _3795 + _3485 + _3506 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3944
                    v = _2939
                    continue 
                _3960 = mem[64]
                mem[mem[64]] = _3795 + _3485 + _3506 + -mem[64] + 32
                mem[64] = _3795 + _3485 + _3506 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3960
                v = _2939
                continue 
            mem[_3485 + _3506 + 32] = 0
            _3825 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3825:
                mem[t + _3485 + _3506 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3825 + _3485 + _3506 + 32] = stor0[_2927].field_1024
            if ceil32(_3825) <= _3825:
                _3945 = mem[64]
                mem[mem[64]] = _3825 + _3485 + _3506 + -mem[64] + 32
                mem[64] = _3825 + _3485 + _3506 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3945
                v = _2939
                continue 
            _3961 = mem[64]
            mem[mem[64]] = _3825 + _3485 + _3506 + -mem[64] + 32
            mem[64] = _3825 + _3485 + _3506 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3961
            v = _2939
            continue 
        if bool(stor0[_2927].field_256) == stor0[_2927].field_257 % 128 < 32:
            revert with 0, 34
        _3083 = mem[64]
        mem[64] = mem[64] + ceil32(stor0[_2927].field_257 % 128) + 32
        mem[_3083] = stor0[_2927].field_257 % 128
        if bool(stor0[_2927].field_256):
            if bool(stor0[_2927].field_256) == uint255(stor0[_2927].field_256) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor0[_2927].field_256):
                mem[_2939 + 32] = _3083
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3151 = mem[64]
                _3164 = mem[u]
                t = 0
                while t < _3164:
                    mem[t + _3151 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3164) <= _3164:
                    _3508 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3508:
                        mem[t + _3151 + _3164 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3508 + _3151 + _3164 + 32] = stor0[_2927].field_1024
                    if ceil32(_3508) <= _3508:
                        _3828 = mem[64]
                        mem[mem[64]] = _3508 + _3151 + _3164 + -mem[64] + 32
                        mem[64] = _3508 + _3151 + _3164 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3828
                        v = _2939
                        continue 
                    _3862 = mem[64]
                    mem[mem[64]] = _3508 + _3151 + _3164 + -mem[64] + 32
                    mem[64] = _3508 + _3151 + _3164 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3862
                    v = _2939
                    continue 
                mem[_3151 + _3164 + 32] = 0
                _3542 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3542:
                    mem[t + _3151 + _3164 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3542 + _3151 + _3164 + 32] = stor0[_2927].field_1024
                if ceil32(_3542) <= _3542:
                    _3829 = mem[64]
                    mem[mem[64]] = _3542 + _3151 + _3164 + -mem[64] + 32
                    mem[64] = _3542 + _3151 + _3164 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3829
                    v = _2939
                    continue 
                _3863 = mem[64]
                mem[mem[64]] = _3542 + _3151 + _3164 + -mem[64] + 32
                mem[64] = _3542 + _3151 + _3164 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3863
                v = _2939
                continue 
            if 31 >= uint255(stor0[_2927].field_256) * 0.5:
                mem[_3083 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
                mem[_2939 + 32] = _3083
                mem[_2939 + 64] = stor0[_2927].field_512
                mem[_2939 + 96] = stor0[_2927].field_768
                mem[_2939 + 128] = stor0[_2927].field_1024
                _3179 = mem[64]
                _3193 = mem[u]
                t = 0
                while t < _3193:
                    mem[t + _3179 + 32] = mem[t + u + 32]
                    t = t + 32
                    continue 
                if ceil32(_3193) <= _3193:
                    _3510 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                    t = 0
                    while t < _3510:
                        mem[t + _3179 + _3193 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                        t = t + 32
                        continue 
                    mem[_3510 + _3179 + _3193 + 32] = stor0[_2927].field_1024
                    if ceil32(_3510) <= _3510:
                        _3831 = mem[64]
                        mem[mem[64]] = _3510 + _3179 + _3193 + -mem[64] + 32
                        mem[64] = _3510 + _3179 + _3193 + 64
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        u = _3831
                        v = _2939
                        continue 
                    _3864 = mem[64]
                    mem[mem[64]] = _3510 + _3179 + _3193 + -mem[64] + 32
                    mem[64] = _3510 + _3179 + _3193 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3864
                    v = _2939
                    continue 
                mem[_3179 + _3193 + 32] = 0
                _3543 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3543:
                    mem[t + _3179 + _3193 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3543 + _3179 + _3193 + 32] = stor0[_2927].field_1024
                if ceil32(_3543) <= _3543:
                    _3832 = mem[64]
                    mem[mem[64]] = _3543 + _3179 + _3193 + -mem[64] + 32
                    mem[64] = _3543 + _3179 + _3193 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3832
                    v = _2939
                    continue 
                _3865 = mem[64]
                mem[mem[64]] = _3543 + _3179 + _3193 + -mem[64] + 32
                mem[64] = _3543 + _3179 + _3193 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3865
                v = _2939
                continue 
            mem[0] = (5 * _2927) + sha3(0) + 1
            mem[_3083 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
            v = _3083 + 32
            t = sha3((5 * _2927) + sha3(0) + 1)
            while _3083 + (uint255(stor0[_2927].field_256) * 0.5) > v:
                mem[v + 32] = _getNodeNumberOf[t].field_0
                v = v + 32
                t = t + 1
                continue 
            mem[_2939 + 32] = _3083
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3487 = mem[64]
            _3509 = mem[u]
            t = 0
            while t < _3509:
                mem[t + _3487 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3509) <= _3509:
                _3796 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3796:
                    mem[t + _3487 + _3509 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3796 + _3487 + _3509 + 32] = stor0[_2927].field_1024
                if ceil32(_3796) <= _3796:
                    _3946 = mem[64]
                    mem[mem[64]] = _3796 + _3487 + _3509 + -mem[64] + 32
                    mem[64] = _3796 + _3487 + _3509 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3946
                    v = _2939
                    continue 
                _3962 = mem[64]
                mem[mem[64]] = _3796 + _3487 + _3509 + -mem[64] + 32
                mem[64] = _3796 + _3487 + _3509 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3962
                v = _2939
                continue 
            mem[_3487 + _3509 + 32] = 0
            _3830 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3830:
                mem[t + _3487 + _3509 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3830 + _3487 + _3509 + 32] = stor0[_2927].field_1024
            if ceil32(_3830) <= _3830:
                _3947 = mem[64]
                mem[mem[64]] = _3830 + _3487 + _3509 + -mem[64] + 32
                mem[64] = _3830 + _3487 + _3509 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3947
                v = _2939
                continue 
            _3963 = mem[64]
            mem[mem[64]] = _3830 + _3487 + _3509 + -mem[64] + 32
            mem[64] = _3830 + _3487 + _3509 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3963
            v = _2939
            continue 
        if bool(stor0[_2927].field_256) == stor0[_2927].field_257 % 128 < 32:
            revert with 0, 34
        if not stor0[_2927].field_257 % 128:
            mem[_2939 + 32] = _3083
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3167 = mem[64]
            _3180 = mem[u]
            t = 0
            while t < _3180:
                mem[t + _3167 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3180) <= _3180:
                _3511 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3511:
                    mem[t + _3167 + _3180 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3511 + _3167 + _3180 + 32] = stor0[_2927].field_1024
                if ceil32(_3511) <= _3511:
                    _3833 = mem[64]
                    mem[mem[64]] = _3511 + _3167 + _3180 + -mem[64] + 32
                    mem[64] = _3511 + _3167 + _3180 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3833
                    v = _2939
                    continue 
                _3866 = mem[64]
                mem[mem[64]] = _3511 + _3167 + _3180 + -mem[64] + 32
                mem[64] = _3511 + _3167 + _3180 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3866
                v = _2939
                continue 
            mem[_3167 + _3180 + 32] = 0
            _3544 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3544:
                mem[t + _3167 + _3180 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3544 + _3167 + _3180 + 32] = stor0[_2927].field_1024
            if ceil32(_3544) <= _3544:
                _3834 = mem[64]
                mem[mem[64]] = _3544 + _3167 + _3180 + -mem[64] + 32
                mem[64] = _3544 + _3167 + _3180 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3834
                v = _2939
                continue 
            _3867 = mem[64]
            mem[mem[64]] = _3544 + _3167 + _3180 + -mem[64] + 32
            mem[64] = _3544 + _3167 + _3180 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3867
            v = _2939
            continue 
        if 31 >= stor0[_2927].field_257 % 128:
            mem[_3083 + 32] = 256 * Mask(248, 0, stor0[_2927].field_264)
            mem[_2939 + 32] = _3083
            mem[_2939 + 64] = stor0[_2927].field_512
            mem[_2939 + 96] = stor0[_2927].field_768
            mem[_2939 + 128] = stor0[_2927].field_1024
            _3195 = mem[64]
            _3211 = mem[u]
            t = 0
            while t < _3211:
                mem[t + _3195 + 32] = mem[t + u + 32]
                t = t + 32
                continue 
            if ceil32(_3211) <= _3211:
                _3513 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
                t = 0
                while t < _3513:
                    mem[t + _3195 + _3211 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                    t = t + 32
                    continue 
                mem[_3513 + _3195 + _3211 + 32] = stor0[_2927].field_1024
                if ceil32(_3513) <= _3513:
                    _3836 = mem[64]
                    mem[mem[64]] = _3513 + _3195 + _3211 + -mem[64] + 32
                    mem[64] = _3513 + _3195 + _3211 + 64
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    u = _3836
                    v = _2939
                    continue 
                _3868 = mem[64]
                mem[mem[64]] = _3513 + _3195 + _3211 + -mem[64] + 32
                mem[64] = _3513 + _3195 + _3211 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3868
                v = _2939
                continue 
            mem[_3195 + _3211 + 32] = 0
            _3545 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3545:
                mem[t + _3195 + _3211 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3545 + _3195 + _3211 + 32] = stor0[_2927].field_1024
            if ceil32(_3545) <= _3545:
                _3837 = mem[64]
                mem[mem[64]] = _3545 + _3195 + _3211 + -mem[64] + 32
                mem[64] = _3545 + _3195 + _3211 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3837
                v = _2939
                continue 
            _3869 = mem[64]
            mem[mem[64]] = _3545 + _3195 + _3211 + -mem[64] + 32
            mem[64] = _3545 + _3195 + _3211 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3869
            v = _2939
            continue 
        mem[0] = (5 * _2927) + sha3(0) + 1
        mem[_3083 + 32] = stor[sha3((5 * _2927) + ('name', 'stor0', 0) + 1)].field_0
        t = _3083 + 32
        v = sha3((5 * _2927) + sha3(0) + 1)
        while _3083 + stor0[_2927].field_257 % 128 > t:
            mem[t + 32] = _getNodeNumberOf[v].field_0
            t = t + 32
            v = v + 1
            continue 
        mem[_2939 + 32] = _3083
        mem[_2939 + 64] = stor0[_2927].field_512
        mem[_2939 + 96] = stor0[_2927].field_768
        mem[_2939 + 128] = stor0[_2927].field_1024
        _3489 = mem[64]
        _3512 = mem[u]
        t = 0
        while t < _3512:
            mem[t + _3489 + 32] = mem[t + u + 32]
            t = t + 32
            continue 
        if ceil32(_3512) <= _3512:
            _3797 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
            t = 0
            while t < _3797:
                mem[t + _3489 + _3512 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
                t = t + 32
                continue 
            mem[_3797 + _3489 + _3512 + 32] = stor0[_2927].field_1024
            if ceil32(_3797) <= _3797:
                _3948 = mem[64]
                mem[mem[64]] = _3797 + _3489 + _3512 + -mem[64] + 32
                mem[64] = _3797 + _3489 + _3512 + 64
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = _3948
                v = _2939
                continue 
            _3964 = mem[64]
            mem[mem[64]] = _3797 + _3489 + _3512 + -mem[64] + 32
            mem[64] = _3797 + _3489 + _3512 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3964
            v = _2939
            continue 
        mem[_3489 + _3512 + 32] = 0
        _3835 = mem[(32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 320]
        t = 0
        while t < _3835:
            mem[t + _3489 + _3512 + 32] = mem[t + (32 * _getNodeNumberOf[address(arg1)].field_0) + ceil32(s) + 352]
            t = t + 32
            continue 
        mem[_3835 + _3489 + _3512 + 32] = stor0[_2927].field_1024
        if ceil32(_3835) <= _3835:
            _3949 = mem[64]
            mem[mem[64]] = _3835 + _3489 + _3512 + -mem[64] + 32
            mem[64] = _3835 + _3489 + _3512 + 64
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = _3949
            v = _2939
            continue 
        _3965 = mem[64]
        mem[mem[64]] = _3835 + _3489 + _3512 + -mem[64] + 32
        mem[64] = _3835 + _3489 + _3512 + 64
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = _3965
        v = _2939
        continue 
    mem[mem[64]] = 32
    _2985 = mem[u]
    mem[mem[64] + 32] = mem[u]
    mem[mem[64] + 64 len ceil32(_2985)] = mem[u + 32 len ceil32(_2985)]
    var40001 = ceil32(_2985)
    if ceil32(_2985) > _2985:
        mem[mem[64] + _2985 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_2985) + 32]
}



}
