contract main {




// =====================  Runtime code  =====================


#
#  - _getNodesRewardAvailable(address arg1)
#  - _getNodesLastClaimTime(address arg1)
#
array of struct _getNodeNumberOf;
mapping of uint8 stor1;
uint256 nodePrice;
uint256 sub_d754d433;
uint8 stor4;
uint256 totalNodesCreated;
uint256 totalRewardStaked;
uint256 sub_0b433a12;
uint256 sub_29271acd;
uint256 sub_1341d34f;

function sub_0b433a12(?) payable {
    return sub_0b433a12
}

function sub_1341d34f(?) payable {
    return sub_1341d34f
}

function sub_29271acd(?) payable {
    return sub_29271acd
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

function distribution() payable {
    return bool(stor4)
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function sub_d5d31abe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function sub_d754d433(?) payable {
    return sub_d754d433
}

function nodePrice() payable {
    return nodePrice
}

function _fallback() payable {
    revert
}

function sub_2872e38c(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    sub_d754d433 = arg1
}

function sub_3fbb7585(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    sub_29271acd = arg1
}

function sub_a90606c9(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    sub_1341d34f = arg1
}

function sub_fb89e2e4(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    sub_0b433a12 = arg1
}

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    nodePrice = arg1
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    stor1[address(arg1)] = 1
}

function sub_486af96a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 0
    mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
    mem[96] = _getNodeNumberOf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _14 = mem[64]
        mem[64] = mem[64] + 128
        mem[_14] = _getNodeNumberOf[address(arg1)][idx].field_0
        mem[_14 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
        mem[_14 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
        mem[_14 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
        mem[s] = _14
        s = s + 32
        idx = idx + 1
        continue 
    _15 = mem[64]
    mem[mem[64]] = 32
    _16 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _16:
        _23 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_23 + 32]
        mem[t + 64] = mem[_23 + 64]
        mem[t + 96] = mem[_23 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _15 + (128 * _16) + -mem[64] + 64
}

function sub_90219732(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'Only managers can call this function'
    if not arg3:
        _getNodeNumberOf[address(arg1)].field_0++
        _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0 = block.timestamp
        _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_256 = block.timestamp
        _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_512 = 0
        _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_768 = 0
    else:
        if block.timestamp > !arg3:
            revert with 0, 17
        _getNodeNumberOf[address(arg1)].field_0++
        _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0 = block.timestamp
        _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_256 = block.timestamp
        _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_512 = 0
        _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_768 = block.timestamp + arg3
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
    emit 0xc898c2ae: Array(len=arg2.length, data=arg2[all]), _getNodeNumberOf[address(arg1)].field_0, totalNodesCreated, address(arg1)
}

function _getNodeRewardAmountOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CASHOUT ERROR: You don't have nodes to cash-out'
    if arg2 >= _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'CASHOUT ERROR: Invalid node'
    if block.timestamp <= _getNodeNumberOf[address(arg1)][arg2].field_768:
        if _getNodeNumberOf[address(arg1)][arg2].field_0 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < _getNodeNumberOf[address(arg1)][arg2].field_0:
            revert with 0, 17
        if not sub_0b433a12:
            revert with 0, 'SafeMath: division by zero', 0
        if _getNodeNumberOf[address(arg1)][arg2].field_768 > 0:
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                if 0 > !sub_29271acd:
                    revert with 0, 17
                if sub_29271acd < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_29271acd:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                    revert with 0, 17
                return (sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            if 0 > !sub_1341d34f:
                revert with 0, 17
            if sub_1341d34f < 0:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_1341d34f:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            return (sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 17
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 18
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
            revert with 0, 17
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if _getNodeNumberOf[address(arg1)][arg2].field_768 <= 0:
        if _getNodeNumberOf[address(arg1)][arg2].field_0 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < _getNodeNumberOf[address(arg1)][arg2].field_0:
            revert with 0, 17
        if not sub_0b433a12:
            revert with 0, 'SafeMath: division by zero', 0
        if _getNodeNumberOf[address(arg1)][arg2].field_768 > 0:
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                if 0 > !sub_29271acd:
                    revert with 0, 17
                if sub_29271acd < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_29271acd:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                    revert with 0, 17
                return (sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            if 0 > !sub_1341d34f:
                revert with 0, 17
            if sub_1341d34f < 0:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_1341d34f:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            return (sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 17
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 18
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
            revert with 0, 17
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if _getNodeNumberOf[address(arg1)][arg2].field_0 > _getNodeNumberOf[address(arg1)][arg2].field_768:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if _getNodeNumberOf[address(arg1)][arg2].field_768 < _getNodeNumberOf[address(arg1)][arg2].field_0:
        revert with 0, 17
    if not sub_0b433a12:
        revert with 0, 'SafeMath: division by zero', 0
    if _getNodeNumberOf[address(arg1)][arg2].field_768 > 0:
        if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            if 0 > !sub_29271acd:
                revert with 0, 17
            if sub_29271acd < 0:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_29271acd:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            return (sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 17
        if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 18
        if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
            revert with 0, 17
        if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        return ((_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
        if 0 > !sub_1341d34f:
            revert with 0, 17
        if sub_1341d34f < 0:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_1341d34f:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        return (sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
        revert with 0, 17
    if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
        revert with 0, 18
    if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
        revert with 0, 'SafeMath: multiplication overflow'
    if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
        revert with 0, 17
    if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
        revert with 0, 'SafeMath: addition overflow'
    if _getNodeNumberOf[address(arg1)][arg2].field_512 > (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
        revert with 0, 17
    return ((_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
}

function _getRewardAmountOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CASHOUT ERROR: You don't have nodes to cash-out'
    if arg2 >= _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'CASHOUT ERROR: Invalid node'
    if block.timestamp <= _getNodeNumberOf[address(arg1)][arg2].field_768:
        if _getNodeNumberOf[address(arg1)][arg2].field_0 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < _getNodeNumberOf[address(arg1)][arg2].field_0:
            revert with 0, 17
        if not sub_0b433a12:
            revert with 0, 'SafeMath: division by zero', 0
        if _getNodeNumberOf[address(arg1)][arg2].field_768 > 0:
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                if 0 > !sub_29271acd:
                    revert with 0, 17
                if sub_29271acd < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_29271acd:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                    revert with 0, 17
                return (sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            if 0 > !sub_1341d34f:
                revert with 0, 17
            if sub_1341d34f < 0:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_1341d34f:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            return (sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 17
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 18
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
            revert with 0, 17
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if _getNodeNumberOf[address(arg1)][arg2].field_768 <= 0:
        if _getNodeNumberOf[address(arg1)][arg2].field_0 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < _getNodeNumberOf[address(arg1)][arg2].field_0:
            revert with 0, 17
        if not sub_0b433a12:
            revert with 0, 'SafeMath: division by zero', 0
        if _getNodeNumberOf[address(arg1)][arg2].field_768 > 0:
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                if 0 > !sub_29271acd:
                    revert with 0, 17
                if sub_29271acd < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_29271acd:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                    revert with 0, 17
                return (sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            if 0 > !sub_1341d34f:
                revert with 0, 17
            if sub_1341d34f < 0:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_1341d34f:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            return (sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 17
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 18
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
            revert with 0, 17
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if _getNodeNumberOf[address(arg1)][arg2].field_0 > _getNodeNumberOf[address(arg1)][arg2].field_768:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if _getNodeNumberOf[address(arg1)][arg2].field_768 < _getNodeNumberOf[address(arg1)][arg2].field_0:
        revert with 0, 17
    if not sub_0b433a12:
        revert with 0, 'SafeMath: division by zero', 0
    if _getNodeNumberOf[address(arg1)][arg2].field_768 > 0:
        if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            if 0 > !sub_29271acd:
                revert with 0, 17
            if sub_29271acd < 0:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_29271acd:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            return (sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 17
        if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 18
        if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
            revert with 0, 17
        if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        return ((_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
        if 0 > !sub_1341d34f:
            revert with 0, 17
        if sub_1341d34f < 0:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_1341d34f:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        return (sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
        revert with 0, 17
    if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
        revert with 0, 18
    if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
        revert with 0, 'SafeMath: multiplication overflow'
    if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
        revert with 0, 17
    if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
        revert with 0, 'SafeMath: addition overflow'
    if _getNodeNumberOf[address(arg1)][arg2].field_512 > (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
        revert with 0, 17
    return ((_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
}

function _cashoutNodeReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CASHOUT ERROR: You don't have nodes to cash-out'
    if arg2 >= _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'CASHOUT ERROR: Invalid node'
    if block.timestamp <= _getNodeNumberOf[address(arg1)][arg2].field_768:
        if _getNodeNumberOf[address(arg1)][arg2].field_0 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < _getNodeNumberOf[address(arg1)][arg2].field_0:
            revert with 0, 17
        if not sub_0b433a12:
            revert with 0, 'SafeMath: division by zero', 0
        if _getNodeNumberOf[address(arg1)][arg2].field_768 > 0:
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                if 0 > !sub_29271acd:
                    revert with 0, 17
                if sub_29271acd < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_29271acd:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)][arg2].field_512 > !(sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512):
                    revert with 0, 17
                _getNodeNumberOf[address(arg1)][arg2].field_512 = sub_29271acd
                return (sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > !((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512):
                revert with 0, 17
            _getNodeNumberOf[address(arg1)][arg2].field_512 = (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd
            return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            if 0 > !sub_1341d34f:
                revert with 0, 17
            if sub_1341d34f < 0:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_1341d34f:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512):
                revert with 0, 17
            _getNodeNumberOf[address(arg1)][arg2].field_512 = sub_1341d34f
            return (sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 17
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 18
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
            revert with 0, 17
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > !((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512):
            revert with 0, 17
        _getNodeNumberOf[address(arg1)][arg2].field_512 = (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f
        return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if _getNodeNumberOf[address(arg1)][arg2].field_768 <= 0:
        if _getNodeNumberOf[address(arg1)][arg2].field_0 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < _getNodeNumberOf[address(arg1)][arg2].field_0:
            revert with 0, 17
        if not sub_0b433a12:
            revert with 0, 'SafeMath: division by zero', 0
        if _getNodeNumberOf[address(arg1)][arg2].field_768 > 0:
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                if 0 > !sub_29271acd:
                    revert with 0, 17
                if sub_29271acd < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_29271acd:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)][arg2].field_512 > !(sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512):
                    revert with 0, 17
                _getNodeNumberOf[address(arg1)][arg2].field_512 = sub_29271acd
                return (sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > !((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512):
                revert with 0, 17
            _getNodeNumberOf[address(arg1)][arg2].field_512 = (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd
            return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            if 0 > !sub_1341d34f:
                revert with 0, 17
            if sub_1341d34f < 0:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_1341d34f:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512):
                revert with 0, 17
            _getNodeNumberOf[address(arg1)][arg2].field_512 = sub_1341d34f
            return (sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 17
        if not block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 18
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
            revert with 0, 17
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > !((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512):
            revert with 0, 17
        _getNodeNumberOf[address(arg1)][arg2].field_512 = (block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f
        return ((block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if _getNodeNumberOf[address(arg1)][arg2].field_0 > _getNodeNumberOf[address(arg1)][arg2].field_768:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if _getNodeNumberOf[address(arg1)][arg2].field_768 < _getNodeNumberOf[address(arg1)][arg2].field_0:
        revert with 0, 17
    if not sub_0b433a12:
        revert with 0, 'SafeMath: division by zero', 0
    if _getNodeNumberOf[address(arg1)][arg2].field_768 > 0:
        if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            if 0 > !sub_29271acd:
                revert with 0, 17
            if sub_29271acd < 0:
                revert with 0, 'SafeMath: addition overflow'
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_29271acd:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
                revert with 0, 17
            if _getNodeNumberOf[address(arg1)][arg2].field_512 > !(sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512):
                revert with 0, 17
            _getNodeNumberOf[address(arg1)][arg2].field_512 = sub_29271acd
            return (sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
        if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 17
        if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
            revert with 0, 18
        if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
            revert with 0, 17
        if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > !((_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512):
            revert with 0, 17
        _getNodeNumberOf[address(arg1)][arg2].field_512 = (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd
        return ((_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
        if 0 > !sub_1341d34f:
            revert with 0, 17
        if sub_1341d34f < 0:
            revert with 0, 'SafeMath: addition overflow'
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > sub_1341d34f:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        if _getNodeNumberOf[address(arg1)][arg2].field_512 > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512):
            revert with 0, 17
        _getNodeNumberOf[address(arg1)][arg2].field_512 = sub_1341d34f
        return (sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
    if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 and sub_d754d433 > -1 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
        revert with 0, 17
    if not _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12:
        revert with 0, 18
    if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 / _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 != sub_d754d433:
        revert with 0, 'SafeMath: multiplication overflow'
    if _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
        revert with 0, 17
    if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433:
        revert with 0, 'SafeMath: addition overflow'
    if _getNodeNumberOf[address(arg1)][arg2].field_512 > (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][arg2].field_512:
        revert with 0, 17
    if _getNodeNumberOf[address(arg1)][arg2].field_512 > !((_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512):
        revert with 0, 17
    _getNodeNumberOf[address(arg1)][arg2].field_512 = (_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f
    return ((_getNodeNumberOf[address(arg1)][arg2].field_768 - _getNodeNumberOf[address(arg1)][arg2].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][arg2].field_512)
}

function _getRewardAmountOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 0
    idx = 0
    s = 0
    s = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _167 = mem[64]
        mem[64] = mem[64] + 128
        mem[_167] = _getNodeNumberOf[address(arg1)][idx].field_0
        mem[_167 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
        mem[_167 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
        mem[_167 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
        if block.timestamp <= _getNodeNumberOf[address(arg1)][idx].field_768:
            _172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_172] = 30
            mem[_172 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_0 > block.timestamp:
                _177 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _177 + 68] = mem[idx + _172 + 32]
                    idx = idx + 32
                    continue 
                mem[_177 + 98] = 0
                revert with memory
                  from mem[64]
                   len _177 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_0:
                revert with 0, 17
            _185 = mem[64]
            mem[64] = mem[64] + 64
            mem[_185] = 26
            mem[_185 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _189 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _189 + 68] = mem[idx + _185 + 32]
                    idx = idx + 32
                    continue 
                mem[_189 + 94] = 0
                revert with memory
                  from mem[64]
                   len _189 + -mem[64] + 100
            if _getNodeNumberOf[address(arg1)][idx].field_768 > 0:
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    if 0 > !sub_29271acd:
                        revert with 0, 17
                    if sub_29271acd < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _229 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_229] = 30
                    mem[_229 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_29271acd:
                        if sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                            revert with 0, 17
                        if s > !(sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = (4 * idx) + sha3(sha3(address(arg1), 0))
                        s = s + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                        continue 
                    _245 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _245 + 68] = mem[idx + _229 + 32]
                        idx = idx + 32
                        continue 
                    mem[_245 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _245 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
                    revert with 0, 'SafeMath: addition overflow'
                _263 = mem[64]
                mem[64] = mem[64] + 64
                mem[_263] = 30
                mem[_263 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_512 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (4 * idx) + sha3(sha3(address(arg1), 0))
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                    continue 
                _277 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _277 + 68] = mem[idx + _263 + 32]
                    idx = idx + 32
                    continue 
                mem[_277 + 98] = 0
                revert with memory
                  from mem[64]
                   len _277 + -mem[64] + 100
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                if 0 > !sub_1341d34f:
                    revert with 0, 17
                if sub_1341d34f < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_230] = 30
                mem[_230 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_1341d34f:
                    if sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                        revert with 0, 17
                    if s > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (4 * idx) + sha3(sha3(address(arg1), 0))
                    s = s + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
                    continue 
                _246 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _246 + 68] = mem[idx + _230 + 32]
                    idx = idx + 32
                    continue 
                mem[_246 + 98] = 0
                revert with memory
                  from mem[64]
                   len _246 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            _264 = mem[64]
            mem[64] = mem[64] + 64
            mem[_264] = 30
            mem[_264 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_512 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (4 * idx) + sha3(sha3(address(arg1), 0))
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
                continue 
            _278 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _278 + 68] = mem[idx + _264 + 32]
                idx = idx + 32
                continue 
            mem[_278 + 98] = 0
            revert with memory
              from mem[64]
               len _278 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_768 <= 0:
            _175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_175] = 30
            mem[_175 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_0 > block.timestamp:
                _179 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _179 + 68] = mem[idx + _175 + 32]
                    idx = idx + 32
                    continue 
                mem[_179 + 98] = 0
                revert with memory
                  from mem[64]
                   len _179 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_0:
                revert with 0, 17
            _187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_187] = 26
            mem[_187 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _192 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _192 + 68] = mem[idx + _187 + 32]
                    idx = idx + 32
                    continue 
                mem[_192 + 94] = 0
                revert with memory
                  from mem[64]
                   len _192 + -mem[64] + 100
            if _getNodeNumberOf[address(arg1)][idx].field_768 > 0:
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    if 0 > !sub_29271acd:
                        revert with 0, 17
                    if sub_29271acd < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _239 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_239] = 30
                    mem[_239 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_29271acd:
                        if sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                            revert with 0, 17
                        if s > !(sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = (4 * idx) + sha3(sha3(address(arg1), 0))
                        s = s + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                        continue 
                    _249 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _249 + 68] = mem[idx + _239 + 32]
                        idx = idx + 32
                        continue 
                    mem[_249 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _249 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
                    revert with 0, 'SafeMath: addition overflow'
                _273 = mem[64]
                mem[64] = mem[64] + 64
                mem[_273] = 30
                mem[_273 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_512 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (4 * idx) + sha3(sha3(address(arg1), 0))
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                    continue 
                _283 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _283 + 68] = mem[idx + _273 + 32]
                    idx = idx + 32
                    continue 
                mem[_283 + 98] = 0
                revert with memory
                  from mem[64]
                   len _283 + -mem[64] + 100
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                if 0 > !sub_1341d34f:
                    revert with 0, 17
                if sub_1341d34f < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _240 = mem[64]
                mem[64] = mem[64] + 64
                mem[_240] = 30
                mem[_240 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_1341d34f:
                    if sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                        revert with 0, 17
                    if s > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (4 * idx) + sha3(sha3(address(arg1), 0))
                    s = s + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
                    continue 
                _250 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _250 + 68] = mem[idx + _240 + 32]
                    idx = idx + 32
                    continue 
                mem[_250 + 98] = 0
                revert with memory
                  from mem[64]
                   len _250 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            _274 = mem[64]
            mem[64] = mem[64] + 64
            mem[_274] = 30
            mem[_274 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_512 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (4 * idx) + sha3(sha3(address(arg1), 0))
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
                continue 
            _284 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _284 + 68] = mem[idx + _274 + 32]
                idx = idx + 32
                continue 
            mem[_284 + 98] = 0
            revert with memory
              from mem[64]
               len _284 + -mem[64] + 100
        _178 = mem[64]
        mem[64] = mem[64] + 64
        mem[_178] = 30
        mem[_178 + 32] = 'SafeMath: subtraction overflow'
        if _getNodeNumberOf[address(arg1)][idx].field_0 > _getNodeNumberOf[address(arg1)][idx].field_768:
            _181 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _181 + 68] = mem[idx + _178 + 32]
                idx = idx + 32
                continue 
            mem[_181 + 98] = 0
            revert with memory
              from mem[64]
               len _181 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_768 < _getNodeNumberOf[address(arg1)][idx].field_0:
            revert with 0, 17
        _190 = mem[64]
        mem[64] = mem[64] + 64
        mem[_190] = 26
        mem[_190 + 32] = 'SafeMath: division by zero'
        if not sub_0b433a12:
            _196 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _196 + 68] = mem[idx + _190 + 32]
                idx = idx + 32
                continue 
            mem[_196 + 94] = 0
            revert with memory
              from mem[64]
               len _196 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_768 > 0:
            if not _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                if 0 > !sub_29271acd:
                    revert with 0, 17
                if sub_29271acd < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _247 = mem[64]
                mem[64] = mem[64] + 64
                mem[_247] = 30
                mem[_247 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_29271acd:
                    if sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                        revert with 0, 17
                    if s > !(sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = (4 * idx) + sha3(sha3(address(arg1), 0))
                    s = s + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                    continue 
                _255 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _255 + 68] = mem[idx + _247 + 32]
                    idx = idx + 32
                    continue 
                mem[_255 + 98] = 0
                revert with memory
                  from mem[64]
                   len _255 + -mem[64] + 100
            if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 17
            if not _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 18
            if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                revert with 0, 17
            if (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            _281 = mem[64]
            mem[64] = mem[64] + 64
            mem[_281] = 30
            mem[_281 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_512 <= (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                if (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                    revert with 0, 17
                if s > !((_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (4 * idx) + sha3(sha3(address(arg1), 0))
                s = s + (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                continue 
            _289 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            s = 0
            while s < 30:
                mem[s + _289 + 68] = mem[s + _281 + 32]
                s = s + 32
                continue 
            mem[_289 + 98] = 0
            revert with memory
              from mem[64]
               len _289 + -mem[64] + 100
        if not _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
            if 0 > !sub_1341d34f:
                revert with 0, 17
            if sub_1341d34f < 0:
                revert with 0, 'SafeMath: addition overflow'
            _248 = mem[64]
            mem[64] = mem[64] + 64
            mem[_248] = 30
            mem[_248 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_1341d34f:
                if sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                    revert with 0, 17
                if s > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = (4 * idx) + sha3(sha3(address(arg1), 0))
                s = s + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
                continue 
            _256 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _256 + 68] = mem[idx + _248 + 32]
                idx = idx + 32
                continue 
            mem[_256 + 98] = 0
            revert with memory
              from mem[64]
               len _256 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
            revert with 0, 17
        if not _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
            revert with 0, 18
        if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
            revert with 0, 17
        if (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
            revert with 0, 'SafeMath: addition overflow'
        _282 = mem[64]
        mem[64] = mem[64] + 64
        mem[_282] = 30
        mem[_282 + 32] = 'SafeMath: subtraction overflow'
        if _getNodeNumberOf[address(arg1)][idx].field_512 <= (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
            if (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                revert with 0, 17
            if s > !((_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = (4 * idx) + sha3(sha3(address(arg1), 0))
            s = s + (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
            continue 
        _290 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        s = 0
        while s < 30:
            mem[s + _290 + 68] = mem[s + _282 + 32]
            s = s + 32
            continue 
        mem[_290 + 98] = 0
        revert with memory
          from mem[64]
           len _290 + -mem[64] + 100
    return s
}

function _cashoutAllNodesReward(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    mem[0] = arg1
    mem[32] = 0
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'NODE: NO NODE OWNER'
    idx = 0
    s = 0
    t = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _168 = mem[64]
        mem[64] = mem[64] + 128
        mem[_168] = _getNodeNumberOf[address(arg1)][idx].field_0
        mem[_168 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
        mem[_168 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
        mem[_168 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
        if block.timestamp <= _getNodeNumberOf[address(arg1)][idx].field_768:
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 30
            mem[_174 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_0 > block.timestamp:
                _179 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _179 + 68] = mem[idx + _174 + 32]
                    idx = idx + 32
                    continue 
                mem[_179 + 98] = 0
                revert with memory
                  from mem[64]
                   len _179 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_0:
                revert with 0, 17
            _187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_187] = 26
            mem[_187 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _191 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _191 + 68] = mem[idx + _187 + 32]
                    idx = idx + 32
                    continue 
                mem[_191 + 94] = 0
                revert with memory
                  from mem[64]
                   len _191 + -mem[64] + 100
            if _getNodeNumberOf[address(arg1)][idx].field_768 > 0:
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    if 0 > !sub_29271acd:
                        revert with 0, 17
                    if sub_29271acd < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_231] = 30
                    mem[_231 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_29271acd:
                        if sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                            revert with 0, 17
                        if s > !(sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                            revert with 0, 17
                        if _getNodeNumberOf[address(arg1)][idx].field_512 > !(sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                            revert with 0, 17
                        _getNodeNumberOf[address(arg1)][idx].field_512 = sub_29271acd
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                        t = (4 * idx) + sha3(sha3(address(arg1), 0))
                        continue 
                    _247 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _247 + 68] = mem[idx + _231 + 32]
                        idx = idx + 32
                        continue 
                    mem[_247 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _247 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
                    revert with 0, 'SafeMath: addition overflow'
                _265 = mem[64]
                mem[64] = mem[64] + 64
                mem[_265] = 30
                mem[_265 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_512 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_512 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_512 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _279 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _279 + 68] = mem[idx + _265 + 32]
                    idx = idx + 32
                    continue 
                mem[_279 + 98] = 0
                revert with memory
                  from mem[64]
                   len _279 + -mem[64] + 100
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                if 0 > !sub_1341d34f:
                    revert with 0, 17
                if sub_1341d34f < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _232 = mem[64]
                mem[64] = mem[64] + 64
                mem[_232] = 30
                mem[_232 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_1341d34f:
                    if sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                        revert with 0, 17
                    if s > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_512 > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_512 = sub_1341d34f
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _248 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _248 + 68] = mem[idx + _232 + 32]
                    idx = idx + 32
                    continue 
                mem[_248 + 98] = 0
                revert with memory
                  from mem[64]
                   len _248 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            _266 = mem[64]
            mem[64] = mem[64] + 64
            mem[_266] = 30
            mem[_266 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_512 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)][idx].field_512 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                _getNodeNumberOf[address(arg1)][idx].field_512 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
                t = (4 * idx) + sha3(sha3(address(arg1), 0))
                continue 
            _280 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _280 + 68] = mem[idx + _266 + 32]
                idx = idx + 32
                continue 
            mem[_280 + 98] = 0
            revert with memory
              from mem[64]
               len _280 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_768 <= 0:
            _177 = mem[64]
            mem[64] = mem[64] + 64
            mem[_177] = 30
            mem[_177 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_0 > block.timestamp:
                _181 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _181 + 68] = mem[idx + _177 + 32]
                    idx = idx + 32
                    continue 
                mem[_181 + 98] = 0
                revert with memory
                  from mem[64]
                   len _181 + -mem[64] + 100
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_0:
                revert with 0, 17
            _189 = mem[64]
            mem[64] = mem[64] + 64
            mem[_189] = 26
            mem[_189 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _194 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _194 + 68] = mem[idx + _189 + 32]
                    idx = idx + 32
                    continue 
                mem[_194 + 94] = 0
                revert with memory
                  from mem[64]
                   len _194 + -mem[64] + 100
            if _getNodeNumberOf[address(arg1)][idx].field_768 > 0:
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    if 0 > !sub_29271acd:
                        revert with 0, 17
                    if sub_29271acd < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _241 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_241] = 30
                    mem[_241 + 32] = 'SafeMath: subtraction overflow'
                    if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_29271acd:
                        if sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                            revert with 0, 17
                        if s > !(sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                            revert with 0, 17
                        if _getNodeNumberOf[address(arg1)][idx].field_512 > !(sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                            revert with 0, 17
                        _getNodeNumberOf[address(arg1)][idx].field_512 = sub_29271acd
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                        t = (4 * idx) + sha3(sha3(address(arg1), 0))
                        continue 
                    _251 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _251 + 68] = mem[idx + _241 + 32]
                        idx = idx + 32
                        continue 
                    mem[_251 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _251 + -mem[64] + 100
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    revert with 0, 17
                if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                    revert with 0, 18
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                    revert with 0, 17
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
                    revert with 0, 'SafeMath: addition overflow'
                _275 = mem[64]
                mem[64] = mem[64] + 64
                mem[_275] = 30
                mem[_275 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_512 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                    if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                        revert with 0, 17
                    if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_512 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_512 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _285 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _285 + 68] = mem[idx + _275 + 32]
                    idx = idx + 32
                    continue 
                mem[_285 + 98] = 0
                revert with memory
                  from mem[64]
                   len _285 + -mem[64] + 100
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                if 0 > !sub_1341d34f:
                    revert with 0, 17
                if sub_1341d34f < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _242 = mem[64]
                mem[64] = mem[64] + 64
                mem[_242] = 30
                mem[_242 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_1341d34f:
                    if sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                        revert with 0, 17
                    if s > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_512 > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_512 = sub_1341d34f
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _252 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _252 + 68] = mem[idx + _242 + 32]
                    idx = idx + 32
                    continue 
                mem[_252 + 98] = 0
                revert with memory
                  from mem[64]
                   len _252 + -mem[64] + 100
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
                revert with 0, 17
            if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            _276 = mem[64]
            mem[64] = mem[64] + 64
            mem[_276] = 30
            mem[_276 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_512 <= (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
                if (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                    revert with 0, 17
                if s > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)][idx].field_512 > !((block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                _getNodeNumberOf[address(arg1)][idx].field_512 = (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
                t = (4 * idx) + sha3(sha3(address(arg1), 0))
                continue 
            _286 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _286 + 68] = mem[idx + _276 + 32]
                idx = idx + 32
                continue 
            mem[_286 + 98] = 0
            revert with memory
              from mem[64]
               len _286 + -mem[64] + 100
        _180 = mem[64]
        mem[64] = mem[64] + 64
        mem[_180] = 30
        mem[_180 + 32] = 'SafeMath: subtraction overflow'
        if _getNodeNumberOf[address(arg1)][idx].field_0 > _getNodeNumberOf[address(arg1)][idx].field_768:
            _183 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _183 + 68] = mem[idx + _180 + 32]
                idx = idx + 32
                continue 
            mem[_183 + 98] = 0
            revert with memory
              from mem[64]
               len _183 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_768 < _getNodeNumberOf[address(arg1)][idx].field_0:
            revert with 0, 17
        _192 = mem[64]
        mem[64] = mem[64] + 64
        mem[_192] = 26
        mem[_192 + 32] = 'SafeMath: division by zero'
        if not sub_0b433a12:
            _198 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _198 + 68] = mem[idx + _192 + 32]
                idx = idx + 32
                continue 
            mem[_198 + 94] = 0
            revert with memory
              from mem[64]
               len _198 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_768 > 0:
            if not _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                if 0 > !sub_29271acd:
                    revert with 0, 17
                if sub_29271acd < 0:
                    revert with 0, 'SafeMath: addition overflow'
                _249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_249] = 30
                mem[_249 + 32] = 'SafeMath: subtraction overflow'
                if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_29271acd:
                    if sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                        revert with 0, 17
                    if s > !(sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    if _getNodeNumberOf[address(arg1)][idx].field_512 > !(sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                        revert with 0, 17
                    _getNodeNumberOf[address(arg1)][idx].field_512 = sub_29271acd
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                    t = (4 * idx) + sha3(sha3(address(arg1), 0))
                    continue 
                _257 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _257 + 68] = mem[idx + _249 + 32]
                    idx = idx + 32
                    continue 
                mem[_257 + 98] = 0
                revert with memory
                  from mem[64]
                   len _257 + -mem[64] + 100
            if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 17
            if not _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
                revert with 0, 18
            if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_29271acd:
                revert with 0, 17
            if (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
                revert with 0, 'SafeMath: addition overflow'
            _283 = mem[64]
            mem[64] = mem[64] + 64
            mem[_283] = 30
            mem[_283 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_512 <= (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd:
                if (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd < _getNodeNumberOf[address(arg1)][idx].field_512:
                    revert with 0, 17
                if s > !((_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)][idx].field_512 > !((_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                _getNodeNumberOf[address(arg1)][idx].field_512 = (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_29271acd - _getNodeNumberOf[address(arg1)][idx].field_512
                t = (4 * idx) + sha3(sha3(address(arg1), 0))
                continue 
            _291 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _291 + 68] = mem[idx + _283 + 32]
                idx = idx + 32
                continue 
            mem[_291 + 98] = 0
            revert with memory
              from mem[64]
               len _291 + -mem[64] + 100
        if not _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
            if 0 > !sub_1341d34f:
                revert with 0, 17
            if sub_1341d34f < 0:
                revert with 0, 'SafeMath: addition overflow'
            _250 = mem[64]
            mem[64] = mem[64] + 64
            mem[_250] = 30
            mem[_250 + 32] = 'SafeMath: subtraction overflow'
            if _getNodeNumberOf[address(arg1)][idx].field_512 <= sub_1341d34f:
                if sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                    revert with 0, 17
                if s > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                if _getNodeNumberOf[address(arg1)][idx].field_512 > !(sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                    revert with 0, 17
                _getNodeNumberOf[address(arg1)][idx].field_512 = sub_1341d34f
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
                t = (4 * idx) + sha3(sha3(address(arg1), 0))
                continue 
            _258 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _258 + 68] = mem[idx + _250 + 32]
                idx = idx + 32
                continue 
            mem[_258 + 98] = 0
            revert with memory
              from mem[64]
               len _258 + -mem[64] + 100
        if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 and sub_d754d433 > -1 / _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
            revert with 0, 17
        if not _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12:
            revert with 0, 18
        if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 / _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433 > !sub_1341d34f:
            revert with 0, 17
        if (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433:
            revert with 0, 'SafeMath: addition overflow'
        _284 = mem[64]
        mem[64] = mem[64] + 64
        mem[_284] = 30
        mem[_284 + 32] = 'SafeMath: subtraction overflow'
        if _getNodeNumberOf[address(arg1)][idx].field_512 <= (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f:
            if (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f < _getNodeNumberOf[address(arg1)][idx].field_512:
                revert with 0, 17
            if s > !((_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                revert with 0, 17
            if _getNodeNumberOf[address(arg1)][idx].field_512 > !((_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512):
                revert with 0, 17
            _getNodeNumberOf[address(arg1)][idx].field_512 = (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (_getNodeNumberOf[address(arg1)][idx].field_768 - _getNodeNumberOf[address(arg1)][idx].field_0 / sub_0b433a12 * sub_d754d433) + sub_1341d34f - _getNodeNumberOf[address(arg1)][idx].field_512
            t = (4 * idx) + sha3(sha3(address(arg1), 0))
            continue 
        _292 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _292 + 68] = mem[idx + _284 + 32]
            idx = idx + 32
            continue 
        mem[_292 + 98] = 0
        revert with memory
          from mem[64]
           len _292 + -mem[64] + 100
    return s
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'GET CREATIME: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 0
    mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
    mem[96] = _getNodeNumberOf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _50 = mem[64]
        mem[64] = mem[64] + 128
        mem[_50] = _getNodeNumberOf[address(arg1)][idx].field_0
        mem[_50 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
        mem[_50 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
        mem[_50 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
        mem[s] = _50
        s = s + 32
        idx = idx + 1
        continue 
    _47 = mem[96]
    _48 = mem[64]
    mem[64] = mem[64] + 128
    mem[_48] = 0
    mem[_48 + 32] = 0
    mem[_48 + 64] = 0
    mem[_48 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _53 = mem[mem[128]]
    if not mem[mem[128]]:
        _54 = mem[64]
        mem[64] = mem[64] + 64
        mem[_54] = 1
        mem[_54 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _55 = mem[64]
        mem[64] = mem[64] + 64
        mem[_55] = 1
        mem[_55 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _54
        t = _48
        while idx < _47:
            if idx >= mem[96]:
                revert with 0, 50
            _91 = mem[(32 * idx) + 128]
            _92 = mem[mem[(32 * idx) + 128]]
            if not mem[mem[(32 * idx) + 128]]:
                _94 = mem[64]
                mem[64] = mem[64] + 64
                mem[_94] = 1
                mem[_94 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _95 = mem[64]
                _97 = mem[s]
                t = 0
                while t < _97:
                    mem[t + _95 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_97) <= _97:
                    _194 = mem[_55]
                    s = 0
                    while s < _194:
                        mem[s + _95 + _97 + 32] = mem[s + _55 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_194) <= _194:
                        _344 = mem[_94]
                        s = 0
                        while s < _344:
                            mem[s + _95 + _97 + _194 + 32] = mem[s + _94 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_344) <= _344:
                            _480 = mem[64]
                            mem[mem[64]] = _344 + _95 + _97 + _194 - mem[64]
                            mem[64] = _344 + _95 + _97 + _194 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _480
                            t = _91
                            continue 
                        mem[_95 + _97 + _194 + _344 + 32] = 0
                        _486 = mem[64]
                        mem[mem[64]] = _344 + _95 + _97 + _194 - mem[64]
                        mem[64] = _344 + _95 + _97 + _194 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _486
                        t = _91
                        continue 
                    mem[_95 + _97 + _194 + 32] = 0
                    _350 = mem[_94]
                    s = 0
                    while s < _350:
                        mem[s + _95 + _97 + _194 + 32] = mem[s + _94 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_350) <= _350:
                        _481 = mem[64]
                        mem[mem[64]] = _350 + _95 + _97 + _194 - mem[64]
                        mem[64] = _350 + _95 + _97 + _194 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _481
                        t = _91
                        continue 
                    mem[_95 + _97 + _194 + _350 + 32] = 0
                    _487 = mem[64]
                    mem[mem[64]] = _350 + _95 + _97 + _194 - mem[64]
                    mem[64] = _350 + _95 + _97 + _194 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _487
                    t = _91
                    continue 
                mem[_95 + _97 + 32] = 0
                _197 = mem[_55]
                s = 0
                while s < _197:
                    mem[s + _95 + _97 + 32] = mem[s + _55 + 32]
                    s = s + 32
                    continue 
                if ceil32(_197) <= _197:
                    _345 = mem[_94]
                    s = 0
                    while s < _345:
                        mem[s + _95 + _97 + _197 + 32] = mem[s + _94 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_345) <= _345:
                        _482 = mem[64]
                        mem[mem[64]] = _345 + _95 + _97 + _197 - mem[64]
                        mem[64] = _345 + _95 + _97 + _197 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _482
                        t = _91
                        continue 
                    mem[_95 + _97 + _197 + _345 + 32] = 0
                    _488 = mem[64]
                    mem[mem[64]] = _345 + _95 + _97 + _197 - mem[64]
                    mem[64] = _345 + _95 + _97 + _197 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _488
                    t = _91
                    continue 
                mem[_95 + _97 + _197 + 32] = 0
                _351 = mem[_94]
                s = 0
                while s < _351:
                    mem[s + _95 + _97 + _197 + 32] = mem[s + _94 + 32]
                    s = s + 32
                    continue 
                if ceil32(_351) <= _351:
                    _483 = mem[64]
                    mem[mem[64]] = _351 + _95 + _97 + _197 - mem[64]
                    mem[64] = _351 + _95 + _97 + _197 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _483
                    t = _91
                    continue 
                mem[_95 + _97 + _197 + _351 + 32] = 0
                _489 = mem[64]
                mem[mem[64]] = _351 + _95 + _97 + _197 - mem[64]
                mem[64] = _351 + _95 + _97 + _197 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _489
                t = _91
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128]]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _193 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _92
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_193]:
                        revert with 0, 50
                    mem[v + _193 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _340 = mem[64]
                _342 = mem[s]
                t = 0
                while t < _342:
                    mem[t + _340 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_342) <= _342:
                    _474 = mem[_55]
                    s = 0
                    while s < _474:
                        mem[s + _340 + _342 + 32] = mem[s + _55 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_474) <= _474:
                        _680 = mem[_193]
                        s = 0
                        while s < _680:
                            mem[s + _340 + _342 + _474 + 32] = mem[s + _193 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_680) <= _680:
                            _864 = mem[64]
                            mem[mem[64]] = _680 + _340 + _342 + _474 - mem[64]
                            mem[64] = _680 + _340 + _342 + _474 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _864
                            t = _91
                            continue 
                        mem[_340 + _342 + _474 + _680 + 32] = 0
                        _880 = mem[64]
                        mem[mem[64]] = _680 + _340 + _342 + _474 - mem[64]
                        mem[64] = _680 + _340 + _342 + _474 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        t = _91
                        continue 
                    mem[_340 + _342 + _474 + 32] = 0
                    _688 = mem[_193]
                    s = 0
                    while s < _688:
                        mem[s + _340 + _342 + _474 + 32] = mem[s + _193 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_688) <= _688:
                        _865 = mem[64]
                        mem[mem[64]] = _688 + _340 + _342 + _474 - mem[64]
                        mem[64] = _688 + _340 + _342 + _474 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _865
                        t = _91
                        continue 
                    mem[_340 + _342 + _474 + _688 + 32] = 0
                    _881 = mem[64]
                    mem[mem[64]] = _688 + _340 + _342 + _474 - mem[64]
                    mem[64] = _688 + _340 + _342 + _474 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _881
                    t = _91
                    continue 
                mem[_340 + _342 + 32] = 0
                _478 = mem[_55]
                s = 0
                while s < _478:
                    mem[s + _340 + _342 + 32] = mem[s + _55 + 32]
                    s = s + 32
                    continue 
                if ceil32(_478) <= _478:
                    _681 = mem[_193]
                    s = 0
                    while s < _681:
                        mem[s + _340 + _342 + _478 + 32] = mem[s + _193 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_681) <= _681:
                        _866 = mem[64]
                        mem[mem[64]] = _681 + _340 + _342 + _478 - mem[64]
                        mem[64] = _681 + _340 + _342 + _478 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _866
                        t = _91
                        continue 
                    mem[_340 + _342 + _478 + _681 + 32] = 0
                    _882 = mem[64]
                    mem[mem[64]] = _681 + _340 + _342 + _478 - mem[64]
                    mem[64] = _681 + _340 + _342 + _478 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    t = _91
                    continue 
                mem[_340 + _342 + _478 + 32] = 0
                _689 = mem[_193]
                s = 0
                while s < _689:
                    mem[s + _340 + _342 + _478 + 32] = mem[s + _193 + 32]
                    s = s + 32
                    continue 
                if ceil32(_689) <= _689:
                    _867 = mem[64]
                    mem[mem[64]] = _689 + _340 + _342 + _478 - mem[64]
                    mem[64] = _689 + _340 + _342 + _478 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _867
                    t = _91
                    continue 
                mem[_340 + _342 + _478 + _689 + 32] = 0
                _883 = mem[64]
                mem[mem[64]] = _689 + _340 + _342 + _478 - mem[64]
                mem[64] = _689 + _340 + _342 + _478 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _883
                t = _91
                continue 
            mem[_193 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _92
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_193]:
                    revert with 0, 50
                mem[v + _193 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _341 = mem[64]
            _343 = mem[s]
            t = 0
            while t < _343:
                mem[t + _341 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_343) <= _343:
                _475 = mem[_55]
                s = 0
                while s < _475:
                    mem[s + _341 + _343 + 32] = mem[s + _55 + 32]
                    s = s + 32
                    continue 
                if ceil32(_475) <= _475:
                    _682 = mem[_193]
                    s = 0
                    while s < _682:
                        mem[s + _341 + _343 + _475 + 32] = mem[s + _193 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_682) <= _682:
                        _868 = mem[64]
                        mem[mem[64]] = _682 + _341 + _343 + _475 - mem[64]
                        mem[64] = _682 + _341 + _343 + _475 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _868
                        t = _91
                        continue 
                    mem[_341 + _343 + _475 + _682 + 32] = 0
                    _884 = mem[64]
                    mem[mem[64]] = _682 + _341 + _343 + _475 - mem[64]
                    mem[64] = _682 + _341 + _343 + _475 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _91
                    continue 
                mem[_341 + _343 + _475 + 32] = 0
                _690 = mem[_193]
                s = 0
                while s < _690:
                    mem[s + _341 + _343 + _475 + 32] = mem[s + _193 + 32]
                    s = s + 32
                    continue 
                if ceil32(_690) <= _690:
                    _869 = mem[64]
                    mem[mem[64]] = _690 + _341 + _343 + _475 - mem[64]
                    mem[64] = _690 + _341 + _343 + _475 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _869
                    t = _91
                    continue 
                mem[_341 + _343 + _475 + _690 + 32] = 0
                _885 = mem[64]
                mem[mem[64]] = _690 + _341 + _343 + _475 - mem[64]
                mem[64] = _690 + _341 + _343 + _475 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _885
                t = _91
                continue 
            mem[_341 + _343 + 32] = 0
            _479 = mem[_55]
            s = 0
            while s < _479:
                mem[s + _341 + _343 + 32] = mem[s + _55 + 32]
                s = s + 32
                continue 
            if ceil32(_479) <= _479:
                _683 = mem[_193]
                s = 0
                while s < _683:
                    mem[s + _341 + _343 + _479 + 32] = mem[s + _193 + 32]
                    s = s + 32
                    continue 
                if ceil32(_683) <= _683:
                    _870 = mem[64]
                    mem[mem[64]] = _683 + _341 + _343 + _479 - mem[64]
                    mem[64] = _683 + _341 + _343 + _479 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _870
                    t = _91
                    continue 
                mem[_341 + _343 + _479 + _683 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _683 + _341 + _343 + _479 - mem[64]
                mem[64] = _683 + _341 + _343 + _479 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                t = _91
                continue 
            mem[_341 + _343 + _479 + 32] = 0
            _691 = mem[_193]
            s = 0
            while s < _691:
                mem[s + _341 + _343 + _479 + 32] = mem[s + _193 + 32]
                s = s + 32
                continue 
            if ceil32(_691) <= _691:
                _871 = mem[64]
                mem[mem[64]] = _691 + _341 + _343 + _479 - mem[64]
                mem[64] = _691 + _341 + _343 + _479 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _871
                t = _91
                continue 
            mem[_341 + _343 + _479 + _691 + 32] = 0
            _887 = mem[64]
            mem[mem[64]] = _691 + _341 + _343 + _479 - mem[64]
            mem[64] = _691 + _341 + _343 + _479 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _887
            t = _91
            continue 
        mem[mem[64]] = 32
        _93 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_93)] = mem[s + 32 len ceil32(_93)]
        if ceil32(_93) > _93:
            mem[mem[64] + _93 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_93) + 32]
    s = 0
    idx = mem[mem[128]]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _89 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _53
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_89]:
                revert with 0, 50
            mem[t + _89 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _191 = mem[64]
        mem[64] = mem[64] + 64
        mem[_191] = 1
        mem[_191 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _89
        u = _48
        while idx < _47:
            if idx >= mem[96]:
                revert with 0, 50
            _335 = mem[(32 * idx) + 128]
            _336 = mem[mem[(32 * idx) + 128]]
            if not mem[mem[(32 * idx) + 128]]:
                _347 = mem[64]
                mem[64] = mem[64] + 64
                mem[_347] = 1
                mem[_347 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _352 = mem[64]
                _354 = mem[s]
                u = 0
                while u < _354:
                    mem[u + _352 + 32] = mem[u + s + 32]
                    u = u + 32
                    continue 
                if ceil32(_354) <= _354:
                    _472 = mem[_191]
                    s = 0
                    while s < _472:
                        mem[s + _352 + _354 + 32] = mem[s + _191 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_472) <= _472:
                        _674 = mem[_347]
                        s = 0
                        while s < _674:
                            mem[s + _352 + _354 + _472 + 32] = mem[s + _347 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_674) <= _674:
                            _854 = mem[64]
                            mem[mem[64]] = _674 + _352 + _354 + _472 - mem[64]
                            mem[64] = _674 + _352 + _354 + _472 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _854
                            u = _335
                            continue 
                        mem[_352 + _354 + _472 + _674 + 32] = 0
                        _872 = mem[64]
                        mem[mem[64]] = _674 + _352 + _354 + _472 - mem[64]
                        mem[64] = _674 + _352 + _354 + _472 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _872
                        u = _335
                        continue 
                    mem[_352 + _354 + _472 + 32] = 0
                    _684 = mem[_347]
                    s = 0
                    while s < _684:
                        mem[s + _352 + _354 + _472 + 32] = mem[s + _347 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_684) <= _684:
                        _855 = mem[64]
                        mem[mem[64]] = _684 + _352 + _354 + _472 - mem[64]
                        mem[64] = _684 + _352 + _354 + _472 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _855
                        u = _335
                        continue 
                    mem[_352 + _354 + _472 + _684 + 32] = 0
                    _873 = mem[64]
                    mem[mem[64]] = _684 + _352 + _354 + _472 - mem[64]
                    mem[64] = _684 + _352 + _354 + _472 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _873
                    u = _335
                    continue 
                mem[_352 + _354 + 32] = 0
                _476 = mem[_191]
                s = 0
                while s < _476:
                    mem[s + _352 + _354 + 32] = mem[s + _191 + 32]
                    s = s + 32
                    continue 
                if ceil32(_476) <= _476:
                    _675 = mem[_347]
                    s = 0
                    while s < _675:
                        mem[s + _352 + _354 + _476 + 32] = mem[s + _347 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_675) <= _675:
                        _856 = mem[64]
                        mem[mem[64]] = _675 + _352 + _354 + _476 - mem[64]
                        mem[64] = _675 + _352 + _354 + _476 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _856
                        u = _335
                        continue 
                    mem[_352 + _354 + _476 + _675 + 32] = 0
                    _874 = mem[64]
                    mem[mem[64]] = _675 + _352 + _354 + _476 - mem[64]
                    mem[64] = _675 + _352 + _354 + _476 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _874
                    u = _335
                    continue 
                mem[_352 + _354 + _476 + 32] = 0
                _685 = mem[_347]
                s = 0
                while s < _685:
                    mem[s + _352 + _354 + _476 + 32] = mem[s + _347 + 32]
                    s = s + 32
                    continue 
                if ceil32(_685) <= _685:
                    _857 = mem[64]
                    mem[mem[64]] = _685 + _352 + _354 + _476 - mem[64]
                    mem[64] = _685 + _352 + _354 + _476 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _857
                    u = _335
                    continue 
                mem[_352 + _354 + _476 + _685 + 32] = 0
                _875 = mem[64]
                mem[mem[64]] = _685 + _352 + _354 + _476 - mem[64]
                mem[64] = _685 + _352 + _354 + _476 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _875
                u = _335
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128]]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _470 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _336
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_470]:
                        revert with 0, 50
                    mem[v + _470 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _668 = mem[64]
                _672 = mem[s]
                t = 0
                while t < _672:
                    mem[t + _668 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_672) <= _672:
                    _848 = mem[_191]
                    s = 0
                    while s < _848:
                        mem[s + _668 + _672 + 32] = mem[s + _191 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_848) <= _848:
                        _968 = mem[_470]
                        s = 0
                        while s < _968:
                            mem[s + _668 + _672 + _848 + 32] = mem[s + _470 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_968) <= _968:
                            _1048 = mem[64]
                            mem[mem[64]] = _968 + _668 + _672 + _848 - mem[64]
                            mem[64] = _968 + _668 + _672 + _848 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1048
                            u = _335
                            continue 
                        mem[_668 + _672 + _848 + _968 + 32] = 0
                        _1064 = mem[64]
                        mem[mem[64]] = _968 + _668 + _672 + _848 - mem[64]
                        mem[64] = _968 + _668 + _672 + _848 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1064
                        u = _335
                        continue 
                    mem[_668 + _672 + _848 + 32] = 0
                    _976 = mem[_470]
                    s = 0
                    while s < _976:
                        mem[s + _668 + _672 + _848 + 32] = mem[s + _470 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_976) <= _976:
                        _1049 = mem[64]
                        mem[mem[64]] = _976 + _668 + _672 + _848 - mem[64]
                        mem[64] = _976 + _668 + _672 + _848 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1049
                        u = _335
                        continue 
                    mem[_668 + _672 + _848 + _976 + 32] = 0
                    _1065 = mem[64]
                    mem[mem[64]] = _976 + _668 + _672 + _848 - mem[64]
                    mem[64] = _976 + _668 + _672 + _848 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1065
                    u = _335
                    continue 
                mem[_668 + _672 + 32] = 0
                _852 = mem[_191]
                s = 0
                while s < _852:
                    mem[s + _668 + _672 + 32] = mem[s + _191 + 32]
                    s = s + 32
                    continue 
                if ceil32(_852) <= _852:
                    _969 = mem[_470]
                    s = 0
                    while s < _969:
                        mem[s + _668 + _672 + _852 + 32] = mem[s + _470 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_969) <= _969:
                        _1050 = mem[64]
                        mem[mem[64]] = _969 + _668 + _672 + _852 - mem[64]
                        mem[64] = _969 + _668 + _672 + _852 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1050
                        u = _335
                        continue 
                    mem[_668 + _672 + _852 + _969 + 32] = 0
                    _1066 = mem[64]
                    mem[mem[64]] = _969 + _668 + _672 + _852 - mem[64]
                    mem[64] = _969 + _668 + _672 + _852 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1066
                    u = _335
                    continue 
                mem[_668 + _672 + _852 + 32] = 0
                _977 = mem[_470]
                s = 0
                while s < _977:
                    mem[s + _668 + _672 + _852 + 32] = mem[s + _470 + 32]
                    s = s + 32
                    continue 
                if ceil32(_977) <= _977:
                    _1051 = mem[64]
                    mem[mem[64]] = _977 + _668 + _672 + _852 - mem[64]
                    mem[64] = _977 + _668 + _672 + _852 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1051
                    u = _335
                    continue 
                mem[_668 + _672 + _852 + _977 + 32] = 0
                _1067 = mem[64]
                mem[mem[64]] = _977 + _668 + _672 + _852 - mem[64]
                mem[64] = _977 + _668 + _672 + _852 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1067
                u = _335
                continue 
            mem[_470 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _336
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_470]:
                    revert with 0, 50
                mem[v + _470 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _669 = mem[64]
            _673 = mem[s]
            t = 0
            while t < _673:
                mem[t + _669 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_673) <= _673:
                _849 = mem[_191]
                s = 0
                while s < _849:
                    mem[s + _669 + _673 + 32] = mem[s + _191 + 32]
                    s = s + 32
                    continue 
                if ceil32(_849) <= _849:
                    _970 = mem[_470]
                    s = 0
                    while s < _970:
                        mem[s + _669 + _673 + _849 + 32] = mem[s + _470 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_970) <= _970:
                        _1052 = mem[64]
                        mem[mem[64]] = _970 + _669 + _673 + _849 - mem[64]
                        mem[64] = _970 + _669 + _673 + _849 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1052
                        u = _335
                        continue 
                    mem[_669 + _673 + _849 + _970 + 32] = 0
                    _1068 = mem[64]
                    mem[mem[64]] = _970 + _669 + _673 + _849 - mem[64]
                    mem[64] = _970 + _669 + _673 + _849 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1068
                    u = _335
                    continue 
                mem[_669 + _673 + _849 + 32] = 0
                _978 = mem[_470]
                s = 0
                while s < _978:
                    mem[s + _669 + _673 + _849 + 32] = mem[s + _470 + 32]
                    s = s + 32
                    continue 
                if ceil32(_978) <= _978:
                    _1053 = mem[64]
                    mem[mem[64]] = _978 + _669 + _673 + _849 - mem[64]
                    mem[64] = _978 + _669 + _673 + _849 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1053
                    u = _335
                    continue 
                mem[_669 + _673 + _849 + _978 + 32] = 0
                _1069 = mem[64]
                mem[mem[64]] = _978 + _669 + _673 + _849 - mem[64]
                mem[64] = _978 + _669 + _673 + _849 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1069
                u = _335
                continue 
            mem[_669 + _673 + 32] = 0
            _853 = mem[_191]
            s = 0
            while s < _853:
                mem[s + _669 + _673 + 32] = mem[s + _191 + 32]
                s = s + 32
                continue 
            if ceil32(_853) <= _853:
                _971 = mem[_470]
                s = 0
                while s < _971:
                    mem[s + _669 + _673 + _853 + 32] = mem[s + _470 + 32]
                    s = s + 32
                    continue 
                if ceil32(_971) <= _971:
                    _1054 = mem[64]
                    mem[mem[64]] = _971 + _669 + _673 + _853 - mem[64]
                    mem[64] = _971 + _669 + _673 + _853 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1054
                    u = _335
                    continue 
                mem[_669 + _673 + _853 + _971 + 32] = 0
                _1070 = mem[64]
                mem[mem[64]] = _971 + _669 + _673 + _853 - mem[64]
                mem[64] = _971 + _669 + _673 + _853 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1070
                u = _335
                continue 
            mem[_669 + _673 + _853 + 32] = 0
            _979 = mem[_470]
            s = 0
            while s < _979:
                mem[s + _669 + _673 + _853 + 32] = mem[s + _470 + 32]
                s = s + 32
                continue 
            if ceil32(_979) <= _979:
                _1055 = mem[64]
                mem[mem[64]] = _979 + _669 + _673 + _853 - mem[64]
                mem[64] = _979 + _669 + _673 + _853 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1055
                u = _335
                continue 
            mem[_669 + _673 + _853 + _979 + 32] = 0
            _1071 = mem[64]
            mem[mem[64]] = _979 + _669 + _673 + _853 - mem[64]
            mem[64] = _979 + _669 + _673 + _853 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1071
            u = _335
            continue 
        mem[mem[64]] = 32
        _346 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_346)] = mem[s + 32 len ceil32(_346)]
        var37001 = ceil32(_346)
        if ceil32(_346) > _346:
            mem[mem[64] + _346 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_346) + 32]
    mem[_89 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _53
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_89]:
            revert with 0, 50
        mem[t + _89 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _192 = mem[64]
    mem[64] = mem[64] + 64
    mem[_192] = 1
    mem[_192 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _89
    u = _48
    while idx < _47:
        if idx >= mem[96]:
            revert with 0, 50
        _338 = mem[(32 * idx) + 128]
        _339 = mem[mem[(32 * idx) + 128]]
        if not mem[mem[(32 * idx) + 128]]:
            _349 = mem[64]
            mem[64] = mem[64] + 64
            mem[_349] = 1
            mem[_349 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _353 = mem[64]
            _355 = mem[s]
            u = 0
            while u < _355:
                mem[u + _353 + 32] = mem[u + s + 32]
                u = u + 32
                continue 
            if ceil32(_355) <= _355:
                _473 = mem[_192]
                s = 0
                while s < _473:
                    mem[s + _353 + _355 + 32] = mem[s + _192 + 32]
                    s = s + 32
                    continue 
                if ceil32(_473) <= _473:
                    _678 = mem[_349]
                    s = 0
                    while s < _678:
                        mem[s + _353 + _355 + _473 + 32] = mem[s + _349 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_678) <= _678:
                        _860 = mem[64]
                        mem[mem[64]] = _678 + _353 + _355 + _473 - mem[64]
                        mem[64] = _678 + _353 + _355 + _473 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _860
                        u = _338
                        continue 
                    mem[_353 + _355 + _473 + _678 + 32] = 0
                    _876 = mem[64]
                    mem[mem[64]] = _678 + _353 + _355 + _473 - mem[64]
                    mem[64] = _678 + _353 + _355 + _473 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _876
                    u = _338
                    continue 
                mem[_353 + _355 + _473 + 32] = 0
                _686 = mem[_349]
                s = 0
                while s < _686:
                    mem[s + _353 + _355 + _473 + 32] = mem[s + _349 + 32]
                    s = s + 32
                    continue 
                if ceil32(_686) <= _686:
                    _861 = mem[64]
                    mem[mem[64]] = _686 + _353 + _355 + _473 - mem[64]
                    mem[64] = _686 + _353 + _355 + _473 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _861
                    u = _338
                    continue 
                mem[_353 + _355 + _473 + _686 + 32] = 0
                _877 = mem[64]
                mem[mem[64]] = _686 + _353 + _355 + _473 - mem[64]
                mem[64] = _686 + _353 + _355 + _473 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _877
                u = _338
                continue 
            mem[_353 + _355 + 32] = 0
            _477 = mem[_192]
            s = 0
            while s < _477:
                mem[s + _353 + _355 + 32] = mem[s + _192 + 32]
                s = s + 32
                continue 
            if ceil32(_477) <= _477:
                _679 = mem[_349]
                s = 0
                while s < _679:
                    mem[s + _353 + _355 + _477 + 32] = mem[s + _349 + 32]
                    s = s + 32
                    continue 
                if ceil32(_679) <= _679:
                    _862 = mem[64]
                    mem[mem[64]] = _679 + _353 + _355 + _477 - mem[64]
                    mem[64] = _679 + _353 + _355 + _477 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _862
                    u = _338
                    continue 
                mem[_353 + _355 + _477 + _679 + 32] = 0
                _878 = mem[64]
                mem[mem[64]] = _679 + _353 + _355 + _477 - mem[64]
                mem[64] = _679 + _353 + _355 + _477 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _878
                u = _338
                continue 
            mem[_353 + _355 + _477 + 32] = 0
            _687 = mem[_349]
            s = 0
            while s < _687:
                mem[s + _353 + _355 + _477 + 32] = mem[s + _349 + 32]
                s = s + 32
                continue 
            if ceil32(_687) <= _687:
                _863 = mem[64]
                mem[mem[64]] = _687 + _353 + _355 + _477 - mem[64]
                mem[64] = _687 + _353 + _355 + _477 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _863
                u = _338
                continue 
            mem[_353 + _355 + _477 + _687 + 32] = 0
            _879 = mem[64]
            mem[mem[64]] = _687 + _353 + _355 + _477 - mem[64]
            mem[64] = _687 + _353 + _355 + _477 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _879
            u = _338
            continue 
        u = 0
        t = mem[mem[(32 * idx) + 128]]
        while t:
            if u == -1:
                revert with 0, 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _471 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _339
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_471]:
                    revert with 0, 50
                mem[v + _471 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _670 = mem[64]
            _676 = mem[s]
            t = 0
            while t < _676:
                mem[t + _670 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_676) <= _676:
                _850 = mem[_192]
                s = 0
                while s < _850:
                    mem[s + _670 + _676 + 32] = mem[s + _192 + 32]
                    s = s + 32
                    continue 
                if ceil32(_850) <= _850:
                    _972 = mem[_471]
                    s = 0
                    while s < _972:
                        mem[s + _670 + _676 + _850 + 32] = mem[s + _471 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_972) <= _972:
                        _1056 = mem[64]
                        mem[mem[64]] = _972 + _670 + _676 + _850 - mem[64]
                        mem[64] = _972 + _670 + _676 + _850 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1056
                        u = _338
                        continue 
                    mem[_670 + _676 + _850 + _972 + 32] = 0
                    _1072 = mem[64]
                    mem[mem[64]] = _972 + _670 + _676 + _850 - mem[64]
                    mem[64] = _972 + _670 + _676 + _850 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1072
                    u = _338
                    continue 
                mem[_670 + _676 + _850 + 32] = 0
                _980 = mem[_471]
                s = 0
                while s < _980:
                    mem[s + _670 + _676 + _850 + 32] = mem[s + _471 + 32]
                    s = s + 32
                    continue 
                if ceil32(_980) <= _980:
                    _1057 = mem[64]
                    mem[mem[64]] = _980 + _670 + _676 + _850 - mem[64]
                    mem[64] = _980 + _670 + _676 + _850 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1057
                    u = _338
                    continue 
                mem[_670 + _676 + _850 + _980 + 32] = 0
                _1073 = mem[64]
                mem[mem[64]] = _980 + _670 + _676 + _850 - mem[64]
                mem[64] = _980 + _670 + _676 + _850 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1073
                u = _338
                continue 
            mem[_670 + _676 + 32] = 0
            _858 = mem[_192]
            s = 0
            while s < _858:
                mem[s + _670 + _676 + 32] = mem[s + _192 + 32]
                s = s + 32
                continue 
            if ceil32(_858) <= _858:
                _973 = mem[_471]
                s = 0
                while s < _973:
                    mem[s + _670 + _676 + _858 + 32] = mem[s + _471 + 32]
                    s = s + 32
                    continue 
                if ceil32(_973) <= _973:
                    _1058 = mem[64]
                    mem[mem[64]] = _973 + _670 + _676 + _858 - mem[64]
                    mem[64] = _973 + _670 + _676 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1058
                    u = _338
                    continue 
                mem[_670 + _676 + _858 + _973 + 32] = 0
                _1074 = mem[64]
                mem[mem[64]] = _973 + _670 + _676 + _858 - mem[64]
                mem[64] = _973 + _670 + _676 + _858 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1074
                u = _338
                continue 
            mem[_670 + _676 + _858 + 32] = 0
            _981 = mem[_471]
            s = 0
            while s < _981:
                mem[s + _670 + _676 + _858 + 32] = mem[s + _471 + 32]
                s = s + 32
                continue 
            if ceil32(_981) <= _981:
                _1059 = mem[64]
                mem[mem[64]] = _981 + _670 + _676 + _858 - mem[64]
                mem[64] = _981 + _670 + _676 + _858 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1059
                u = _338
                continue 
            mem[_670 + _676 + _858 + _981 + 32] = 0
            _1075 = mem[64]
            mem[mem[64]] = _981 + _670 + _676 + _858 - mem[64]
            mem[64] = _981 + _670 + _676 + _858 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1075
            u = _338
            continue 
        mem[_471 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _339
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_471]:
                revert with 0, 50
            mem[v + _471 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _671 = mem[64]
        _677 = mem[s]
        t = 0
        while t < _677:
            mem[t + _671 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_677) <= _677:
            _851 = mem[_192]
            s = 0
            while s < _851:
                mem[s + _671 + _677 + 32] = mem[s + _192 + 32]
                s = s + 32
                continue 
            if ceil32(_851) <= _851:
                _974 = mem[_471]
                s = 0
                while s < _974:
                    mem[s + _671 + _677 + _851 + 32] = mem[s + _471 + 32]
                    s = s + 32
                    continue 
                if ceil32(_974) <= _974:
                    _1060 = mem[64]
                    mem[mem[64]] = _974 + _671 + _677 + _851 - mem[64]
                    mem[64] = _974 + _671 + _677 + _851 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1060
                    u = _338
                    continue 
                mem[_671 + _677 + _851 + _974 + 32] = 0
                _1076 = mem[64]
                mem[mem[64]] = _974 + _671 + _677 + _851 - mem[64]
                mem[64] = _974 + _671 + _677 + _851 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1076
                u = _338
                continue 
            mem[_671 + _677 + _851 + 32] = 0
            _982 = mem[_471]
            s = 0
            while s < _982:
                mem[s + _671 + _677 + _851 + 32] = mem[s + _471 + 32]
                s = s + 32
                continue 
            if ceil32(_982) <= _982:
                _1061 = mem[64]
                mem[mem[64]] = _982 + _671 + _677 + _851 - mem[64]
                mem[64] = _982 + _671 + _677 + _851 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1061
                u = _338
                continue 
            mem[_671 + _677 + _851 + _982 + 32] = 0
            _1077 = mem[64]
            mem[mem[64]] = _982 + _671 + _677 + _851 - mem[64]
            mem[64] = _982 + _671 + _677 + _851 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1077
            u = _338
            continue 
        mem[_671 + _677 + 32] = 0
        _859 = mem[_192]
        s = 0
        while s < _859:
            mem[s + _671 + _677 + 32] = mem[s + _192 + 32]
            s = s + 32
            continue 
        if ceil32(_859) <= _859:
            _975 = mem[_471]
            s = 0
            while s < _975:
                mem[s + _671 + _677 + _859 + 32] = mem[s + _471 + 32]
                s = s + 32
                continue 
            if ceil32(_975) <= _975:
                _1062 = mem[64]
                mem[mem[64]] = _975 + _671 + _677 + _859 - mem[64]
                mem[64] = _975 + _671 + _677 + _859 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1062
                u = _338
                continue 
            mem[_671 + _677 + _859 + _975 + 32] = 0
            _1078 = mem[64]
            mem[mem[64]] = _975 + _671 + _677 + _859 - mem[64]
            mem[64] = _975 + _671 + _677 + _859 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1078
            u = _338
            continue 
        mem[_671 + _677 + _859 + 32] = 0
        _983 = mem[_471]
        s = 0
        while s < _983:
            mem[s + _671 + _677 + _859 + 32] = mem[s + _471 + 32]
            s = s + 32
            continue 
        if ceil32(_983) <= _983:
            _1063 = mem[64]
            mem[mem[64]] = _983 + _671 + _677 + _859 - mem[64]
            mem[64] = _983 + _671 + _677 + _859 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1063
            u = _338
            continue 
        mem[_671 + _677 + _859 + _983 + 32] = 0
        _1079 = mem[64]
        mem[mem[64]] = _983 + _671 + _677 + _859 - mem[64]
        mem[64] = _983 + _671 + _677 + _859 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _1079
        u = _338
        continue 
    mem[mem[64]] = 32
    _348 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_348)] = mem[s + 32 len ceil32(_348)]
    var38001 = ceil32(_348)
    if ceil32(_348) > _348:
        mem[mem[64] + _348 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_348) + 32]
}

function sub_c87aefa1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'GET CREATIME: NO NODE OWNER'
    mem[0] = address(arg1)
    mem[32] = 0
    mem[64] = (32 * _getNodeNumberOf[address(arg1)].field_0) + 128
    mem[96] = _getNodeNumberOf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _50 = mem[64]
        mem[64] = mem[64] + 128
        mem[_50] = _getNodeNumberOf[address(arg1)][idx].field_0
        mem[_50 + 32] = _getNodeNumberOf[address(arg1)][idx].field_256
        mem[_50 + 64] = _getNodeNumberOf[address(arg1)][idx].field_512
        mem[_50 + 96] = _getNodeNumberOf[address(arg1)][idx].field_768
        mem[s] = _50
        s = s + 32
        idx = idx + 1
        continue 
    _47 = mem[96]
    _48 = mem[64]
    mem[64] = mem[64] + 128
    mem[_48] = 0
    mem[_48 + 32] = 0
    mem[_48 + 64] = 0
    mem[_48 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _53 = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        _54 = mem[64]
        mem[64] = mem[64] + 64
        mem[_54] = 1
        mem[_54 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _55 = mem[64]
        mem[64] = mem[64] + 64
        mem[_55] = 1
        mem[_55 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _54
        t = _48
        while idx < _47:
            if idx >= mem[96]:
                revert with 0, 50
            _91 = mem[(32 * idx) + 128]
            _92 = mem[mem[(32 * idx) + 128] + 96]
            if not mem[mem[(32 * idx) + 128] + 96]:
                _94 = mem[64]
                mem[64] = mem[64] + 64
                mem[_94] = 1
                mem[_94 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _95 = mem[64]
                _97 = mem[s]
                t = 0
                while t < _97:
                    mem[t + _95 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_97) <= _97:
                    _194 = mem[_55]
                    s = 0
                    while s < _194:
                        mem[s + _95 + _97 + 32] = mem[s + _55 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_194) <= _194:
                        _344 = mem[_94]
                        s = 0
                        while s < _344:
                            mem[s + _95 + _97 + _194 + 32] = mem[s + _94 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_344) <= _344:
                            _480 = mem[64]
                            mem[mem[64]] = _344 + _95 + _97 + _194 - mem[64]
                            mem[64] = _344 + _95 + _97 + _194 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _480
                            t = _91
                            continue 
                        mem[_95 + _97 + _194 + _344 + 32] = 0
                        _486 = mem[64]
                        mem[mem[64]] = _344 + _95 + _97 + _194 - mem[64]
                        mem[64] = _344 + _95 + _97 + _194 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _486
                        t = _91
                        continue 
                    mem[_95 + _97 + _194 + 32] = 0
                    _350 = mem[_94]
                    s = 0
                    while s < _350:
                        mem[s + _95 + _97 + _194 + 32] = mem[s + _94 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_350) <= _350:
                        _481 = mem[64]
                        mem[mem[64]] = _350 + _95 + _97 + _194 - mem[64]
                        mem[64] = _350 + _95 + _97 + _194 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _481
                        t = _91
                        continue 
                    mem[_95 + _97 + _194 + _350 + 32] = 0
                    _487 = mem[64]
                    mem[mem[64]] = _350 + _95 + _97 + _194 - mem[64]
                    mem[64] = _350 + _95 + _97 + _194 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _487
                    t = _91
                    continue 
                mem[_95 + _97 + 32] = 0
                _197 = mem[_55]
                s = 0
                while s < _197:
                    mem[s + _95 + _97 + 32] = mem[s + _55 + 32]
                    s = s + 32
                    continue 
                if ceil32(_197) <= _197:
                    _345 = mem[_94]
                    s = 0
                    while s < _345:
                        mem[s + _95 + _97 + _197 + 32] = mem[s + _94 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_345) <= _345:
                        _482 = mem[64]
                        mem[mem[64]] = _345 + _95 + _97 + _197 - mem[64]
                        mem[64] = _345 + _95 + _97 + _197 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _482
                        t = _91
                        continue 
                    mem[_95 + _97 + _197 + _345 + 32] = 0
                    _488 = mem[64]
                    mem[mem[64]] = _345 + _95 + _97 + _197 - mem[64]
                    mem[64] = _345 + _95 + _97 + _197 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _488
                    t = _91
                    continue 
                mem[_95 + _97 + _197 + 32] = 0
                _351 = mem[_94]
                s = 0
                while s < _351:
                    mem[s + _95 + _97 + _197 + 32] = mem[s + _94 + 32]
                    s = s + 32
                    continue 
                if ceil32(_351) <= _351:
                    _483 = mem[64]
                    mem[mem[64]] = _351 + _95 + _97 + _197 - mem[64]
                    mem[64] = _351 + _95 + _97 + _197 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _483
                    t = _91
                    continue 
                mem[_95 + _97 + _197 + _351 + 32] = 0
                _489 = mem[64]
                mem[mem[64]] = _351 + _95 + _97 + _197 - mem[64]
                mem[64] = _351 + _95 + _97 + _197 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _489
                t = _91
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 96]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _193 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _92
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_193]:
                        revert with 0, 50
                    mem[v + _193 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _340 = mem[64]
                _342 = mem[s]
                t = 0
                while t < _342:
                    mem[t + _340 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_342) <= _342:
                    _474 = mem[_55]
                    s = 0
                    while s < _474:
                        mem[s + _340 + _342 + 32] = mem[s + _55 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_474) <= _474:
                        _680 = mem[_193]
                        s = 0
                        while s < _680:
                            mem[s + _340 + _342 + _474 + 32] = mem[s + _193 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_680) <= _680:
                            _864 = mem[64]
                            mem[mem[64]] = _680 + _340 + _342 + _474 - mem[64]
                            mem[64] = _680 + _340 + _342 + _474 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _864
                            t = _91
                            continue 
                        mem[_340 + _342 + _474 + _680 + 32] = 0
                        _880 = mem[64]
                        mem[mem[64]] = _680 + _340 + _342 + _474 - mem[64]
                        mem[64] = _680 + _340 + _342 + _474 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        t = _91
                        continue 
                    mem[_340 + _342 + _474 + 32] = 0
                    _688 = mem[_193]
                    s = 0
                    while s < _688:
                        mem[s + _340 + _342 + _474 + 32] = mem[s + _193 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_688) <= _688:
                        _865 = mem[64]
                        mem[mem[64]] = _688 + _340 + _342 + _474 - mem[64]
                        mem[64] = _688 + _340 + _342 + _474 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _865
                        t = _91
                        continue 
                    mem[_340 + _342 + _474 + _688 + 32] = 0
                    _881 = mem[64]
                    mem[mem[64]] = _688 + _340 + _342 + _474 - mem[64]
                    mem[64] = _688 + _340 + _342 + _474 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _881
                    t = _91
                    continue 
                mem[_340 + _342 + 32] = 0
                _478 = mem[_55]
                s = 0
                while s < _478:
                    mem[s + _340 + _342 + 32] = mem[s + _55 + 32]
                    s = s + 32
                    continue 
                if ceil32(_478) <= _478:
                    _681 = mem[_193]
                    s = 0
                    while s < _681:
                        mem[s + _340 + _342 + _478 + 32] = mem[s + _193 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_681) <= _681:
                        _866 = mem[64]
                        mem[mem[64]] = _681 + _340 + _342 + _478 - mem[64]
                        mem[64] = _681 + _340 + _342 + _478 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _866
                        t = _91
                        continue 
                    mem[_340 + _342 + _478 + _681 + 32] = 0
                    _882 = mem[64]
                    mem[mem[64]] = _681 + _340 + _342 + _478 - mem[64]
                    mem[64] = _681 + _340 + _342 + _478 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    t = _91
                    continue 
                mem[_340 + _342 + _478 + 32] = 0
                _689 = mem[_193]
                s = 0
                while s < _689:
                    mem[s + _340 + _342 + _478 + 32] = mem[s + _193 + 32]
                    s = s + 32
                    continue 
                if ceil32(_689) <= _689:
                    _867 = mem[64]
                    mem[mem[64]] = _689 + _340 + _342 + _478 - mem[64]
                    mem[64] = _689 + _340 + _342 + _478 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _867
                    t = _91
                    continue 
                mem[_340 + _342 + _478 + _689 + 32] = 0
                _883 = mem[64]
                mem[mem[64]] = _689 + _340 + _342 + _478 - mem[64]
                mem[64] = _689 + _340 + _342 + _478 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _883
                t = _91
                continue 
            mem[_193 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _92
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_193]:
                    revert with 0, 50
                mem[v + _193 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _341 = mem[64]
            _343 = mem[s]
            t = 0
            while t < _343:
                mem[t + _341 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_343) <= _343:
                _475 = mem[_55]
                s = 0
                while s < _475:
                    mem[s + _341 + _343 + 32] = mem[s + _55 + 32]
                    s = s + 32
                    continue 
                if ceil32(_475) <= _475:
                    _682 = mem[_193]
                    s = 0
                    while s < _682:
                        mem[s + _341 + _343 + _475 + 32] = mem[s + _193 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_682) <= _682:
                        _868 = mem[64]
                        mem[mem[64]] = _682 + _341 + _343 + _475 - mem[64]
                        mem[64] = _682 + _341 + _343 + _475 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _868
                        t = _91
                        continue 
                    mem[_341 + _343 + _475 + _682 + 32] = 0
                    _884 = mem[64]
                    mem[mem[64]] = _682 + _341 + _343 + _475 - mem[64]
                    mem[64] = _682 + _341 + _343 + _475 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _91
                    continue 
                mem[_341 + _343 + _475 + 32] = 0
                _690 = mem[_193]
                s = 0
                while s < _690:
                    mem[s + _341 + _343 + _475 + 32] = mem[s + _193 + 32]
                    s = s + 32
                    continue 
                if ceil32(_690) <= _690:
                    _869 = mem[64]
                    mem[mem[64]] = _690 + _341 + _343 + _475 - mem[64]
                    mem[64] = _690 + _341 + _343 + _475 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _869
                    t = _91
                    continue 
                mem[_341 + _343 + _475 + _690 + 32] = 0
                _885 = mem[64]
                mem[mem[64]] = _690 + _341 + _343 + _475 - mem[64]
                mem[64] = _690 + _341 + _343 + _475 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _885
                t = _91
                continue 
            mem[_341 + _343 + 32] = 0
            _479 = mem[_55]
            s = 0
            while s < _479:
                mem[s + _341 + _343 + 32] = mem[s + _55 + 32]
                s = s + 32
                continue 
            if ceil32(_479) <= _479:
                _683 = mem[_193]
                s = 0
                while s < _683:
                    mem[s + _341 + _343 + _479 + 32] = mem[s + _193 + 32]
                    s = s + 32
                    continue 
                if ceil32(_683) <= _683:
                    _870 = mem[64]
                    mem[mem[64]] = _683 + _341 + _343 + _479 - mem[64]
                    mem[64] = _683 + _341 + _343 + _479 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _870
                    t = _91
                    continue 
                mem[_341 + _343 + _479 + _683 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _683 + _341 + _343 + _479 - mem[64]
                mem[64] = _683 + _341 + _343 + _479 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                t = _91
                continue 
            mem[_341 + _343 + _479 + 32] = 0
            _691 = mem[_193]
            s = 0
            while s < _691:
                mem[s + _341 + _343 + _479 + 32] = mem[s + _193 + 32]
                s = s + 32
                continue 
            if ceil32(_691) <= _691:
                _871 = mem[64]
                mem[mem[64]] = _691 + _341 + _343 + _479 - mem[64]
                mem[64] = _691 + _341 + _343 + _479 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _871
                t = _91
                continue 
            mem[_341 + _343 + _479 + _691 + 32] = 0
            _887 = mem[64]
            mem[mem[64]] = _691 + _341 + _343 + _479 - mem[64]
            mem[64] = _691 + _341 + _343 + _479 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _887
            t = _91
            continue 
        mem[mem[64]] = 32
        _93 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_93)] = mem[s + 32 len ceil32(_93)]
        if ceil32(_93) > _93:
            mem[mem[64] + _93 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_93) + 32]
    s = 0
    idx = mem[mem[128] + 96]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _89 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _53
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_89]:
                revert with 0, 50
            mem[t + _89 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _191 = mem[64]
        mem[64] = mem[64] + 64
        mem[_191] = 1
        mem[_191 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _89
        u = _48
        while idx < _47:
            if idx >= mem[96]:
                revert with 0, 50
            _335 = mem[(32 * idx) + 128]
            _336 = mem[mem[(32 * idx) + 128] + 96]
            if not mem[mem[(32 * idx) + 128] + 96]:
                _347 = mem[64]
                mem[64] = mem[64] + 64
                mem[_347] = 1
                mem[_347 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _352 = mem[64]
                _354 = mem[s]
                u = 0
                while u < _354:
                    mem[u + _352 + 32] = mem[u + s + 32]
                    u = u + 32
                    continue 
                if ceil32(_354) <= _354:
                    _472 = mem[_191]
                    s = 0
                    while s < _472:
                        mem[s + _352 + _354 + 32] = mem[s + _191 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_472) <= _472:
                        _674 = mem[_347]
                        s = 0
                        while s < _674:
                            mem[s + _352 + _354 + _472 + 32] = mem[s + _347 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_674) <= _674:
                            _854 = mem[64]
                            mem[mem[64]] = _674 + _352 + _354 + _472 - mem[64]
                            mem[64] = _674 + _352 + _354 + _472 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _854
                            u = _335
                            continue 
                        mem[_352 + _354 + _472 + _674 + 32] = 0
                        _872 = mem[64]
                        mem[mem[64]] = _674 + _352 + _354 + _472 - mem[64]
                        mem[64] = _674 + _352 + _354 + _472 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _872
                        u = _335
                        continue 
                    mem[_352 + _354 + _472 + 32] = 0
                    _684 = mem[_347]
                    s = 0
                    while s < _684:
                        mem[s + _352 + _354 + _472 + 32] = mem[s + _347 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_684) <= _684:
                        _855 = mem[64]
                        mem[mem[64]] = _684 + _352 + _354 + _472 - mem[64]
                        mem[64] = _684 + _352 + _354 + _472 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _855
                        u = _335
                        continue 
                    mem[_352 + _354 + _472 + _684 + 32] = 0
                    _873 = mem[64]
                    mem[mem[64]] = _684 + _352 + _354 + _472 - mem[64]
                    mem[64] = _684 + _352 + _354 + _472 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _873
                    u = _335
                    continue 
                mem[_352 + _354 + 32] = 0
                _476 = mem[_191]
                s = 0
                while s < _476:
                    mem[s + _352 + _354 + 32] = mem[s + _191 + 32]
                    s = s + 32
                    continue 
                if ceil32(_476) <= _476:
                    _675 = mem[_347]
                    s = 0
                    while s < _675:
                        mem[s + _352 + _354 + _476 + 32] = mem[s + _347 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_675) <= _675:
                        _856 = mem[64]
                        mem[mem[64]] = _675 + _352 + _354 + _476 - mem[64]
                        mem[64] = _675 + _352 + _354 + _476 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _856
                        u = _335
                        continue 
                    mem[_352 + _354 + _476 + _675 + 32] = 0
                    _874 = mem[64]
                    mem[mem[64]] = _675 + _352 + _354 + _476 - mem[64]
                    mem[64] = _675 + _352 + _354 + _476 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _874
                    u = _335
                    continue 
                mem[_352 + _354 + _476 + 32] = 0
                _685 = mem[_347]
                s = 0
                while s < _685:
                    mem[s + _352 + _354 + _476 + 32] = mem[s + _347 + 32]
                    s = s + 32
                    continue 
                if ceil32(_685) <= _685:
                    _857 = mem[64]
                    mem[mem[64]] = _685 + _352 + _354 + _476 - mem[64]
                    mem[64] = _685 + _352 + _354 + _476 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _857
                    u = _335
                    continue 
                mem[_352 + _354 + _476 + _685 + 32] = 0
                _875 = mem[64]
                mem[mem[64]] = _685 + _352 + _354 + _476 - mem[64]
                mem[64] = _685 + _352 + _354 + _476 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _875
                u = _335
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 96]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _470 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _336
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_470]:
                        revert with 0, 50
                    mem[v + _470 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _668 = mem[64]
                _672 = mem[s]
                t = 0
                while t < _672:
                    mem[t + _668 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_672) <= _672:
                    _848 = mem[_191]
                    s = 0
                    while s < _848:
                        mem[s + _668 + _672 + 32] = mem[s + _191 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_848) <= _848:
                        _968 = mem[_470]
                        s = 0
                        while s < _968:
                            mem[s + _668 + _672 + _848 + 32] = mem[s + _470 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_968) <= _968:
                            _1048 = mem[64]
                            mem[mem[64]] = _968 + _668 + _672 + _848 - mem[64]
                            mem[64] = _968 + _668 + _672 + _848 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1048
                            u = _335
                            continue 
                        mem[_668 + _672 + _848 + _968 + 32] = 0
                        _1064 = mem[64]
                        mem[mem[64]] = _968 + _668 + _672 + _848 - mem[64]
                        mem[64] = _968 + _668 + _672 + _848 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1064
                        u = _335
                        continue 
                    mem[_668 + _672 + _848 + 32] = 0
                    _976 = mem[_470]
                    s = 0
                    while s < _976:
                        mem[s + _668 + _672 + _848 + 32] = mem[s + _470 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_976) <= _976:
                        _1049 = mem[64]
                        mem[mem[64]] = _976 + _668 + _672 + _848 - mem[64]
                        mem[64] = _976 + _668 + _672 + _848 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1049
                        u = _335
                        continue 
                    mem[_668 + _672 + _848 + _976 + 32] = 0
                    _1065 = mem[64]
                    mem[mem[64]] = _976 + _668 + _672 + _848 - mem[64]
                    mem[64] = _976 + _668 + _672 + _848 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1065
                    u = _335
                    continue 
                mem[_668 + _672 + 32] = 0
                _852 = mem[_191]
                s = 0
                while s < _852:
                    mem[s + _668 + _672 + 32] = mem[s + _191 + 32]
                    s = s + 32
                    continue 
                if ceil32(_852) <= _852:
                    _969 = mem[_470]
                    s = 0
                    while s < _969:
                        mem[s + _668 + _672 + _852 + 32] = mem[s + _470 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_969) <= _969:
                        _1050 = mem[64]
                        mem[mem[64]] = _969 + _668 + _672 + _852 - mem[64]
                        mem[64] = _969 + _668 + _672 + _852 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1050
                        u = _335
                        continue 
                    mem[_668 + _672 + _852 + _969 + 32] = 0
                    _1066 = mem[64]
                    mem[mem[64]] = _969 + _668 + _672 + _852 - mem[64]
                    mem[64] = _969 + _668 + _672 + _852 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1066
                    u = _335
                    continue 
                mem[_668 + _672 + _852 + 32] = 0
                _977 = mem[_470]
                s = 0
                while s < _977:
                    mem[s + _668 + _672 + _852 + 32] = mem[s + _470 + 32]
                    s = s + 32
                    continue 
                if ceil32(_977) <= _977:
                    _1051 = mem[64]
                    mem[mem[64]] = _977 + _668 + _672 + _852 - mem[64]
                    mem[64] = _977 + _668 + _672 + _852 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1051
                    u = _335
                    continue 
                mem[_668 + _672 + _852 + _977 + 32] = 0
                _1067 = mem[64]
                mem[mem[64]] = _977 + _668 + _672 + _852 - mem[64]
                mem[64] = _977 + _668 + _672 + _852 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1067
                u = _335
                continue 
            mem[_470 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _336
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_470]:
                    revert with 0, 50
                mem[v + _470 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _669 = mem[64]
            _673 = mem[s]
            t = 0
            while t < _673:
                mem[t + _669 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_673) <= _673:
                _849 = mem[_191]
                s = 0
                while s < _849:
                    mem[s + _669 + _673 + 32] = mem[s + _191 + 32]
                    s = s + 32
                    continue 
                if ceil32(_849) <= _849:
                    _970 = mem[_470]
                    s = 0
                    while s < _970:
                        mem[s + _669 + _673 + _849 + 32] = mem[s + _470 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_970) <= _970:
                        _1052 = mem[64]
                        mem[mem[64]] = _970 + _669 + _673 + _849 - mem[64]
                        mem[64] = _970 + _669 + _673 + _849 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1052
                        u = _335
                        continue 
                    mem[_669 + _673 + _849 + _970 + 32] = 0
                    _1068 = mem[64]
                    mem[mem[64]] = _970 + _669 + _673 + _849 - mem[64]
                    mem[64] = _970 + _669 + _673 + _849 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1068
                    u = _335
                    continue 
                mem[_669 + _673 + _849 + 32] = 0
                _978 = mem[_470]
                s = 0
                while s < _978:
                    mem[s + _669 + _673 + _849 + 32] = mem[s + _470 + 32]
                    s = s + 32
                    continue 
                if ceil32(_978) <= _978:
                    _1053 = mem[64]
                    mem[mem[64]] = _978 + _669 + _673 + _849 - mem[64]
                    mem[64] = _978 + _669 + _673 + _849 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1053
                    u = _335
                    continue 
                mem[_669 + _673 + _849 + _978 + 32] = 0
                _1069 = mem[64]
                mem[mem[64]] = _978 + _669 + _673 + _849 - mem[64]
                mem[64] = _978 + _669 + _673 + _849 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1069
                u = _335
                continue 
            mem[_669 + _673 + 32] = 0
            _853 = mem[_191]
            s = 0
            while s < _853:
                mem[s + _669 + _673 + 32] = mem[s + _191 + 32]
                s = s + 32
                continue 
            if ceil32(_853) <= _853:
                _971 = mem[_470]
                s = 0
                while s < _971:
                    mem[s + _669 + _673 + _853 + 32] = mem[s + _470 + 32]
                    s = s + 32
                    continue 
                if ceil32(_971) <= _971:
                    _1054 = mem[64]
                    mem[mem[64]] = _971 + _669 + _673 + _853 - mem[64]
                    mem[64] = _971 + _669 + _673 + _853 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1054
                    u = _335
                    continue 
                mem[_669 + _673 + _853 + _971 + 32] = 0
                _1070 = mem[64]
                mem[mem[64]] = _971 + _669 + _673 + _853 - mem[64]
                mem[64] = _971 + _669 + _673 + _853 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1070
                u = _335
                continue 
            mem[_669 + _673 + _853 + 32] = 0
            _979 = mem[_470]
            s = 0
            while s < _979:
                mem[s + _669 + _673 + _853 + 32] = mem[s + _470 + 32]
                s = s + 32
                continue 
            if ceil32(_979) <= _979:
                _1055 = mem[64]
                mem[mem[64]] = _979 + _669 + _673 + _853 - mem[64]
                mem[64] = _979 + _669 + _673 + _853 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1055
                u = _335
                continue 
            mem[_669 + _673 + _853 + _979 + 32] = 0
            _1071 = mem[64]
            mem[mem[64]] = _979 + _669 + _673 + _853 - mem[64]
            mem[64] = _979 + _669 + _673 + _853 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1071
            u = _335
            continue 
        mem[mem[64]] = 32
        _346 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_346)] = mem[s + 32 len ceil32(_346)]
        var37001 = ceil32(_346)
        if ceil32(_346) > _346:
            mem[mem[64] + _346 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_346) + 32]
    mem[_89 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _53
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_89]:
            revert with 0, 50
        mem[t + _89 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _192 = mem[64]
    mem[64] = mem[64] + 64
    mem[_192] = 1
    mem[_192 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _89
    u = _48
    while idx < _47:
        if idx >= mem[96]:
            revert with 0, 50
        _338 = mem[(32 * idx) + 128]
        _339 = mem[mem[(32 * idx) + 128] + 96]
        if not mem[mem[(32 * idx) + 128] + 96]:
            _349 = mem[64]
            mem[64] = mem[64] + 64
            mem[_349] = 1
            mem[_349 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _353 = mem[64]
            _355 = mem[s]
            u = 0
            while u < _355:
                mem[u + _353 + 32] = mem[u + s + 32]
                u = u + 32
                continue 
            if ceil32(_355) <= _355:
                _473 = mem[_192]
                s = 0
                while s < _473:
                    mem[s + _353 + _355 + 32] = mem[s + _192 + 32]
                    s = s + 32
                    continue 
                if ceil32(_473) <= _473:
                    _678 = mem[_349]
                    s = 0
                    while s < _678:
                        mem[s + _353 + _355 + _473 + 32] = mem[s + _349 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_678) <= _678:
                        _860 = mem[64]
                        mem[mem[64]] = _678 + _353 + _355 + _473 - mem[64]
                        mem[64] = _678 + _353 + _355 + _473 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _860
                        u = _338
                        continue 
                    mem[_353 + _355 + _473 + _678 + 32] = 0
                    _876 = mem[64]
                    mem[mem[64]] = _678 + _353 + _355 + _473 - mem[64]
                    mem[64] = _678 + _353 + _355 + _473 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _876
                    u = _338
                    continue 
                mem[_353 + _355 + _473 + 32] = 0
                _686 = mem[_349]
                s = 0
                while s < _686:
                    mem[s + _353 + _355 + _473 + 32] = mem[s + _349 + 32]
                    s = s + 32
                    continue 
                if ceil32(_686) <= _686:
                    _861 = mem[64]
                    mem[mem[64]] = _686 + _353 + _355 + _473 - mem[64]
                    mem[64] = _686 + _353 + _355 + _473 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _861
                    u = _338
                    continue 
                mem[_353 + _355 + _473 + _686 + 32] = 0
                _877 = mem[64]
                mem[mem[64]] = _686 + _353 + _355 + _473 - mem[64]
                mem[64] = _686 + _353 + _355 + _473 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _877
                u = _338
                continue 
            mem[_353 + _355 + 32] = 0
            _477 = mem[_192]
            s = 0
            while s < _477:
                mem[s + _353 + _355 + 32] = mem[s + _192 + 32]
                s = s + 32
                continue 
            if ceil32(_477) <= _477:
                _679 = mem[_349]
                s = 0
                while s < _679:
                    mem[s + _353 + _355 + _477 + 32] = mem[s + _349 + 32]
                    s = s + 32
                    continue 
                if ceil32(_679) <= _679:
                    _862 = mem[64]
                    mem[mem[64]] = _679 + _353 + _355 + _477 - mem[64]
                    mem[64] = _679 + _353 + _355 + _477 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _862
                    u = _338
                    continue 
                mem[_353 + _355 + _477 + _679 + 32] = 0
                _878 = mem[64]
                mem[mem[64]] = _679 + _353 + _355 + _477 - mem[64]
                mem[64] = _679 + _353 + _355 + _477 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _878
                u = _338
                continue 
            mem[_353 + _355 + _477 + 32] = 0
            _687 = mem[_349]
            s = 0
            while s < _687:
                mem[s + _353 + _355 + _477 + 32] = mem[s + _349 + 32]
                s = s + 32
                continue 
            if ceil32(_687) <= _687:
                _863 = mem[64]
                mem[mem[64]] = _687 + _353 + _355 + _477 - mem[64]
                mem[64] = _687 + _353 + _355 + _477 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _863
                u = _338
                continue 
            mem[_353 + _355 + _477 + _687 + 32] = 0
            _879 = mem[64]
            mem[mem[64]] = _687 + _353 + _355 + _477 - mem[64]
            mem[64] = _687 + _353 + _355 + _477 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _879
            u = _338
            continue 
        u = 0
        t = mem[mem[(32 * idx) + 128] + 96]
        while t:
            if u == -1:
                revert with 0, 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _471 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = _339
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_471]:
                    revert with 0, 50
                mem[v + _471 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _670 = mem[64]
            _676 = mem[s]
            t = 0
            while t < _676:
                mem[t + _670 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_676) <= _676:
                _850 = mem[_192]
                s = 0
                while s < _850:
                    mem[s + _670 + _676 + 32] = mem[s + _192 + 32]
                    s = s + 32
                    continue 
                if ceil32(_850) <= _850:
                    _972 = mem[_471]
                    s = 0
                    while s < _972:
                        mem[s + _670 + _676 + _850 + 32] = mem[s + _471 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_972) <= _972:
                        _1056 = mem[64]
                        mem[mem[64]] = _972 + _670 + _676 + _850 - mem[64]
                        mem[64] = _972 + _670 + _676 + _850 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1056
                        u = _338
                        continue 
                    mem[_670 + _676 + _850 + _972 + 32] = 0
                    _1072 = mem[64]
                    mem[mem[64]] = _972 + _670 + _676 + _850 - mem[64]
                    mem[64] = _972 + _670 + _676 + _850 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1072
                    u = _338
                    continue 
                mem[_670 + _676 + _850 + 32] = 0
                _980 = mem[_471]
                s = 0
                while s < _980:
                    mem[s + _670 + _676 + _850 + 32] = mem[s + _471 + 32]
                    s = s + 32
                    continue 
                if ceil32(_980) <= _980:
                    _1057 = mem[64]
                    mem[mem[64]] = _980 + _670 + _676 + _850 - mem[64]
                    mem[64] = _980 + _670 + _676 + _850 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1057
                    u = _338
                    continue 
                mem[_670 + _676 + _850 + _980 + 32] = 0
                _1073 = mem[64]
                mem[mem[64]] = _980 + _670 + _676 + _850 - mem[64]
                mem[64] = _980 + _670 + _676 + _850 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1073
                u = _338
                continue 
            mem[_670 + _676 + 32] = 0
            _858 = mem[_192]
            s = 0
            while s < _858:
                mem[s + _670 + _676 + 32] = mem[s + _192 + 32]
                s = s + 32
                continue 
            if ceil32(_858) <= _858:
                _973 = mem[_471]
                s = 0
                while s < _973:
                    mem[s + _670 + _676 + _858 + 32] = mem[s + _471 + 32]
                    s = s + 32
                    continue 
                if ceil32(_973) <= _973:
                    _1058 = mem[64]
                    mem[mem[64]] = _973 + _670 + _676 + _858 - mem[64]
                    mem[64] = _973 + _670 + _676 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1058
                    u = _338
                    continue 
                mem[_670 + _676 + _858 + _973 + 32] = 0
                _1074 = mem[64]
                mem[mem[64]] = _973 + _670 + _676 + _858 - mem[64]
                mem[64] = _973 + _670 + _676 + _858 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1074
                u = _338
                continue 
            mem[_670 + _676 + _858 + 32] = 0
            _981 = mem[_471]
            s = 0
            while s < _981:
                mem[s + _670 + _676 + _858 + 32] = mem[s + _471 + 32]
                s = s + 32
                continue 
            if ceil32(_981) <= _981:
                _1059 = mem[64]
                mem[mem[64]] = _981 + _670 + _676 + _858 - mem[64]
                mem[64] = _981 + _670 + _676 + _858 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1059
                u = _338
                continue 
            mem[_670 + _676 + _858 + _981 + 32] = 0
            _1075 = mem[64]
            mem[mem[64]] = _981 + _670 + _676 + _858 - mem[64]
            mem[64] = _981 + _670 + _676 + _858 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1075
            u = _338
            continue 
        mem[_471 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = _339
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_471]:
                revert with 0, 50
            mem[v + _471 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _671 = mem[64]
        _677 = mem[s]
        t = 0
        while t < _677:
            mem[t + _671 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_677) <= _677:
            _851 = mem[_192]
            s = 0
            while s < _851:
                mem[s + _671 + _677 + 32] = mem[s + _192 + 32]
                s = s + 32
                continue 
            if ceil32(_851) <= _851:
                _974 = mem[_471]
                s = 0
                while s < _974:
                    mem[s + _671 + _677 + _851 + 32] = mem[s + _471 + 32]
                    s = s + 32
                    continue 
                if ceil32(_974) <= _974:
                    _1060 = mem[64]
                    mem[mem[64]] = _974 + _671 + _677 + _851 - mem[64]
                    mem[64] = _974 + _671 + _677 + _851 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1060
                    u = _338
                    continue 
                mem[_671 + _677 + _851 + _974 + 32] = 0
                _1076 = mem[64]
                mem[mem[64]] = _974 + _671 + _677 + _851 - mem[64]
                mem[64] = _974 + _671 + _677 + _851 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1076
                u = _338
                continue 
            mem[_671 + _677 + _851 + 32] = 0
            _982 = mem[_471]
            s = 0
            while s < _982:
                mem[s + _671 + _677 + _851 + 32] = mem[s + _471 + 32]
                s = s + 32
                continue 
            if ceil32(_982) <= _982:
                _1061 = mem[64]
                mem[mem[64]] = _982 + _671 + _677 + _851 - mem[64]
                mem[64] = _982 + _671 + _677 + _851 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1061
                u = _338
                continue 
            mem[_671 + _677 + _851 + _982 + 32] = 0
            _1077 = mem[64]
            mem[mem[64]] = _982 + _671 + _677 + _851 - mem[64]
            mem[64] = _982 + _671 + _677 + _851 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1077
            u = _338
            continue 
        mem[_671 + _677 + 32] = 0
        _859 = mem[_192]
        s = 0
        while s < _859:
            mem[s + _671 + _677 + 32] = mem[s + _192 + 32]
            s = s + 32
            continue 
        if ceil32(_859) <= _859:
            _975 = mem[_471]
            s = 0
            while s < _975:
                mem[s + _671 + _677 + _859 + 32] = mem[s + _471 + 32]
                s = s + 32
                continue 
            if ceil32(_975) <= _975:
                _1062 = mem[64]
                mem[mem[64]] = _975 + _671 + _677 + _859 - mem[64]
                mem[64] = _975 + _671 + _677 + _859 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1062
                u = _338
                continue 
            mem[_671 + _677 + _859 + _975 + 32] = 0
            _1078 = mem[64]
            mem[mem[64]] = _975 + _671 + _677 + _859 - mem[64]
            mem[64] = _975 + _671 + _677 + _859 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1078
            u = _338
            continue 
        mem[_671 + _677 + _859 + 32] = 0
        _983 = mem[_471]
        s = 0
        while s < _983:
            mem[s + _671 + _677 + _859 + 32] = mem[s + _471 + 32]
            s = s + 32
            continue 
        if ceil32(_983) <= _983:
            _1063 = mem[64]
            mem[mem[64]] = _983 + _671 + _677 + _859 - mem[64]
            mem[64] = _983 + _671 + _677 + _859 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1063
            u = _338
            continue 
        mem[_671 + _677 + _859 + _983 + 32] = 0
        _1079 = mem[64]
        mem[mem[64]] = _983 + _671 + _677 + _859 - mem[64]
        mem[64] = _983 + _671 + _677 + _859 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _1079
        u = _338
        continue 
    mem[mem[64]] = 32
    _348 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_348)] = mem[s + 32 len ceil32(_348)]
    var38001 = ceil32(_348)
    if ceil32(_348) > _348:
        mem[mem[64] + _348 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_348) + 32]
}



}
