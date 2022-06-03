contract main {




// =====================  Runtime code  =====================


#
#  - sub_2872e38c(?)
#  - sub_4ad7f6e1(?)
#  - sub_54d8f9e8(?)
#  - sub_5630f5f3(?)
#  - _cashoutNodeReward(address arg1, uint256 arg2)
#  - sub_7e55af7f(?)
#  - burn(address arg1, uint256 arg2)
#  - _getRewardAmountOf(address arg1, uint256 arg2)
#  - sub_fb89e2e4(?)
#
array of struct stor4;
mapping of uint8 stor5;
uint256 nodePrice;
uint256 sub_d754d433;
uint256 sub_0b433a12;
uint256 lastIndexProcessed;
uint256 totalNodesCreated;
uint256 totalRewardStaked;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint256 stor12; offset 16
uint256 stor12; offset 8
uint256 gasForDistribution;

function sub_0b433a12(?) payable {
    return sub_0b433a12
}

function sub_5d6f1501(?) payable {
    return bool(uint8(stor12.field_16))
}

function sub_6ddaf06d(?) payable {
    return bool(uint8(stor12.field_8))
}

function lastIndexProcessed() payable {
    return lastIndexProcessed
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function sub_ccaacd52(?) payable {
    return bool(uint8(stor12.field_0))
}

function sub_d5d31abe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
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

function _fallback() payable {
    revert
}

function sub_c87aefa1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return ''
}

function _changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor5[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    nodePrice = arg1
}

function _changeGasDistri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor5[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    gasForDistribution = arg1
}

function sub_5d6b903b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if bool(stor5[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    uint8(stor12.field_0) = uint8(bool(arg1))
}

function sub_952a179c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if bool(stor5[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    Mask(248, 0, stor12.field_8) = Mask(248, 0, bool(arg1))
}

function sub_abc53dd3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if bool(stor5[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    Mask(240, 0, stor12.field_16) = Mask(240, 0, bool(arg1))
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor5[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    if not arg1:
        revert with 0, 'new manager is the zero address'
    stor5[address(arg1)] = 1
}

function _getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function _isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
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
    if bool(stor5[msg.sender]) != 1:
        revert with 0, 'Only managers can call this function'
    if not uint8(stor12.field_0):
        revert with 0, 'createSingleNodeEnabled disabled'
    if 1 > !totalNodesCreated:
        revert with 0, 17
    stor4[address(arg1)].field_0++
    stor4[address(arg1)][stor4[address(arg1)].field_0].field_0 = totalNodesCreated + 1
    stor4[address(arg1)][stor4[address(arg1)].field_0].field_256 = block.timestamp
    stor4[address(arg1)][stor4[address(arg1)].field_0].field_512 = block.timestamp
    stor4[address(arg1)][stor4[address(arg1)].field_0].field_768 = 0
    require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
         gas gas_remaining wei
        args 0, address(arg1), stor4[address(arg1)].field_0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
    emit 0x8adf8566: totalNodesCreated, stor4[address(arg1)].field_0, totalNodesCreated, address(arg1)
}

function sub_12833e09(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(stor5[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    if not uint8(stor12.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'createcreateMultiNodeEnabledSingleNodeEnabled disabled'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'createNodes numberOfNodes cant be zero'
    idx = 0
    while idx < arg2:
        mem[0] = address(arg1)
        mem[32] = 4
        _22 = mem[64]
        mem[64] = mem[64] + 128
        if 1 > !totalNodesCreated:
            revert with 0, 17
        mem[_22] = totalNodesCreated + 1
        if block.timestamp > !idx:
            revert with 0, 17
        mem[_22 + 32] = block.timestamp + idx
        mem[_22 + 64] = block.timestamp + idx
        mem[_22 + 96] = 0
        stor4[address(arg1)].field_0++
        stor4[address(arg1)][stor4[address(arg1)].field_0].field_0 = totalNodesCreated + 1
        stor4[address(arg1)][stor4[address(arg1)].field_0].field_256 = block.timestamp + idx
        stor4[address(arg1)][stor4[address(arg1)].field_0].field_512 = block.timestamp + idx
        stor4[address(arg1)][stor4[address(arg1)].field_0].field_768 = 0
        mem[mem[64] + 68] = stor4[address(arg1)].field_0
        require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
        delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
             gas gas_remaining wei
            args 0, address(arg1), stor4[address(arg1)].field_0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        if totalNodesCreated == -1:
            revert with 0, 17
        totalNodesCreated++
        mem[0] = address(arg1)
        mem[32] = 4
        mem[mem[64]] = totalNodesCreated
        mem[mem[64] + 32] = stor4[address(arg1)].field_0
        mem[mem[64] + 64] = totalNodesCreated
        emit 0x8adf8566: totalNodesCreated, stor4[address(arg1)].field_0, totalNodesCreated, address(arg1)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    s = 0
    while idx < stor4[address(arg1)].field_0:
        if idx >= stor4[address(arg1)].field_0:
            revert with 0, 50
        mem[32] = 4
        if idx >= stor4[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 4)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = 30
        mem[_35 + 32] = 'SafeMath: subtraction overflow'
        if stor4[address(arg1)][idx].field_512 > block.timestamp:
            _36 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _36 + 68] = mem[idx + _35 + 32]
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_36 + 98] = 0
            revert with memory
              from mem[64]
               len _36 + -mem[64] + 100
        if block.timestamp < stor4[address(arg1)][idx].field_512:
            revert with 0, 17
        _39 = mem[64]
        mem[64] = mem[64] + 64
        mem[_39] = 26
        mem[_39 + 32] = 'SafeMath: division by zero'
        if not sub_0b433a12:
            _41 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _41 + 68] = mem[idx + _39 + 32]
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_41 + 94] = 0
            revert with memory
              from mem[64]
               len _41 + -mem[64] + 100
        if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
            if 0 > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if s > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = s + stor4[address(arg1)][idx].field_768
            continue 
        if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
            revert with 0, 17
        if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
            revert with 0, 18
        if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 > !stor4[address(arg1)][idx].field_768:
            revert with 0, 17
        if s > !((block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
        continue 
    return s
}

function _cashoutAllNodesReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor5[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only managers can call this function'
    mem[100] = 0
    mem[132] = arg1
    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD OF: NO NODE OWNER'
    if not uint8(stor12.field_16):
        revert with 0, 'cashoutEnabled disabled'
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    s = 0
    while idx < stor4[address(arg1)].field_0:
        if idx >= stor4[address(arg1)].field_0:
            revert with 0, 50
        mem[32] = 4
        if idx >= stor4[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 4)
        _48 = mem[64]
        mem[64] = mem[64] + 64
        mem[_48] = 30
        mem[_48 + 32] = 'SafeMath: subtraction overflow'
        if stor4[address(arg1)][idx].field_512 > block.timestamp:
            _49 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _49 + 68] = mem[idx + _48 + 32]
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_49 + 98] = 0
            revert with memory
              from mem[64]
               len _49 + -mem[64] + 100
        if block.timestamp < stor4[address(arg1)][idx].field_512:
            revert with 0, 17
        _52 = mem[64]
        mem[64] = mem[64] + 64
        mem[_52] = 26
        mem[_52 + 32] = 'SafeMath: division by zero'
        if not sub_0b433a12:
            _54 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _54 + 68] = mem[idx + _52 + 32]
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_54 + 94] = 0
            revert with memory
              from mem[64]
               len _54 + -mem[64] + 100
        if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
            if 0 > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if s > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            stor4[address(arg1)][idx].field_768 = 0
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            stor4[address(arg1)][idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = s + stor4[address(arg1)][idx].field_768
            continue 
        if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
            revert with 0, 17
        if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
            revert with 0, 18
        if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 > !stor4[address(arg1)][idx].field_768:
            revert with 0, 17
        if s > !((block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768):
            revert with 0, 17
        if idx >= stor4[address(arg1)].field_0:
            revert with 0, 50
        stor4[address(arg1)][idx].field_768 = 0
        if idx >= stor4[address(arg1)].field_0:
            revert with 0, 50
        stor4[address(arg1)][idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
        continue 
    return s
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD: NO NODE OWNER'
    if not stor4[address(arg1)].field_0:
        revert with 0, 50
    if not stor4[address(arg1)].field_512:
        mem[64] = ceil32(return_data.size) + 160
        mem[ceil32(return_data.size) + 96] = 1
        mem[ceil32(return_data.size) + 128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = ceil32(return_data.size) + 96
        while idx < stor4[address(arg1)].field_0:
            mem[32] = 4
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            if not stor4[address(arg1)][idx].field_512:
                _36 = mem[64]
                mem[64] = mem[64] + 64
                mem[_36] = 1
                mem[_36 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _37 = mem[64]
                _39 = mem[s]
                t = 0
                while t < _39:
                    mem[t + _37 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_37 + _39 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_39) <= _39:
                    _98 = mem[_36]
                    s = 0
                    while s < _98:
                        mem[s + _37 + _39 + 33] = mem[s + _36 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_98) <= _98:
                        _190 = mem[64]
                        mem[mem[64]] = _98 + _37 + _39 + -mem[64] + 1
                        mem[64] = _98 + _37 + _39 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _190
                        continue 
                    mem[_37 + _39 + _98 + 33] = 0
                    _194 = mem[64]
                    mem[mem[64]] = _98 + _37 + _39 + -mem[64] + 1
                    mem[64] = _98 + _37 + _39 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _194
                    continue 
                _102 = mem[_36]
                s = 0
                while s < _102:
                    mem[s + _37 + _39 + 33] = mem[s + _36 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_102) <= _102:
                    _191 = mem[64]
                    mem[mem[64]] = _102 + _37 + _39 + -mem[64] + 1
                    mem[64] = _102 + _37 + _39 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _191
                    continue 
                mem[_37 + _39 + _102 + 33] = 0
                _195 = mem[64]
                mem[mem[64]] = _102 + _37 + _39 + -mem[64] + 1
                mem[64] = _102 + _37 + _39 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _195
                continue 
            u = 0
            t = stor[(4 * idx) + sha3(mem[0]) + 2]
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
            _95 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = stor4[address(arg1)][idx].field_512
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_95]:
                        revert with 0, 50
                    mem[v + _95 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _182 = mem[64]
                _186 = mem[s]
                t = 0
                while t < _186:
                    mem[t + _182 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_182 + _186 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_186) <= _186:
                    _252 = mem[_95]
                    s = 0
                    while s < _252:
                        mem[s + _182 + _186 + 33] = mem[s + _95 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_252) <= _252:
                        _354 = mem[64]
                        mem[mem[64]] = _252 + _182 + _186 + -mem[64] + 1
                        mem[64] = _252 + _182 + _186 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _354
                        continue 
                    mem[_182 + _186 + _252 + 33] = 0
                    _362 = mem[64]
                    mem[mem[64]] = _252 + _182 + _186 + -mem[64] + 1
                    mem[64] = _252 + _182 + _186 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _362
                    continue 
                _258 = mem[_95]
                s = 0
                while s < _258:
                    mem[s + _182 + _186 + 33] = mem[s + _95 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_258) <= _258:
                    _355 = mem[64]
                    mem[mem[64]] = _258 + _182 + _186 + -mem[64] + 1
                    mem[64] = _258 + _182 + _186 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _355
                    continue 
                mem[_182 + _186 + _258 + 33] = 0
                _363 = mem[64]
                mem[mem[64]] = _258 + _182 + _186 + -mem[64] + 1
                mem[64] = _258 + _182 + _186 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _363
                continue 
            mem[_95 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = stor4[address(arg1)][idx].field_512
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_95]:
                    revert with 0, 50
                mem[v + _95 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _183 = mem[64]
            _187 = mem[s]
            t = 0
            while t < _187:
                mem[t + _183 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_183 + _187 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_187) <= _187:
                _253 = mem[_95]
                s = 0
                while s < _253:
                    mem[s + _183 + _187 + 33] = mem[s + _95 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_253) <= _253:
                    _356 = mem[64]
                    mem[mem[64]] = _253 + _183 + _187 + -mem[64] + 1
                    mem[64] = _253 + _183 + _187 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _356
                    continue 
                mem[_183 + _187 + _253 + 33] = 0
                _364 = mem[64]
                mem[mem[64]] = _253 + _183 + _187 + -mem[64] + 1
                mem[64] = _253 + _183 + _187 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _364
                continue 
            _259 = mem[_95]
            s = 0
            while s < _259:
                mem[s + _183 + _187 + 33] = mem[s + _95 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_259) <= _259:
                _357 = mem[64]
                mem[mem[64]] = _259 + _183 + _187 + -mem[64] + 1
                mem[64] = _259 + _183 + _187 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _357
                continue 
            mem[_183 + _187 + _259 + 33] = 0
            _365 = mem[64]
            mem[mem[64]] = _259 + _183 + _187 + -mem[64] + 1
            mem[64] = _259 + _183 + _187 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _365
            continue 
        mem[mem[64]] = 32
        _35 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_35)] = mem[s + 32 len ceil32(_35)]
        if ceil32(_35) > _35:
            mem[mem[64] + _35 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_35) + 32]
    s = 0
    idx = stor4[address(arg1)].field_512
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = s
    mem[64] = ceil32(return_data.size) + ceil32(s) + 128
    if not s:
        t = s
        idx = stor4[address(arg1)].field_512
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[t + ceil32(return_data.size) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = ceil32(return_data.size) + 96
        while idx < stor4[address(arg1)].field_0:
            mem[32] = 4
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            if not stor4[address(arg1)][idx].field_512:
                _188 = mem[64]
                mem[64] = mem[64] + 64
                mem[_188] = 1
                mem[_188 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _192 = mem[64]
                _197 = mem[s]
                u = 0
                while u < _197:
                    mem[u + _192 + 32] = mem[u + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    u = u + 32
                    continue 
                mem[_192 + _197 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_197) <= _197:
                    _250 = mem[_188]
                    s = 0
                    while s < _250:
                        mem[s + _192 + _197 + 33] = mem[s + _188 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_250) <= _250:
                        _350 = mem[64]
                        mem[mem[64]] = _250 + _192 + _197 + -mem[64] + 1
                        mem[64] = _250 + _192 + _197 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _350
                        continue 
                    mem[_192 + _197 + _250 + 33] = 0
                    _358 = mem[64]
                    mem[mem[64]] = _250 + _192 + _197 + -mem[64] + 1
                    mem[64] = _250 + _192 + _197 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _358
                    continue 
                _255 = mem[_188]
                s = 0
                while s < _255:
                    mem[s + _192 + _197 + 33] = mem[s + _188 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_255) <= _255:
                    _351 = mem[64]
                    mem[mem[64]] = _255 + _192 + _197 + -mem[64] + 1
                    mem[64] = _255 + _192 + _197 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _351
                    continue 
                mem[_192 + _197 + _255 + 33] = 0
                _359 = mem[64]
                mem[mem[64]] = _255 + _192 + _197 + -mem[64] + 1
                mem[64] = _255 + _192 + _197 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _359
                continue 
            u = 0
            t = stor[(4 * idx) + sha3(mem[0]) + 2]
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
            _248 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = stor4[address(arg1)][idx].field_512
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_248]:
                        revert with 0, 50
                    mem[v + _248 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _342 = mem[64]
                _346 = mem[s]
                t = 0
                while t < _346:
                    mem[t + _342 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_342 + _346 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_346) <= _346:
                    _410 = mem[_248]
                    s = 0
                    while s < _410:
                        mem[s + _342 + _346 + 33] = mem[s + _248 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_410) <= _410:
                        _450 = mem[64]
                        mem[mem[64]] = _410 + _342 + _346 + -mem[64] + 1
                        mem[64] = _410 + _342 + _346 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _450
                        continue 
                    mem[_342 + _346 + _410 + 33] = 0
                    _458 = mem[64]
                    mem[mem[64]] = _410 + _342 + _346 + -mem[64] + 1
                    mem[64] = _410 + _342 + _346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _458
                    continue 
                _414 = mem[_248]
                s = 0
                while s < _414:
                    mem[s + _342 + _346 + 33] = mem[s + _248 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_414) <= _414:
                    _451 = mem[64]
                    mem[mem[64]] = _414 + _342 + _346 + -mem[64] + 1
                    mem[64] = _414 + _342 + _346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _451
                    continue 
                mem[_342 + _346 + _414 + 33] = 0
                _459 = mem[64]
                mem[mem[64]] = _414 + _342 + _346 + -mem[64] + 1
                mem[64] = _414 + _342 + _346 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _459
                continue 
            mem[_248 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = stor4[address(arg1)][idx].field_512
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_248]:
                    revert with 0, 50
                mem[v + _248 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _343 = mem[64]
            _347 = mem[s]
            t = 0
            while t < _347:
                mem[t + _343 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_343 + _347 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_347) <= _347:
                _411 = mem[_248]
                s = 0
                while s < _411:
                    mem[s + _343 + _347 + 33] = mem[s + _248 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_411) <= _411:
                    _452 = mem[64]
                    mem[mem[64]] = _411 + _343 + _347 + -mem[64] + 1
                    mem[64] = _411 + _343 + _347 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _452
                    continue 
                mem[_343 + _347 + _411 + 33] = 0
                _460 = mem[64]
                mem[mem[64]] = _411 + _343 + _347 + -mem[64] + 1
                mem[64] = _411 + _343 + _347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _460
                continue 
            _415 = mem[_248]
            s = 0
            while s < _415:
                mem[s + _343 + _347 + 33] = mem[s + _248 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_415) <= _415:
                _453 = mem[64]
                mem[mem[64]] = _415 + _343 + _347 + -mem[64] + 1
                mem[64] = _415 + _343 + _347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _453
                continue 
            mem[_343 + _347 + _415 + 33] = 0
            _461 = mem[64]
            mem[mem[64]] = _415 + _343 + _347 + -mem[64] + 1
            mem[64] = _415 + _343 + _347 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _461
            continue 
        mem[mem[64]] = 32
        _184 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_184)] = mem[s + 32 len ceil32(_184)]
        if ceil32(_184) > _184:
            mem[mem[64] + _184 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_184) + 32]
    mem[ceil32(return_data.size) + 128 len s] = call.data[calldata.size len s]
    t = s
    idx = stor4[address(arg1)].field_512
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[t + ceil32(return_data.size) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = arg1
    mem[32] = 4
    idx = 1
    s = ceil32(return_data.size) + 96
    while idx < stor4[address(arg1)].field_0:
        mem[32] = 4
        if idx >= stor4[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 4)
        if not stor4[address(arg1)][idx].field_512:
            _189 = mem[64]
            mem[64] = mem[64] + 64
            mem[_189] = 1
            mem[_189 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _193 = mem[64]
            _199 = mem[s]
            u = 0
            while u < _199:
                mem[u + _193 + 32] = mem[u + s + 32]
                mem[0] = arg1
                mem[32] = 4
                u = u + 32
                continue 
            mem[_193 + _199 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_199) <= _199:
                _251 = mem[_189]
                s = 0
                while s < _251:
                    mem[s + _193 + _199 + 33] = mem[s + _189 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_251) <= _251:
                    _352 = mem[64]
                    mem[mem[64]] = _251 + _193 + _199 + -mem[64] + 1
                    mem[64] = _251 + _193 + _199 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _352
                    continue 
                mem[_193 + _199 + _251 + 33] = 0
                _360 = mem[64]
                mem[mem[64]] = _251 + _193 + _199 + -mem[64] + 1
                mem[64] = _251 + _193 + _199 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _360
                continue 
            _257 = mem[_189]
            s = 0
            while s < _257:
                mem[s + _193 + _199 + 33] = mem[s + _189 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_257) <= _257:
                _353 = mem[64]
                mem[mem[64]] = _257 + _193 + _199 + -mem[64] + 1
                mem[64] = _257 + _193 + _199 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _353
                continue 
            mem[_193 + _199 + _257 + 33] = 0
            _361 = mem[64]
            mem[mem[64]] = _257 + _193 + _199 + -mem[64] + 1
            mem[64] = _257 + _193 + _199 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _361
            continue 
        u = 0
        t = stor[(4 * idx) + sha3(mem[0]) + 2]
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
        _249 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = stor4[address(arg1)][idx].field_512
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_249]:
                    revert with 0, 50
                mem[v + _249 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _344 = mem[64]
            _348 = mem[s]
            t = 0
            while t < _348:
                mem[t + _344 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_344 + _348 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_348) <= _348:
                _412 = mem[_249]
                s = 0
                while s < _412:
                    mem[s + _344 + _348 + 33] = mem[s + _249 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_412) <= _412:
                    _454 = mem[64]
                    mem[mem[64]] = _412 + _344 + _348 + -mem[64] + 1
                    mem[64] = _412 + _344 + _348 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _454
                    continue 
                mem[_344 + _348 + _412 + 33] = 0
                _462 = mem[64]
                mem[mem[64]] = _412 + _344 + _348 + -mem[64] + 1
                mem[64] = _412 + _344 + _348 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _462
                continue 
            _416 = mem[_249]
            s = 0
            while s < _416:
                mem[s + _344 + _348 + 33] = mem[s + _249 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_416) <= _416:
                _455 = mem[64]
                mem[mem[64]] = _416 + _344 + _348 + -mem[64] + 1
                mem[64] = _416 + _344 + _348 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _455
                continue 
            mem[_344 + _348 + _416 + 33] = 0
            _463 = mem[64]
            mem[mem[64]] = _416 + _344 + _348 + -mem[64] + 1
            mem[64] = _416 + _344 + _348 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _463
            continue 
        mem[_249 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = stor4[address(arg1)][idx].field_512
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_249]:
                revert with 0, 50
            mem[v + _249 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            mem[0] = arg1
            mem[32] = 4
            v = v - 1
            t = t / 10
            continue 
        _345 = mem[64]
        _349 = mem[s]
        t = 0
        while t < _349:
            mem[t + _345 + 32] = mem[t + s + 32]
            mem[0] = arg1
            mem[32] = 4
            t = t + 32
            continue 
        mem[_345 + _349 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        if ceil32(_349) <= _349:
            _413 = mem[_249]
            s = 0
            while s < _413:
                mem[s + _345 + _349 + 33] = mem[s + _249 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_413) <= _413:
                _456 = mem[64]
                mem[mem[64]] = _413 + _345 + _349 + -mem[64] + 1
                mem[64] = _413 + _345 + _349 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _456
                continue 
            mem[_345 + _349 + _413 + 33] = 0
            _464 = mem[64]
            mem[mem[64]] = _413 + _345 + _349 + -mem[64] + 1
            mem[64] = _413 + _345 + _349 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _464
            continue 
        _417 = mem[_249]
        s = 0
        while s < _417:
            mem[s + _345 + _349 + 33] = mem[s + _249 + 32]
            mem[0] = arg1
            mem[32] = 4
            s = s + 32
            continue 
        if ceil32(_417) <= _417:
            _457 = mem[64]
            mem[mem[64]] = _417 + _345 + _349 + -mem[64] + 1
            mem[64] = _417 + _345 + _349 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _457
            continue 
        mem[_345 + _349 + _417 + 33] = 0
        _465 = mem[64]
        mem[mem[64]] = _417 + _345 + _349 + -mem[64] + 1
        mem[64] = _417 + _345 + _349 + 33
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = _465
        continue 
    mem[mem[64]] = 32
    _185 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_185)] = mem[s + 32 len ceil32(_185)]
    if ceil32(_185) > _185:
        mem[mem[64] + _185 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_185) + 32]
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET CREATIME: NO NODE OWNER'
    if not stor4[address(arg1)].field_0:
        revert with 0, 50
    if not stor4[address(arg1)].field_256:
        mem[64] = ceil32(return_data.size) + 160
        mem[ceil32(return_data.size) + 96] = 1
        mem[ceil32(return_data.size) + 128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = ceil32(return_data.size) + 96
        while idx < stor4[address(arg1)].field_0:
            mem[32] = 4
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            if not stor4[address(arg1)][idx].field_256:
                _36 = mem[64]
                mem[64] = mem[64] + 64
                mem[_36] = 1
                mem[_36 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _37 = mem[64]
                _39 = mem[s]
                t = 0
                while t < _39:
                    mem[t + _37 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_37 + _39 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_39) <= _39:
                    _98 = mem[_36]
                    s = 0
                    while s < _98:
                        mem[s + _37 + _39 + 33] = mem[s + _36 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_98) <= _98:
                        _190 = mem[64]
                        mem[mem[64]] = _98 + _37 + _39 + -mem[64] + 1
                        mem[64] = _98 + _37 + _39 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _190
                        continue 
                    mem[_37 + _39 + _98 + 33] = 0
                    _194 = mem[64]
                    mem[mem[64]] = _98 + _37 + _39 + -mem[64] + 1
                    mem[64] = _98 + _37 + _39 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _194
                    continue 
                _102 = mem[_36]
                s = 0
                while s < _102:
                    mem[s + _37 + _39 + 33] = mem[s + _36 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_102) <= _102:
                    _191 = mem[64]
                    mem[mem[64]] = _102 + _37 + _39 + -mem[64] + 1
                    mem[64] = _102 + _37 + _39 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _191
                    continue 
                mem[_37 + _39 + _102 + 33] = 0
                _195 = mem[64]
                mem[mem[64]] = _102 + _37 + _39 + -mem[64] + 1
                mem[64] = _102 + _37 + _39 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _195
                continue 
            u = 0
            t = stor[(4 * idx) + sha3(mem[0]) + 1]
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
            _95 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = stor4[address(arg1)][idx].field_256
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_95]:
                        revert with 0, 50
                    mem[v + _95 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _182 = mem[64]
                _186 = mem[s]
                t = 0
                while t < _186:
                    mem[t + _182 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_182 + _186 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_186) <= _186:
                    _252 = mem[_95]
                    s = 0
                    while s < _252:
                        mem[s + _182 + _186 + 33] = mem[s + _95 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_252) <= _252:
                        _354 = mem[64]
                        mem[mem[64]] = _252 + _182 + _186 + -mem[64] + 1
                        mem[64] = _252 + _182 + _186 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _354
                        continue 
                    mem[_182 + _186 + _252 + 33] = 0
                    _362 = mem[64]
                    mem[mem[64]] = _252 + _182 + _186 + -mem[64] + 1
                    mem[64] = _252 + _182 + _186 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _362
                    continue 
                _258 = mem[_95]
                s = 0
                while s < _258:
                    mem[s + _182 + _186 + 33] = mem[s + _95 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_258) <= _258:
                    _355 = mem[64]
                    mem[mem[64]] = _258 + _182 + _186 + -mem[64] + 1
                    mem[64] = _258 + _182 + _186 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _355
                    continue 
                mem[_182 + _186 + _258 + 33] = 0
                _363 = mem[64]
                mem[mem[64]] = _258 + _182 + _186 + -mem[64] + 1
                mem[64] = _258 + _182 + _186 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _363
                continue 
            mem[_95 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = stor4[address(arg1)][idx].field_256
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_95]:
                    revert with 0, 50
                mem[v + _95 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _183 = mem[64]
            _187 = mem[s]
            t = 0
            while t < _187:
                mem[t + _183 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_183 + _187 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_187) <= _187:
                _253 = mem[_95]
                s = 0
                while s < _253:
                    mem[s + _183 + _187 + 33] = mem[s + _95 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_253) <= _253:
                    _356 = mem[64]
                    mem[mem[64]] = _253 + _183 + _187 + -mem[64] + 1
                    mem[64] = _253 + _183 + _187 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _356
                    continue 
                mem[_183 + _187 + _253 + 33] = 0
                _364 = mem[64]
                mem[mem[64]] = _253 + _183 + _187 + -mem[64] + 1
                mem[64] = _253 + _183 + _187 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _364
                continue 
            _259 = mem[_95]
            s = 0
            while s < _259:
                mem[s + _183 + _187 + 33] = mem[s + _95 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_259) <= _259:
                _357 = mem[64]
                mem[mem[64]] = _259 + _183 + _187 + -mem[64] + 1
                mem[64] = _259 + _183 + _187 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _357
                continue 
            mem[_183 + _187 + _259 + 33] = 0
            _365 = mem[64]
            mem[mem[64]] = _259 + _183 + _187 + -mem[64] + 1
            mem[64] = _259 + _183 + _187 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _365
            continue 
        mem[mem[64]] = 32
        _35 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_35)] = mem[s + 32 len ceil32(_35)]
        if ceil32(_35) > _35:
            mem[mem[64] + _35 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_35) + 32]
    s = 0
    idx = stor4[address(arg1)].field_256
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = s
    mem[64] = ceil32(return_data.size) + ceil32(s) + 128
    if not s:
        t = s
        idx = stor4[address(arg1)].field_256
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[t + ceil32(return_data.size) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = ceil32(return_data.size) + 96
        while idx < stor4[address(arg1)].field_0:
            mem[32] = 4
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            if not stor4[address(arg1)][idx].field_256:
                _188 = mem[64]
                mem[64] = mem[64] + 64
                mem[_188] = 1
                mem[_188 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _192 = mem[64]
                _197 = mem[s]
                u = 0
                while u < _197:
                    mem[u + _192 + 32] = mem[u + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    u = u + 32
                    continue 
                mem[_192 + _197 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_197) <= _197:
                    _250 = mem[_188]
                    s = 0
                    while s < _250:
                        mem[s + _192 + _197 + 33] = mem[s + _188 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_250) <= _250:
                        _350 = mem[64]
                        mem[mem[64]] = _250 + _192 + _197 + -mem[64] + 1
                        mem[64] = _250 + _192 + _197 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _350
                        continue 
                    mem[_192 + _197 + _250 + 33] = 0
                    _358 = mem[64]
                    mem[mem[64]] = _250 + _192 + _197 + -mem[64] + 1
                    mem[64] = _250 + _192 + _197 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _358
                    continue 
                _255 = mem[_188]
                s = 0
                while s < _255:
                    mem[s + _192 + _197 + 33] = mem[s + _188 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_255) <= _255:
                    _351 = mem[64]
                    mem[mem[64]] = _255 + _192 + _197 + -mem[64] + 1
                    mem[64] = _255 + _192 + _197 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _351
                    continue 
                mem[_192 + _197 + _255 + 33] = 0
                _359 = mem[64]
                mem[mem[64]] = _255 + _192 + _197 + -mem[64] + 1
                mem[64] = _255 + _192 + _197 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _359
                continue 
            u = 0
            t = stor[(4 * idx) + sha3(mem[0]) + 1]
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
            _248 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = stor4[address(arg1)][idx].field_256
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_248]:
                        revert with 0, 50
                    mem[v + _248 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _342 = mem[64]
                _346 = mem[s]
                t = 0
                while t < _346:
                    mem[t + _342 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_342 + _346 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_346) <= _346:
                    _410 = mem[_248]
                    s = 0
                    while s < _410:
                        mem[s + _342 + _346 + 33] = mem[s + _248 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_410) <= _410:
                        _450 = mem[64]
                        mem[mem[64]] = _410 + _342 + _346 + -mem[64] + 1
                        mem[64] = _410 + _342 + _346 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _450
                        continue 
                    mem[_342 + _346 + _410 + 33] = 0
                    _458 = mem[64]
                    mem[mem[64]] = _410 + _342 + _346 + -mem[64] + 1
                    mem[64] = _410 + _342 + _346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _458
                    continue 
                _414 = mem[_248]
                s = 0
                while s < _414:
                    mem[s + _342 + _346 + 33] = mem[s + _248 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_414) <= _414:
                    _451 = mem[64]
                    mem[mem[64]] = _414 + _342 + _346 + -mem[64] + 1
                    mem[64] = _414 + _342 + _346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _451
                    continue 
                mem[_342 + _346 + _414 + 33] = 0
                _459 = mem[64]
                mem[mem[64]] = _414 + _342 + _346 + -mem[64] + 1
                mem[64] = _414 + _342 + _346 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _459
                continue 
            mem[_248 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = stor4[address(arg1)][idx].field_256
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_248]:
                    revert with 0, 50
                mem[v + _248 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _343 = mem[64]
            _347 = mem[s]
            t = 0
            while t < _347:
                mem[t + _343 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_343 + _347 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_347) <= _347:
                _411 = mem[_248]
                s = 0
                while s < _411:
                    mem[s + _343 + _347 + 33] = mem[s + _248 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_411) <= _411:
                    _452 = mem[64]
                    mem[mem[64]] = _411 + _343 + _347 + -mem[64] + 1
                    mem[64] = _411 + _343 + _347 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _452
                    continue 
                mem[_343 + _347 + _411 + 33] = 0
                _460 = mem[64]
                mem[mem[64]] = _411 + _343 + _347 + -mem[64] + 1
                mem[64] = _411 + _343 + _347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _460
                continue 
            _415 = mem[_248]
            s = 0
            while s < _415:
                mem[s + _343 + _347 + 33] = mem[s + _248 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_415) <= _415:
                _453 = mem[64]
                mem[mem[64]] = _415 + _343 + _347 + -mem[64] + 1
                mem[64] = _415 + _343 + _347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _453
                continue 
            mem[_343 + _347 + _415 + 33] = 0
            _461 = mem[64]
            mem[mem[64]] = _415 + _343 + _347 + -mem[64] + 1
            mem[64] = _415 + _343 + _347 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _461
            continue 
        mem[mem[64]] = 32
        _184 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_184)] = mem[s + 32 len ceil32(_184)]
        if ceil32(_184) > _184:
            mem[mem[64] + _184 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_184) + 32]
    mem[ceil32(return_data.size) + 128 len s] = call.data[calldata.size len s]
    t = s
    idx = stor4[address(arg1)].field_256
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[t + ceil32(return_data.size) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = arg1
    mem[32] = 4
    idx = 1
    s = ceil32(return_data.size) + 96
    while idx < stor4[address(arg1)].field_0:
        mem[32] = 4
        if idx >= stor4[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 4)
        if not stor4[address(arg1)][idx].field_256:
            _189 = mem[64]
            mem[64] = mem[64] + 64
            mem[_189] = 1
            mem[_189 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _193 = mem[64]
            _199 = mem[s]
            u = 0
            while u < _199:
                mem[u + _193 + 32] = mem[u + s + 32]
                mem[0] = arg1
                mem[32] = 4
                u = u + 32
                continue 
            mem[_193 + _199 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_199) <= _199:
                _251 = mem[_189]
                s = 0
                while s < _251:
                    mem[s + _193 + _199 + 33] = mem[s + _189 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_251) <= _251:
                    _352 = mem[64]
                    mem[mem[64]] = _251 + _193 + _199 + -mem[64] + 1
                    mem[64] = _251 + _193 + _199 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _352
                    continue 
                mem[_193 + _199 + _251 + 33] = 0
                _360 = mem[64]
                mem[mem[64]] = _251 + _193 + _199 + -mem[64] + 1
                mem[64] = _251 + _193 + _199 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _360
                continue 
            _257 = mem[_189]
            s = 0
            while s < _257:
                mem[s + _193 + _199 + 33] = mem[s + _189 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_257) <= _257:
                _353 = mem[64]
                mem[mem[64]] = _257 + _193 + _199 + -mem[64] + 1
                mem[64] = _257 + _193 + _199 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _353
                continue 
            mem[_193 + _199 + _257 + 33] = 0
            _361 = mem[64]
            mem[mem[64]] = _257 + _193 + _199 + -mem[64] + 1
            mem[64] = _257 + _193 + _199 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _361
            continue 
        u = 0
        t = stor[(4 * idx) + sha3(mem[0]) + 1]
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
        _249 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = stor4[address(arg1)][idx].field_256
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_249]:
                    revert with 0, 50
                mem[v + _249 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _344 = mem[64]
            _348 = mem[s]
            t = 0
            while t < _348:
                mem[t + _344 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_344 + _348 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_348) <= _348:
                _412 = mem[_249]
                s = 0
                while s < _412:
                    mem[s + _344 + _348 + 33] = mem[s + _249 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_412) <= _412:
                    _454 = mem[64]
                    mem[mem[64]] = _412 + _344 + _348 + -mem[64] + 1
                    mem[64] = _412 + _344 + _348 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _454
                    continue 
                mem[_344 + _348 + _412 + 33] = 0
                _462 = mem[64]
                mem[mem[64]] = _412 + _344 + _348 + -mem[64] + 1
                mem[64] = _412 + _344 + _348 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _462
                continue 
            _416 = mem[_249]
            s = 0
            while s < _416:
                mem[s + _344 + _348 + 33] = mem[s + _249 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_416) <= _416:
                _455 = mem[64]
                mem[mem[64]] = _416 + _344 + _348 + -mem[64] + 1
                mem[64] = _416 + _344 + _348 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _455
                continue 
            mem[_344 + _348 + _416 + 33] = 0
            _463 = mem[64]
            mem[mem[64]] = _416 + _344 + _348 + -mem[64] + 1
            mem[64] = _416 + _344 + _348 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _463
            continue 
        mem[_249 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = stor4[address(arg1)][idx].field_256
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_249]:
                revert with 0, 50
            mem[v + _249 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            mem[0] = arg1
            mem[32] = 4
            v = v - 1
            t = t / 10
            continue 
        _345 = mem[64]
        _349 = mem[s]
        t = 0
        while t < _349:
            mem[t + _345 + 32] = mem[t + s + 32]
            mem[0] = arg1
            mem[32] = 4
            t = t + 32
            continue 
        mem[_345 + _349 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        if ceil32(_349) <= _349:
            _413 = mem[_249]
            s = 0
            while s < _413:
                mem[s + _345 + _349 + 33] = mem[s + _249 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_413) <= _413:
                _456 = mem[64]
                mem[mem[64]] = _413 + _345 + _349 + -mem[64] + 1
                mem[64] = _413 + _345 + _349 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _456
                continue 
            mem[_345 + _349 + _413 + 33] = 0
            _464 = mem[64]
            mem[mem[64]] = _413 + _345 + _349 + -mem[64] + 1
            mem[64] = _413 + _345 + _349 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _464
            continue 
        _417 = mem[_249]
        s = 0
        while s < _417:
            mem[s + _345 + _349 + 33] = mem[s + _249 + 32]
            mem[0] = arg1
            mem[32] = 4
            s = s + 32
            continue 
        if ceil32(_417) <= _417:
            _457 = mem[64]
            mem[mem[64]] = _417 + _345 + _349 + -mem[64] + 1
            mem[64] = _417 + _345 + _349 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _457
            continue 
        mem[_345 + _349 + _417 + 33] = 0
        _465 = mem[64]
        mem[mem[64]] = _417 + _345 + _349 + -mem[64] + 1
        mem[64] = _417 + _345 + _349 + 33
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = _465
        continue 
    mem[mem[64]] = 32
    _185 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_185)] = mem[s + 32 len ceil32(_185)]
    if ceil32(_185) > _185:
        mem[mem[64] + _185 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_185) + 32]
}

function sub_4ec1fc8c(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
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
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98
    mem[ceil32(32 * ('cd', 68).length) + 97] = ('cd', 100).length
    require (32 * ('cd', 100).length) + cd[100] + 36 <= calldata.size
    s = ceil32(32 * ('cd', 68).length) + 129
    idx = cd[100] + 36
    while idx < (32 * ('cd', 100).length) + cd[100] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 5
    if bool(stor5[msg.sender]) != 1:
        revert with 0, 'Only managers can call this function'
    if not uint8(stor12.field_8):
        revert with 0, 'createcreateMultiNodeEnabledSingleNodeEnabled disabled'
    if cd[36] <= 0:
        revert with 0, 'createNodes numberOfNodes cant be zero'
    if ('cd', 68).length <= 0:
        if ('cd', 100).length <= 0:
            if ('cd', 68).length <= 0:
                idx = 0
                while idx < cd[36]:
                    mem[0] = address(cd[4])
                    mem[32] = 4
                    _2156 = mem[64]
                    mem[64] = mem[64] + 128
                    if 1 > !totalNodesCreated:
                        revert with 0, 17
                    mem[_2156] = totalNodesCreated + 1
                    if block.timestamp > !idx:
                        revert with 0, 17
                    mem[_2156 + 32] = block.timestamp + idx
                    if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                        mem[_2156 + 64] = 0
                        if mem[96] <= 0:
                            mem[_2156 + 96] = 0
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                        else:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[_2156 + 96] = mem[(32 * idx) + 128]
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2156 + 96]
                    else:
                        if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                            revert with 0, 50
                        mem[_2156 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                        if mem[96] <= 0:
                            mem[_2156 + 96] = 0
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2156 + 64]
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                        else:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[_2156 + 96] = mem[(32 * idx) + 128]
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2156 + 64]
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2156 + 96]
                    mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                    require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                         gas gas_remaining wei
                        args 0, address(cd[4]), stor4[address(cd[4])].field_0
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalNodesCreated == -1:
                        revert with 0, 17
                    totalNodesCreated++
                    mem[0] = address(cd[4])
                    mem[32] = 4
                    mem[mem[64]] = totalNodesCreated
                    mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                    mem[mem[64] + 64] = totalNodesCreated
                    emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if ('cd', 100).length <= 0:
                    idx = 0
                    while idx < cd[36]:
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        _2160 = mem[64]
                        mem[64] = mem[64] + 128
                        if 1 > !totalNodesCreated:
                            revert with 0, 17
                        mem[_2160] = totalNodesCreated + 1
                        if block.timestamp > !idx:
                            revert with 0, 17
                        mem[_2160 + 32] = block.timestamp + idx
                        if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                            mem[_2160 + 64] = 0
                            if mem[96] <= 0:
                                mem[_2160 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2160 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2160 + 96]
                        else:
                            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                revert with 0, 50
                            mem[_2160 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                            if mem[96] <= 0:
                                mem[_2160 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2160 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2160 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2160 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2160 + 96]
                        mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                        require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                        delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                             gas gas_remaining wei
                            args 0, address(cd[4]), stor4[address(cd[4])].field_0
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalNodesCreated == -1:
                            revert with 0, 17
                        totalNodesCreated++
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        mem[mem[64]] = totalNodesCreated
                        mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                        mem[mem[64] + 64] = totalNodesCreated
                        emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if ('cd', 68).length != cd[36]:
                        revert with 0, 'rewards and claimsTimes length not equal numberOfNodes'
                    if ('cd', 100).length != cd[36]:
                        revert with 0, 'rewards and claimsTimes length not equal numberOfNodes'
                    idx = 0
                    while idx < cd[36]:
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        _2158 = mem[64]
                        mem[64] = mem[64] + 128
                        if 1 > !totalNodesCreated:
                            revert with 0, 17
                        mem[_2158] = totalNodesCreated + 1
                        if block.timestamp > !idx:
                            revert with 0, 17
                        mem[_2158 + 32] = block.timestamp + idx
                        if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                            mem[_2158 + 64] = 0
                            if mem[96] <= 0:
                                mem[_2158 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2158 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2158 + 96]
                        else:
                            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                revert with 0, 50
                            mem[_2158 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                            if mem[96] <= 0:
                                mem[_2158 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2158 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2158 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2158 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2158 + 96]
                        mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                        require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                        delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                             gas gas_remaining wei
                            args 0, address(cd[4]), stor4[address(cd[4])].field_0
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalNodesCreated == -1:
                            revert with 0, 17
                        totalNodesCreated++
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        mem[mem[64]] = totalNodesCreated
                        mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                        mem[mem[64] + 64] = totalNodesCreated
                        emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            if ('cd', 100).length != cd[36]:
                revert with 0, 'claimsTimes length not equal numberOfNodes'
            if ('cd', 68).length <= 0:
                idx = 0
                while idx < cd[36]:
                    mem[0] = address(cd[4])
                    mem[32] = 4
                    _2150 = mem[64]
                    mem[64] = mem[64] + 128
                    if 1 > !totalNodesCreated:
                        revert with 0, 17
                    mem[_2150] = totalNodesCreated + 1
                    if block.timestamp > !idx:
                        revert with 0, 17
                    mem[_2150 + 32] = block.timestamp + idx
                    if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                        mem[_2150 + 64] = 0
                        if mem[96] <= 0:
                            mem[_2150 + 96] = 0
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                        else:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[_2150 + 96] = mem[(32 * idx) + 128]
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2150 + 96]
                    else:
                        if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                            revert with 0, 50
                        mem[_2150 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                        if mem[96] <= 0:
                            mem[_2150 + 96] = 0
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2150 + 64]
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                        else:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[_2150 + 96] = mem[(32 * idx) + 128]
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2150 + 64]
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2150 + 96]
                    mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                    require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                         gas gas_remaining wei
                        args 0, address(cd[4]), stor4[address(cd[4])].field_0
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalNodesCreated == -1:
                        revert with 0, 17
                    totalNodesCreated++
                    mem[0] = address(cd[4])
                    mem[32] = 4
                    mem[mem[64]] = totalNodesCreated
                    mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                    mem[mem[64] + 64] = totalNodesCreated
                    emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if ('cd', 100).length <= 0:
                    idx = 0
                    while idx < cd[36]:
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        _2154 = mem[64]
                        mem[64] = mem[64] + 128
                        if 1 > !totalNodesCreated:
                            revert with 0, 17
                        mem[_2154] = totalNodesCreated + 1
                        if block.timestamp > !idx:
                            revert with 0, 17
                        mem[_2154 + 32] = block.timestamp + idx
                        if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                            mem[_2154 + 64] = 0
                            if mem[96] <= 0:
                                mem[_2154 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2154 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2154 + 96]
                        else:
                            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                revert with 0, 50
                            mem[_2154 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                            if mem[96] <= 0:
                                mem[_2154 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2154 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2154 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2154 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2154 + 96]
                        mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                        require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                        delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                             gas gas_remaining wei
                            args 0, address(cd[4]), stor4[address(cd[4])].field_0
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalNodesCreated == -1:
                            revert with 0, 17
                        totalNodesCreated++
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        mem[mem[64]] = totalNodesCreated
                        mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                        mem[mem[64] + 64] = totalNodesCreated
                        emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if ('cd', 68).length != cd[36]:
                        revert with 0, 'rewards and claimsTimes length not equal numberOfNodes'
                    if ('cd', 100).length != cd[36]:
                        revert with 0, 'rewards and claimsTimes length not equal numberOfNodes'
                    idx = 0
                    while idx < cd[36]:
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        _2152 = mem[64]
                        mem[64] = mem[64] + 128
                        if 1 > !totalNodesCreated:
                            revert with 0, 17
                        mem[_2152] = totalNodesCreated + 1
                        if block.timestamp > !idx:
                            revert with 0, 17
                        mem[_2152 + 32] = block.timestamp + idx
                        if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                            mem[_2152 + 64] = 0
                            if mem[96] <= 0:
                                mem[_2152 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2152 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2152 + 96]
                        else:
                            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                revert with 0, 50
                            mem[_2152 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                            if mem[96] <= 0:
                                mem[_2152 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2152 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2152 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2152 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2152 + 96]
                        mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                        require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                        delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                             gas gas_remaining wei
                            args 0, address(cd[4]), stor4[address(cd[4])].field_0
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalNodesCreated == -1:
                            revert with 0, 17
                        totalNodesCreated++
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        mem[mem[64]] = totalNodesCreated
                        mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                        mem[mem[64] + 64] = totalNodesCreated
                        emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    else:
        if ('cd', 68).length != cd[36]:
            revert with 0, 'rewards length not equal numberOfNodes'
        if ('cd', 100).length <= 0:
            if ('cd', 68).length <= 0:
                idx = 0
                while idx < cd[36]:
                    mem[0] = address(cd[4])
                    mem[32] = 4
                    _2144 = mem[64]
                    mem[64] = mem[64] + 128
                    if 1 > !totalNodesCreated:
                        revert with 0, 17
                    mem[_2144] = totalNodesCreated + 1
                    if block.timestamp > !idx:
                        revert with 0, 17
                    mem[_2144 + 32] = block.timestamp + idx
                    if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                        mem[_2144 + 64] = 0
                        if mem[96] <= 0:
                            mem[_2144 + 96] = 0
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                        else:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[_2144 + 96] = mem[(32 * idx) + 128]
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2144 + 96]
                    else:
                        if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                            revert with 0, 50
                        mem[_2144 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                        if mem[96] <= 0:
                            mem[_2144 + 96] = 0
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2144 + 64]
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                        else:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[_2144 + 96] = mem[(32 * idx) + 128]
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2144 + 64]
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2144 + 96]
                    mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                    require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                         gas gas_remaining wei
                        args 0, address(cd[4]), stor4[address(cd[4])].field_0
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalNodesCreated == -1:
                        revert with 0, 17
                    totalNodesCreated++
                    mem[0] = address(cd[4])
                    mem[32] = 4
                    mem[mem[64]] = totalNodesCreated
                    mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                    mem[mem[64] + 64] = totalNodesCreated
                    emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if ('cd', 100).length <= 0:
                    idx = 0
                    while idx < cd[36]:
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        _2148 = mem[64]
                        mem[64] = mem[64] + 128
                        if 1 > !totalNodesCreated:
                            revert with 0, 17
                        mem[_2148] = totalNodesCreated + 1
                        if block.timestamp > !idx:
                            revert with 0, 17
                        mem[_2148 + 32] = block.timestamp + idx
                        if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                            mem[_2148 + 64] = 0
                            if mem[96] <= 0:
                                mem[_2148 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2148 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2148 + 96]
                        else:
                            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                revert with 0, 50
                            mem[_2148 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                            if mem[96] <= 0:
                                mem[_2148 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2148 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2148 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2148 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2148 + 96]
                        mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                        require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                        delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                             gas gas_remaining wei
                            args 0, address(cd[4]), stor4[address(cd[4])].field_0
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalNodesCreated == -1:
                            revert with 0, 17
                        totalNodesCreated++
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        mem[mem[64]] = totalNodesCreated
                        mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                        mem[mem[64] + 64] = totalNodesCreated
                        emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if ('cd', 68).length != cd[36]:
                        revert with 0, 'rewards and claimsTimes length not equal numberOfNodes'
                    if ('cd', 100).length != cd[36]:
                        revert with 0, 'rewards and claimsTimes length not equal numberOfNodes'
                    idx = 0
                    while idx < cd[36]:
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        _2146 = mem[64]
                        mem[64] = mem[64] + 128
                        if 1 > !totalNodesCreated:
                            revert with 0, 17
                        mem[_2146] = totalNodesCreated + 1
                        if block.timestamp > !idx:
                            revert with 0, 17
                        mem[_2146 + 32] = block.timestamp + idx
                        if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                            mem[_2146 + 64] = 0
                            if mem[96] <= 0:
                                mem[_2146 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2146 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2146 + 96]
                        else:
                            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                revert with 0, 50
                            mem[_2146 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                            if mem[96] <= 0:
                                mem[_2146 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2146 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2146 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2146 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2146 + 96]
                        mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                        require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                        delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                             gas gas_remaining wei
                            args 0, address(cd[4]), stor4[address(cd[4])].field_0
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalNodesCreated == -1:
                            revert with 0, 17
                        totalNodesCreated++
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        mem[mem[64]] = totalNodesCreated
                        mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                        mem[mem[64] + 64] = totalNodesCreated
                        emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            if ('cd', 100).length != cd[36]:
                revert with 0, 'claimsTimes length not equal numberOfNodes'
            if ('cd', 68).length <= 0:
                idx = 0
                while idx < cd[36]:
                    mem[0] = address(cd[4])
                    mem[32] = 4
                    _2138 = mem[64]
                    mem[64] = mem[64] + 128
                    if 1 > !totalNodesCreated:
                        revert with 0, 17
                    mem[_2138] = totalNodesCreated + 1
                    if block.timestamp > !idx:
                        revert with 0, 17
                    mem[_2138 + 32] = block.timestamp + idx
                    if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                        mem[_2138 + 64] = 0
                        if mem[96] <= 0:
                            mem[_2138 + 96] = 0
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                        else:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[_2138 + 96] = mem[(32 * idx) + 128]
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2138 + 96]
                    else:
                        if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                            revert with 0, 50
                        mem[_2138 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                        if mem[96] <= 0:
                            mem[_2138 + 96] = 0
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2138 + 64]
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                        else:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[_2138 + 96] = mem[(32 * idx) + 128]
                            stor4[address(cd[4])].field_0++
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2138 + 64]
                            stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2138 + 96]
                    mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                    require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                         gas gas_remaining wei
                        args 0, address(cd[4]), stor4[address(cd[4])].field_0
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalNodesCreated == -1:
                        revert with 0, 17
                    totalNodesCreated++
                    mem[0] = address(cd[4])
                    mem[32] = 4
                    mem[mem[64]] = totalNodesCreated
                    mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                    mem[mem[64] + 64] = totalNodesCreated
                    emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if ('cd', 100).length <= 0:
                    idx = 0
                    while idx < cd[36]:
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        _2142 = mem[64]
                        mem[64] = mem[64] + 128
                        if 1 > !totalNodesCreated:
                            revert with 0, 17
                        mem[_2142] = totalNodesCreated + 1
                        if block.timestamp > !idx:
                            revert with 0, 17
                        mem[_2142 + 32] = block.timestamp + idx
                        if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                            mem[_2142 + 64] = 0
                            if mem[96] <= 0:
                                mem[_2142 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2142 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2142 + 96]
                        else:
                            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                revert with 0, 50
                            mem[_2142 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                            if mem[96] <= 0:
                                mem[_2142 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2142 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2142 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2142 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2142 + 96]
                        mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                        require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                        delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                             gas gas_remaining wei
                            args 0, address(cd[4]), stor4[address(cd[4])].field_0
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalNodesCreated == -1:
                            revert with 0, 17
                        totalNodesCreated++
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        mem[mem[64]] = totalNodesCreated
                        mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                        mem[mem[64] + 64] = totalNodesCreated
                        emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if ('cd', 68).length != cd[36]:
                        revert with 0, 'rewards and claimsTimes length not equal numberOfNodes'
                    if ('cd', 100).length != cd[36]:
                        revert with 0, 'rewards and claimsTimes length not equal numberOfNodes'
                    idx = 0
                    while idx < cd[36]:
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        _2140 = mem[64]
                        mem[64] = mem[64] + 128
                        if 1 > !totalNodesCreated:
                            revert with 0, 17
                        mem[_2140] = totalNodesCreated + 1
                        if block.timestamp > !idx:
                            revert with 0, 17
                        mem[_2140 + 32] = block.timestamp + idx
                        if mem[ceil32(32 * ('cd', 68).length) + 97] <= 0:
                            mem[_2140 + 64] = 0
                            if mem[96] <= 0:
                                mem[_2140 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2140 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = 0
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2140 + 96]
                        else:
                            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                revert with 0, 50
                            mem[_2140 + 64] = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
                            if mem[96] <= 0:
                                mem[_2140 + 96] = 0
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2140 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = 0
                            else:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[_2140 + 96] = mem[(32 * idx) + 128]
                                stor4[address(cd[4])].field_0++
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_0 = totalNodesCreated + 1
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_256 = block.timestamp + idx
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_512 = mem[_2140 + 64]
                                stor4[address(cd[4])][stor4[address(cd[4])].field_0].field_768 = mem[_2140 + 96]
                        mem[mem[64] + 68] = stor4[address(cd[4])].field_0
                        require ext_code.size(0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1)
                        delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0xbc2b405c with:
                             gas gas_remaining wei
                            args 0, address(cd[4]), stor4[address(cd[4])].field_0
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalNodesCreated == -1:
                            revert with 0, 17
                        totalNodesCreated++
                        mem[0] = address(cd[4])
                        mem[32] = 4
                        mem[mem[64]] = totalNodesCreated
                        mem[mem[64] + 32] = stor4[address(cd[4])].field_0
                        mem[mem[64] + 64] = totalNodesCreated
                        emit 0x8adf8566: totalNodesCreated, stor4[address(cd[4])].field_0, totalNodesCreated, address(cd[4])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
}

function _getNodesRewardAvailable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0x732a2ccf with:
         gas gas_remaining wei
        args 0, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET REWARD: NO NODE OWNER'
    if not stor4[address(arg1)].field_0:
        revert with 0, 50
    if 0 >= stor4[address(arg1)].field_0:
        revert with 0, 50
    mem[ceil32(return_data.size) + 96] = 30
    mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
    if stor4[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < stor4[address(arg1)].field_512:
        revert with 0, 17
    mem[ceil32(return_data.size) + 160] = 26
    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
    if not sub_0b433a12:
        revert with 0, 'SafeMath: division by zero', 0
    if not block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12:
        if 0 > !stor4[address(arg1)].field_768:
            revert with 0, 17
        if not stor4[address(arg1)].field_768:
            mem[64] = ceil32(return_data.size) + 288
            mem[ceil32(return_data.size) + 224] = 1
            mem[ceil32(return_data.size) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[0] = arg1
            mem[32] = 4
            idx = 1
            s = ceil32(return_data.size) + 224
            while idx < stor4[address(arg1)].field_0:
                if idx >= stor4[address(arg1)].field_0:
                    revert with 0, 50
                mem[32] = 4
                if idx >= stor4[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 4)
                _144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_144] = 30
                mem[_144 + 32] = 'SafeMath: subtraction overflow'
                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                    _152 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _152 + 68] = mem[idx + _144 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_152 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _152 + -mem[64] + 100
                if block.timestamp < stor4[address(arg1)][idx].field_512:
                    revert with 0, 17
                _194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_194] = 26
                mem[_194 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _207 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _207 + 68] = mem[idx + _194 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_207 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _207 + -mem[64] + 100
                if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                    if 0 > !stor4[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if not stor4[address(arg1)][idx].field_768:
                        _270 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_270] = 1
                        mem[_270 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _274 = mem[64]
                        _276 = mem[s]
                        t = 0
                        while t < _276:
                            mem[t + _274 + 32] = mem[t + s + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            t = t + 32
                            continue 
                        mem[_274 + _276 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                        if ceil32(_276) <= _276:
                            _444 = mem[_270]
                            s = 0
                            while s < _444:
                                mem[s + _274 + _276 + 33] = mem[s + _270 + 32]
                                mem[0] = arg1
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_444) <= _444:
                                _831 = mem[64]
                                mem[mem[64]] = _444 + _274 + _276 + -mem[64] + 1
                                mem[64] = _444 + _274 + _276 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 4
                                idx = idx + 1
                                s = _831
                                continue 
                            mem[_274 + _276 + _444 + 33] = 0
                            _843 = mem[64]
                            mem[mem[64]] = _444 + _274 + _276 + -mem[64] + 1
                            mem[64] = _444 + _274 + _276 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _843
                            continue 
                        _456 = mem[_270]
                        s = 0
                        while s < _456:
                            mem[s + _274 + _276 + 33] = mem[s + _270 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_456) <= _456:
                            _832 = mem[64]
                            mem[mem[64]] = _456 + _274 + _276 + -mem[64] + 1
                            mem[64] = _456 + _274 + _276 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _832
                            continue 
                        mem[_274 + _276 + _456 + 33] = 0
                        _844 = mem[64]
                        mem[mem[64]] = _456 + _274 + _276 + -mem[64] + 1
                        mem[64] = _456 + _274 + _276 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _844
                        continue 
                    u = 0
                    t = stor4[address(arg1)][idx].field_768
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
                    _436 = mem[64]
                    mem[mem[64]] = u
                    mem[64] = mem[64] + ceil32(u) + 32
                    if not u:
                        v = u
                        t = stor4[address(arg1)][idx].field_768
                        while t:
                            if v < 1:
                                revert with 0, 17
                            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if t < 10 * t / 10:
                                revert with 0, 17
                            if 48 > -uint8(t - (10 * t / 10)) + 255:
                                revert with 0, 17
                            if v - 1 >= mem[_436]:
                                revert with 0, 50
                            mem[v + _436 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                            mem[0] = arg1
                            mem[32] = 4
                            v = v - 1
                            t = t / 10
                            continue 
                        _807 = mem[64]
                        _823 = mem[s]
                        t = 0
                        while t < _823:
                            mem[t + _807 + 32] = mem[t + s + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            t = t + 32
                            continue 
                        mem[_807 + _823 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                        if ceil32(_823) <= _823:
                            _1135 = mem[_436]
                            s = 0
                            while s < _1135:
                                mem[s + _807 + _823 + 33] = mem[s + _436 + 32]
                                mem[0] = arg1
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_1135) <= _1135:
                                _1557 = mem[64]
                                mem[mem[64]] = _1135 + _807 + _823 + -mem[64] + 1
                                mem[64] = _1135 + _807 + _823 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 4
                                idx = idx + 1
                                s = _1557
                                continue 
                            mem[_807 + _823 + _1135 + 33] = 0
                            _1589 = mem[64]
                            mem[mem[64]] = _1135 + _807 + _823 + -mem[64] + 1
                            mem[64] = _1135 + _807 + _823 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1589
                            continue 
                        _1163 = mem[_436]
                        s = 0
                        while s < _1163:
                            mem[s + _807 + _823 + 33] = mem[s + _436 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1163) <= _1163:
                            _1558 = mem[64]
                            mem[mem[64]] = _1163 + _807 + _823 + -mem[64] + 1
                            mem[64] = _1163 + _807 + _823 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1558
                            continue 
                        mem[_807 + _823 + _1163 + 33] = 0
                        _1590 = mem[64]
                        mem[mem[64]] = _1163 + _807 + _823 + -mem[64] + 1
                        mem[64] = _1163 + _807 + _823 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1590
                        continue 
                    mem[_436 + 32 len u] = call.data[calldata.size len u]
                    v = u
                    t = stor4[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_436]:
                            revert with 0, 50
                        mem[v + _436 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = arg1
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _808 = mem[64]
                    _824 = mem[s]
                    t = 0
                    while t < _824:
                        mem[t + _808 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_808 + _824 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_824) <= _824:
                        _1136 = mem[_436]
                        s = 0
                        while s < _1136:
                            mem[s + _808 + _824 + 33] = mem[s + _436 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1136) <= _1136:
                            _1559 = mem[64]
                            mem[mem[64]] = _1136 + _808 + _824 + -mem[64] + 1
                            mem[64] = _1136 + _808 + _824 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1559
                            continue 
                        mem[_808 + _824 + _1136 + 33] = 0
                        _1591 = mem[64]
                        mem[mem[64]] = _1136 + _808 + _824 + -mem[64] + 1
                        mem[64] = _1136 + _808 + _824 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1591
                        continue 
                    _1164 = mem[_436]
                    s = 0
                    while s < _1164:
                        mem[s + _808 + _824 + 33] = mem[s + _436 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1164) <= _1164:
                        _1560 = mem[64]
                        mem[mem[64]] = _1164 + _808 + _824 + -mem[64] + 1
                        mem[64] = _1164 + _808 + _824 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1560
                        continue 
                    mem[_808 + _824 + _1164 + 33] = 0
                    _1592 = mem[64]
                    mem[mem[64]] = _1164 + _808 + _824 + -mem[64] + 1
                    mem[64] = _1164 + _808 + _824 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1592
                    continue 
                if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                    revert with 0, 17
                if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                    revert with 0, 18
                if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 != sub_d754d433:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 > !stor4[address(arg1)][idx].field_768:
                    revert with 0, 17
                if not (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768:
                    _282 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_282] = 1
                    mem[_282 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _291 = mem[64]
                    _301 = mem[s]
                    t = 0
                    while t < _301:
                        mem[t + _291 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_291 + _301 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_301) <= _301:
                        _443 = mem[_282]
                        s = 0
                        while s < _443:
                            mem[s + _291 + _301 + 33] = mem[s + _282 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_443) <= _443:
                            _829 = mem[64]
                            mem[mem[64]] = _443 + _291 + _301 + -mem[64] + 1
                            mem[64] = _443 + _291 + _301 + 33
                            if ceil32(_443) == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            s = ceil32(_443) + 1
                            s = _829
                            continue 
                        mem[_291 + _301 + _443 + 33] = 0
                        _841 = mem[64]
                        mem[mem[64]] = _443 + _291 + _301 + -mem[64] + 1
                        mem[64] = _443 + _291 + _301 + 33
                        if ceil32(_443) == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        s = ceil32(_443) + 1
                        s = _841
                        continue 
                    _455 = mem[_282]
                    s = 0
                    while s < _455:
                        mem[s + _291 + _301 + 33] = mem[s + _282 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_455) <= _455:
                        _830 = mem[64]
                        mem[mem[64]] = _455 + _291 + _301 + -mem[64] + 1
                        mem[64] = _455 + _291 + _301 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _830
                        continue 
                    mem[_291 + _301 + _455 + 33] = 0
                    _842 = mem[64]
                    mem[mem[64]] = _455 + _291 + _301 + -mem[64] + 1
                    mem[64] = _455 + _291 + _301 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _842
                    continue 
                u = 0
                t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
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
                _435 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_435]:
                            revert with 0, 50
                        mem[v + _435 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = arg1
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _805 = mem[64]
                    _821 = mem[s]
                    t = 0
                    while t < _821:
                        mem[t + _805 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_805 + _821 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_821) <= _821:
                        _1133 = mem[_435]
                        s = 0
                        while s < _1133:
                            mem[s + _805 + _821 + 33] = mem[s + _435 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1133) <= _1133:
                            _1553 = mem[64]
                            mem[mem[64]] = _1133 + _805 + _821 + -mem[64] + 1
                            mem[64] = _1133 + _805 + _821 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1553
                            continue 
                        mem[_805 + _821 + _1133 + 33] = 0
                        _1585 = mem[64]
                        mem[mem[64]] = _1133 + _805 + _821 + -mem[64] + 1
                        mem[64] = _1133 + _805 + _821 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1585
                        continue 
                    _1161 = mem[_435]
                    s = 0
                    while s < _1161:
                        mem[s + _805 + _821 + 33] = mem[s + _435 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1161) <= _1161:
                        _1554 = mem[64]
                        mem[mem[64]] = _1161 + _805 + _821 + -mem[64] + 1
                        mem[64] = _1161 + _805 + _821 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1554
                        continue 
                    mem[_805 + _821 + _1161 + 33] = 0
                    _1586 = mem[64]
                    mem[mem[64]] = _1161 + _805 + _821 + -mem[64] + 1
                    mem[64] = _1161 + _805 + _821 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1586
                    continue 
                mem[_435 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_435]:
                        revert with 0, 50
                    mem[v + _435 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _806 = mem[64]
                _822 = mem[s]
                t = 0
                while t < _822:
                    mem[t + _806 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_806 + _822 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_822) <= _822:
                    _1134 = mem[_435]
                    s = 0
                    while s < _1134:
                        mem[s + _806 + _822 + 33] = mem[s + _435 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1134) <= _1134:
                        _1555 = mem[64]
                        mem[mem[64]] = _1134 + _806 + _822 + -mem[64] + 1
                        mem[64] = _1134 + _806 + _822 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1555
                        continue 
                    mem[_806 + _822 + _1134 + 33] = 0
                    _1587 = mem[64]
                    mem[mem[64]] = _1134 + _806 + _822 + -mem[64] + 1
                    mem[64] = _1134 + _806 + _822 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1587
                    continue 
                _1162 = mem[_435]
                s = 0
                while s < _1162:
                    mem[s + _806 + _822 + 33] = mem[s + _435 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1162) <= _1162:
                    _1556 = mem[64]
                    mem[mem[64]] = _1162 + _806 + _822 + -mem[64] + 1
                    mem[64] = _1162 + _806 + _822 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1556
                    continue 
                mem[_806 + _822 + _1162 + 33] = 0
                _1588 = mem[64]
                mem[mem[64]] = _1162 + _806 + _822 + -mem[64] + 1
                mem[64] = _1162 + _806 + _822 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1588
                continue 
            mem[mem[64]] = 32
            _139 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_139)] = mem[s + 32 len ceil32(_139)]
            if ceil32(_139) > _139:
                mem[mem[64] + _139 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_139) + 32]
        s = 0
        idx = stor4[address(arg1)].field_768
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 224] = s
        mem[64] = ceil32(return_data.size) + ceil32(s) + 256
        if not s:
            t = s
            idx = stor4[address(arg1)].field_768
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 0, 50
                mem[t + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[0] = arg1
            mem[32] = 4
            idx = 1
            s = ceil32(return_data.size) + 224
            while idx < stor4[address(arg1)].field_0:
                if idx >= stor4[address(arg1)].field_0:
                    revert with 0, 50
                mem[32] = 4
                if idx >= stor4[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 4)
                _839 = mem[64]
                mem[64] = mem[64] + 64
                mem[_839] = 30
                mem[_839 + 32] = 'SafeMath: subtraction overflow'
                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                    _859 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _859 + 68] = mem[idx + _839 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_859 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _859 + -mem[64] + 100
                if block.timestamp < stor4[address(arg1)][idx].field_512:
                    revert with 0, 17
                _911 = mem[64]
                mem[64] = mem[64] + 64
                mem[_911] = 26
                mem[_911 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _937 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _937 + 68] = mem[idx + _911 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_937 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _937 + -mem[64] + 100
                if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                    if 0 > !stor4[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if not stor4[address(arg1)][idx].field_768:
                        _990 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_990] = 1
                        mem[_990 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _995 = mem[64]
                        _999 = mem[s]
                        t = 0
                        while t < _999:
                            mem[t + _995 + 32] = mem[t + s + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            t = t + 32
                            continue 
                        mem[_995 + _999 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                        if ceil32(_999) <= _999:
                            _1130 = mem[_990]
                            s = 0
                            while s < _1130:
                                mem[s + _995 + _999 + 33] = mem[s + _990 + 32]
                                mem[0] = arg1
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_1130) <= _1130:
                                _1547 = mem[64]
                                mem[mem[64]] = _1130 + _995 + _999 + -mem[64] + 1
                                mem[64] = _1130 + _995 + _999 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 4
                                idx = idx + 1
                                s = _1547
                                continue 
                            mem[_995 + _999 + _1130 + 33] = 0
                            _1579 = mem[64]
                            mem[mem[64]] = _1130 + _995 + _999 + -mem[64] + 1
                            mem[64] = _1130 + _995 + _999 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1579
                            continue 
                        _1153 = mem[_990]
                        s = 0
                        while s < _1153:
                            mem[s + _995 + _999 + 33] = mem[s + _990 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1153) <= _1153:
                            _1548 = mem[64]
                            mem[mem[64]] = _1153 + _995 + _999 + -mem[64] + 1
                            mem[64] = _1153 + _995 + _999 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1548
                            continue 
                        mem[_995 + _999 + _1153 + 33] = 0
                        _1580 = mem[64]
                        mem[mem[64]] = _1153 + _995 + _999 + -mem[64] + 1
                        mem[64] = _1153 + _995 + _999 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1580
                        continue 
                    u = 0
                    t = stor4[address(arg1)][idx].field_768
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
                    _1118 = mem[64]
                    mem[mem[64]] = u
                    mem[64] = mem[64] + ceil32(u) + 32
                    if not u:
                        v = u
                        t = stor4[address(arg1)][idx].field_768
                        while t:
                            if v < 1:
                                revert with 0, 17
                            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if t < 10 * t / 10:
                                revert with 0, 17
                            if 48 > -uint8(t - (10 * t / 10)) + 255:
                                revert with 0, 17
                            if v - 1 >= mem[_1118]:
                                revert with 0, 50
                            mem[v + _1118 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                            mem[0] = arg1
                            mem[32] = 4
                            v = v - 1
                            t = t / 10
                            continue 
                        _1507 = mem[64]
                        _1523 = mem[s]
                        t = 0
                        while t < _1523:
                            mem[t + _1507 + 32] = mem[t + s + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            t = t + 32
                            continue 
                        mem[_1507 + _1523 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                        if ceil32(_1523) <= _1523:
                            _1779 = mem[_1118]
                            s = 0
                            while s < _1779:
                                mem[s + _1507 + _1523 + 33] = mem[s + _1118 + 32]
                                mem[0] = arg1
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_1779) <= _1779:
                                _1949 = mem[64]
                                mem[mem[64]] = _1779 + _1507 + _1523 + -mem[64] + 1
                                mem[64] = _1779 + _1507 + _1523 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 4
                                idx = idx + 1
                                s = _1949
                                continue 
                            mem[_1507 + _1523 + _1779 + 33] = 0
                            _1981 = mem[64]
                            mem[mem[64]] = _1779 + _1507 + _1523 + -mem[64] + 1
                            mem[64] = _1779 + _1507 + _1523 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1981
                            continue 
                        _1795 = mem[_1118]
                        s = 0
                        while s < _1795:
                            mem[s + _1507 + _1523 + 33] = mem[s + _1118 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1795) <= _1795:
                            _1950 = mem[64]
                            mem[mem[64]] = _1795 + _1507 + _1523 + -mem[64] + 1
                            mem[64] = _1795 + _1507 + _1523 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1950
                            continue 
                        mem[_1507 + _1523 + _1795 + 33] = 0
                        _1982 = mem[64]
                        mem[mem[64]] = _1795 + _1507 + _1523 + -mem[64] + 1
                        mem[64] = _1795 + _1507 + _1523 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1982
                        continue 
                    mem[_1118 + 32 len u] = call.data[calldata.size len u]
                    v = u
                    t = stor4[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1118]:
                            revert with 0, 50
                        mem[v + _1118 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = arg1
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _1508 = mem[64]
                    _1524 = mem[s]
                    t = 0
                    while t < _1524:
                        mem[t + _1508 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1508 + _1524 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1524) <= _1524:
                        _1780 = mem[_1118]
                        s = 0
                        while s < _1780:
                            mem[s + _1508 + _1524 + 33] = mem[s + _1118 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1780) <= _1780:
                            _1951 = mem[64]
                            mem[mem[64]] = _1780 + _1508 + _1524 + -mem[64] + 1
                            mem[64] = _1780 + _1508 + _1524 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1951
                            continue 
                        mem[_1508 + _1524 + _1780 + 33] = 0
                        _1983 = mem[64]
                        mem[mem[64]] = _1780 + _1508 + _1524 + -mem[64] + 1
                        mem[64] = _1780 + _1508 + _1524 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1983
                        continue 
                    _1796 = mem[_1118]
                    s = 0
                    while s < _1796:
                        mem[s + _1508 + _1524 + 33] = mem[s + _1118 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1796) <= _1796:
                        _1952 = mem[64]
                        mem[mem[64]] = _1796 + _1508 + _1524 + -mem[64] + 1
                        mem[64] = _1796 + _1508 + _1524 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1952
                        continue 
                    mem[_1508 + _1524 + _1796 + 33] = 0
                    _1984 = mem[64]
                    mem[mem[64]] = _1796 + _1508 + _1524 + -mem[64] + 1
                    mem[64] = _1796 + _1508 + _1524 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1984
                    continue 
                if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                    revert with 0, 17
                if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                    revert with 0, 18
                if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 != sub_d754d433:
                    revert with 0, 'SafeMath: multiplication overflow'
                if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 > !stor4[address(arg1)][idx].field_768:
                    revert with 0, 17
                if not (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768:
                    _1007 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1007] = 1
                    mem[_1007 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _1013 = mem[64]
                    _1021 = mem[s]
                    t = 0
                    while t < _1021:
                        mem[t + _1013 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1013 + _1021 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1021) <= _1021:
                        _1129 = mem[_1007]
                        s = 0
                        while s < _1129:
                            mem[s + _1013 + _1021 + 33] = mem[s + _1007 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1129) <= _1129:
                            _1545 = mem[64]
                            mem[mem[64]] = _1129 + _1013 + _1021 + -mem[64] + 1
                            mem[64] = _1129 + _1013 + _1021 + 33
                            if ceil32(_1129) == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            s = ceil32(_1129) + 1
                            s = _1545
                            continue 
                        mem[_1013 + _1021 + _1129 + 33] = 0
                        _1577 = mem[64]
                        mem[mem[64]] = _1129 + _1013 + _1021 + -mem[64] + 1
                        mem[64] = _1129 + _1013 + _1021 + 33
                        if ceil32(_1129) == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        s = ceil32(_1129) + 1
                        s = _1577
                        continue 
                    _1152 = mem[_1007]
                    s = 0
                    while s < _1152:
                        mem[s + _1013 + _1021 + 33] = mem[s + _1007 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1152) <= _1152:
                        _1546 = mem[64]
                        mem[mem[64]] = _1152 + _1013 + _1021 + -mem[64] + 1
                        mem[64] = _1152 + _1013 + _1021 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1546
                        continue 
                    mem[_1013 + _1021 + _1152 + 33] = 0
                    _1578 = mem[64]
                    mem[mem[64]] = _1152 + _1013 + _1021 + -mem[64] + 1
                    mem[64] = _1152 + _1013 + _1021 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1578
                    continue 
                u = 0
                t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
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
                _1117 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1117]:
                            revert with 0, 50
                        mem[v + _1117 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = arg1
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _1505 = mem[64]
                    _1521 = mem[s]
                    t = 0
                    while t < _1521:
                        mem[t + _1505 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1505 + _1521 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1521) <= _1521:
                        _1777 = mem[_1117]
                        s = 0
                        while s < _1777:
                            mem[s + _1505 + _1521 + 33] = mem[s + _1117 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1777) <= _1777:
                            _1945 = mem[64]
                            mem[mem[64]] = _1777 + _1505 + _1521 + -mem[64] + 1
                            mem[64] = _1777 + _1505 + _1521 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1945
                            continue 
                        mem[_1505 + _1521 + _1777 + 33] = 0
                        _1977 = mem[64]
                        mem[mem[64]] = _1777 + _1505 + _1521 + -mem[64] + 1
                        mem[64] = _1777 + _1505 + _1521 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1977
                        continue 
                    _1793 = mem[_1117]
                    s = 0
                    while s < _1793:
                        mem[s + _1505 + _1521 + 33] = mem[s + _1117 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1793) <= _1793:
                        _1946 = mem[64]
                        mem[mem[64]] = _1793 + _1505 + _1521 + -mem[64] + 1
                        mem[64] = _1793 + _1505 + _1521 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1946
                        continue 
                    mem[_1505 + _1521 + _1793 + 33] = 0
                    _1978 = mem[64]
                    mem[mem[64]] = _1793 + _1505 + _1521 + -mem[64] + 1
                    mem[64] = _1793 + _1505 + _1521 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1978
                    continue 
                mem[_1117 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1117]:
                        revert with 0, 50
                    mem[v + _1117 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _1506 = mem[64]
                _1522 = mem[s]
                t = 0
                while t < _1522:
                    mem[t + _1506 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1506 + _1522 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1522) <= _1522:
                    _1778 = mem[_1117]
                    s = 0
                    while s < _1778:
                        mem[s + _1506 + _1522 + 33] = mem[s + _1117 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1778) <= _1778:
                        _1947 = mem[64]
                        mem[mem[64]] = _1778 + _1506 + _1522 + -mem[64] + 1
                        mem[64] = _1778 + _1506 + _1522 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1947
                        continue 
                    mem[_1506 + _1522 + _1778 + 33] = 0
                    _1979 = mem[64]
                    mem[mem[64]] = _1778 + _1506 + _1522 + -mem[64] + 1
                    mem[64] = _1778 + _1506 + _1522 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1979
                    continue 
                _1794 = mem[_1117]
                s = 0
                while s < _1794:
                    mem[s + _1506 + _1522 + 33] = mem[s + _1117 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1794) <= _1794:
                    _1948 = mem[64]
                    mem[mem[64]] = _1794 + _1506 + _1522 + -mem[64] + 1
                    mem[64] = _1794 + _1506 + _1522 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1948
                    continue 
                mem[_1506 + _1522 + _1794 + 33] = 0
                _1980 = mem[64]
                mem[mem[64]] = _1794 + _1506 + _1522 + -mem[64] + 1
                mem[64] = _1794 + _1506 + _1522 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1980
                continue 
            mem[mem[64]] = 32
            _817 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_817)] = mem[s + 32 len ceil32(_817)]
            if ceil32(_817) > _817:
                mem[mem[64] + _817 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_817) + 32]
        mem[ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
        t = s
        idx = stor4[address(arg1)].field_768
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[ceil32(return_data.size) + 224]:
                revert with 0, 50
            mem[t + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = ceil32(return_data.size) + 224
        while idx < stor4[address(arg1)].field_0:
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[32] = 4
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            _840 = mem[64]
            mem[64] = mem[64] + 64
            mem[_840] = 30
            mem[_840 + 32] = 'SafeMath: subtraction overflow'
            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                _860 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _860 + 68] = mem[idx + _840 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_860 + 98] = 0
                revert with memory
                  from mem[64]
                   len _860 + -mem[64] + 100
            if block.timestamp < stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            _912 = mem[64]
            mem[64] = mem[64] + 64
            mem[_912] = 26
            mem[_912 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _939 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _939 + 68] = mem[idx + _912 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_939 + 94] = 0
                revert with memory
                  from mem[64]
                   len _939 + -mem[64] + 100
            if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                if 0 > !stor4[address(arg1)][idx].field_768:
                    revert with 0, 17
                if not stor4[address(arg1)][idx].field_768:
                    _992 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_992] = 1
                    mem[_992 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _996 = mem[64]
                    _1000 = mem[s]
                    t = 0
                    while t < _1000:
                        mem[t + _996 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_996 + _1000 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1000) <= _1000:
                        _1132 = mem[_992]
                        s = 0
                        while s < _1132:
                            mem[s + _996 + _1000 + 33] = mem[s + _992 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1132) <= _1132:
                            _1551 = mem[64]
                            mem[mem[64]] = _1132 + _996 + _1000 + -mem[64] + 1
                            mem[64] = _1132 + _996 + _1000 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1551
                            continue 
                        mem[_996 + _1000 + _1132 + 33] = 0
                        _1583 = mem[64]
                        mem[mem[64]] = _1132 + _996 + _1000 + -mem[64] + 1
                        mem[64] = _1132 + _996 + _1000 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1583
                        continue 
                    _1158 = mem[_992]
                    s = 0
                    while s < _1158:
                        mem[s + _996 + _1000 + 33] = mem[s + _992 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1158) <= _1158:
                        _1552 = mem[64]
                        mem[mem[64]] = _1158 + _996 + _1000 + -mem[64] + 1
                        mem[64] = _1158 + _996 + _1000 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1552
                        continue 
                    mem[_996 + _1000 + _1158 + 33] = 0
                    _1584 = mem[64]
                    mem[mem[64]] = _1158 + _996 + _1000 + -mem[64] + 1
                    mem[64] = _1158 + _996 + _1000 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1584
                    continue 
                u = 0
                t = stor4[address(arg1)][idx].field_768
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
                _1120 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = stor4[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1120]:
                            revert with 0, 50
                        mem[v + _1120 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = arg1
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _1511 = mem[64]
                    _1527 = mem[s]
                    t = 0
                    while t < _1527:
                        mem[t + _1511 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1511 + _1527 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1527) <= _1527:
                        _1783 = mem[_1120]
                        s = 0
                        while s < _1783:
                            mem[s + _1511 + _1527 + 33] = mem[s + _1120 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1783) <= _1783:
                            _1957 = mem[64]
                            mem[mem[64]] = _1783 + _1511 + _1527 + -mem[64] + 1
                            mem[64] = _1783 + _1511 + _1527 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1957
                            continue 
                        mem[_1511 + _1527 + _1783 + 33] = 0
                        _1989 = mem[64]
                        mem[mem[64]] = _1783 + _1511 + _1527 + -mem[64] + 1
                        mem[64] = _1783 + _1511 + _1527 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1989
                        continue 
                    _1799 = mem[_1120]
                    s = 0
                    while s < _1799:
                        mem[s + _1511 + _1527 + 33] = mem[s + _1120 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1799) <= _1799:
                        _1958 = mem[64]
                        mem[mem[64]] = _1799 + _1511 + _1527 + -mem[64] + 1
                        mem[64] = _1799 + _1511 + _1527 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1958
                        continue 
                    mem[_1511 + _1527 + _1799 + 33] = 0
                    _1990 = mem[64]
                    mem[mem[64]] = _1799 + _1511 + _1527 + -mem[64] + 1
                    mem[64] = _1799 + _1511 + _1527 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1990
                    continue 
                mem[_1120 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = stor4[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1120]:
                        revert with 0, 50
                    mem[v + _1120 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _1512 = mem[64]
                _1528 = mem[s]
                t = 0
                while t < _1528:
                    mem[t + _1512 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1512 + _1528 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1528) <= _1528:
                    _1784 = mem[_1120]
                    s = 0
                    while s < _1784:
                        mem[s + _1512 + _1528 + 33] = mem[s + _1120 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1784) <= _1784:
                        _1959 = mem[64]
                        mem[mem[64]] = _1784 + _1512 + _1528 + -mem[64] + 1
                        mem[64] = _1784 + _1512 + _1528 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1959
                        continue 
                    mem[_1512 + _1528 + _1784 + 33] = 0
                    _1991 = mem[64]
                    mem[mem[64]] = _1784 + _1512 + _1528 + -mem[64] + 1
                    mem[64] = _1784 + _1512 + _1528 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1991
                    continue 
                _1800 = mem[_1120]
                s = 0
                while s < _1800:
                    mem[s + _1512 + _1528 + 33] = mem[s + _1120 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1800) <= _1800:
                    _1960 = mem[64]
                    mem[mem[64]] = _1800 + _1512 + _1528 + -mem[64] + 1
                    mem[64] = _1800 + _1512 + _1528 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1960
                    continue 
                mem[_1512 + _1528 + _1800 + 33] = 0
                _1992 = mem[64]
                mem[mem[64]] = _1800 + _1512 + _1528 + -mem[64] + 1
                mem[64] = _1800 + _1512 + _1528 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1992
                continue 
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if not (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768:
                _1008 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1008] = 1
                mem[_1008 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _1015 = mem[64]
                _1023 = mem[s]
                t = 0
                while t < _1023:
                    mem[t + _1015 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1015 + _1023 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1023) <= _1023:
                    _1131 = mem[_1008]
                    s = 0
                    while s < _1131:
                        mem[s + _1015 + _1023 + 33] = mem[s + _1008 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1131) <= _1131:
                        _1549 = mem[64]
                        mem[mem[64]] = _1131 + _1015 + _1023 + -mem[64] + 1
                        mem[64] = _1131 + _1015 + _1023 + 33
                        if ceil32(_1131) == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        s = ceil32(_1131) + 1
                        s = _1549
                        continue 
                    mem[_1015 + _1023 + _1131 + 33] = 0
                    _1581 = mem[64]
                    mem[mem[64]] = _1131 + _1015 + _1023 + -mem[64] + 1
                    mem[64] = _1131 + _1015 + _1023 + 33
                    if ceil32(_1131) == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    s = ceil32(_1131) + 1
                    s = _1581
                    continue 
                _1157 = mem[_1008]
                s = 0
                while s < _1157:
                    mem[s + _1015 + _1023 + 33] = mem[s + _1008 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1157) <= _1157:
                    _1550 = mem[64]
                    mem[mem[64]] = _1157 + _1015 + _1023 + -mem[64] + 1
                    mem[64] = _1157 + _1015 + _1023 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1550
                    continue 
                mem[_1015 + _1023 + _1157 + 33] = 0
                _1582 = mem[64]
                mem[mem[64]] = _1157 + _1015 + _1023 + -mem[64] + 1
                mem[64] = _1157 + _1015 + _1023 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1582
                continue 
            u = 0
            t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
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
            _1119 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1119]:
                        revert with 0, 50
                    mem[v + _1119 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _1509 = mem[64]
                _1525 = mem[s]
                t = 0
                while t < _1525:
                    mem[t + _1509 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1509 + _1525 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1525) <= _1525:
                    _1781 = mem[_1119]
                    s = 0
                    while s < _1781:
                        mem[s + _1509 + _1525 + 33] = mem[s + _1119 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1781) <= _1781:
                        _1953 = mem[64]
                        mem[mem[64]] = _1781 + _1509 + _1525 + -mem[64] + 1
                        mem[64] = _1781 + _1509 + _1525 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1953
                        continue 
                    mem[_1509 + _1525 + _1781 + 33] = 0
                    _1985 = mem[64]
                    mem[mem[64]] = _1781 + _1509 + _1525 + -mem[64] + 1
                    mem[64] = _1781 + _1509 + _1525 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1985
                    continue 
                _1797 = mem[_1119]
                s = 0
                while s < _1797:
                    mem[s + _1509 + _1525 + 33] = mem[s + _1119 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1797) <= _1797:
                    _1954 = mem[64]
                    mem[mem[64]] = _1797 + _1509 + _1525 + -mem[64] + 1
                    mem[64] = _1797 + _1509 + _1525 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1954
                    continue 
                mem[_1509 + _1525 + _1797 + 33] = 0
                _1986 = mem[64]
                mem[mem[64]] = _1797 + _1509 + _1525 + -mem[64] + 1
                mem[64] = _1797 + _1509 + _1525 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1986
                continue 
            mem[_1119 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_1119]:
                    revert with 0, 50
                mem[v + _1119 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _1510 = mem[64]
            _1526 = mem[s]
            t = 0
            while t < _1526:
                mem[t + _1510 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_1510 + _1526 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_1526) <= _1526:
                _1782 = mem[_1119]
                s = 0
                while s < _1782:
                    mem[s + _1510 + _1526 + 33] = mem[s + _1119 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1782) <= _1782:
                    _1955 = mem[64]
                    mem[mem[64]] = _1782 + _1510 + _1526 + -mem[64] + 1
                    mem[64] = _1782 + _1510 + _1526 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1955
                    continue 
                mem[_1510 + _1526 + _1782 + 33] = 0
                _1987 = mem[64]
                mem[mem[64]] = _1782 + _1510 + _1526 + -mem[64] + 1
                mem[64] = _1782 + _1510 + _1526 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1987
                continue 
            _1798 = mem[_1119]
            s = 0
            while s < _1798:
                mem[s + _1510 + _1526 + 33] = mem[s + _1119 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1798) <= _1798:
                _1956 = mem[64]
                mem[mem[64]] = _1798 + _1510 + _1526 + -mem[64] + 1
                mem[64] = _1798 + _1510 + _1526 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1956
                continue 
            mem[_1510 + _1526 + _1798 + 33] = 0
            _1988 = mem[64]
            mem[mem[64]] = _1798 + _1510 + _1526 + -mem[64] + 1
            mem[64] = _1798 + _1510 + _1526 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1988
            continue 
        mem[mem[64]] = 32
        _819 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_819)] = mem[s + 32 len ceil32(_819)]
        if ceil32(_819) > _819:
            mem[mem[64] + _819 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_819) + 32]
    if block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12:
        revert with 0, 17
    if not block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12:
        revert with 0, 18
    if block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12 * sub_d754d433 / block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12 != sub_d754d433:
        revert with 0, 'SafeMath: multiplication overflow'
    if block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12 * sub_d754d433 > !stor4[address(arg1)].field_768:
        revert with 0, 17
    if not (block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)].field_768:
        mem[64] = ceil32(return_data.size) + 288
        mem[ceil32(return_data.size) + 224] = 1
        mem[ceil32(return_data.size) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = ceil32(return_data.size) + 224
        while idx < stor4[address(arg1)].field_0:
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[32] = 4
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            _143 = mem[64]
            mem[64] = mem[64] + 64
            mem[_143] = 30
            mem[_143 + 32] = 'SafeMath: subtraction overflow'
            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                _150 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _150 + 68] = mem[idx + _143 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_150 + 98] = 0
                revert with memory
                  from mem[64]
                   len _150 + -mem[64] + 100
            if block.timestamp < stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            _191 = mem[64]
            mem[64] = mem[64] + 64
            mem[_191] = 26
            mem[_191 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _203 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _203 + 68] = mem[idx + _191 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_203 + 94] = 0
                revert with memory
                  from mem[64]
                   len _203 + -mem[64] + 100
            if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                if 0 > !stor4[address(arg1)][idx].field_768:
                    revert with 0, 17
                if not stor4[address(arg1)][idx].field_768:
                    _266 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_266] = 1
                    mem[_266 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _272 = mem[64]
                    _275 = mem[s]
                    t = 0
                    while t < _275:
                        mem[t + _272 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_272 + _275 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_275) <= _275:
                        _440 = mem[_266]
                        s = 0
                        while s < _440:
                            mem[s + _272 + _275 + 33] = mem[s + _266 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_440) <= _440:
                            _827 = mem[64]
                            mem[mem[64]] = _440 + _272 + _275 + -mem[64] + 1
                            mem[64] = _440 + _272 + _275 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _827
                            continue 
                        mem[_272 + _275 + _440 + 33] = 0
                        _837 = mem[64]
                        mem[mem[64]] = _440 + _272 + _275 + -mem[64] + 1
                        mem[64] = _440 + _272 + _275 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _837
                        continue 
                    _449 = mem[_266]
                    s = 0
                    while s < _449:
                        mem[s + _272 + _275 + 33] = mem[s + _266 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_449) <= _449:
                        _828 = mem[64]
                        mem[mem[64]] = _449 + _272 + _275 + -mem[64] + 1
                        mem[64] = _449 + _272 + _275 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _828
                        continue 
                    mem[_272 + _275 + _449 + 33] = 0
                    _838 = mem[64]
                    mem[mem[64]] = _449 + _272 + _275 + -mem[64] + 1
                    mem[64] = _449 + _272 + _275 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _838
                    continue 
                u = 0
                t = stor4[address(arg1)][idx].field_768
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
                _434 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = stor4[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_434]:
                            revert with 0, 50
                        mem[v + _434 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = arg1
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _797 = mem[64]
                    _815 = mem[s]
                    t = 0
                    while t < _815:
                        mem[t + _797 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_797 + _815 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_815) <= _815:
                        _1127 = mem[_434]
                        s = 0
                        while s < _1127:
                            mem[s + _797 + _815 + 33] = mem[s + _434 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1127) <= _1127:
                            _1541 = mem[64]
                            mem[mem[64]] = _1127 + _797 + _815 + -mem[64] + 1
                            mem[64] = _1127 + _797 + _815 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1541
                            continue 
                        mem[_797 + _815 + _1127 + 33] = 0
                        _1573 = mem[64]
                        mem[mem[64]] = _1127 + _797 + _815 + -mem[64] + 1
                        mem[64] = _1127 + _797 + _815 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1573
                        continue 
                    _1149 = mem[_434]
                    s = 0
                    while s < _1149:
                        mem[s + _797 + _815 + 33] = mem[s + _434 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1149) <= _1149:
                        _1542 = mem[64]
                        mem[mem[64]] = _1149 + _797 + _815 + -mem[64] + 1
                        mem[64] = _1149 + _797 + _815 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1542
                        continue 
                    mem[_797 + _815 + _1149 + 33] = 0
                    _1574 = mem[64]
                    mem[mem[64]] = _1149 + _797 + _815 + -mem[64] + 1
                    mem[64] = _1149 + _797 + _815 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1574
                    continue 
                mem[_434 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = stor4[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_434]:
                        revert with 0, 50
                    mem[v + _434 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _798 = mem[64]
                _816 = mem[s]
                t = 0
                while t < _816:
                    mem[t + _798 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_798 + _816 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_816) <= _816:
                    _1128 = mem[_434]
                    s = 0
                    while s < _1128:
                        mem[s + _798 + _816 + 33] = mem[s + _434 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1128) <= _1128:
                        _1543 = mem[64]
                        mem[mem[64]] = _1128 + _798 + _816 + -mem[64] + 1
                        mem[64] = _1128 + _798 + _816 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1543
                        continue 
                    mem[_798 + _816 + _1128 + 33] = 0
                    _1575 = mem[64]
                    mem[mem[64]] = _1128 + _798 + _816 + -mem[64] + 1
                    mem[64] = _1128 + _798 + _816 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1575
                    continue 
                _1150 = mem[_434]
                s = 0
                while s < _1150:
                    mem[s + _798 + _816 + 33] = mem[s + _434 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1150) <= _1150:
                    _1544 = mem[64]
                    mem[mem[64]] = _1150 + _798 + _816 + -mem[64] + 1
                    mem[64] = _1150 + _798 + _816 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1544
                    continue 
                mem[_798 + _816 + _1150 + 33] = 0
                _1576 = mem[64]
                mem[mem[64]] = _1150 + _798 + _816 + -mem[64] + 1
                mem[64] = _1150 + _798 + _816 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1576
                continue 
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if not (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768:
                _280 = mem[64]
                mem[64] = mem[64] + 64
                mem[_280] = 1
                mem[_280 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _286 = mem[64]
                _296 = mem[s]
                t = 0
                while t < _296:
                    mem[t + _286 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_286 + _296 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_296) <= _296:
                    _439 = mem[_280]
                    s = 0
                    while s < _439:
                        mem[s + _286 + _296 + 33] = mem[s + _280 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_439) <= _439:
                        _825 = mem[64]
                        mem[mem[64]] = _439 + _286 + _296 + -mem[64] + 1
                        mem[64] = _439 + _286 + _296 + 33
                        if ceil32(_439) == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        s = ceil32(_439) + 1
                        s = _825
                        continue 
                    mem[_286 + _296 + _439 + 33] = 0
                    _835 = mem[64]
                    mem[mem[64]] = _439 + _286 + _296 + -mem[64] + 1
                    mem[64] = _439 + _286 + _296 + 33
                    if ceil32(_439) == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    s = ceil32(_439) + 1
                    s = _835
                    continue 
                _448 = mem[_280]
                s = 0
                while s < _448:
                    mem[s + _286 + _296 + 33] = mem[s + _280 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_448) <= _448:
                    _826 = mem[64]
                    mem[mem[64]] = _448 + _286 + _296 + -mem[64] + 1
                    mem[64] = _448 + _286 + _296 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _826
                    continue 
                mem[_286 + _296 + _448 + 33] = 0
                _836 = mem[64]
                mem[mem[64]] = _448 + _286 + _296 + -mem[64] + 1
                mem[64] = _448 + _286 + _296 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _836
                continue 
            u = 0
            t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
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
            _433 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_433]:
                        revert with 0, 50
                    mem[v + _433 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _795 = mem[64]
                _813 = mem[s]
                t = 0
                while t < _813:
                    mem[t + _795 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_795 + _813 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_813) <= _813:
                    _1125 = mem[_433]
                    s = 0
                    while s < _1125:
                        mem[s + _795 + _813 + 33] = mem[s + _433 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1125) <= _1125:
                        _1537 = mem[64]
                        mem[mem[64]] = _1125 + _795 + _813 + -mem[64] + 1
                        mem[64] = _1125 + _795 + _813 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1537
                        continue 
                    mem[_795 + _813 + _1125 + 33] = 0
                    _1569 = mem[64]
                    mem[mem[64]] = _1125 + _795 + _813 + -mem[64] + 1
                    mem[64] = _1125 + _795 + _813 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1569
                    continue 
                _1147 = mem[_433]
                s = 0
                while s < _1147:
                    mem[s + _795 + _813 + 33] = mem[s + _433 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1147) <= _1147:
                    _1538 = mem[64]
                    mem[mem[64]] = _1147 + _795 + _813 + -mem[64] + 1
                    mem[64] = _1147 + _795 + _813 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1538
                    continue 
                mem[_795 + _813 + _1147 + 33] = 0
                _1570 = mem[64]
                mem[mem[64]] = _1147 + _795 + _813 + -mem[64] + 1
                mem[64] = _1147 + _795 + _813 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1570
                continue 
            mem[_433 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_433]:
                    revert with 0, 50
                mem[v + _433 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _796 = mem[64]
            _814 = mem[s]
            t = 0
            while t < _814:
                mem[t + _796 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_796 + _814 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_814) <= _814:
                _1126 = mem[_433]
                s = 0
                while s < _1126:
                    mem[s + _796 + _814 + 33] = mem[s + _433 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1126) <= _1126:
                    _1539 = mem[64]
                    mem[mem[64]] = _1126 + _796 + _814 + -mem[64] + 1
                    mem[64] = _1126 + _796 + _814 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1539
                    continue 
                mem[_796 + _814 + _1126 + 33] = 0
                _1571 = mem[64]
                mem[mem[64]] = _1126 + _796 + _814 + -mem[64] + 1
                mem[64] = _1126 + _796 + _814 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1571
                continue 
            _1148 = mem[_433]
            s = 0
            while s < _1148:
                mem[s + _796 + _814 + 33] = mem[s + _433 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1148) <= _1148:
                _1540 = mem[64]
                mem[mem[64]] = _1148 + _796 + _814 + -mem[64] + 1
                mem[64] = _1148 + _796 + _814 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1540
                continue 
            mem[_796 + _814 + _1148 + 33] = 0
            _1572 = mem[64]
            mem[mem[64]] = _1148 + _796 + _814 + -mem[64] + 1
            mem[64] = _1148 + _796 + _814 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1572
            continue 
        mem[mem[64]] = 32
        _137 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_137)] = mem[s + 32 len ceil32(_137)]
        if ceil32(_137) > _137:
            mem[mem[64] + _137 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_137) + 32]
    s = 0
    idx = (block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)].field_768
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 224] = s
    mem[64] = ceil32(return_data.size) + ceil32(s) + 256
    if not s:
        t = s
        idx = (block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)].field_768
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[ceil32(return_data.size) + 224]:
                revert with 0, 50
            mem[t + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = arg1
        mem[32] = 4
        idx = 1
        s = ceil32(return_data.size) + 224
        while idx < stor4[address(arg1)].field_0:
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[32] = 4
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            _833 = mem[64]
            mem[64] = mem[64] + 64
            mem[_833] = 30
            mem[_833 + 32] = 'SafeMath: subtraction overflow'
            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                _857 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _857 + 68] = mem[idx + _833 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_857 + 98] = 0
                revert with memory
                  from mem[64]
                   len _857 + -mem[64] + 100
            if block.timestamp < stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            _909 = mem[64]
            mem[64] = mem[64] + 64
            mem[_909] = 26
            mem[_909 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _925 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _925 + 68] = mem[idx + _909 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_925 + 94] = 0
                revert with memory
                  from mem[64]
                   len _925 + -mem[64] + 100
            if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                if 0 > !stor4[address(arg1)][idx].field_768:
                    revert with 0, 17
                if not stor4[address(arg1)][idx].field_768:
                    _986 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_986] = 1
                    mem[_986 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _993 = mem[64]
                    _997 = mem[s]
                    t = 0
                    while t < _997:
                        mem[t + _993 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_993 + _997 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_997) <= _997:
                        _1122 = mem[_986]
                        s = 0
                        while s < _1122:
                            mem[s + _993 + _997 + 33] = mem[s + _986 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1122) <= _1122:
                            _1531 = mem[64]
                            mem[mem[64]] = _1122 + _993 + _997 + -mem[64] + 1
                            mem[64] = _1122 + _993 + _997 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1531
                            continue 
                        mem[_993 + _997 + _1122 + 33] = 0
                        _1563 = mem[64]
                        mem[mem[64]] = _1122 + _993 + _997 + -mem[64] + 1
                        mem[64] = _1122 + _993 + _997 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1563
                        continue 
                    _1139 = mem[_986]
                    s = 0
                    while s < _1139:
                        mem[s + _993 + _997 + 33] = mem[s + _986 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1139) <= _1139:
                        _1532 = mem[64]
                        mem[mem[64]] = _1139 + _993 + _997 + -mem[64] + 1
                        mem[64] = _1139 + _993 + _997 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1532
                        continue 
                    mem[_993 + _997 + _1139 + 33] = 0
                    _1564 = mem[64]
                    mem[mem[64]] = _1139 + _993 + _997 + -mem[64] + 1
                    mem[64] = _1139 + _993 + _997 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1564
                    continue 
                u = 0
                t = stor4[address(arg1)][idx].field_768
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
                _1114 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = stor4[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1114]:
                            revert with 0, 50
                        mem[v + _1114 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = arg1
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _1499 = mem[64]
                    _1515 = mem[s]
                    t = 0
                    while t < _1515:
                        mem[t + _1499 + 32] = mem[t + s + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1499 + _1515 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1515) <= _1515:
                        _1771 = mem[_1114]
                        s = 0
                        while s < _1771:
                            mem[s + _1499 + _1515 + 33] = mem[s + _1114 + 32]
                            mem[0] = arg1
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1771) <= _1771:
                            _1933 = mem[64]
                            mem[mem[64]] = _1771 + _1499 + _1515 + -mem[64] + 1
                            mem[64] = _1771 + _1499 + _1515 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 4
                            idx = idx + 1
                            s = _1933
                            continue 
                        mem[_1499 + _1515 + _1771 + 33] = 0
                        _1965 = mem[64]
                        mem[mem[64]] = _1771 + _1499 + _1515 + -mem[64] + 1
                        mem[64] = _1771 + _1499 + _1515 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1965
                        continue 
                    _1787 = mem[_1114]
                    s = 0
                    while s < _1787:
                        mem[s + _1499 + _1515 + 33] = mem[s + _1114 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1787) <= _1787:
                        _1934 = mem[64]
                        mem[mem[64]] = _1787 + _1499 + _1515 + -mem[64] + 1
                        mem[64] = _1787 + _1499 + _1515 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1934
                        continue 
                    mem[_1499 + _1515 + _1787 + 33] = 0
                    _1966 = mem[64]
                    mem[mem[64]] = _1787 + _1499 + _1515 + -mem[64] + 1
                    mem[64] = _1787 + _1499 + _1515 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1966
                    continue 
                mem[_1114 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = stor4[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1114]:
                        revert with 0, 50
                    mem[v + _1114 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _1500 = mem[64]
                _1516 = mem[s]
                t = 0
                while t < _1516:
                    mem[t + _1500 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1500 + _1516 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1516) <= _1516:
                    _1772 = mem[_1114]
                    s = 0
                    while s < _1772:
                        mem[s + _1500 + _1516 + 33] = mem[s + _1114 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1772) <= _1772:
                        _1935 = mem[64]
                        mem[mem[64]] = _1772 + _1500 + _1516 + -mem[64] + 1
                        mem[64] = _1772 + _1500 + _1516 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1935
                        continue 
                    mem[_1500 + _1516 + _1772 + 33] = 0
                    _1967 = mem[64]
                    mem[mem[64]] = _1772 + _1500 + _1516 + -mem[64] + 1
                    mem[64] = _1772 + _1500 + _1516 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1967
                    continue 
                _1788 = mem[_1114]
                s = 0
                while s < _1788:
                    mem[s + _1500 + _1516 + 33] = mem[s + _1114 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1788) <= _1788:
                    _1936 = mem[64]
                    mem[mem[64]] = _1788 + _1500 + _1516 + -mem[64] + 1
                    mem[64] = _1788 + _1500 + _1516 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1936
                    continue 
                mem[_1500 + _1516 + _1788 + 33] = 0
                _1968 = mem[64]
                mem[mem[64]] = _1788 + _1500 + _1516 + -mem[64] + 1
                mem[64] = _1788 + _1500 + _1516 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1968
                continue 
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                revert with 0, 17
            if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
                revert with 0, 18
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if not (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768:
                _1005 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1005] = 1
                mem[_1005 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _1009 = mem[64]
                _1017 = mem[s]
                t = 0
                while t < _1017:
                    mem[t + _1009 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1009 + _1017 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1017) <= _1017:
                    _1121 = mem[_1005]
                    s = 0
                    while s < _1121:
                        mem[s + _1009 + _1017 + 33] = mem[s + _1005 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1121) <= _1121:
                        _1529 = mem[64]
                        mem[mem[64]] = _1121 + _1009 + _1017 + -mem[64] + 1
                        mem[64] = _1121 + _1009 + _1017 + 33
                        if ceil32(_1121) == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        s = ceil32(_1121) + 1
                        s = _1529
                        continue 
                    mem[_1009 + _1017 + _1121 + 33] = 0
                    _1561 = mem[64]
                    mem[mem[64]] = _1121 + _1009 + _1017 + -mem[64] + 1
                    mem[64] = _1121 + _1009 + _1017 + 33
                    if ceil32(_1121) == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    s = ceil32(_1121) + 1
                    s = _1561
                    continue 
                _1138 = mem[_1005]
                s = 0
                while s < _1138:
                    mem[s + _1009 + _1017 + 33] = mem[s + _1005 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1138) <= _1138:
                    _1530 = mem[64]
                    mem[mem[64]] = _1138 + _1009 + _1017 + -mem[64] + 1
                    mem[64] = _1138 + _1009 + _1017 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1530
                    continue 
                mem[_1009 + _1017 + _1138 + 33] = 0
                _1562 = mem[64]
                mem[mem[64]] = _1138 + _1009 + _1017 + -mem[64] + 1
                mem[64] = _1138 + _1009 + _1017 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1562
                continue 
            u = 0
            t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
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
            _1113 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1113]:
                        revert with 0, 50
                    mem[v + _1113 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _1497 = mem[64]
                _1513 = mem[s]
                t = 0
                while t < _1513:
                    mem[t + _1497 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1497 + _1513 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1513) <= _1513:
                    _1769 = mem[_1113]
                    s = 0
                    while s < _1769:
                        mem[s + _1497 + _1513 + 33] = mem[s + _1113 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1769) <= _1769:
                        _1929 = mem[64]
                        mem[mem[64]] = _1769 + _1497 + _1513 + -mem[64] + 1
                        mem[64] = _1769 + _1497 + _1513 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1929
                        continue 
                    mem[_1497 + _1513 + _1769 + 33] = 0
                    _1961 = mem[64]
                    mem[mem[64]] = _1769 + _1497 + _1513 + -mem[64] + 1
                    mem[64] = _1769 + _1497 + _1513 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1961
                    continue 
                _1785 = mem[_1113]
                s = 0
                while s < _1785:
                    mem[s + _1497 + _1513 + 33] = mem[s + _1113 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1785) <= _1785:
                    _1930 = mem[64]
                    mem[mem[64]] = _1785 + _1497 + _1513 + -mem[64] + 1
                    mem[64] = _1785 + _1497 + _1513 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1930
                    continue 
                mem[_1497 + _1513 + _1785 + 33] = 0
                _1962 = mem[64]
                mem[mem[64]] = _1785 + _1497 + _1513 + -mem[64] + 1
                mem[64] = _1785 + _1497 + _1513 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1962
                continue 
            mem[_1113 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_1113]:
                    revert with 0, 50
                mem[v + _1113 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _1498 = mem[64]
            _1514 = mem[s]
            t = 0
            while t < _1514:
                mem[t + _1498 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_1498 + _1514 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_1514) <= _1514:
                _1770 = mem[_1113]
                s = 0
                while s < _1770:
                    mem[s + _1498 + _1514 + 33] = mem[s + _1113 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1770) <= _1770:
                    _1931 = mem[64]
                    mem[mem[64]] = _1770 + _1498 + _1514 + -mem[64] + 1
                    mem[64] = _1770 + _1498 + _1514 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1931
                    continue 
                mem[_1498 + _1514 + _1770 + 33] = 0
                _1963 = mem[64]
                mem[mem[64]] = _1770 + _1498 + _1514 + -mem[64] + 1
                mem[64] = _1770 + _1498 + _1514 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1963
                continue 
            _1786 = mem[_1113]
            s = 0
            while s < _1786:
                mem[s + _1498 + _1514 + 33] = mem[s + _1113 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1786) <= _1786:
                _1932 = mem[64]
                mem[mem[64]] = _1786 + _1498 + _1514 + -mem[64] + 1
                mem[64] = _1786 + _1498 + _1514 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1932
                continue 
            mem[_1498 + _1514 + _1786 + 33] = 0
            _1964 = mem[64]
            mem[mem[64]] = _1786 + _1498 + _1514 + -mem[64] + 1
            mem[64] = _1786 + _1498 + _1514 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1964
            continue 
        mem[mem[64]] = 32
        _809 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_809)] = mem[s + 32 len ceil32(_809)]
        if ceil32(_809) > _809:
            mem[mem[64] + _809 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_809) + 32]
    mem[ceil32(return_data.size) + 256 len s] = call.data[calldata.size len s]
    t = s
    idx = (block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)].field_768
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[ceil32(return_data.size) + 224]:
            revert with 0, 50
        mem[t + ceil32(return_data.size) + 255 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = arg1
    mem[32] = 4
    idx = 1
    s = ceil32(return_data.size) + 224
    while idx < stor4[address(arg1)].field_0:
        if idx >= stor4[address(arg1)].field_0:
            revert with 0, 50
        mem[32] = 4
        if idx >= stor4[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 4)
        _834 = mem[64]
        mem[64] = mem[64] + 64
        mem[_834] = 30
        mem[_834 + 32] = 'SafeMath: subtraction overflow'
        if stor4[address(arg1)][idx].field_512 > block.timestamp:
            _858 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _858 + 68] = mem[idx + _834 + 32]
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_858 + 98] = 0
            revert with memory
              from mem[64]
               len _858 + -mem[64] + 100
        if block.timestamp < stor4[address(arg1)][idx].field_512:
            revert with 0, 17
        _910 = mem[64]
        mem[64] = mem[64] + 64
        mem[_910] = 26
        mem[_910 + 32] = 'SafeMath: division by zero'
        if not sub_0b433a12:
            _927 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _927 + 68] = mem[idx + _910 + 32]
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_927 + 94] = 0
            revert with memory
              from mem[64]
               len _927 + -mem[64] + 100
        if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
            if 0 > !stor4[address(arg1)][idx].field_768:
                revert with 0, 17
            if not stor4[address(arg1)][idx].field_768:
                _988 = mem[64]
                mem[64] = mem[64] + 64
                mem[_988] = 1
                mem[_988 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _994 = mem[64]
                _998 = mem[s]
                t = 0
                while t < _998:
                    mem[t + _994 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_994 + _998 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_998) <= _998:
                    _1124 = mem[_988]
                    s = 0
                    while s < _1124:
                        mem[s + _994 + _998 + 33] = mem[s + _988 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1124) <= _1124:
                        _1535 = mem[64]
                        mem[mem[64]] = _1124 + _994 + _998 + -mem[64] + 1
                        mem[64] = _1124 + _994 + _998 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1535
                        continue 
                    mem[_994 + _998 + _1124 + 33] = 0
                    _1567 = mem[64]
                    mem[mem[64]] = _1124 + _994 + _998 + -mem[64] + 1
                    mem[64] = _1124 + _994 + _998 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1567
                    continue 
                _1144 = mem[_988]
                s = 0
                while s < _1144:
                    mem[s + _994 + _998 + 33] = mem[s + _988 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1144) <= _1144:
                    _1536 = mem[64]
                    mem[mem[64]] = _1144 + _994 + _998 + -mem[64] + 1
                    mem[64] = _1144 + _994 + _998 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1536
                    continue 
                mem[_994 + _998 + _1144 + 33] = 0
                _1568 = mem[64]
                mem[mem[64]] = _1144 + _994 + _998 + -mem[64] + 1
                mem[64] = _1144 + _994 + _998 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1568
                continue 
            u = 0
            t = stor4[address(arg1)][idx].field_768
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
            _1116 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = stor4[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1116]:
                        revert with 0, 50
                    mem[v + _1116 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = arg1
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _1503 = mem[64]
                _1519 = mem[s]
                t = 0
                while t < _1519:
                    mem[t + _1503 + 32] = mem[t + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1503 + _1519 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1519) <= _1519:
                    _1775 = mem[_1116]
                    s = 0
                    while s < _1775:
                        mem[s + _1503 + _1519 + 33] = mem[s + _1116 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1775) <= _1775:
                        _1941 = mem[64]
                        mem[mem[64]] = _1775 + _1503 + _1519 + -mem[64] + 1
                        mem[64] = _1775 + _1503 + _1519 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _1941
                        continue 
                    mem[_1503 + _1519 + _1775 + 33] = 0
                    _1973 = mem[64]
                    mem[mem[64]] = _1775 + _1503 + _1519 + -mem[64] + 1
                    mem[64] = _1775 + _1503 + _1519 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1973
                    continue 
                _1791 = mem[_1116]
                s = 0
                while s < _1791:
                    mem[s + _1503 + _1519 + 33] = mem[s + _1116 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1791) <= _1791:
                    _1942 = mem[64]
                    mem[mem[64]] = _1791 + _1503 + _1519 + -mem[64] + 1
                    mem[64] = _1791 + _1503 + _1519 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1942
                    continue 
                mem[_1503 + _1519 + _1791 + 33] = 0
                _1974 = mem[64]
                mem[mem[64]] = _1791 + _1503 + _1519 + -mem[64] + 1
                mem[64] = _1791 + _1503 + _1519 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1974
                continue 
            mem[_1116 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = stor4[address(arg1)][idx].field_768
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_1116]:
                    revert with 0, 50
                mem[v + _1116 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _1504 = mem[64]
            _1520 = mem[s]
            t = 0
            while t < _1520:
                mem[t + _1504 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_1504 + _1520 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_1520) <= _1520:
                _1776 = mem[_1116]
                s = 0
                while s < _1776:
                    mem[s + _1504 + _1520 + 33] = mem[s + _1116 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1776) <= _1776:
                    _1943 = mem[64]
                    mem[mem[64]] = _1776 + _1504 + _1520 + -mem[64] + 1
                    mem[64] = _1776 + _1504 + _1520 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1943
                    continue 
                mem[_1504 + _1520 + _1776 + 33] = 0
                _1975 = mem[64]
                mem[mem[64]] = _1776 + _1504 + _1520 + -mem[64] + 1
                mem[64] = _1776 + _1504 + _1520 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1975
                continue 
            _1792 = mem[_1116]
            s = 0
            while s < _1792:
                mem[s + _1504 + _1520 + 33] = mem[s + _1116 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1792) <= _1792:
                _1944 = mem[64]
                mem[mem[64]] = _1792 + _1504 + _1520 + -mem[64] + 1
                mem[64] = _1792 + _1504 + _1520 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1944
                continue 
            mem[_1504 + _1520 + _1792 + 33] = 0
            _1976 = mem[64]
            mem[mem[64]] = _1792 + _1504 + _1520 + -mem[64] + 1
            mem[64] = _1792 + _1504 + _1520 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1976
            continue 
        if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
            revert with 0, 17
        if not block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12:
            revert with 0, 18
        if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 / block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433 > !stor4[address(arg1)][idx].field_768:
            revert with 0, 17
        if not (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768:
            _1006 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1006] = 1
            mem[_1006 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _1011 = mem[64]
            _1019 = mem[s]
            t = 0
            while t < _1019:
                mem[t + _1011 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_1011 + _1019 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_1019) <= _1019:
                _1123 = mem[_1006]
                s = 0
                while s < _1123:
                    mem[s + _1011 + _1019 + 33] = mem[s + _1006 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1123) <= _1123:
                    _1533 = mem[64]
                    mem[mem[64]] = _1123 + _1011 + _1019 + -mem[64] + 1
                    mem[64] = _1123 + _1011 + _1019 + 33
                    if ceil32(_1123) == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    s = ceil32(_1123) + 1
                    s = _1533
                    continue 
                mem[_1011 + _1019 + _1123 + 33] = 0
                _1565 = mem[64]
                mem[mem[64]] = _1123 + _1011 + _1019 + -mem[64] + 1
                mem[64] = _1123 + _1011 + _1019 + 33
                if ceil32(_1123) == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                s = ceil32(_1123) + 1
                s = _1565
                continue 
            _1143 = mem[_1006]
            s = 0
            while s < _1143:
                mem[s + _1011 + _1019 + 33] = mem[s + _1006 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1143) <= _1143:
                _1534 = mem[64]
                mem[mem[64]] = _1143 + _1011 + _1019 + -mem[64] + 1
                mem[64] = _1143 + _1011 + _1019 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1534
                continue 
            mem[_1011 + _1019 + _1143 + 33] = 0
            _1566 = mem[64]
            mem[mem[64]] = _1143 + _1011 + _1019 + -mem[64] + 1
            mem[64] = _1143 + _1011 + _1019 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1566
            continue 
        u = 0
        t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
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
        _1115 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_1115]:
                    revert with 0, 50
                mem[v + _1115 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = arg1
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _1501 = mem[64]
            _1517 = mem[s]
            t = 0
            while t < _1517:
                mem[t + _1501 + 32] = mem[t + s + 32]
                mem[0] = arg1
                mem[32] = 4
                t = t + 32
                continue 
            mem[_1501 + _1517 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_1517) <= _1517:
                _1773 = mem[_1115]
                s = 0
                while s < _1773:
                    mem[s + _1501 + _1517 + 33] = mem[s + _1115 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1773) <= _1773:
                    _1937 = mem[64]
                    mem[mem[64]] = _1773 + _1501 + _1517 + -mem[64] + 1
                    mem[64] = _1773 + _1501 + _1517 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _1937
                    continue 
                mem[_1501 + _1517 + _1773 + 33] = 0
                _1969 = mem[64]
                mem[mem[64]] = _1773 + _1501 + _1517 + -mem[64] + 1
                mem[64] = _1773 + _1501 + _1517 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1969
                continue 
            _1789 = mem[_1115]
            s = 0
            while s < _1789:
                mem[s + _1501 + _1517 + 33] = mem[s + _1115 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1789) <= _1789:
                _1938 = mem[64]
                mem[mem[64]] = _1789 + _1501 + _1517 + -mem[64] + 1
                mem[64] = _1789 + _1501 + _1517 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1938
                continue 
            mem[_1501 + _1517 + _1789 + 33] = 0
            _1970 = mem[64]
            mem[mem[64]] = _1789 + _1501 + _1517 + -mem[64] + 1
            mem[64] = _1789 + _1501 + _1517 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1970
            continue 
        mem[_1115 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = (block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 * sub_d754d433) + stor4[address(arg1)][idx].field_768
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_1115]:
                revert with 0, 50
            mem[v + _1115 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            mem[0] = arg1
            mem[32] = 4
            v = v - 1
            t = t / 10
            continue 
        _1502 = mem[64]
        _1518 = mem[s]
        t = 0
        while t < _1518:
            mem[t + _1502 + 32] = mem[t + s + 32]
            mem[0] = arg1
            mem[32] = 4
            t = t + 32
            continue 
        mem[_1502 + _1518 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        if ceil32(_1518) <= _1518:
            _1774 = mem[_1115]
            s = 0
            while s < _1774:
                mem[s + _1502 + _1518 + 33] = mem[s + _1115 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1774) <= _1774:
                _1939 = mem[64]
                mem[mem[64]] = _1774 + _1502 + _1518 + -mem[64] + 1
                mem[64] = _1774 + _1502 + _1518 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _1939
                continue 
            mem[_1502 + _1518 + _1774 + 33] = 0
            _1971 = mem[64]
            mem[mem[64]] = _1774 + _1502 + _1518 + -mem[64] + 1
            mem[64] = _1774 + _1502 + _1518 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1971
            continue 
        _1790 = mem[_1115]
        s = 0
        while s < _1790:
            mem[s + _1502 + _1518 + 33] = mem[s + _1115 + 32]
            mem[0] = arg1
            mem[32] = 4
            s = s + 32
            continue 
        if ceil32(_1790) <= _1790:
            _1940 = mem[64]
            mem[mem[64]] = _1790 + _1502 + _1518 + -mem[64] + 1
            mem[64] = _1790 + _1502 + _1518 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _1940
            continue 
        mem[_1502 + _1518 + _1790 + 33] = 0
        _1972 = mem[64]
        mem[mem[64]] = _1790 + _1502 + _1518 + -mem[64] + 1
        mem[64] = _1790 + _1502 + _1518 + 33
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = _1972
        continue 
    mem[mem[64]] = 32
    _811 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_811)] = mem[s + 32 len ceil32(_811)]
    if ceil32(_811) > _811:
        mem[mem[64] + _811 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_811) + 32]
}

function sub_56042f77(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = 0
    mem[132] = address(arg1)
    delegate 0x43ac4d3c13541bbf16f330e21dc0d4fa6760eae1.0x732a2ccf with:
         gas gas_remaining wei
        args 0, address(arg1)
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'GET CREATIME: NO NODE OWNER'
    if not stor4[address(arg1)].field_0:
        revert with 0, 50
    mem[ceil32(return_data.size) + 96] = 30
    mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
    if stor4[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < stor4[address(arg1)].field_512:
        revert with 0, 17
    mem[ceil32(return_data.size) + 160] = 26
    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
    if not sub_0b433a12:
        revert with 0, 'SafeMath: division by zero', 0
    if block.timestamp - stor4[address(arg1)].field_512 / sub_0b433a12 >= 1:
        mem[64] = ceil32(return_data.size) + 288
        mem[ceil32(return_data.size) + 224] = 1
        mem[ceil32(return_data.size) + 256] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = address(arg1)
        mem[32] = 4
        idx = 1
        s = ceil32(return_data.size) + 224
        while idx < stor4[address(arg1)].field_0:
            mem[32] = 4
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            _269 = mem[64]
            mem[64] = mem[64] + 64
            mem[_269] = 30
            mem[_269 + 32] = 'SafeMath: subtraction overflow'
            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                _281 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _281 + 68] = mem[idx + _269 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_281 + 98] = 0
                revert with memory
                  from mem[64]
                   len _281 + -mem[64] + 100
            if block.timestamp < stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            _320 = mem[64]
            mem[64] = mem[64] + 64
            mem[_320] = 26
            mem[_320 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _332 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _332 + 68] = mem[idx + _320 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_332 + 94] = 0
                revert with memory
                  from mem[64]
                   len _332 + -mem[64] + 100
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 >= 1:
                _392 = mem[64]
                mem[64] = mem[64] + 64
                mem[_392] = 1
                mem[_392 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _397 = mem[64]
                _400 = mem[s]
                t = 0
                while t < _400:
                    mem[t + _397 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_397 + _400 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_400) <= _400:
                    _786 = mem[_392]
                    s = 0
                    while s < _786:
                        mem[s + _397 + _400 + 33] = mem[s + _392 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_786) <= _786:
                        _1378 = mem[64]
                        mem[mem[64]] = _786 + _397 + _400 + -mem[64] + 1
                        mem[64] = _786 + _397 + _400 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1378
                        continue 
                    mem[_397 + _400 + _786 + 33] = 0
                    _1400 = mem[64]
                    mem[mem[64]] = _786 + _397 + _400 + -mem[64] + 1
                    mem[64] = _786 + _397 + _400 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1400
                    continue 
                _800 = mem[_392]
                s = 0
                while s < _800:
                    mem[s + _397 + _400 + 33] = mem[s + _392 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_800) <= _800:
                    _1379 = mem[64]
                    mem[mem[64]] = _800 + _397 + _400 + -mem[64] + 1
                    mem[64] = _800 + _397 + _400 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1379
                    continue 
                mem[_397 + _400 + _800 + 33] = 0
                _1401 = mem[64]
                mem[mem[64]] = _800 + _397 + _400 + -mem[64] + 1
                mem[64] = _800 + _397 + _400 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _1401
                continue 
            if not block.timestamp - stor4[address(arg1)][idx].field_512:
                _401 = mem[64]
                mem[64] = mem[64] + 64
                mem[_401] = 26
                mem[_401 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _410 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _410 + 68] = mem[idx + _401 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_410 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _410 + -mem[64] + 100
                if not 0 / sub_0b433a12:
                    _478 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_478] = 1
                    mem[_478 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _491 = mem[64]
                    _505 = mem[s]
                    t = 0
                    while t < _505:
                        mem[t + _491 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_491 + _505 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_505) <= _505:
                        _788 = mem[_478]
                        s = 0
                        while s < _788:
                            mem[s + _491 + _505 + 33] = mem[s + _478 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_788) <= _788:
                            _1382 = mem[64]
                            mem[mem[64]] = _788 + _491 + _505 + -mem[64] + 1
                            mem[64] = _788 + _491 + _505 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _1382
                            continue 
                        mem[_491 + _505 + _788 + 33] = 0
                        _1404 = mem[64]
                        mem[mem[64]] = _788 + _491 + _505 + -mem[64] + 1
                        mem[64] = _788 + _491 + _505 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1404
                        continue 
                    _803 = mem[_478]
                    s = 0
                    while s < _803:
                        mem[s + _491 + _505 + 33] = mem[s + _478 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_803) <= _803:
                        _1383 = mem[64]
                        mem[mem[64]] = _803 + _491 + _505 + -mem[64] + 1
                        mem[64] = _803 + _491 + _505 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1383
                        continue 
                    mem[_491 + _505 + _803 + 33] = 0
                    _1405 = mem[64]
                    mem[mem[64]] = _803 + _491 + _505 + -mem[64] + 1
                    mem[64] = _803 + _491 + _505 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1405
                    continue 
                u = 0
                t = 0 / sub_0b433a12
                while t:
                    if u == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _781 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = 0 / sub_0b433a12
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_781]:
                            revert with 0, 50
                        mem[v + _781 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = address(arg1)
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _1344 = mem[64]
                    _1364 = mem[s]
                    t = 0
                    while t < _1364:
                        mem[t + _1344 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1344 + _1364 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1364) <= _1364:
                        _1848 = mem[_781]
                        s = 0
                        while s < _1848:
                            mem[s + _1344 + _1364 + 33] = mem[s + _781 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1848) <= _1848:
                            _2354 = mem[64]
                            mem[mem[64]] = _1848 + _1344 + _1364 + -mem[64] + 1
                            mem[64] = _1848 + _1344 + _1364 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2354
                            continue 
                        mem[_1344 + _1364 + _1848 + 33] = 0
                        _2402 = mem[64]
                        mem[mem[64]] = _1848 + _1344 + _1364 + -mem[64] + 1
                        mem[64] = _1848 + _1344 + _1364 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2402
                        continue 
                    _1872 = mem[_781]
                    s = 0
                    while s < _1872:
                        mem[s + _1344 + _1364 + 33] = mem[s + _781 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1872) <= _1872:
                        _2355 = mem[64]
                        mem[mem[64]] = _1872 + _1344 + _1364 + -mem[64] + 1
                        mem[64] = _1872 + _1344 + _1364 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2355
                        continue 
                    mem[_1344 + _1364 + _1872 + 33] = 0
                    _2403 = mem[64]
                    mem[mem[64]] = _1872 + _1344 + _1364 + -mem[64] + 1
                    mem[64] = _1872 + _1344 + _1364 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2403
                    continue 
                mem[_781 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = 0 / sub_0b433a12
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_781]:
                        revert with 0, 50
                    mem[v + _781 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = address(arg1)
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _1345 = mem[64]
                _1365 = mem[s]
                t = 0
                while t < _1365:
                    mem[t + _1345 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1345 + _1365 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1365) <= _1365:
                    _1849 = mem[_781]
                    s = 0
                    while s < _1849:
                        mem[s + _1345 + _1365 + 33] = mem[s + _781 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1849) <= _1849:
                        _2356 = mem[64]
                        mem[mem[64]] = _1849 + _1345 + _1365 + -mem[64] + 1
                        mem[64] = _1849 + _1345 + _1365 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2356
                        continue 
                    mem[_1345 + _1365 + _1849 + 33] = 0
                    _2404 = mem[64]
                    mem[mem[64]] = _1849 + _1345 + _1365 + -mem[64] + 1
                    mem[64] = _1849 + _1345 + _1365 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2404
                    continue 
                _1873 = mem[_781]
                s = 0
                while s < _1873:
                    mem[s + _1345 + _1365 + 33] = mem[s + _781 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1873) <= _1873:
                    _2357 = mem[64]
                    mem[mem[64]] = _1873 + _1345 + _1365 + -mem[64] + 1
                    mem[64] = _1873 + _1345 + _1365 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2357
                    continue 
                mem[_1345 + _1365 + _1873 + 33] = 0
                _2405 = mem[64]
                mem[mem[64]] = _1873 + _1345 + _1365 + -mem[64] + 1
                mem[64] = _1873 + _1345 + _1365 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2405
                continue 
            if block.timestamp - stor4[address(arg1)][idx].field_512 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            if not block.timestamp - stor4[address(arg1)][idx].field_512:
                revert with 0, 18
            if (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / block.timestamp - stor4[address(arg1)][idx].field_512 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            _439 = mem[64]
            mem[64] = mem[64] + 64
            mem[_439] = 26
            mem[_439 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _458 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _458 + 68] = mem[idx + _439 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_458 + 94] = 0
                revert with memory
                  from mem[64]
                   len _458 + -mem[64] + 100
            if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
                _549 = mem[64]
                mem[64] = mem[64] + 64
                mem[_549] = 1
                mem[_549 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _565 = mem[64]
                _581 = mem[s]
                t = 0
                while t < _581:
                    mem[t + _565 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_565 + _581 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_581) <= _581:
                    _787 = mem[_549]
                    s = 0
                    while s < _787:
                        mem[s + _565 + _581 + 33] = mem[s + _549 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_787) <= _787:
                        _1380 = mem[64]
                        mem[mem[64]] = _787 + _565 + _581 + -mem[64] + 1
                        mem[64] = _787 + _565 + _581 + 33
                        if ceil32(_787) == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = ceil32(_787) + 1
                        s = _1380
                        continue 
                    mem[_565 + _581 + _787 + 33] = 0
                    _1402 = mem[64]
                    mem[mem[64]] = _787 + _565 + _581 + -mem[64] + 1
                    mem[64] = _787 + _565 + _581 + 33
                    if ceil32(_787) == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = ceil32(_787) + 1
                    s = _1402
                    continue 
                _801 = mem[_549]
                s = 0
                while s < _801:
                    mem[s + _565 + _581 + 33] = mem[s + _549 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_801) <= _801:
                    _1381 = mem[64]
                    mem[mem[64]] = _801 + _565 + _581 + -mem[64] + 1
                    mem[64] = _801 + _565 + _581 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1381
                    continue 
                mem[_565 + _581 + _801 + 33] = 0
                _1403 = mem[64]
                mem[mem[64]] = _801 + _565 + _581 + -mem[64] + 1
                mem[64] = _801 + _565 + _581 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _1403
                continue 
            u = 0
            t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
            while t:
                if u == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _780 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_780]:
                        revert with 0, 50
                    mem[v + _780 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = address(arg1)
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _1342 = mem[64]
                _1362 = mem[s]
                t = 0
                while t < _1362:
                    mem[t + _1342 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1342 + _1362 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1362) <= _1362:
                    _1846 = mem[_780]
                    s = 0
                    while s < _1846:
                        mem[s + _1342 + _1362 + 33] = mem[s + _780 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1846) <= _1846:
                        _2350 = mem[64]
                        mem[mem[64]] = _1846 + _1342 + _1362 + -mem[64] + 1
                        mem[64] = _1846 + _1342 + _1362 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2350
                        continue 
                    mem[_1342 + _1362 + _1846 + 33] = 0
                    _2398 = mem[64]
                    mem[mem[64]] = _1846 + _1342 + _1362 + -mem[64] + 1
                    mem[64] = _1846 + _1342 + _1362 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2398
                    continue 
                _1870 = mem[_780]
                s = 0
                while s < _1870:
                    mem[s + _1342 + _1362 + 33] = mem[s + _780 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1870) <= _1870:
                    _2351 = mem[64]
                    mem[mem[64]] = _1870 + _1342 + _1362 + -mem[64] + 1
                    mem[64] = _1870 + _1342 + _1362 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2351
                    continue 
                mem[_1342 + _1362 + _1870 + 33] = 0
                _2399 = mem[64]
                mem[mem[64]] = _1870 + _1342 + _1362 + -mem[64] + 1
                mem[64] = _1870 + _1342 + _1362 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2399
                continue 
            mem[_780 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_780]:
                    revert with 0, 50
                mem[v + _780 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = address(arg1)
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _1343 = mem[64]
            _1363 = mem[s]
            t = 0
            while t < _1363:
                mem[t + _1343 + 32] = mem[t + s + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                t = t + 32
                continue 
            mem[_1343 + _1363 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_1363) <= _1363:
                _1847 = mem[_780]
                s = 0
                while s < _1847:
                    mem[s + _1343 + _1363 + 33] = mem[s + _780 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1847) <= _1847:
                    _2352 = mem[64]
                    mem[mem[64]] = _1847 + _1343 + _1363 + -mem[64] + 1
                    mem[64] = _1847 + _1343 + _1363 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2352
                    continue 
                mem[_1343 + _1363 + _1847 + 33] = 0
                _2400 = mem[64]
                mem[mem[64]] = _1847 + _1343 + _1363 + -mem[64] + 1
                mem[64] = _1847 + _1343 + _1363 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2400
                continue 
            _1871 = mem[_780]
            s = 0
            while s < _1871:
                mem[s + _1343 + _1363 + 33] = mem[s + _780 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1871) <= _1871:
                _2353 = mem[64]
                mem[mem[64]] = _1871 + _1343 + _1363 + -mem[64] + 1
                mem[64] = _1871 + _1343 + _1363 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2353
                continue 
            mem[_1343 + _1363 + _1871 + 33] = 0
            _2401 = mem[64]
            mem[mem[64]] = _1871 + _1343 + _1363 + -mem[64] + 1
            mem[64] = _1871 + _1343 + _1363 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2401
            continue 
        mem[mem[64]] = 32
        _266 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_266)] = mem[s + 32 len ceil32(_266)]
        if ceil32(_266) > _266:
            mem[mem[64] + _266 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_266) + 32]
    if not block.timestamp - stor4[address(arg1)].field_512:
        mem[ceil32(return_data.size) + 224] = 26
        mem[ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
        if not sub_0b433a12:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / sub_0b433a12:
            mem[64] = ceil32(return_data.size) + 352
            mem[ceil32(return_data.size) + 288] = 1
            mem[ceil32(return_data.size) + 320] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[0] = address(arg1)
            mem[32] = 4
            idx = 1
            s = ceil32(return_data.size) + 288
            while idx < stor4[address(arg1)].field_0:
                mem[32] = 4
                if idx >= stor4[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 4)
                _272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_272] = 30
                mem[_272 + 32] = 'SafeMath: subtraction overflow'
                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                    _285 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _285 + 68] = mem[idx + _272 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_285 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _285 + -mem[64] + 100
                if block.timestamp < stor4[address(arg1)][idx].field_512:
                    revert with 0, 17
                _324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_324] = 26
                mem[_324 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _342 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _342 + 68] = mem[idx + _324 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_342 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _342 + -mem[64] + 100
                if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 >= 1:
                    _396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_396] = 1
                    mem[_396 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _399 = mem[64]
                    _406 = mem[s]
                    t = 0
                    while t < _406:
                        mem[t + _399 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_399 + _406 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_406) <= _406:
                        _796 = mem[_396]
                        s = 0
                        while s < _796:
                            mem[s + _399 + _406 + 33] = mem[s + _396 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_796) <= _796:
                            _1394 = mem[64]
                            mem[mem[64]] = _796 + _399 + _406 + -mem[64] + 1
                            mem[64] = _796 + _399 + _406 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _1394
                            continue 
                        mem[_399 + _406 + _796 + 33] = 0
                        _1412 = mem[64]
                        mem[mem[64]] = _796 + _399 + _406 + -mem[64] + 1
                        mem[64] = _796 + _399 + _406 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1412
                        continue 
                    _820 = mem[_396]
                    s = 0
                    while s < _820:
                        mem[s + _399 + _406 + 33] = mem[s + _396 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_820) <= _820:
                        _1395 = mem[64]
                        mem[mem[64]] = _820 + _399 + _406 + -mem[64] + 1
                        mem[64] = _820 + _399 + _406 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1395
                        continue 
                    mem[_399 + _406 + _820 + 33] = 0
                    _1413 = mem[64]
                    mem[mem[64]] = _820 + _399 + _406 + -mem[64] + 1
                    mem[64] = _820 + _399 + _406 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1413
                    continue 
                if not block.timestamp - stor4[address(arg1)][idx].field_512:
                    _407 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_407] = 26
                    mem[_407 + 32] = 'SafeMath: division by zero'
                    if not sub_0b433a12:
                        _412 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _412 + 68] = mem[idx + _407 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 32
                            continue 
                        mem[_412 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _412 + -mem[64] + 100
                    if not 0 / sub_0b433a12:
                        _488 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_488] = 1
                        mem[_488 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _501 = mem[64]
                        _519 = mem[s]
                        t = 0
                        while t < _519:
                            mem[t + _501 + 32] = mem[t + s + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            t = t + 32
                            continue 
                        mem[_501 + _519 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                        if ceil32(_519) <= _519:
                            _798 = mem[_488]
                            s = 0
                            while s < _798:
                                mem[s + _501 + _519 + 33] = mem[s + _488 + 32]
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_798) <= _798:
                                _1398 = mem[64]
                                mem[mem[64]] = _798 + _501 + _519 + -mem[64] + 1
                                mem[64] = _798 + _501 + _519 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                s = _1398
                                continue 
                            mem[_501 + _519 + _798 + 33] = 0
                            _1416 = mem[64]
                            mem[mem[64]] = _798 + _501 + _519 + -mem[64] + 1
                            mem[64] = _798 + _501 + _519 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _1416
                            continue 
                        _823 = mem[_488]
                        s = 0
                        while s < _823:
                            mem[s + _501 + _519 + 33] = mem[s + _488 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_823) <= _823:
                            _1399 = mem[64]
                            mem[mem[64]] = _823 + _501 + _519 + -mem[64] + 1
                            mem[64] = _823 + _501 + _519 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _1399
                            continue 
                        mem[_501 + _519 + _823 + 33] = 0
                        _1417 = mem[64]
                        mem[mem[64]] = _823 + _501 + _519 + -mem[64] + 1
                        mem[64] = _823 + _501 + _519 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1417
                        continue 
                    u = 0
                    t = 0 / sub_0b433a12
                    while t:
                        if u == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        u = u + 1
                        t = t / 10
                        continue 
                    if u > test266151307():
                        revert with 0, 65
                    _785 = mem[64]
                    mem[mem[64]] = u
                    mem[64] = mem[64] + ceil32(u) + 32
                    if not u:
                        v = u
                        t = 0 / sub_0b433a12
                        while t:
                            if v < 1:
                                revert with 0, 17
                            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if t < 10 * t / 10:
                                revert with 0, 17
                            if 48 > -uint8(t - (10 * t / 10)) + 255:
                                revert with 0, 17
                            if v - 1 >= mem[_785]:
                                revert with 0, 50
                            mem[v + _785 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                            mem[0] = address(arg1)
                            mem[32] = 4
                            v = v - 1
                            t = t / 10
                            continue 
                        _1360 = mem[64]
                        _1376 = mem[s]
                        t = 0
                        while t < _1376:
                            mem[t + _1360 + 32] = mem[t + s + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            t = t + 32
                            continue 
                        mem[_1360 + _1376 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                        if ceil32(_1376) <= _1376:
                            _1868 = mem[_785]
                            s = 0
                            while s < _1868:
                                mem[s + _1360 + _1376 + 33] = mem[s + _785 + 32]
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_1868) <= _1868:
                                _2394 = mem[64]
                                mem[mem[64]] = _1868 + _1360 + _1376 + -mem[64] + 1
                                mem[64] = _1868 + _1360 + _1376 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                s = _2394
                                continue 
                            mem[_1360 + _1376 + _1868 + 33] = 0
                            _2442 = mem[64]
                            mem[mem[64]] = _1868 + _1360 + _1376 + -mem[64] + 1
                            mem[64] = _1868 + _1360 + _1376 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2442
                            continue 
                        _1912 = mem[_785]
                        s = 0
                        while s < _1912:
                            mem[s + _1360 + _1376 + 33] = mem[s + _785 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1912) <= _1912:
                            _2395 = mem[64]
                            mem[mem[64]] = _1912 + _1360 + _1376 + -mem[64] + 1
                            mem[64] = _1912 + _1360 + _1376 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2395
                            continue 
                        mem[_1360 + _1376 + _1912 + 33] = 0
                        _2443 = mem[64]
                        mem[mem[64]] = _1912 + _1360 + _1376 + -mem[64] + 1
                        mem[64] = _1912 + _1360 + _1376 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2443
                        continue 
                    mem[_785 + 32 len u] = call.data[calldata.size len u]
                    v = u
                    t = 0 / sub_0b433a12
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_785]:
                            revert with 0, 50
                        mem[v + _785 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = address(arg1)
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _1361 = mem[64]
                    _1377 = mem[s]
                    t = 0
                    while t < _1377:
                        mem[t + _1361 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1361 + _1377 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1377) <= _1377:
                        _1869 = mem[_785]
                        s = 0
                        while s < _1869:
                            mem[s + _1361 + _1377 + 33] = mem[s + _785 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1869) <= _1869:
                            _2396 = mem[64]
                            mem[mem[64]] = _1869 + _1361 + _1377 + -mem[64] + 1
                            mem[64] = _1869 + _1361 + _1377 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2396
                            continue 
                        mem[_1361 + _1377 + _1869 + 33] = 0
                        _2444 = mem[64]
                        mem[mem[64]] = _1869 + _1361 + _1377 + -mem[64] + 1
                        mem[64] = _1869 + _1361 + _1377 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2444
                        continue 
                    _1913 = mem[_785]
                    s = 0
                    while s < _1913:
                        mem[s + _1361 + _1377 + 33] = mem[s + _785 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1913) <= _1913:
                        _2397 = mem[64]
                        mem[mem[64]] = _1913 + _1361 + _1377 + -mem[64] + 1
                        mem[64] = _1913 + _1361 + _1377 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2397
                        continue 
                    mem[_1361 + _1377 + _1913 + 33] = 0
                    _2445 = mem[64]
                    mem[mem[64]] = _1913 + _1361 + _1377 + -mem[64] + 1
                    mem[64] = _1913 + _1361 + _1377 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2445
                    continue 
                if block.timestamp - stor4[address(arg1)][idx].field_512 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512:
                    revert with 0, 17
                if not block.timestamp - stor4[address(arg1)][idx].field_512:
                    revert with 0, 18
                if (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / block.timestamp - stor4[address(arg1)][idx].field_512 != sub_d754d433:
                    revert with 0, 'SafeMath: multiplication overflow'
                _449 = mem[64]
                mem[64] = mem[64] + 64
                mem[_449] = 26
                mem[_449 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _466 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _466 + 68] = mem[idx + _449 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_466 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _466 + -mem[64] + 100
                if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
                    _563 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_563] = 1
                    mem[_563 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _579 = mem[64]
                    _593 = mem[s]
                    t = 0
                    while t < _593:
                        mem[t + _579 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_579 + _593 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_593) <= _593:
                        _797 = mem[_563]
                        s = 0
                        while s < _797:
                            mem[s + _579 + _593 + 33] = mem[s + _563 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_797) <= _797:
                            _1396 = mem[64]
                            mem[mem[64]] = _797 + _579 + _593 + -mem[64] + 1
                            mem[64] = _797 + _579 + _593 + 33
                            if ceil32(_797) == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = ceil32(_797) + 1
                            s = _1396
                            continue 
                        mem[_579 + _593 + _797 + 33] = 0
                        _1414 = mem[64]
                        mem[mem[64]] = _797 + _579 + _593 + -mem[64] + 1
                        mem[64] = _797 + _579 + _593 + 33
                        if ceil32(_797) == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = ceil32(_797) + 1
                        s = _1414
                        continue 
                    _821 = mem[_563]
                    s = 0
                    while s < _821:
                        mem[s + _579 + _593 + 33] = mem[s + _563 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_821) <= _821:
                        _1397 = mem[64]
                        mem[mem[64]] = _821 + _579 + _593 + -mem[64] + 1
                        mem[64] = _821 + _579 + _593 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1397
                        continue 
                    mem[_579 + _593 + _821 + 33] = 0
                    _1415 = mem[64]
                    mem[mem[64]] = _821 + _579 + _593 + -mem[64] + 1
                    mem[64] = _821 + _579 + _593 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1415
                    continue 
                u = 0
                t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
                while t:
                    if u == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _784 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_784]:
                            revert with 0, 50
                        mem[v + _784 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = address(arg1)
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _1358 = mem[64]
                    _1374 = mem[s]
                    t = 0
                    while t < _1374:
                        mem[t + _1358 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1358 + _1374 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1374) <= _1374:
                        _1866 = mem[_784]
                        s = 0
                        while s < _1866:
                            mem[s + _1358 + _1374 + 33] = mem[s + _784 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1866) <= _1866:
                            _2390 = mem[64]
                            mem[mem[64]] = _1866 + _1358 + _1374 + -mem[64] + 1
                            mem[64] = _1866 + _1358 + _1374 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2390
                            continue 
                        mem[_1358 + _1374 + _1866 + 33] = 0
                        _2438 = mem[64]
                        mem[mem[64]] = _1866 + _1358 + _1374 + -mem[64] + 1
                        mem[64] = _1866 + _1358 + _1374 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2438
                        continue 
                    _1910 = mem[_784]
                    s = 0
                    while s < _1910:
                        mem[s + _1358 + _1374 + 33] = mem[s + _784 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1910) <= _1910:
                        _2391 = mem[64]
                        mem[mem[64]] = _1910 + _1358 + _1374 + -mem[64] + 1
                        mem[64] = _1910 + _1358 + _1374 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2391
                        continue 
                    mem[_1358 + _1374 + _1910 + 33] = 0
                    _2439 = mem[64]
                    mem[mem[64]] = _1910 + _1358 + _1374 + -mem[64] + 1
                    mem[64] = _1910 + _1358 + _1374 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2439
                    continue 
                mem[_784 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_784]:
                        revert with 0, 50
                    mem[v + _784 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = address(arg1)
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _1359 = mem[64]
                _1375 = mem[s]
                t = 0
                while t < _1375:
                    mem[t + _1359 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1359 + _1375 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1375) <= _1375:
                    _1867 = mem[_784]
                    s = 0
                    while s < _1867:
                        mem[s + _1359 + _1375 + 33] = mem[s + _784 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1867) <= _1867:
                        _2392 = mem[64]
                        mem[mem[64]] = _1867 + _1359 + _1375 + -mem[64] + 1
                        mem[64] = _1867 + _1359 + _1375 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2392
                        continue 
                    mem[_1359 + _1375 + _1867 + 33] = 0
                    _2440 = mem[64]
                    mem[mem[64]] = _1867 + _1359 + _1375 + -mem[64] + 1
                    mem[64] = _1867 + _1359 + _1375 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2440
                    continue 
                _1911 = mem[_784]
                s = 0
                while s < _1911:
                    mem[s + _1359 + _1375 + 33] = mem[s + _784 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1911) <= _1911:
                    _2393 = mem[64]
                    mem[mem[64]] = _1911 + _1359 + _1375 + -mem[64] + 1
                    mem[64] = _1911 + _1359 + _1375 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2393
                    continue 
                mem[_1359 + _1375 + _1911 + 33] = 0
                _2441 = mem[64]
                mem[mem[64]] = _1911 + _1359 + _1375 + -mem[64] + 1
                mem[64] = _1911 + _1359 + _1375 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2441
                continue 
            mem[mem[64]] = 32
            _268 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_268)] = mem[s + 32 len ceil32(_268)]
            if ceil32(_268) > _268:
                mem[mem[64] + _268 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_268) + 32]
        s = 0
        idx = 0 / sub_0b433a12
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 288] = s
        mem[64] = ceil32(return_data.size) + ceil32(s) + 320
        if not s:
            t = s
            idx = 0 / sub_0b433a12
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[ceil32(return_data.size) + 288]:
                    revert with 0, 50
                mem[t + ceil32(return_data.size) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[0] = address(arg1)
            mem[32] = 4
            idx = 1
            s = ceil32(return_data.size) + 288
            while idx < stor4[address(arg1)].field_0:
                mem[32] = 4
                if idx >= stor4[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 4)
                _1392 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1392] = 30
                mem[_1392 + 32] = 'SafeMath: subtraction overflow'
                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                    _1431 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1431 + 68] = mem[idx + _1392 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_1431 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1431 + -mem[64] + 100
                if block.timestamp < stor4[address(arg1)][idx].field_512:
                    revert with 0, 17
                _1500 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1500] = 26
                mem[_1500 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _1522 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1522 + 68] = mem[idx + _1500 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_1522 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1522 + -mem[64] + 100
                if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 >= 1:
                    _1596 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1596] = 1
                    mem[_1596 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _1600 = mem[64]
                    _1606 = mem[s]
                    t = 0
                    while t < _1606:
                        mem[t + _1600 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1600 + _1606 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1606) <= _1606:
                        _1860 = mem[_1596]
                        s = 0
                        while s < _1860:
                            mem[s + _1600 + _1606 + 33] = mem[s + _1596 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1860) <= _1860:
                            _2378 = mem[64]
                            mem[mem[64]] = _1860 + _1600 + _1606 + -mem[64] + 1
                            mem[64] = _1860 + _1600 + _1606 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2378
                            continue 
                        mem[_1600 + _1606 + _1860 + 33] = 0
                        _2426 = mem[64]
                        mem[mem[64]] = _1860 + _1600 + _1606 + -mem[64] + 1
                        mem[64] = _1860 + _1600 + _1606 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2426
                        continue 
                    _1895 = mem[_1596]
                    s = 0
                    while s < _1895:
                        mem[s + _1600 + _1606 + 33] = mem[s + _1596 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1895) <= _1895:
                        _2379 = mem[64]
                        mem[mem[64]] = _1895 + _1600 + _1606 + -mem[64] + 1
                        mem[64] = _1895 + _1600 + _1606 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2379
                        continue 
                    mem[_1600 + _1606 + _1895 + 33] = 0
                    _2427 = mem[64]
                    mem[mem[64]] = _1895 + _1600 + _1606 + -mem[64] + 1
                    mem[64] = _1895 + _1600 + _1606 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2427
                    continue 
                if not block.timestamp - stor4[address(arg1)][idx].field_512:
                    _1607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1607] = 26
                    mem[_1607 + 32] = 'SafeMath: division by zero'
                    if not sub_0b433a12:
                        _1612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1612 + 68] = mem[idx + _1607 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 32
                            continue 
                        mem[_1612 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1612 + -mem[64] + 100
                    if not 0 / sub_0b433a12:
                        _1670 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1670] = 1
                        mem[_1670 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _1679 = mem[64]
                        _1693 = mem[s]
                        t = 0
                        while t < _1693:
                            mem[t + _1679 + 32] = mem[t + s + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            t = t + 32
                            continue 
                        mem[_1679 + _1693 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                        if ceil32(_1693) <= _1693:
                            _1862 = mem[_1670]
                            s = 0
                            while s < _1862:
                                mem[s + _1679 + _1693 + 33] = mem[s + _1670 + 32]
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_1862) <= _1862:
                                _2382 = mem[64]
                                mem[mem[64]] = _1862 + _1679 + _1693 + -mem[64] + 1
                                mem[64] = _1862 + _1679 + _1693 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                s = _2382
                                continue 
                            mem[_1679 + _1693 + _1862 + 33] = 0
                            _2430 = mem[64]
                            mem[mem[64]] = _1862 + _1679 + _1693 + -mem[64] + 1
                            mem[64] = _1862 + _1679 + _1693 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2430
                            continue 
                        _1898 = mem[_1670]
                        s = 0
                        while s < _1898:
                            mem[s + _1679 + _1693 + 33] = mem[s + _1670 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1898) <= _1898:
                            _2383 = mem[64]
                            mem[mem[64]] = _1898 + _1679 + _1693 + -mem[64] + 1
                            mem[64] = _1898 + _1679 + _1693 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2383
                            continue 
                        mem[_1679 + _1693 + _1898 + 33] = 0
                        _2431 = mem[64]
                        mem[mem[64]] = _1898 + _1679 + _1693 + -mem[64] + 1
                        mem[64] = _1898 + _1679 + _1693 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2431
                        continue 
                    u = 0
                    t = 0 / sub_0b433a12
                    while t:
                        if u == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        u = u + 1
                        t = t / 10
                        continue 
                    if u > test266151307():
                        revert with 0, 65
                    _1843 = mem[64]
                    mem[mem[64]] = u
                    mem[64] = mem[64] + ceil32(u) + 32
                    if not u:
                        v = u
                        t = 0 / sub_0b433a12
                        while t:
                            if v < 1:
                                revert with 0, 17
                            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if t < 10 * t / 10:
                                revert with 0, 17
                            if 48 > -uint8(t - (10 * t / 10)) + 255:
                                revert with 0, 17
                            if v - 1 >= mem[_1843]:
                                revert with 0, 50
                            mem[v + _1843 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                            mem[0] = address(arg1)
                            mem[32] = 4
                            v = v - 1
                            t = t / 10
                            continue 
                        _2328 = mem[64]
                        _2344 = mem[s]
                        t = 0
                        while t < _2344:
                            mem[t + _2328 + 32] = mem[t + s + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            t = t + 32
                            continue 
                        mem[_2328 + _2344 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                        if ceil32(_2344) <= _2344:
                            _2632 = mem[_1843]
                            s = 0
                            while s < _2632:
                                mem[s + _2328 + _2344 + 33] = mem[s + _1843 + 32]
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_2632) <= _2632:
                                _2802 = mem[64]
                                mem[mem[64]] = _2632 + _2328 + _2344 + -mem[64] + 1
                                mem[64] = _2632 + _2328 + _2344 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                s = _2802
                                continue 
                            mem[_2328 + _2344 + _2632 + 33] = 0
                            _2834 = mem[64]
                            mem[mem[64]] = _2632 + _2328 + _2344 + -mem[64] + 1
                            mem[64] = _2632 + _2328 + _2344 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2834
                            continue 
                        _2648 = mem[_1843]
                        s = 0
                        while s < _2648:
                            mem[s + _2328 + _2344 + 33] = mem[s + _1843 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_2648) <= _2648:
                            _2803 = mem[64]
                            mem[mem[64]] = _2648 + _2328 + _2344 + -mem[64] + 1
                            mem[64] = _2648 + _2328 + _2344 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2803
                            continue 
                        mem[_2328 + _2344 + _2648 + 33] = 0
                        _2835 = mem[64]
                        mem[mem[64]] = _2648 + _2328 + _2344 + -mem[64] + 1
                        mem[64] = _2648 + _2328 + _2344 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2835
                        continue 
                    mem[_1843 + 32 len u] = call.data[calldata.size len u]
                    v = u
                    t = 0 / sub_0b433a12
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1843]:
                            revert with 0, 50
                        mem[v + _1843 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = address(arg1)
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _2329 = mem[64]
                    _2345 = mem[s]
                    t = 0
                    while t < _2345:
                        mem[t + _2329 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_2329 + _2345 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_2345) <= _2345:
                        _2633 = mem[_1843]
                        s = 0
                        while s < _2633:
                            mem[s + _2329 + _2345 + 33] = mem[s + _1843 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_2633) <= _2633:
                            _2804 = mem[64]
                            mem[mem[64]] = _2633 + _2329 + _2345 + -mem[64] + 1
                            mem[64] = _2633 + _2329 + _2345 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2804
                            continue 
                        mem[_2329 + _2345 + _2633 + 33] = 0
                        _2836 = mem[64]
                        mem[mem[64]] = _2633 + _2329 + _2345 + -mem[64] + 1
                        mem[64] = _2633 + _2329 + _2345 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2836
                        continue 
                    _2649 = mem[_1843]
                    s = 0
                    while s < _2649:
                        mem[s + _2329 + _2345 + 33] = mem[s + _1843 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2649) <= _2649:
                        _2805 = mem[64]
                        mem[mem[64]] = _2649 + _2329 + _2345 + -mem[64] + 1
                        mem[64] = _2649 + _2329 + _2345 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2805
                        continue 
                    mem[_2329 + _2345 + _2649 + 33] = 0
                    _2837 = mem[64]
                    mem[mem[64]] = _2649 + _2329 + _2345 + -mem[64] + 1
                    mem[64] = _2649 + _2329 + _2345 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2837
                    continue 
                if block.timestamp - stor4[address(arg1)][idx].field_512 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512:
                    revert with 0, 17
                if not block.timestamp - stor4[address(arg1)][idx].field_512:
                    revert with 0, 18
                if (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / block.timestamp - stor4[address(arg1)][idx].field_512 != sub_d754d433:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1641 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1641] = 26
                mem[_1641 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _1651 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1651 + 68] = mem[idx + _1641 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_1651 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1651 + -mem[64] + 100
                if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
                    _1714 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1714] = 1
                    mem[_1714 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _1722 = mem[64]
                    _1730 = mem[s]
                    t = 0
                    while t < _1730:
                        mem[t + _1722 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1722 + _1730 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1730) <= _1730:
                        _1861 = mem[_1714]
                        s = 0
                        while s < _1861:
                            mem[s + _1722 + _1730 + 33] = mem[s + _1714 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1861) <= _1861:
                            _2380 = mem[64]
                            mem[mem[64]] = _1861 + _1722 + _1730 + -mem[64] + 1
                            mem[64] = _1861 + _1722 + _1730 + 33
                            if ceil32(_1861) == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = ceil32(_1861) + 1
                            s = _2380
                            continue 
                        mem[_1722 + _1730 + _1861 + 33] = 0
                        _2428 = mem[64]
                        mem[mem[64]] = _1861 + _1722 + _1730 + -mem[64] + 1
                        mem[64] = _1861 + _1722 + _1730 + 33
                        if ceil32(_1861) == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = ceil32(_1861) + 1
                        s = _2428
                        continue 
                    _1896 = mem[_1714]
                    s = 0
                    while s < _1896:
                        mem[s + _1722 + _1730 + 33] = mem[s + _1714 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1896) <= _1896:
                        _2381 = mem[64]
                        mem[mem[64]] = _1896 + _1722 + _1730 + -mem[64] + 1
                        mem[64] = _1896 + _1722 + _1730 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2381
                        continue 
                    mem[_1722 + _1730 + _1896 + 33] = 0
                    _2429 = mem[64]
                    mem[mem[64]] = _1896 + _1722 + _1730 + -mem[64] + 1
                    mem[64] = _1896 + _1722 + _1730 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2429
                    continue 
                u = 0
                t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
                while t:
                    if u == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _1842 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1842]:
                            revert with 0, 50
                        mem[v + _1842 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = address(arg1)
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _2326 = mem[64]
                    _2342 = mem[s]
                    t = 0
                    while t < _2342:
                        mem[t + _2326 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_2326 + _2342 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_2342) <= _2342:
                        _2630 = mem[_1842]
                        s = 0
                        while s < _2630:
                            mem[s + _2326 + _2342 + 33] = mem[s + _1842 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_2630) <= _2630:
                            _2798 = mem[64]
                            mem[mem[64]] = _2630 + _2326 + _2342 + -mem[64] + 1
                            mem[64] = _2630 + _2326 + _2342 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2798
                            continue 
                        mem[_2326 + _2342 + _2630 + 33] = 0
                        _2830 = mem[64]
                        mem[mem[64]] = _2630 + _2326 + _2342 + -mem[64] + 1
                        mem[64] = _2630 + _2326 + _2342 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2830
                        continue 
                    _2646 = mem[_1842]
                    s = 0
                    while s < _2646:
                        mem[s + _2326 + _2342 + 33] = mem[s + _1842 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2646) <= _2646:
                        _2799 = mem[64]
                        mem[mem[64]] = _2646 + _2326 + _2342 + -mem[64] + 1
                        mem[64] = _2646 + _2326 + _2342 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2799
                        continue 
                    mem[_2326 + _2342 + _2646 + 33] = 0
                    _2831 = mem[64]
                    mem[mem[64]] = _2646 + _2326 + _2342 + -mem[64] + 1
                    mem[64] = _2646 + _2326 + _2342 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2831
                    continue 
                mem[_1842 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1842]:
                        revert with 0, 50
                    mem[v + _1842 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = address(arg1)
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _2327 = mem[64]
                _2343 = mem[s]
                t = 0
                while t < _2343:
                    mem[t + _2327 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_2327 + _2343 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_2343) <= _2343:
                    _2631 = mem[_1842]
                    s = 0
                    while s < _2631:
                        mem[s + _2327 + _2343 + 33] = mem[s + _1842 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2631) <= _2631:
                        _2800 = mem[64]
                        mem[mem[64]] = _2631 + _2327 + _2343 + -mem[64] + 1
                        mem[64] = _2631 + _2327 + _2343 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2800
                        continue 
                    mem[_2327 + _2343 + _2631 + 33] = 0
                    _2832 = mem[64]
                    mem[mem[64]] = _2631 + _2327 + _2343 + -mem[64] + 1
                    mem[64] = _2631 + _2327 + _2343 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2832
                    continue 
                _2647 = mem[_1842]
                s = 0
                while s < _2647:
                    mem[s + _2327 + _2343 + 33] = mem[s + _1842 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2647) <= _2647:
                    _2801 = mem[64]
                    mem[mem[64]] = _2647 + _2327 + _2343 + -mem[64] + 1
                    mem[64] = _2647 + _2327 + _2343 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2801
                    continue 
                mem[_2327 + _2343 + _2647 + 33] = 0
                _2833 = mem[64]
                mem[mem[64]] = _2647 + _2327 + _2343 + -mem[64] + 1
                mem[64] = _2647 + _2327 + _2343 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2833
                continue 
            mem[mem[64]] = 32
            _1372 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_1372)] = mem[s + 32 len ceil32(_1372)]
            if ceil32(_1372) > _1372:
                mem[mem[64] + _1372 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_1372) + 32]
        mem[ceil32(return_data.size) + 320 len s] = call.data[calldata.size len s]
        t = s
        idx = 0 / sub_0b433a12
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[ceil32(return_data.size) + 288]:
                revert with 0, 50
            mem[t + ceil32(return_data.size) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = address(arg1)
        mem[32] = 4
        idx = 1
        s = ceil32(return_data.size) + 288
        while idx < stor4[address(arg1)].field_0:
            mem[32] = 4
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            _1393 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1393] = 30
            mem[_1393 + 32] = 'SafeMath: subtraction overflow'
            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                _1433 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1433 + 68] = mem[idx + _1393 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_1433 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1433 + -mem[64] + 100
            if block.timestamp < stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            _1501 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1501] = 26
            mem[_1501 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _1524 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1524 + 68] = mem[idx + _1501 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_1524 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1524 + -mem[64] + 100
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 >= 1:
                _1597 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1597] = 1
                mem[_1597 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _1601 = mem[64]
                _1608 = mem[s]
                t = 0
                while t < _1608:
                    mem[t + _1601 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1601 + _1608 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1608) <= _1608:
                    _1863 = mem[_1597]
                    s = 0
                    while s < _1863:
                        mem[s + _1601 + _1608 + 33] = mem[s + _1597 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1863) <= _1863:
                        _2384 = mem[64]
                        mem[mem[64]] = _1863 + _1601 + _1608 + -mem[64] + 1
                        mem[64] = _1863 + _1601 + _1608 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2384
                        continue 
                    mem[_1601 + _1608 + _1863 + 33] = 0
                    _2432 = mem[64]
                    mem[mem[64]] = _1863 + _1601 + _1608 + -mem[64] + 1
                    mem[64] = _1863 + _1601 + _1608 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2432
                    continue 
                _1903 = mem[_1597]
                s = 0
                while s < _1903:
                    mem[s + _1601 + _1608 + 33] = mem[s + _1597 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1903) <= _1903:
                    _2385 = mem[64]
                    mem[mem[64]] = _1903 + _1601 + _1608 + -mem[64] + 1
                    mem[64] = _1903 + _1601 + _1608 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2385
                    continue 
                mem[_1601 + _1608 + _1903 + 33] = 0
                _2433 = mem[64]
                mem[mem[64]] = _1903 + _1601 + _1608 + -mem[64] + 1
                mem[64] = _1903 + _1601 + _1608 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2433
                continue 
            if not block.timestamp - stor4[address(arg1)][idx].field_512:
                _1609 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1609] = 26
                mem[_1609 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _1613 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1613 + 68] = mem[idx + _1609 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_1613 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1613 + -mem[64] + 100
                if not 0 / sub_0b433a12:
                    _1672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1672] = 1
                    mem[_1672 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _1681 = mem[64]
                    _1697 = mem[s]
                    t = 0
                    while t < _1697:
                        mem[t + _1681 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1681 + _1697 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1697) <= _1697:
                        _1865 = mem[_1672]
                        s = 0
                        while s < _1865:
                            mem[s + _1681 + _1697 + 33] = mem[s + _1672 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1865) <= _1865:
                            _2388 = mem[64]
                            mem[mem[64]] = _1865 + _1681 + _1697 + -mem[64] + 1
                            mem[64] = _1865 + _1681 + _1697 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2388
                            continue 
                        mem[_1681 + _1697 + _1865 + 33] = 0
                        _2436 = mem[64]
                        mem[mem[64]] = _1865 + _1681 + _1697 + -mem[64] + 1
                        mem[64] = _1865 + _1681 + _1697 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2436
                        continue 
                    _1906 = mem[_1672]
                    s = 0
                    while s < _1906:
                        mem[s + _1681 + _1697 + 33] = mem[s + _1672 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1906) <= _1906:
                        _2389 = mem[64]
                        mem[mem[64]] = _1906 + _1681 + _1697 + -mem[64] + 1
                        mem[64] = _1906 + _1681 + _1697 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2389
                        continue 
                    mem[_1681 + _1697 + _1906 + 33] = 0
                    _2437 = mem[64]
                    mem[mem[64]] = _1906 + _1681 + _1697 + -mem[64] + 1
                    mem[64] = _1906 + _1681 + _1697 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2437
                    continue 
                u = 0
                t = 0 / sub_0b433a12
                while t:
                    if u == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _1845 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = 0 / sub_0b433a12
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1845]:
                            revert with 0, 50
                        mem[v + _1845 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = address(arg1)
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _2332 = mem[64]
                    _2348 = mem[s]
                    t = 0
                    while t < _2348:
                        mem[t + _2332 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_2332 + _2348 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_2348) <= _2348:
                        _2636 = mem[_1845]
                        s = 0
                        while s < _2636:
                            mem[s + _2332 + _2348 + 33] = mem[s + _1845 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_2636) <= _2636:
                            _2810 = mem[64]
                            mem[mem[64]] = _2636 + _2332 + _2348 + -mem[64] + 1
                            mem[64] = _2636 + _2332 + _2348 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2810
                            continue 
                        mem[_2332 + _2348 + _2636 + 33] = 0
                        _2842 = mem[64]
                        mem[mem[64]] = _2636 + _2332 + _2348 + -mem[64] + 1
                        mem[64] = _2636 + _2332 + _2348 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2842
                        continue 
                    _2652 = mem[_1845]
                    s = 0
                    while s < _2652:
                        mem[s + _2332 + _2348 + 33] = mem[s + _1845 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2652) <= _2652:
                        _2811 = mem[64]
                        mem[mem[64]] = _2652 + _2332 + _2348 + -mem[64] + 1
                        mem[64] = _2652 + _2332 + _2348 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2811
                        continue 
                    mem[_2332 + _2348 + _2652 + 33] = 0
                    _2843 = mem[64]
                    mem[mem[64]] = _2652 + _2332 + _2348 + -mem[64] + 1
                    mem[64] = _2652 + _2332 + _2348 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2843
                    continue 
                mem[_1845 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = 0 / sub_0b433a12
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1845]:
                        revert with 0, 50
                    mem[v + _1845 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = address(arg1)
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _2333 = mem[64]
                _2349 = mem[s]
                t = 0
                while t < _2349:
                    mem[t + _2333 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_2333 + _2349 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_2349) <= _2349:
                    _2637 = mem[_1845]
                    s = 0
                    while s < _2637:
                        mem[s + _2333 + _2349 + 33] = mem[s + _1845 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2637) <= _2637:
                        _2812 = mem[64]
                        mem[mem[64]] = _2637 + _2333 + _2349 + -mem[64] + 1
                        mem[64] = _2637 + _2333 + _2349 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2812
                        continue 
                    mem[_2333 + _2349 + _2637 + 33] = 0
                    _2844 = mem[64]
                    mem[mem[64]] = _2637 + _2333 + _2349 + -mem[64] + 1
                    mem[64] = _2637 + _2333 + _2349 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2844
                    continue 
                _2653 = mem[_1845]
                s = 0
                while s < _2653:
                    mem[s + _2333 + _2349 + 33] = mem[s + _1845 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2653) <= _2653:
                    _2813 = mem[64]
                    mem[mem[64]] = _2653 + _2333 + _2349 + -mem[64] + 1
                    mem[64] = _2653 + _2333 + _2349 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2813
                    continue 
                mem[_2333 + _2349 + _2653 + 33] = 0
                _2845 = mem[64]
                mem[mem[64]] = _2653 + _2333 + _2349 + -mem[64] + 1
                mem[64] = _2653 + _2333 + _2349 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2845
                continue 
            if block.timestamp - stor4[address(arg1)][idx].field_512 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            if not block.timestamp - stor4[address(arg1)][idx].field_512:
                revert with 0, 18
            if (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / block.timestamp - stor4[address(arg1)][idx].field_512 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            _1644 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1644] = 26
            mem[_1644 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _1653 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1653 + 68] = mem[idx + _1644 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_1653 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1653 + -mem[64] + 100
            if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
                _1716 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1716] = 1
                mem[_1716 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _1724 = mem[64]
                _1732 = mem[s]
                t = 0
                while t < _1732:
                    mem[t + _1724 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1724 + _1732 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1732) <= _1732:
                    _1864 = mem[_1716]
                    s = 0
                    while s < _1864:
                        mem[s + _1724 + _1732 + 33] = mem[s + _1716 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1864) <= _1864:
                        _2386 = mem[64]
                        mem[mem[64]] = _1864 + _1724 + _1732 + -mem[64] + 1
                        mem[64] = _1864 + _1724 + _1732 + 33
                        if ceil32(_1864) == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = ceil32(_1864) + 1
                        s = _2386
                        continue 
                    mem[_1724 + _1732 + _1864 + 33] = 0
                    _2434 = mem[64]
                    mem[mem[64]] = _1864 + _1724 + _1732 + -mem[64] + 1
                    mem[64] = _1864 + _1724 + _1732 + 33
                    if ceil32(_1864) == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = ceil32(_1864) + 1
                    s = _2434
                    continue 
                _1904 = mem[_1716]
                s = 0
                while s < _1904:
                    mem[s + _1724 + _1732 + 33] = mem[s + _1716 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1904) <= _1904:
                    _2387 = mem[64]
                    mem[mem[64]] = _1904 + _1724 + _1732 + -mem[64] + 1
                    mem[64] = _1904 + _1724 + _1732 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2387
                    continue 
                mem[_1724 + _1732 + _1904 + 33] = 0
                _2435 = mem[64]
                mem[mem[64]] = _1904 + _1724 + _1732 + -mem[64] + 1
                mem[64] = _1904 + _1724 + _1732 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2435
                continue 
            u = 0
            t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
            while t:
                if u == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _1844 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1844]:
                        revert with 0, 50
                    mem[v + _1844 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = address(arg1)
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _2330 = mem[64]
                _2346 = mem[s]
                t = 0
                while t < _2346:
                    mem[t + _2330 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_2330 + _2346 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_2346) <= _2346:
                    _2634 = mem[_1844]
                    s = 0
                    while s < _2634:
                        mem[s + _2330 + _2346 + 33] = mem[s + _1844 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2634) <= _2634:
                        _2806 = mem[64]
                        mem[mem[64]] = _2634 + _2330 + _2346 + -mem[64] + 1
                        mem[64] = _2634 + _2330 + _2346 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2806
                        continue 
                    mem[_2330 + _2346 + _2634 + 33] = 0
                    _2838 = mem[64]
                    mem[mem[64]] = _2634 + _2330 + _2346 + -mem[64] + 1
                    mem[64] = _2634 + _2330 + _2346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2838
                    continue 
                _2650 = mem[_1844]
                s = 0
                while s < _2650:
                    mem[s + _2330 + _2346 + 33] = mem[s + _1844 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2650) <= _2650:
                    _2807 = mem[64]
                    mem[mem[64]] = _2650 + _2330 + _2346 + -mem[64] + 1
                    mem[64] = _2650 + _2330 + _2346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2807
                    continue 
                mem[_2330 + _2346 + _2650 + 33] = 0
                _2839 = mem[64]
                mem[mem[64]] = _2650 + _2330 + _2346 + -mem[64] + 1
                mem[64] = _2650 + _2330 + _2346 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2839
                continue 
            mem[_1844 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_1844]:
                    revert with 0, 50
                mem[v + _1844 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = address(arg1)
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _2331 = mem[64]
            _2347 = mem[s]
            t = 0
            while t < _2347:
                mem[t + _2331 + 32] = mem[t + s + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                t = t + 32
                continue 
            mem[_2331 + _2347 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_2347) <= _2347:
                _2635 = mem[_1844]
                s = 0
                while s < _2635:
                    mem[s + _2331 + _2347 + 33] = mem[s + _1844 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2635) <= _2635:
                    _2808 = mem[64]
                    mem[mem[64]] = _2635 + _2331 + _2347 + -mem[64] + 1
                    mem[64] = _2635 + _2331 + _2347 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2808
                    continue 
                mem[_2331 + _2347 + _2635 + 33] = 0
                _2840 = mem[64]
                mem[mem[64]] = _2635 + _2331 + _2347 + -mem[64] + 1
                mem[64] = _2635 + _2331 + _2347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2840
                continue 
            _2651 = mem[_1844]
            s = 0
            while s < _2651:
                mem[s + _2331 + _2347 + 33] = mem[s + _1844 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_2651) <= _2651:
                _2809 = mem[64]
                mem[mem[64]] = _2651 + _2331 + _2347 + -mem[64] + 1
                mem[64] = _2651 + _2331 + _2347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2809
                continue 
            mem[_2331 + _2347 + _2651 + 33] = 0
            _2841 = mem[64]
            mem[mem[64]] = _2651 + _2331 + _2347 + -mem[64] + 1
            mem[64] = _2651 + _2331 + _2347 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2841
            continue 
        mem[mem[64]] = 32
        _1373 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_1373)] = mem[s + 32 len ceil32(_1373)]
        if ceil32(_1373) > _1373:
            mem[mem[64] + _1373 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_1373) + 32]
    if block.timestamp - stor4[address(arg1)].field_512 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)].field_512:
        revert with 0, 17
    if not block.timestamp - stor4[address(arg1)].field_512:
        revert with 0, 18
    if (block.timestamp * sub_d754d433) - (stor4[address(arg1)].field_512 * sub_d754d433) / block.timestamp - stor4[address(arg1)].field_512 != sub_d754d433:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[ceil32(return_data.size) + 224] = 26
    mem[ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
    if not sub_0b433a12:
        revert with 0, 'SafeMath: division by zero', 0
    if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)].field_512 * sub_d754d433) / sub_0b433a12:
        mem[64] = ceil32(return_data.size) + 352
        mem[ceil32(return_data.size) + 288] = 1
        mem[ceil32(return_data.size) + 320] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = address(arg1)
        mem[32] = 4
        idx = 1
        s = ceil32(return_data.size) + 288
        while idx < stor4[address(arg1)].field_0:
            mem[32] = 4
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            _270 = mem[64]
            mem[64] = mem[64] + 64
            mem[_270] = 30
            mem[_270 + 32] = 'SafeMath: subtraction overflow'
            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                _283 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _283 + 68] = mem[idx + _270 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_283 + 98] = 0
                revert with memory
                  from mem[64]
                   len _283 + -mem[64] + 100
            if block.timestamp < stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            _322 = mem[64]
            mem[64] = mem[64] + 64
            mem[_322] = 26
            mem[_322 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _337 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _337 + 68] = mem[idx + _322 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_337 + 94] = 0
                revert with memory
                  from mem[64]
                   len _337 + -mem[64] + 100
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 >= 1:
                _394 = mem[64]
                mem[64] = mem[64] + 64
                mem[_394] = 1
                mem[_394 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _398 = mem[64]
                _403 = mem[s]
                t = 0
                while t < _403:
                    mem[t + _398 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_398 + _403 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_403) <= _403:
                    _791 = mem[_394]
                    s = 0
                    while s < _791:
                        mem[s + _398 + _403 + 33] = mem[s + _394 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_791) <= _791:
                        _1386 = mem[64]
                        mem[mem[64]] = _791 + _398 + _403 + -mem[64] + 1
                        mem[64] = _791 + _398 + _403 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1386
                        continue 
                    mem[_398 + _403 + _791 + 33] = 0
                    _1406 = mem[64]
                    mem[mem[64]] = _791 + _398 + _403 + -mem[64] + 1
                    mem[64] = _791 + _398 + _403 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1406
                    continue 
                _810 = mem[_394]
                s = 0
                while s < _810:
                    mem[s + _398 + _403 + 33] = mem[s + _394 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_810) <= _810:
                    _1387 = mem[64]
                    mem[mem[64]] = _810 + _398 + _403 + -mem[64] + 1
                    mem[64] = _810 + _398 + _403 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1387
                    continue 
                mem[_398 + _403 + _810 + 33] = 0
                _1407 = mem[64]
                mem[mem[64]] = _810 + _398 + _403 + -mem[64] + 1
                mem[64] = _810 + _398 + _403 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _1407
                continue 
            if not block.timestamp - stor4[address(arg1)][idx].field_512:
                _404 = mem[64]
                mem[64] = mem[64] + 64
                mem[_404] = 26
                mem[_404 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _411 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _411 + 68] = mem[idx + _404 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_411 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _411 + -mem[64] + 100
                if not 0 / sub_0b433a12:
                    _483 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_483] = 1
                    mem[_483 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _496 = mem[64]
                    _512 = mem[s]
                    t = 0
                    while t < _512:
                        mem[t + _496 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_496 + _512 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_512) <= _512:
                        _793 = mem[_483]
                        s = 0
                        while s < _793:
                            mem[s + _496 + _512 + 33] = mem[s + _483 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_793) <= _793:
                            _1390 = mem[64]
                            mem[mem[64]] = _793 + _496 + _512 + -mem[64] + 1
                            mem[64] = _793 + _496 + _512 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _1390
                            continue 
                        mem[_496 + _512 + _793 + 33] = 0
                        _1410 = mem[64]
                        mem[mem[64]] = _793 + _496 + _512 + -mem[64] + 1
                        mem[64] = _793 + _496 + _512 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1410
                        continue 
                    _813 = mem[_483]
                    s = 0
                    while s < _813:
                        mem[s + _496 + _512 + 33] = mem[s + _483 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_813) <= _813:
                        _1391 = mem[64]
                        mem[mem[64]] = _813 + _496 + _512 + -mem[64] + 1
                        mem[64] = _813 + _496 + _512 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1391
                        continue 
                    mem[_496 + _512 + _813 + 33] = 0
                    _1411 = mem[64]
                    mem[mem[64]] = _813 + _496 + _512 + -mem[64] + 1
                    mem[64] = _813 + _496 + _512 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1411
                    continue 
                u = 0
                t = 0 / sub_0b433a12
                while t:
                    if u == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _783 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = 0 / sub_0b433a12
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_783]:
                            revert with 0, 50
                        mem[v + _783 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = address(arg1)
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _1352 = mem[64]
                    _1370 = mem[s]
                    t = 0
                    while t < _1370:
                        mem[t + _1352 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1352 + _1370 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1370) <= _1370:
                        _1858 = mem[_783]
                        s = 0
                        while s < _1858:
                            mem[s + _1352 + _1370 + 33] = mem[s + _783 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1858) <= _1858:
                            _2374 = mem[64]
                            mem[mem[64]] = _1858 + _1352 + _1370 + -mem[64] + 1
                            mem[64] = _1858 + _1352 + _1370 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2374
                            continue 
                        mem[_1352 + _1370 + _1858 + 33] = 0
                        _2422 = mem[64]
                        mem[mem[64]] = _1858 + _1352 + _1370 + -mem[64] + 1
                        mem[64] = _1858 + _1352 + _1370 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2422
                        continue 
                    _1892 = mem[_783]
                    s = 0
                    while s < _1892:
                        mem[s + _1352 + _1370 + 33] = mem[s + _783 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1892) <= _1892:
                        _2375 = mem[64]
                        mem[mem[64]] = _1892 + _1352 + _1370 + -mem[64] + 1
                        mem[64] = _1892 + _1352 + _1370 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2375
                        continue 
                    mem[_1352 + _1370 + _1892 + 33] = 0
                    _2423 = mem[64]
                    mem[mem[64]] = _1892 + _1352 + _1370 + -mem[64] + 1
                    mem[64] = _1892 + _1352 + _1370 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2423
                    continue 
                mem[_783 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = 0 / sub_0b433a12
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_783]:
                        revert with 0, 50
                    mem[v + _783 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = address(arg1)
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _1353 = mem[64]
                _1371 = mem[s]
                t = 0
                while t < _1371:
                    mem[t + _1353 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1353 + _1371 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1371) <= _1371:
                    _1859 = mem[_783]
                    s = 0
                    while s < _1859:
                        mem[s + _1353 + _1371 + 33] = mem[s + _783 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1859) <= _1859:
                        _2376 = mem[64]
                        mem[mem[64]] = _1859 + _1353 + _1371 + -mem[64] + 1
                        mem[64] = _1859 + _1353 + _1371 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2376
                        continue 
                    mem[_1353 + _1371 + _1859 + 33] = 0
                    _2424 = mem[64]
                    mem[mem[64]] = _1859 + _1353 + _1371 + -mem[64] + 1
                    mem[64] = _1859 + _1353 + _1371 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2424
                    continue 
                _1893 = mem[_783]
                s = 0
                while s < _1893:
                    mem[s + _1353 + _1371 + 33] = mem[s + _783 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1893) <= _1893:
                    _2377 = mem[64]
                    mem[mem[64]] = _1893 + _1353 + _1371 + -mem[64] + 1
                    mem[64] = _1893 + _1353 + _1371 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2377
                    continue 
                mem[_1353 + _1371 + _1893 + 33] = 0
                _2425 = mem[64]
                mem[mem[64]] = _1893 + _1353 + _1371 + -mem[64] + 1
                mem[64] = _1893 + _1353 + _1371 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2425
                continue 
            if block.timestamp - stor4[address(arg1)][idx].field_512 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            if not block.timestamp - stor4[address(arg1)][idx].field_512:
                revert with 0, 18
            if (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / block.timestamp - stor4[address(arg1)][idx].field_512 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            _444 = mem[64]
            mem[64] = mem[64] + 64
            mem[_444] = 26
            mem[_444 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _462 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _462 + 68] = mem[idx + _444 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_462 + 94] = 0
                revert with memory
                  from mem[64]
                   len _462 + -mem[64] + 100
            if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
                _556 = mem[64]
                mem[64] = mem[64] + 64
                mem[_556] = 1
                mem[_556 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _572 = mem[64]
                _587 = mem[s]
                t = 0
                while t < _587:
                    mem[t + _572 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_572 + _587 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_587) <= _587:
                    _792 = mem[_556]
                    s = 0
                    while s < _792:
                        mem[s + _572 + _587 + 33] = mem[s + _556 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_792) <= _792:
                        _1388 = mem[64]
                        mem[mem[64]] = _792 + _572 + _587 + -mem[64] + 1
                        mem[64] = _792 + _572 + _587 + 33
                        if ceil32(_792) == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = ceil32(_792) + 1
                        s = _1388
                        continue 
                    mem[_572 + _587 + _792 + 33] = 0
                    _1408 = mem[64]
                    mem[mem[64]] = _792 + _572 + _587 + -mem[64] + 1
                    mem[64] = _792 + _572 + _587 + 33
                    if ceil32(_792) == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = ceil32(_792) + 1
                    s = _1408
                    continue 
                _811 = mem[_556]
                s = 0
                while s < _811:
                    mem[s + _572 + _587 + 33] = mem[s + _556 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_811) <= _811:
                    _1389 = mem[64]
                    mem[mem[64]] = _811 + _572 + _587 + -mem[64] + 1
                    mem[64] = _811 + _572 + _587 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1389
                    continue 
                mem[_572 + _587 + _811 + 33] = 0
                _1409 = mem[64]
                mem[mem[64]] = _811 + _572 + _587 + -mem[64] + 1
                mem[64] = _811 + _572 + _587 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _1409
                continue 
            u = 0
            t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
            while t:
                if u == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _782 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_782]:
                        revert with 0, 50
                    mem[v + _782 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = address(arg1)
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _1350 = mem[64]
                _1368 = mem[s]
                t = 0
                while t < _1368:
                    mem[t + _1350 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1350 + _1368 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1368) <= _1368:
                    _1856 = mem[_782]
                    s = 0
                    while s < _1856:
                        mem[s + _1350 + _1368 + 33] = mem[s + _782 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1856) <= _1856:
                        _2370 = mem[64]
                        mem[mem[64]] = _1856 + _1350 + _1368 + -mem[64] + 1
                        mem[64] = _1856 + _1350 + _1368 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2370
                        continue 
                    mem[_1350 + _1368 + _1856 + 33] = 0
                    _2418 = mem[64]
                    mem[mem[64]] = _1856 + _1350 + _1368 + -mem[64] + 1
                    mem[64] = _1856 + _1350 + _1368 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2418
                    continue 
                _1890 = mem[_782]
                s = 0
                while s < _1890:
                    mem[s + _1350 + _1368 + 33] = mem[s + _782 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1890) <= _1890:
                    _2371 = mem[64]
                    mem[mem[64]] = _1890 + _1350 + _1368 + -mem[64] + 1
                    mem[64] = _1890 + _1350 + _1368 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2371
                    continue 
                mem[_1350 + _1368 + _1890 + 33] = 0
                _2419 = mem[64]
                mem[mem[64]] = _1890 + _1350 + _1368 + -mem[64] + 1
                mem[64] = _1890 + _1350 + _1368 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2419
                continue 
            mem[_782 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_782]:
                    revert with 0, 50
                mem[v + _782 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = address(arg1)
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _1351 = mem[64]
            _1369 = mem[s]
            t = 0
            while t < _1369:
                mem[t + _1351 + 32] = mem[t + s + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                t = t + 32
                continue 
            mem[_1351 + _1369 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_1369) <= _1369:
                _1857 = mem[_782]
                s = 0
                while s < _1857:
                    mem[s + _1351 + _1369 + 33] = mem[s + _782 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1857) <= _1857:
                    _2372 = mem[64]
                    mem[mem[64]] = _1857 + _1351 + _1369 + -mem[64] + 1
                    mem[64] = _1857 + _1351 + _1369 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2372
                    continue 
                mem[_1351 + _1369 + _1857 + 33] = 0
                _2420 = mem[64]
                mem[mem[64]] = _1857 + _1351 + _1369 + -mem[64] + 1
                mem[64] = _1857 + _1351 + _1369 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2420
                continue 
            _1891 = mem[_782]
            s = 0
            while s < _1891:
                mem[s + _1351 + _1369 + 33] = mem[s + _782 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1891) <= _1891:
                _2373 = mem[64]
                mem[mem[64]] = _1891 + _1351 + _1369 + -mem[64] + 1
                mem[64] = _1891 + _1351 + _1369 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2373
                continue 
            mem[_1351 + _1369 + _1891 + 33] = 0
            _2421 = mem[64]
            mem[mem[64]] = _1891 + _1351 + _1369 + -mem[64] + 1
            mem[64] = _1891 + _1351 + _1369 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2421
            continue 
        mem[mem[64]] = 32
        _267 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_267)] = mem[s + 32 len ceil32(_267)]
        if ceil32(_267) > _267:
            mem[mem[64] + _267 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_267) + 32]
    s = 0
    idx = (block.timestamp * sub_d754d433) - (stor4[address(arg1)].field_512 * sub_d754d433) / sub_0b433a12
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 288] = s
    mem[64] = ceil32(return_data.size) + ceil32(s) + 320
    if not s:
        t = s
        idx = (block.timestamp * sub_d754d433) - (stor4[address(arg1)].field_512 * sub_d754d433) / sub_0b433a12
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[ceil32(return_data.size) + 288]:
                revert with 0, 50
            mem[t + ceil32(return_data.size) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = address(arg1)
        mem[32] = 4
        idx = 1
        s = ceil32(return_data.size) + 288
        while idx < stor4[address(arg1)].field_0:
            mem[32] = 4
            if idx >= stor4[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 4)
            _1384 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1384] = 30
            mem[_1384 + 32] = 'SafeMath: subtraction overflow'
            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                _1423 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1423 + 68] = mem[idx + _1384 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_1423 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1423 + -mem[64] + 100
            if block.timestamp < stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            _1494 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1494] = 26
            mem[_1494 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _1514 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1514 + 68] = mem[idx + _1494 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_1514 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1514 + -mem[64] + 100
            if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 >= 1:
                _1594 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1594] = 1
                mem[_1594 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _1598 = mem[64]
                _1602 = mem[s]
                t = 0
                while t < _1602:
                    mem[t + _1598 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1598 + _1602 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1602) <= _1602:
                    _1850 = mem[_1594]
                    s = 0
                    while s < _1850:
                        mem[s + _1598 + _1602 + 33] = mem[s + _1594 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1850) <= _1850:
                        _2358 = mem[64]
                        mem[mem[64]] = _1850 + _1598 + _1602 + -mem[64] + 1
                        mem[64] = _1850 + _1598 + _1602 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2358
                        continue 
                    mem[_1598 + _1602 + _1850 + 33] = 0
                    _2406 = mem[64]
                    mem[mem[64]] = _1850 + _1598 + _1602 + -mem[64] + 1
                    mem[64] = _1850 + _1598 + _1602 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2406
                    continue 
                _1875 = mem[_1594]
                s = 0
                while s < _1875:
                    mem[s + _1598 + _1602 + 33] = mem[s + _1594 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1875) <= _1875:
                    _2359 = mem[64]
                    mem[mem[64]] = _1875 + _1598 + _1602 + -mem[64] + 1
                    mem[64] = _1875 + _1598 + _1602 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2359
                    continue 
                mem[_1598 + _1602 + _1875 + 33] = 0
                _2407 = mem[64]
                mem[mem[64]] = _1875 + _1598 + _1602 + -mem[64] + 1
                mem[64] = _1875 + _1598 + _1602 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2407
                continue 
            if not block.timestamp - stor4[address(arg1)][idx].field_512:
                _1603 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1603] = 26
                mem[_1603 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _1610 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1610 + 68] = mem[idx + _1603 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_1610 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1610 + -mem[64] + 100
                if not 0 / sub_0b433a12:
                    _1666 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1666] = 1
                    mem[_1666 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _1675 = mem[64]
                    _1685 = mem[s]
                    t = 0
                    while t < _1685:
                        mem[t + _1675 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1675 + _1685 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1685) <= _1685:
                        _1852 = mem[_1666]
                        s = 0
                        while s < _1852:
                            mem[s + _1675 + _1685 + 33] = mem[s + _1666 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1852) <= _1852:
                            _2362 = mem[64]
                            mem[mem[64]] = _1852 + _1675 + _1685 + -mem[64] + 1
                            mem[64] = _1852 + _1675 + _1685 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2362
                            continue 
                        mem[_1675 + _1685 + _1852 + 33] = 0
                        _2410 = mem[64]
                        mem[mem[64]] = _1852 + _1675 + _1685 + -mem[64] + 1
                        mem[64] = _1852 + _1675 + _1685 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2410
                        continue 
                    _1878 = mem[_1666]
                    s = 0
                    while s < _1878:
                        mem[s + _1675 + _1685 + 33] = mem[s + _1666 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1878) <= _1878:
                        _2363 = mem[64]
                        mem[mem[64]] = _1878 + _1675 + _1685 + -mem[64] + 1
                        mem[64] = _1878 + _1675 + _1685 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2363
                        continue 
                    mem[_1675 + _1685 + _1878 + 33] = 0
                    _2411 = mem[64]
                    mem[mem[64]] = _1878 + _1675 + _1685 + -mem[64] + 1
                    mem[64] = _1878 + _1675 + _1685 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2411
                    continue 
                u = 0
                t = 0 / sub_0b433a12
                while t:
                    if u == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _1839 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = 0 / sub_0b433a12
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1839]:
                            revert with 0, 50
                        mem[v + _1839 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        mem[0] = address(arg1)
                        mem[32] = 4
                        v = v - 1
                        t = t / 10
                        continue 
                    _2320 = mem[64]
                    _2336 = mem[s]
                    t = 0
                    while t < _2336:
                        mem[t + _2320 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_2320 + _2336 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_2336) <= _2336:
                        _2624 = mem[_1839]
                        s = 0
                        while s < _2624:
                            mem[s + _2320 + _2336 + 33] = mem[s + _1839 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_2624) <= _2624:
                            _2786 = mem[64]
                            mem[mem[64]] = _2624 + _2320 + _2336 + -mem[64] + 1
                            mem[64] = _2624 + _2320 + _2336 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2786
                            continue 
                        mem[_2320 + _2336 + _2624 + 33] = 0
                        _2818 = mem[64]
                        mem[mem[64]] = _2624 + _2320 + _2336 + -mem[64] + 1
                        mem[64] = _2624 + _2320 + _2336 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2818
                        continue 
                    _2640 = mem[_1839]
                    s = 0
                    while s < _2640:
                        mem[s + _2320 + _2336 + 33] = mem[s + _1839 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2640) <= _2640:
                        _2787 = mem[64]
                        mem[mem[64]] = _2640 + _2320 + _2336 + -mem[64] + 1
                        mem[64] = _2640 + _2320 + _2336 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2787
                        continue 
                    mem[_2320 + _2336 + _2640 + 33] = 0
                    _2819 = mem[64]
                    mem[mem[64]] = _2640 + _2320 + _2336 + -mem[64] + 1
                    mem[64] = _2640 + _2320 + _2336 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2819
                    continue 
                mem[_1839 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = 0 / sub_0b433a12
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1839]:
                        revert with 0, 50
                    mem[v + _1839 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = address(arg1)
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _2321 = mem[64]
                _2337 = mem[s]
                t = 0
                while t < _2337:
                    mem[t + _2321 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_2321 + _2337 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_2337) <= _2337:
                    _2625 = mem[_1839]
                    s = 0
                    while s < _2625:
                        mem[s + _2321 + _2337 + 33] = mem[s + _1839 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2625) <= _2625:
                        _2788 = mem[64]
                        mem[mem[64]] = _2625 + _2321 + _2337 + -mem[64] + 1
                        mem[64] = _2625 + _2321 + _2337 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2788
                        continue 
                    mem[_2321 + _2337 + _2625 + 33] = 0
                    _2820 = mem[64]
                    mem[mem[64]] = _2625 + _2321 + _2337 + -mem[64] + 1
                    mem[64] = _2625 + _2321 + _2337 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2820
                    continue 
                _2641 = mem[_1839]
                s = 0
                while s < _2641:
                    mem[s + _2321 + _2337 + 33] = mem[s + _1839 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2641) <= _2641:
                    _2789 = mem[64]
                    mem[mem[64]] = _2641 + _2321 + _2337 + -mem[64] + 1
                    mem[64] = _2641 + _2321 + _2337 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2789
                    continue 
                mem[_2321 + _2337 + _2641 + 33] = 0
                _2821 = mem[64]
                mem[mem[64]] = _2641 + _2321 + _2337 + -mem[64] + 1
                mem[64] = _2641 + _2321 + _2337 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2821
                continue 
            if block.timestamp - stor4[address(arg1)][idx].field_512 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            if not block.timestamp - stor4[address(arg1)][idx].field_512:
                revert with 0, 18
            if (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / block.timestamp - stor4[address(arg1)][idx].field_512 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            _1635 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1635] = 26
            mem[_1635 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _1647 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1647 + 68] = mem[idx + _1635 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_1647 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1647 + -mem[64] + 100
            if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
                _1710 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1710] = 1
                mem[_1710 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _1718 = mem[64]
                _1726 = mem[s]
                t = 0
                while t < _1726:
                    mem[t + _1718 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1718 + _1726 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1726) <= _1726:
                    _1851 = mem[_1710]
                    s = 0
                    while s < _1851:
                        mem[s + _1718 + _1726 + 33] = mem[s + _1710 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1851) <= _1851:
                        _2360 = mem[64]
                        mem[mem[64]] = _1851 + _1718 + _1726 + -mem[64] + 1
                        mem[64] = _1851 + _1718 + _1726 + 33
                        if ceil32(_1851) == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = ceil32(_1851) + 1
                        s = _2360
                        continue 
                    mem[_1718 + _1726 + _1851 + 33] = 0
                    _2408 = mem[64]
                    mem[mem[64]] = _1851 + _1718 + _1726 + -mem[64] + 1
                    mem[64] = _1851 + _1718 + _1726 + 33
                    if ceil32(_1851) == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = ceil32(_1851) + 1
                    s = _2408
                    continue 
                _1876 = mem[_1710]
                s = 0
                while s < _1876:
                    mem[s + _1718 + _1726 + 33] = mem[s + _1710 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1876) <= _1876:
                    _2361 = mem[64]
                    mem[mem[64]] = _1876 + _1718 + _1726 + -mem[64] + 1
                    mem[64] = _1876 + _1718 + _1726 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2361
                    continue 
                mem[_1718 + _1726 + _1876 + 33] = 0
                _2409 = mem[64]
                mem[mem[64]] = _1876 + _1718 + _1726 + -mem[64] + 1
                mem[64] = _1876 + _1718 + _1726 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2409
                continue 
            u = 0
            t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
            while t:
                if u == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _1838 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1838]:
                        revert with 0, 50
                    mem[v + _1838 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = address(arg1)
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _2318 = mem[64]
                _2334 = mem[s]
                t = 0
                while t < _2334:
                    mem[t + _2318 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_2318 + _2334 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_2334) <= _2334:
                    _2622 = mem[_1838]
                    s = 0
                    while s < _2622:
                        mem[s + _2318 + _2334 + 33] = mem[s + _1838 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2622) <= _2622:
                        _2782 = mem[64]
                        mem[mem[64]] = _2622 + _2318 + _2334 + -mem[64] + 1
                        mem[64] = _2622 + _2318 + _2334 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2782
                        continue 
                    mem[_2318 + _2334 + _2622 + 33] = 0
                    _2814 = mem[64]
                    mem[mem[64]] = _2622 + _2318 + _2334 + -mem[64] + 1
                    mem[64] = _2622 + _2318 + _2334 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2814
                    continue 
                _2638 = mem[_1838]
                s = 0
                while s < _2638:
                    mem[s + _2318 + _2334 + 33] = mem[s + _1838 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2638) <= _2638:
                    _2783 = mem[64]
                    mem[mem[64]] = _2638 + _2318 + _2334 + -mem[64] + 1
                    mem[64] = _2638 + _2318 + _2334 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2783
                    continue 
                mem[_2318 + _2334 + _2638 + 33] = 0
                _2815 = mem[64]
                mem[mem[64]] = _2638 + _2318 + _2334 + -mem[64] + 1
                mem[64] = _2638 + _2318 + _2334 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2815
                continue 
            mem[_1838 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_1838]:
                    revert with 0, 50
                mem[v + _1838 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = address(arg1)
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _2319 = mem[64]
            _2335 = mem[s]
            t = 0
            while t < _2335:
                mem[t + _2319 + 32] = mem[t + s + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                t = t + 32
                continue 
            mem[_2319 + _2335 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_2335) <= _2335:
                _2623 = mem[_1838]
                s = 0
                while s < _2623:
                    mem[s + _2319 + _2335 + 33] = mem[s + _1838 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2623) <= _2623:
                    _2784 = mem[64]
                    mem[mem[64]] = _2623 + _2319 + _2335 + -mem[64] + 1
                    mem[64] = _2623 + _2319 + _2335 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2784
                    continue 
                mem[_2319 + _2335 + _2623 + 33] = 0
                _2816 = mem[64]
                mem[mem[64]] = _2623 + _2319 + _2335 + -mem[64] + 1
                mem[64] = _2623 + _2319 + _2335 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2816
                continue 
            _2639 = mem[_1838]
            s = 0
            while s < _2639:
                mem[s + _2319 + _2335 + 33] = mem[s + _1838 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_2639) <= _2639:
                _2785 = mem[64]
                mem[mem[64]] = _2639 + _2319 + _2335 + -mem[64] + 1
                mem[64] = _2639 + _2319 + _2335 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2785
                continue 
            mem[_2319 + _2335 + _2639 + 33] = 0
            _2817 = mem[64]
            mem[mem[64]] = _2639 + _2319 + _2335 + -mem[64] + 1
            mem[64] = _2639 + _2319 + _2335 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2817
            continue 
        mem[mem[64]] = 32
        _1366 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_1366)] = mem[s + 32 len ceil32(_1366)]
        if ceil32(_1366) > _1366:
            mem[mem[64] + _1366 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_1366) + 32]
    mem[ceil32(return_data.size) + 320 len s] = call.data[calldata.size len s]
    t = s
    idx = (block.timestamp * sub_d754d433) - (stor4[address(arg1)].field_512 * sub_d754d433) / sub_0b433a12
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[ceil32(return_data.size) + 288]:
            revert with 0, 50
        mem[t + ceil32(return_data.size) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = address(arg1)
    mem[32] = 4
    idx = 1
    s = ceil32(return_data.size) + 288
    while idx < stor4[address(arg1)].field_0:
        mem[32] = 4
        if idx >= stor4[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 4)
        _1385 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1385] = 30
        mem[_1385 + 32] = 'SafeMath: subtraction overflow'
        if stor4[address(arg1)][idx].field_512 > block.timestamp:
            _1425 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1425 + 68] = mem[idx + _1385 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_1425 + 98] = 0
            revert with memory
              from mem[64]
               len _1425 + -mem[64] + 100
        if block.timestamp < stor4[address(arg1)][idx].field_512:
            revert with 0, 17
        _1495 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1495] = 26
        mem[_1495 + 32] = 'SafeMath: division by zero'
        if not sub_0b433a12:
            _1516 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1516 + 68] = mem[idx + _1495 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_1516 + 94] = 0
            revert with memory
              from mem[64]
               len _1516 + -mem[64] + 100
        if block.timestamp - stor4[address(arg1)][idx].field_512 / sub_0b433a12 >= 1:
            _1595 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1595] = 1
            mem[_1595 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _1599 = mem[64]
            _1604 = mem[s]
            t = 0
            while t < _1604:
                mem[t + _1599 + 32] = mem[t + s + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                t = t + 32
                continue 
            mem[_1599 + _1604 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_1604) <= _1604:
                _1853 = mem[_1595]
                s = 0
                while s < _1853:
                    mem[s + _1599 + _1604 + 33] = mem[s + _1595 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1853) <= _1853:
                    _2364 = mem[64]
                    mem[mem[64]] = _1853 + _1599 + _1604 + -mem[64] + 1
                    mem[64] = _1853 + _1599 + _1604 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2364
                    continue 
                mem[_1599 + _1604 + _1853 + 33] = 0
                _2412 = mem[64]
                mem[mem[64]] = _1853 + _1599 + _1604 + -mem[64] + 1
                mem[64] = _1853 + _1599 + _1604 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2412
                continue 
            _1883 = mem[_1595]
            s = 0
            while s < _1883:
                mem[s + _1599 + _1604 + 33] = mem[s + _1595 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1883) <= _1883:
                _2365 = mem[64]
                mem[mem[64]] = _1883 + _1599 + _1604 + -mem[64] + 1
                mem[64] = _1883 + _1599 + _1604 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2365
                continue 
            mem[_1599 + _1604 + _1883 + 33] = 0
            _2413 = mem[64]
            mem[mem[64]] = _1883 + _1599 + _1604 + -mem[64] + 1
            mem[64] = _1883 + _1599 + _1604 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2413
            continue 
        if not block.timestamp - stor4[address(arg1)][idx].field_512:
            _1605 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1605] = 26
            mem[_1605 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _1611 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1611 + 68] = mem[idx + _1605 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_1611 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1611 + -mem[64] + 100
            if not 0 / sub_0b433a12:
                _1668 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1668] = 1
                mem[_1668 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _1677 = mem[64]
                _1689 = mem[s]
                t = 0
                while t < _1689:
                    mem[t + _1677 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1677 + _1689 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1689) <= _1689:
                    _1855 = mem[_1668]
                    s = 0
                    while s < _1855:
                        mem[s + _1677 + _1689 + 33] = mem[s + _1668 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1855) <= _1855:
                        _2368 = mem[64]
                        mem[mem[64]] = _1855 + _1677 + _1689 + -mem[64] + 1
                        mem[64] = _1855 + _1677 + _1689 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2368
                        continue 
                    mem[_1677 + _1689 + _1855 + 33] = 0
                    _2416 = mem[64]
                    mem[mem[64]] = _1855 + _1677 + _1689 + -mem[64] + 1
                    mem[64] = _1855 + _1677 + _1689 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2416
                    continue 
                _1886 = mem[_1668]
                s = 0
                while s < _1886:
                    mem[s + _1677 + _1689 + 33] = mem[s + _1668 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1886) <= _1886:
                    _2369 = mem[64]
                    mem[mem[64]] = _1886 + _1677 + _1689 + -mem[64] + 1
                    mem[64] = _1886 + _1677 + _1689 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2369
                    continue 
                mem[_1677 + _1689 + _1886 + 33] = 0
                _2417 = mem[64]
                mem[mem[64]] = _1886 + _1677 + _1689 + -mem[64] + 1
                mem[64] = _1886 + _1677 + _1689 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2417
                continue 
            u = 0
            t = 0 / sub_0b433a12
            while t:
                if u == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _1841 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = 0 / sub_0b433a12
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1841]:
                        revert with 0, 50
                    mem[v + _1841 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    mem[0] = address(arg1)
                    mem[32] = 4
                    v = v - 1
                    t = t / 10
                    continue 
                _2324 = mem[64]
                _2340 = mem[s]
                t = 0
                while t < _2340:
                    mem[t + _2324 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_2324 + _2340 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_2340) <= _2340:
                    _2628 = mem[_1841]
                    s = 0
                    while s < _2628:
                        mem[s + _2324 + _2340 + 33] = mem[s + _1841 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2628) <= _2628:
                        _2794 = mem[64]
                        mem[mem[64]] = _2628 + _2324 + _2340 + -mem[64] + 1
                        mem[64] = _2628 + _2324 + _2340 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2794
                        continue 
                    mem[_2324 + _2340 + _2628 + 33] = 0
                    _2826 = mem[64]
                    mem[mem[64]] = _2628 + _2324 + _2340 + -mem[64] + 1
                    mem[64] = _2628 + _2324 + _2340 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2826
                    continue 
                _2644 = mem[_1841]
                s = 0
                while s < _2644:
                    mem[s + _2324 + _2340 + 33] = mem[s + _1841 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2644) <= _2644:
                    _2795 = mem[64]
                    mem[mem[64]] = _2644 + _2324 + _2340 + -mem[64] + 1
                    mem[64] = _2644 + _2324 + _2340 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2795
                    continue 
                mem[_2324 + _2340 + _2644 + 33] = 0
                _2827 = mem[64]
                mem[mem[64]] = _2644 + _2324 + _2340 + -mem[64] + 1
                mem[64] = _2644 + _2324 + _2340 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2827
                continue 
            mem[_1841 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = 0 / sub_0b433a12
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_1841]:
                    revert with 0, 50
                mem[v + _1841 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = address(arg1)
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _2325 = mem[64]
            _2341 = mem[s]
            t = 0
            while t < _2341:
                mem[t + _2325 + 32] = mem[t + s + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                t = t + 32
                continue 
            mem[_2325 + _2341 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_2341) <= _2341:
                _2629 = mem[_1841]
                s = 0
                while s < _2629:
                    mem[s + _2325 + _2341 + 33] = mem[s + _1841 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2629) <= _2629:
                    _2796 = mem[64]
                    mem[mem[64]] = _2629 + _2325 + _2341 + -mem[64] + 1
                    mem[64] = _2629 + _2325 + _2341 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2796
                    continue 
                mem[_2325 + _2341 + _2629 + 33] = 0
                _2828 = mem[64]
                mem[mem[64]] = _2629 + _2325 + _2341 + -mem[64] + 1
                mem[64] = _2629 + _2325 + _2341 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2828
                continue 
            _2645 = mem[_1841]
            s = 0
            while s < _2645:
                mem[s + _2325 + _2341 + 33] = mem[s + _1841 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_2645) <= _2645:
                _2797 = mem[64]
                mem[mem[64]] = _2645 + _2325 + _2341 + -mem[64] + 1
                mem[64] = _2645 + _2325 + _2341 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2797
                continue 
            mem[_2325 + _2341 + _2645 + 33] = 0
            _2829 = mem[64]
            mem[mem[64]] = _2645 + _2325 + _2341 + -mem[64] + 1
            mem[64] = _2645 + _2325 + _2341 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2829
            continue 
        if block.timestamp - stor4[address(arg1)][idx].field_512 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512:
            revert with 0, 17
        if not block.timestamp - stor4[address(arg1)][idx].field_512:
            revert with 0, 18
        if (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / block.timestamp - stor4[address(arg1)][idx].field_512 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        _1638 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1638] = 26
        mem[_1638 + 32] = 'SafeMath: division by zero'
        if not sub_0b433a12:
            _1649 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1649 + 68] = mem[idx + _1638 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_1649 + 94] = 0
            revert with memory
              from mem[64]
               len _1649 + -mem[64] + 100
        if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
            _1712 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1712] = 1
            mem[_1712 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _1720 = mem[64]
            _1728 = mem[s]
            t = 0
            while t < _1728:
                mem[t + _1720 + 32] = mem[t + s + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                t = t + 32
                continue 
            mem[_1720 + _1728 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_1728) <= _1728:
                _1854 = mem[_1712]
                s = 0
                while s < _1854:
                    mem[s + _1720 + _1728 + 33] = mem[s + _1712 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1854) <= _1854:
                    _2366 = mem[64]
                    mem[mem[64]] = _1854 + _1720 + _1728 + -mem[64] + 1
                    mem[64] = _1854 + _1720 + _1728 + 33
                    if ceil32(_1854) == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = ceil32(_1854) + 1
                    s = _2366
                    continue 
                mem[_1720 + _1728 + _1854 + 33] = 0
                _2414 = mem[64]
                mem[mem[64]] = _1854 + _1720 + _1728 + -mem[64] + 1
                mem[64] = _1854 + _1720 + _1728 + 33
                if ceil32(_1854) == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                s = ceil32(_1854) + 1
                s = _2414
                continue 
            _1884 = mem[_1712]
            s = 0
            while s < _1884:
                mem[s + _1720 + _1728 + 33] = mem[s + _1712 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1884) <= _1884:
                _2367 = mem[64]
                mem[mem[64]] = _1884 + _1720 + _1728 + -mem[64] + 1
                mem[64] = _1884 + _1720 + _1728 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2367
                continue 
            mem[_1720 + _1728 + _1884 + 33] = 0
            _2415 = mem[64]
            mem[mem[64]] = _1884 + _1720 + _1728 + -mem[64] + 1
            mem[64] = _1884 + _1720 + _1728 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2415
            continue 
        u = 0
        t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
        while t:
            if u == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _1840 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_1840]:
                    revert with 0, 50
                mem[v + _1840 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                mem[0] = address(arg1)
                mem[32] = 4
                v = v - 1
                t = t / 10
                continue 
            _2322 = mem[64]
            _2338 = mem[s]
            t = 0
            while t < _2338:
                mem[t + _2322 + 32] = mem[t + s + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                t = t + 32
                continue 
            mem[_2322 + _2338 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_2338) <= _2338:
                _2626 = mem[_1840]
                s = 0
                while s < _2626:
                    mem[s + _2322 + _2338 + 33] = mem[s + _1840 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2626) <= _2626:
                    _2790 = mem[64]
                    mem[mem[64]] = _2626 + _2322 + _2338 + -mem[64] + 1
                    mem[64] = _2626 + _2322 + _2338 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2790
                    continue 
                mem[_2322 + _2338 + _2626 + 33] = 0
                _2822 = mem[64]
                mem[mem[64]] = _2626 + _2322 + _2338 + -mem[64] + 1
                mem[64] = _2626 + _2322 + _2338 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2822
                continue 
            _2642 = mem[_1840]
            s = 0
            while s < _2642:
                mem[s + _2322 + _2338 + 33] = mem[s + _1840 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_2642) <= _2642:
                _2791 = mem[64]
                mem[mem[64]] = _2642 + _2322 + _2338 + -mem[64] + 1
                mem[64] = _2642 + _2322 + _2338 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2791
                continue 
            mem[_2322 + _2338 + _2642 + 33] = 0
            _2823 = mem[64]
            mem[mem[64]] = _2642 + _2322 + _2338 + -mem[64] + 1
            mem[64] = _2642 + _2322 + _2338 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2823
            continue 
        mem[_1840 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_1840]:
                revert with 0, 50
            mem[v + _1840 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            mem[0] = address(arg1)
            mem[32] = 4
            v = v - 1
            t = t / 10
            continue 
        _2323 = mem[64]
        _2339 = mem[s]
        t = 0
        while t < _2339:
            mem[t + _2323 + 32] = mem[t + s + 32]
            mem[0] = address(arg1)
            mem[32] = 4
            t = t + 32
            continue 
        mem[_2323 + _2339 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        if ceil32(_2339) <= _2339:
            _2627 = mem[_1840]
            s = 0
            while s < _2627:
                mem[s + _2323 + _2339 + 33] = mem[s + _1840 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_2627) <= _2627:
                _2792 = mem[64]
                mem[mem[64]] = _2627 + _2323 + _2339 + -mem[64] + 1
                mem[64] = _2627 + _2323 + _2339 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2792
                continue 
            mem[_2323 + _2339 + _2627 + 33] = 0
            _2824 = mem[64]
            mem[mem[64]] = _2627 + _2323 + _2339 + -mem[64] + 1
            mem[64] = _2627 + _2323 + _2339 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2824
            continue 
        _2643 = mem[_1840]
        s = 0
        while s < _2643:
            mem[s + _2323 + _2339 + 33] = mem[s + _1840 + 32]
            mem[0] = address(arg1)
            mem[32] = 4
            s = s + 32
            continue 
        if ceil32(_2643) <= _2643:
            _2793 = mem[64]
            mem[mem[64]] = _2643 + _2323 + _2339 + -mem[64] + 1
            mem[64] = _2643 + _2323 + _2339 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2793
            continue 
        mem[_2323 + _2339 + _2643 + 33] = 0
        _2825 = mem[64]
        mem[mem[64]] = _2643 + _2323 + _2339 + -mem[64] + 1
        mem[64] = _2643 + _2323 + _2339 + 33
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 4
        idx = idx + 1
        s = _2825
        continue 
    mem[mem[64]] = 32
    _1367 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_1367)] = mem[s + 32 len ceil32(_1367)]
    if ceil32(_1367) > _1367:
        mem[mem[64] + _1367 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_1367) + 32]
}



}
