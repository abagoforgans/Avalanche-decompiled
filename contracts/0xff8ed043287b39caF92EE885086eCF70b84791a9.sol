contract main {




// =====================  Runtime code  =====================


address owner;
array of address sub_5139839c;
array of struct _getNodeNumberOf;
uint256 sub_a4c4cf7c;
address tokenAddress;
uint256 totalNodesCreated;
uint256 sub_3ff69f11;
uint256 nodePrice;
uint256 taxRate;
uint256 rewardRate;
uint8 sub_bc368bc5;

function sub_3ff69f11(?) payable {
    return sub_3ff69f11
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

function sub_5139839c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5139839c.length
    return sub_5139839c[arg1]
}

function taxRate() payable {
    return taxRate
}

function _nodesOfUser(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < _getNodeNumberOf[arg1].field_0
    return _getNodeNumberOf[arg1][arg2].field_0, 
           _getNodeNumberOf[arg1][arg2].field_256,
           _getNodeNumberOf[arg1][arg2].field_512,
           _getNodeNumberOf[arg1][arg2].field_768,
           _getNodeNumberOf[arg1][arg2].field_1024
}

function rewardRate() payable {
    return rewardRate
}

function owner() payable {
    return owner
}

function sub_a4c4cf7c(?) payable {
    return sub_a4c4cf7c
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function sub_bc368bc5(?) payable {
    return bool(sub_bc368bc5)
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5e21bdb0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3ff69f11 = arg1
}

function setTaxRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    taxRate = arg1
}

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenAddress != msg.sender:
        revert with 0, 'Fuck off'
    if not nodePrice:
        revert with 0, 'Node price CANNOT BE ZERO'
    nodePrice = arg1
}

function sub_639249b2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Deta for day CANNOT BE ZERO'
    sub_a4c4cf7c = arg1
}

function setRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Reward rate CANNOT BE ZERO'
    rewardRate = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Token CANNOT BE ZERO'
    tokenAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _cashoutNodeReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if tokenAddress != msg.sender:
        revert with 0, 'Fuck off'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
    if arg2 >= _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 50
    _getNodeNumberOf[address(arg1)][arg2].field_1024 = 0
    _getNodeNumberOf[address(arg1)][arg2].field_512 = block.timestamp
}

function sub_36dd927a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if tokenAddress != msg.sender:
        revert with 0, 'Fuck off'
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    if arg2 >= _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 50
    if _getNodeNumberOf[address(arg1)][arg2].field_768 > !_getNodeNumberOf[address(arg1)][arg2].field_1024:
        revert with 0, 17
    _getNodeNumberOf[address(arg1)][arg2].field_768 += _getNodeNumberOf[address(arg1)][arg2].field_1024
    _getNodeNumberOf[address(arg1)][arg2].field_1024 = 0
    _getNodeNumberOf[address(arg1)][arg2].field_512 = block.timestamp
}

function _cashoutAllNodesReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAddress != msg.sender:
        revert with 0, 'Fuck off'
    if not _getNodeNumberOf[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
    idx = 0
    s = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 2)
        _getNodeNumberOf[address(arg1)][idx].field_512 = block.timestamp
        _getNodeNumberOf[address(arg1)][idx].field_1024 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (5 * idx) + sha3(sha3(address(arg1), 2))
        continue 
}

function sub_5c6dc219(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tokenAddress != msg.sender:
        revert with 0, 'Fuck off'
    if totalNodesCreated >= sub_3ff69f11:
        revert with 0, 'Amount of node was limited'
    if sub_bc368bc5:
        revert with 0, 'Creating NODE by other'
    sub_bc368bc5 = 1
    _getNodeNumberOf[address(arg1)].field_0++
    _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_0 = totalNodesCreated
    _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_256 = block.timestamp
    _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_512 = block.timestamp
    _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_768 = nodePrice
    _getNodeNumberOf[address(arg1)][_getNodeNumberOf[address(arg1)].field_0].field_1024 = 0
    sub_5139839c.length++
    sub_5139839c[sub_5139839c.length] = address(arg1)
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
    sub_bc368bc5 = 0
}

function sub_03dae9b8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not _getNodeNumberOf[address(arg1)].field_0:
        return 0
    if arg2 >= _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 50
    if sub_a4c4cf7c > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if block.timestamp < _getNodeNumberOf[address(arg1)][arg2].field_512:
        revert with 0, 17
    if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_512 and _getNodeNumberOf[address(arg1)][arg2].field_768 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_512:
        revert with 0, 17
    if (block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768) and rewardRate > -1 / (block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768):
        revert with 0, 17
    if not 1000 * sub_a4c4cf7c:
        revert with 0, 18
    if _getNodeNumberOf[address(arg1)][arg2].field_1024 > !((block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) / 1000 * sub_a4c4cf7c):
        revert with 0, 17
    return (_getNodeNumberOf[address(arg1)][arg2].field_1024 + ((block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) / 1000 * sub_a4c4cf7c))
}

function sub_70692c4c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if tokenAddress != msg.sender:
        revert with 0, 'Fuck off'
    if _getNodeNumberOf[address(arg1)].field_0:
        if arg2 >= _getNodeNumberOf[address(arg1)].field_0:
            revert with 0, 50
        if sub_a4c4cf7c > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if block.timestamp < _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_512 and _getNodeNumberOf[address(arg1)][arg2].field_768 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_512:
            revert with 0, 17
        if (block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768) and rewardRate > -1 / (block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768):
            revert with 0, 17
        if not 1000 * sub_a4c4cf7c:
            revert with 0, 18
        if _getNodeNumberOf[address(arg1)][arg2].field_1024 > !((block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) / 1000 * sub_a4c4cf7c):
            revert with 0, 17
        _getNodeNumberOf[address(arg1)][arg2].field_1024 += (block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) / 1000 * sub_a4c4cf7c
        _getNodeNumberOf[address(arg1)][arg2].field_512 = block.timestamp
}

function sub_c8c3e4fe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if tokenAddress != msg.sender:
        revert with 0, 'Fuck off'
    if _getNodeNumberOf[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < _getNodeNumberOf[address(arg1)].field_0:
            if sub_a4c4cf7c > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if idx >= _getNodeNumberOf[address(arg1)].field_0:
                revert with 0, 50
            if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_512:
                revert with 0, 17
            if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_512 and _getNodeNumberOf[address(arg1)][idx].field_768 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_512:
                revert with 0, 17
            if (block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768) and rewardRate > -1 / (block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768):
                revert with 0, 17
            if not 1000 * sub_a4c4cf7c:
                revert with 0, 18
            if idx >= _getNodeNumberOf[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 2)
            if _getNodeNumberOf[address(arg1)][idx].field_1024 > !((block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) / 1000 * sub_a4c4cf7c):
                revert with 0, 17
            _getNodeNumberOf[address(arg1)][idx].field_1024 += (block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) / 1000 * sub_a4c4cf7c
            _getNodeNumberOf[address(arg1)][idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = (5 * idx) + sha3(sha3(address(arg1), 2))
            continue 
}

function sub_6ee68a85(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not _getNodeNumberOf[address(arg1)].field_0:
        return 0
    if arg2 >= _getNodeNumberOf[address(arg1)].field_0:
        revert with 0, 50
    if sub_a4c4cf7c > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if block.timestamp < _getNodeNumberOf[address(arg1)][arg2].field_512:
        revert with 0, 17
    if block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_512 and _getNodeNumberOf[address(arg1)][arg2].field_768 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][arg2].field_512:
        revert with 0, 17
    if (block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768) and rewardRate > -1 / (block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768):
        revert with 0, 17
    if not 1000 * sub_a4c4cf7c:
        revert with 0, 18
    if _getNodeNumberOf[address(arg1)][arg2].field_1024 > !((block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) / 1000 * sub_a4c4cf7c):
        revert with 0, 17
    if _getNodeNumberOf[address(arg1)][arg2].field_1024 + ((block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) / 1000 * sub_a4c4cf7c) and taxRate > -1 / _getNodeNumberOf[address(arg1)][arg2].field_1024 + ((block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) / 1000 * sub_a4c4cf7c):
        revert with 0, 17
    return ((_getNodeNumberOf[address(arg1)][arg2].field_1024 * taxRate) + ((block.timestamp * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][arg2].field_512 * _getNodeNumberOf[address(arg1)][arg2].field_768 * rewardRate) / 1000 * sub_a4c4cf7c * taxRate) / 100)
}

function sub_da989fc4(?) payable {
    if tokenAddress != msg.sender:
        revert with 0, 'Fuck off'
    if sub_5139839c.length:
        idx = 0
        s = 0
        s = 0
        while idx < sub_5139839c.length:
            mem[0] = sub_5139839c[idx]
            mem[32] = 2
            if idx == -1:
                revert with 0, 17
            s = 0
            t = 0
            while s < _getNodeNumberOf[stor1[idx]].field_0:
                mem[0] = sha3(sub_5139839c[idx], 2)
                if sub_a4c4cf7c > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if block.timestamp < _getNodeNumberOf[stor1[idx]][s].field_512:
                    revert with 0, 17
                if block.timestamp - _getNodeNumberOf[stor1[idx]][s].field_512 and _getNodeNumberOf[stor1[idx]][s].field_768 > -1 / block.timestamp - _getNodeNumberOf[stor1[idx]][s].field_512:
                    revert with 0, 17
                if (block.timestamp * _getNodeNumberOf[stor1[idx]][s].field_768) - (_getNodeNumberOf[stor1[idx]][s].field_512 * _getNodeNumberOf[stor1[idx]][s].field_768) and rewardRate > -1 / (block.timestamp * _getNodeNumberOf[stor1[idx]][s].field_768) - (_getNodeNumberOf[stor1[idx]][s].field_512 * _getNodeNumberOf[stor1[idx]][s].field_768):
                    revert with 0, 17
                if not 1000 * sub_a4c4cf7c:
                    revert with 0, 18
                if _getNodeNumberOf[stor1[idx]][s].field_1024 > !((block.timestamp * _getNodeNumberOf[stor1[idx]][s].field_768 * rewardRate) - (_getNodeNumberOf[stor1[idx]][s].field_512 * _getNodeNumberOf[stor1[idx]][s].field_768 * rewardRate) / 1000 * sub_a4c4cf7c):
                    revert with 0, 17
                _getNodeNumberOf[stor1[idx]][s].field_1024 += (block.timestamp * _getNodeNumberOf[stor1[idx]][s].field_768 * rewardRate) - (_getNodeNumberOf[stor1[idx]][s].field_512 * _getNodeNumberOf[stor1[idx]][s].field_768 * rewardRate) / 1000 * sub_a4c4cf7c
                _getNodeNumberOf[stor1[idx]][s].field_512 = block.timestamp
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = (5 * s) + sha3(sha3(sub_5139839c[idx], 2))
                continue 
            idx = idx + 1
            s = _getNodeNumberOf[stor1[idx]].field_0
            s = sha3(sub_5139839c[idx], 2)
            continue 
}

function _getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not _getNodeNumberOf[address(arg1)].field_0:
        return 0
    idx = 0
    s = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        if sub_a4c4cf7c > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if idx >= _getNodeNumberOf[address(arg1)].field_0:
            revert with 0, 50
        if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_512:
            revert with 0, 17
        if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_512 and _getNodeNumberOf[address(arg1)][idx].field_768 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_512:
            revert with 0, 17
        if (block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768) and rewardRate > -1 / (block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768):
            revert with 0, 17
        if not 1000 * sub_a4c4cf7c:
            revert with 0, 18
        if idx >= _getNodeNumberOf[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 2)
        if _getNodeNumberOf[address(arg1)][idx].field_1024 > !((block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) / 1000 * sub_a4c4cf7c):
            revert with 0, 17
        if s > !(_getNodeNumberOf[address(arg1)][idx].field_1024 + ((block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) / 1000 * sub_a4c4cf7c)):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + _getNodeNumberOf[address(arg1)][idx].field_1024 + ((block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) / 1000 * sub_a4c4cf7c)
        continue 
    return (s * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0)
}

function sub_3115213e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not _getNodeNumberOf[address(arg1)].field_0:
        return 0
    idx = 0
    s = 0
    s = 0
    while idx < _getNodeNumberOf[address(arg1)].field_0:
        if sub_a4c4cf7c > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if idx >= _getNodeNumberOf[address(arg1)].field_0:
            revert with 0, 50
        if block.timestamp < _getNodeNumberOf[address(arg1)][idx].field_512:
            revert with 0, 17
        if block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_512 and _getNodeNumberOf[address(arg1)][idx].field_768 > -1 / block.timestamp - _getNodeNumberOf[address(arg1)][idx].field_512:
            revert with 0, 17
        if (block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768) and rewardRate > -1 / (block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768):
            revert with 0, 17
        if not 1000 * sub_a4c4cf7c:
            revert with 0, 18
        if idx >= _getNodeNumberOf[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 2)
        if _getNodeNumberOf[address(arg1)][idx].field_1024 > !((block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) / 1000 * sub_a4c4cf7c):
            revert with 0, 17
        if _getNodeNumberOf[address(arg1)][idx].field_1024 + ((block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) / 1000 * sub_a4c4cf7c) and taxRate > -1 / _getNodeNumberOf[address(arg1)][idx].field_1024 + ((block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) / 1000 * sub_a4c4cf7c):
            revert with 0, 17
        if s > !((_getNodeNumberOf[address(arg1)][idx].field_1024 * taxRate) + ((block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) / 1000 * sub_a4c4cf7c * taxRate) / 100):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (_getNodeNumberOf[address(arg1)][idx].field_1024 * taxRate) + ((block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) / 1000 * sub_a4c4cf7c * taxRate) / 100
        s = s + ((_getNodeNumberOf[address(arg1)][idx].field_1024 * taxRate) + ((block.timestamp * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) - (_getNodeNumberOf[address(arg1)][idx].field_512 * _getNodeNumberOf[address(arg1)][idx].field_768 * rewardRate) / 1000 * sub_a4c4cf7c * taxRate) / 100)
        continue 
    return (s * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0 * _getNodeNumberOf[address(arg1)].field_0)
}



}
