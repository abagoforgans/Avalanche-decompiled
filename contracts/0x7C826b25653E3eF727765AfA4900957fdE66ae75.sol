contract main {




// =====================  Runtime code  =====================


#
#  - sub_2872e38c(?)
#  - _getNodesRewardAvailable(address arg1)
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
    delegate 0x2fd81249bd4d070a2350b2525829dd273f22ec5c.0x732a2ccf with:
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
    delegate 0x2fd81249bd4d070a2350b2525829dd273f22ec5c.0x732a2ccf with:
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
    require ext_code.size(0x2fd81249bd4d070a2350b2525829dd273f22ec5c)
    delegate 0x2fd81249bd4d070a2350b2525829dd273f22ec5c.0xbc2b405c with:
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
        require ext_code.size(0x2fd81249bd4d070a2350b2525829dd273f22ec5c)
        delegate 0x2fd81249bd4d070a2350b2525829dd273f22ec5c.0xbc2b405c with:
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
    delegate 0x2fd81249bd4d070a2350b2525829dd273f22ec5c.0x732a2ccf with:
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
            _42 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _42 + 68] = mem[idx + _39 + 32]
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_42 + 94] = 0
            revert with memory
              from mem[64]
               len _42 + -mem[64] + 100
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
    delegate 0x2fd81249bd4d070a2350b2525829dd273f22ec5c.0x732a2ccf with:
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
            _55 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _55 + 68] = mem[idx + _52 + 32]
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_55 + 94] = 0
            revert with memory
              from mem[64]
               len _55 + -mem[64] + 100
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

function sub_67bf77d0(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _134 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x486af96a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_134)
        staticcall address(cd[4]).0x486af96a with:
                gas gas_remaining wei
               args address(_134)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _138 = mem[_137]
        require mem[_137] <= test266151307()
        require _137 + return_data.size > _137 + mem[_137] + 31
        _139 = mem[_137 + mem[_137]]
        if mem[_137 + mem[_137]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_137 + mem[_137]]) + 1 < 0 or _137 + ceil32(return_data.size) + ceil32(32 * mem[_137 + mem[_137]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _137 + ceil32(return_data.size) + ceil32(32 * mem[_137 + mem[_137]]) + 1
        mem[_137 + ceil32(return_data.size)] = _139
        require _138 + (_139 << 7) + 32 <= return_data.size
        t = _137 + ceil32(return_data.size) + 32
        s = _137 + _138 + 32
        while s < _137 + _138 + (_139 << 7) + 32:
            require _137 + return_data.size - s >= 128
            _198 = mem[64]
            if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 128
            mem[_198] = mem[s]
            mem[_198 + 32] = mem[s + 32]
            mem[_198 + 64] = mem[s + 64]
            mem[_198 + 96] = mem[s + 96]
            mem[t] = _198
            t = t + 32
            s = s + 128
            continue 
        if mem[_137 + ceil32(return_data.size)]:
            _253 = mem[_137 + ceil32(return_data.size)]
            s = 0
            while s < _253:
                if s >= mem[_137 + ceil32(return_data.size)]:
                    revert with 0, 50
                _256 = mem[mem[(32 * s) + _137 + ceil32(return_data.size) + 32] + 32]
                _257 = mem[64]
                mem[64] = mem[64] + 64
                mem[_257] = 30
                mem[_257 + 32] = 'SafeMath: subtraction overflow'
                if _256 > block.timestamp:
                    _258 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _258 + 68] = mem[idx + _257 + 32]
                        _253 = mem[_137 + ceil32(return_data.size)]
                        idx = idx + 32
                        continue 
                    mem[_258 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _258 + -mem[64] + 100
                if block.timestamp < _256:
                    revert with 0, 17
                _261 = mem[64]
                mem[64] = mem[64] + 64
                mem[_261] = 26
                mem[_261 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _264 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _264 + 68] = mem[idx + _261 + 32]
                        _253 = mem[_137 + ceil32(return_data.size)]
                        idx = idx + 32
                        continue 
                    mem[_264 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _264 + -mem[64] + 100
                if not block.timestamp - _256 / sub_0b433a12:
                    if s >= mem[_137 + ceil32(return_data.size)]:
                        revert with 0, 50
                    _271 = mem[mem[(32 * s) + _137 + ceil32(return_data.size) + 32]]
                    mem[0] = address(_134)
                    mem[32] = 4
                    _273 = mem[64]
                    mem[64] = mem[64] + 128
                    if 1 > !totalNodesCreated:
                        revert with 0, 17
                    mem[_273] = totalNodesCreated + 1
                    mem[_273 + 32] = _271
                    mem[_273 + 64] = block.timestamp
                    mem[_273 + 96] = 0
                    stor4[address(_134)].field_0++
                    stor4[address(_134)][stor4[address(_134)].field_0].field_0 = totalNodesCreated + 1
                    stor4[address(_134)][stor4[address(_134)].field_0].field_256 = _271
                    stor4[address(_134)][stor4[address(_134)].field_0].field_512 = block.timestamp
                    stor4[address(_134)][stor4[address(_134)].field_0].field_768 = 0
                else:
                    if block.timestamp - _256 / sub_0b433a12 and sub_d754d433 > -1 / block.timestamp - _256 / sub_0b433a12:
                        revert with 0, 17
                    if not block.timestamp - _256 / sub_0b433a12:
                        revert with 0, 18
                    if block.timestamp - _256 / sub_0b433a12 * sub_d754d433 / block.timestamp - _256 / sub_0b433a12 != sub_d754d433:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if s >= mem[_137 + ceil32(return_data.size)]:
                        revert with 0, 50
                    _286 = mem[mem[(32 * s) + _137 + ceil32(return_data.size) + 32]]
                    mem[0] = address(_134)
                    mem[32] = 4
                    _288 = mem[64]
                    mem[64] = mem[64] + 128
                    if 1 > !totalNodesCreated:
                        revert with 0, 17
                    mem[_288] = totalNodesCreated + 1
                    mem[_288 + 32] = _286
                    mem[_288 + 64] = block.timestamp
                    mem[_288 + 96] = block.timestamp - _256 / sub_0b433a12 * sub_d754d433
                    stor4[address(_134)].field_0++
                    stor4[address(_134)][stor4[address(_134)].field_0].field_0 = totalNodesCreated + 1
                    stor4[address(_134)][stor4[address(_134)].field_0].field_256 = _286
                    stor4[address(_134)][stor4[address(_134)].field_0].field_512 = block.timestamp
                    stor4[address(_134)][stor4[address(_134)].field_0].field_768 = block.timestamp - _256 / sub_0b433a12 * sub_d754d433
                mem[mem[64] + 68] = stor4[address(_134)].field_0
                require ext_code.size(0x2fd81249bd4d070a2350b2525829dd273f22ec5c)
                delegate 0x2fd81249bd4d070a2350b2525829dd273f22ec5c.0xbc2b405c with:
                     gas gas_remaining wei
                    args 0, address(_134), stor4[address(_134)].field_0
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalNodesCreated == -1:
                    revert with 0, 17
                totalNodesCreated++
                mem[0] = address(_134)
                mem[32] = 4
                mem[mem[64]] = totalNodesCreated
                mem[mem[64] + 32] = stor4[address(_134)].field_0
                mem[mem[64] + 64] = totalNodesCreated
                emit 0x8adf8566: totalNodesCreated, stor4[address(_134)].field_0, totalNodesCreated, address(_134)
                if s == -1:
                    revert with 0, 17
                _253 = mem[_137 + ceil32(return_data.size)]
                s = s + 1
                continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    delegate 0x2fd81249bd4d070a2350b2525829dd273f22ec5c.0x732a2ccf with:
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
                    mem[_98 + _37 + _39 + 33] = 0
                    _191 = mem[64]
                    mem[mem[64]] = _98 + _37 + _39 + -mem[64] + 1
                    mem[64] = _98 + _37 + _39 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _191
                    continue 
                _99 = mem[_36]
                s = 0
                while s < _99:
                    mem[s + _37 + _39 + 33] = mem[s + _36 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_99) <= _99:
                    _192 = mem[64]
                    mem[mem[64]] = _99 + _37 + _39 + -mem[64] + 1
                    mem[64] = _99 + _37 + _39 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _192
                    continue 
                mem[_99 + _37 + _39 + 33] = 0
                _193 = mem[64]
                mem[mem[64]] = _99 + _37 + _39 + -mem[64] + 1
                mem[64] = _99 + _37 + _39 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _193
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
                    _254 = mem[_95]
                    s = 0
                    while s < _254:
                        mem[s + _182 + _186 + 33] = mem[s + _95 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_254) <= _254:
                        _358 = mem[64]
                        mem[mem[64]] = _254 + _182 + _186 + -mem[64] + 1
                        mem[64] = _254 + _182 + _186 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _358
                        continue 
                    mem[_254 + _182 + _186 + 33] = 0
                    _359 = mem[64]
                    mem[mem[64]] = _254 + _182 + _186 + -mem[64] + 1
                    mem[64] = _254 + _182 + _186 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _359
                    continue 
                _255 = mem[_95]
                s = 0
                while s < _255:
                    mem[s + _182 + _186 + 33] = mem[s + _95 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_255) <= _255:
                    _360 = mem[64]
                    mem[mem[64]] = _255 + _182 + _186 + -mem[64] + 1
                    mem[64] = _255 + _182 + _186 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _360
                    continue 
                mem[_255 + _182 + _186 + 33] = 0
                _361 = mem[64]
                mem[mem[64]] = _255 + _182 + _186 + -mem[64] + 1
                mem[64] = _255 + _182 + _186 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _361
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
                _256 = mem[_95]
                s = 0
                while s < _256:
                    mem[s + _183 + _187 + 33] = mem[s + _95 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_256) <= _256:
                    _362 = mem[64]
                    mem[mem[64]] = _256 + _183 + _187 + -mem[64] + 1
                    mem[64] = _256 + _183 + _187 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _362
                    continue 
                mem[_256 + _183 + _187 + 33] = 0
                _363 = mem[64]
                mem[mem[64]] = _256 + _183 + _187 + -mem[64] + 1
                mem[64] = _256 + _183 + _187 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _363
                continue 
            _257 = mem[_95]
            s = 0
            while s < _257:
                mem[s + _183 + _187 + 33] = mem[s + _95 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_257) <= _257:
                _364 = mem[64]
                mem[mem[64]] = _257 + _183 + _187 + -mem[64] + 1
                mem[64] = _257 + _183 + _187 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _364
                continue 
            mem[_257 + _183 + _187 + 33] = 0
            _365 = mem[64]
            mem[mem[64]] = _257 + _183 + _187 + -mem[64] + 1
            mem[64] = _257 + _183 + _187 + 33
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
            mem[_35 + mem[64] + 64] = 0
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
                _194 = mem[64]
                _197 = mem[s]
                u = 0
                while u < _197:
                    mem[u + _194 + 32] = mem[u + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    u = u + 32
                    continue 
                mem[_194 + _197 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_197) <= _197:
                    _250 = mem[_188]
                    s = 0
                    while s < _250:
                        mem[s + _194 + _197 + 33] = mem[s + _188 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_250) <= _250:
                        _350 = mem[64]
                        mem[mem[64]] = _250 + _194 + _197 + -mem[64] + 1
                        mem[64] = _250 + _194 + _197 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _350
                        continue 
                    mem[_250 + _194 + _197 + 33] = 0
                    _351 = mem[64]
                    mem[mem[64]] = _250 + _194 + _197 + -mem[64] + 1
                    mem[64] = _250 + _194 + _197 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _351
                    continue 
                _251 = mem[_188]
                s = 0
                while s < _251:
                    mem[s + _194 + _197 + 33] = mem[s + _188 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_251) <= _251:
                    _352 = mem[64]
                    mem[mem[64]] = _251 + _194 + _197 + -mem[64] + 1
                    mem[64] = _251 + _194 + _197 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _352
                    continue 
                mem[_251 + _194 + _197 + 33] = 0
                _353 = mem[64]
                mem[mem[64]] = _251 + _194 + _197 + -mem[64] + 1
                mem[64] = _251 + _194 + _197 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _353
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
                    mem[_410 + _342 + _346 + 33] = 0
                    _451 = mem[64]
                    mem[mem[64]] = _410 + _342 + _346 + -mem[64] + 1
                    mem[64] = _410 + _342 + _346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _451
                    continue 
                _411 = mem[_248]
                s = 0
                while s < _411:
                    mem[s + _342 + _346 + 33] = mem[s + _248 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_411) <= _411:
                    _452 = mem[64]
                    mem[mem[64]] = _411 + _342 + _346 + -mem[64] + 1
                    mem[64] = _411 + _342 + _346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _452
                    continue 
                mem[_411 + _342 + _346 + 33] = 0
                _453 = mem[64]
                mem[mem[64]] = _411 + _342 + _346 + -mem[64] + 1
                mem[64] = _411 + _342 + _346 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _453
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
                _412 = mem[_248]
                s = 0
                while s < _412:
                    mem[s + _343 + _347 + 33] = mem[s + _248 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_412) <= _412:
                    _454 = mem[64]
                    mem[mem[64]] = _412 + _343 + _347 + -mem[64] + 1
                    mem[64] = _412 + _343 + _347 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _454
                    continue 
                mem[_412 + _343 + _347 + 33] = 0
                _455 = mem[64]
                mem[mem[64]] = _412 + _343 + _347 + -mem[64] + 1
                mem[64] = _412 + _343 + _347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _455
                continue 
            _413 = mem[_248]
            s = 0
            while s < _413:
                mem[s + _343 + _347 + 33] = mem[s + _248 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_413) <= _413:
                _456 = mem[64]
                mem[mem[64]] = _413 + _343 + _347 + -mem[64] + 1
                mem[64] = _413 + _343 + _347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _456
                continue 
            mem[_413 + _343 + _347 + 33] = 0
            _457 = mem[64]
            mem[mem[64]] = _413 + _343 + _347 + -mem[64] + 1
            mem[64] = _413 + _343 + _347 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _457
            continue 
        mem[mem[64]] = 32
        _184 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_184)] = mem[s + 32 len ceil32(_184)]
        if ceil32(_184) > _184:
            mem[_184 + mem[64] + 64] = 0
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
            _195 = mem[64]
            _199 = mem[s]
            u = 0
            while u < _199:
                mem[u + _195 + 32] = mem[u + s + 32]
                mem[0] = arg1
                mem[32] = 4
                u = u + 32
                continue 
            mem[_195 + _199 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_199) <= _199:
                _252 = mem[_189]
                s = 0
                while s < _252:
                    mem[s + _195 + _199 + 33] = mem[s + _189 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_252) <= _252:
                    _354 = mem[64]
                    mem[mem[64]] = _252 + _195 + _199 + -mem[64] + 1
                    mem[64] = _252 + _195 + _199 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _354
                    continue 
                mem[_252 + _195 + _199 + 33] = 0
                _355 = mem[64]
                mem[mem[64]] = _252 + _195 + _199 + -mem[64] + 1
                mem[64] = _252 + _195 + _199 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _355
                continue 
            _253 = mem[_189]
            s = 0
            while s < _253:
                mem[s + _195 + _199 + 33] = mem[s + _189 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_253) <= _253:
                _356 = mem[64]
                mem[mem[64]] = _253 + _195 + _199 + -mem[64] + 1
                mem[64] = _253 + _195 + _199 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _356
                continue 
            mem[_253 + _195 + _199 + 33] = 0
            _357 = mem[64]
            mem[mem[64]] = _253 + _195 + _199 + -mem[64] + 1
            mem[64] = _253 + _195 + _199 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _357
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
                _414 = mem[_249]
                s = 0
                while s < _414:
                    mem[s + _344 + _348 + 33] = mem[s + _249 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_414) <= _414:
                    _458 = mem[64]
                    mem[mem[64]] = _414 + _344 + _348 + -mem[64] + 1
                    mem[64] = _414 + _344 + _348 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _458
                    continue 
                mem[_414 + _344 + _348 + 33] = 0
                _459 = mem[64]
                mem[mem[64]] = _414 + _344 + _348 + -mem[64] + 1
                mem[64] = _414 + _344 + _348 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _459
                continue 
            _415 = mem[_249]
            s = 0
            while s < _415:
                mem[s + _344 + _348 + 33] = mem[s + _249 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_415) <= _415:
                _460 = mem[64]
                mem[mem[64]] = _415 + _344 + _348 + -mem[64] + 1
                mem[64] = _415 + _344 + _348 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _460
                continue 
            mem[_415 + _344 + _348 + 33] = 0
            _461 = mem[64]
            mem[mem[64]] = _415 + _344 + _348 + -mem[64] + 1
            mem[64] = _415 + _344 + _348 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _461
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
            _416 = mem[_249]
            s = 0
            while s < _416:
                mem[s + _345 + _349 + 33] = mem[s + _249 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_416) <= _416:
                _462 = mem[64]
                mem[mem[64]] = _416 + _345 + _349 + -mem[64] + 1
                mem[64] = _416 + _345 + _349 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _462
                continue 
            mem[_416 + _345 + _349 + 33] = 0
            _463 = mem[64]
            mem[mem[64]] = _416 + _345 + _349 + -mem[64] + 1
            mem[64] = _416 + _345 + _349 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _463
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
            _464 = mem[64]
            mem[mem[64]] = _417 + _345 + _349 + -mem[64] + 1
            mem[64] = _417 + _345 + _349 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _464
            continue 
        mem[_417 + _345 + _349 + 33] = 0
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
        mem[_185 + mem[64] + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_185) + 32]
}

function _getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 0
    mem[132] = arg1
    delegate 0x2fd81249bd4d070a2350b2525829dd273f22ec5c.0x732a2ccf with:
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
                    mem[_98 + _37 + _39 + 33] = 0
                    _191 = mem[64]
                    mem[mem[64]] = _98 + _37 + _39 + -mem[64] + 1
                    mem[64] = _98 + _37 + _39 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _191
                    continue 
                _99 = mem[_36]
                s = 0
                while s < _99:
                    mem[s + _37 + _39 + 33] = mem[s + _36 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_99) <= _99:
                    _192 = mem[64]
                    mem[mem[64]] = _99 + _37 + _39 + -mem[64] + 1
                    mem[64] = _99 + _37 + _39 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _192
                    continue 
                mem[_99 + _37 + _39 + 33] = 0
                _193 = mem[64]
                mem[mem[64]] = _99 + _37 + _39 + -mem[64] + 1
                mem[64] = _99 + _37 + _39 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _193
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
                    _254 = mem[_95]
                    s = 0
                    while s < _254:
                        mem[s + _182 + _186 + 33] = mem[s + _95 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_254) <= _254:
                        _358 = mem[64]
                        mem[mem[64]] = _254 + _182 + _186 + -mem[64] + 1
                        mem[64] = _254 + _182 + _186 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _358
                        continue 
                    mem[_254 + _182 + _186 + 33] = 0
                    _359 = mem[64]
                    mem[mem[64]] = _254 + _182 + _186 + -mem[64] + 1
                    mem[64] = _254 + _182 + _186 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _359
                    continue 
                _255 = mem[_95]
                s = 0
                while s < _255:
                    mem[s + _182 + _186 + 33] = mem[s + _95 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_255) <= _255:
                    _360 = mem[64]
                    mem[mem[64]] = _255 + _182 + _186 + -mem[64] + 1
                    mem[64] = _255 + _182 + _186 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _360
                    continue 
                mem[_255 + _182 + _186 + 33] = 0
                _361 = mem[64]
                mem[mem[64]] = _255 + _182 + _186 + -mem[64] + 1
                mem[64] = _255 + _182 + _186 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _361
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
                _256 = mem[_95]
                s = 0
                while s < _256:
                    mem[s + _183 + _187 + 33] = mem[s + _95 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_256) <= _256:
                    _362 = mem[64]
                    mem[mem[64]] = _256 + _183 + _187 + -mem[64] + 1
                    mem[64] = _256 + _183 + _187 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _362
                    continue 
                mem[_256 + _183 + _187 + 33] = 0
                _363 = mem[64]
                mem[mem[64]] = _256 + _183 + _187 + -mem[64] + 1
                mem[64] = _256 + _183 + _187 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _363
                continue 
            _257 = mem[_95]
            s = 0
            while s < _257:
                mem[s + _183 + _187 + 33] = mem[s + _95 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_257) <= _257:
                _364 = mem[64]
                mem[mem[64]] = _257 + _183 + _187 + -mem[64] + 1
                mem[64] = _257 + _183 + _187 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _364
                continue 
            mem[_257 + _183 + _187 + 33] = 0
            _365 = mem[64]
            mem[mem[64]] = _257 + _183 + _187 + -mem[64] + 1
            mem[64] = _257 + _183 + _187 + 33
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
            mem[_35 + mem[64] + 64] = 0
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
                _194 = mem[64]
                _197 = mem[s]
                u = 0
                while u < _197:
                    mem[u + _194 + 32] = mem[u + s + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    u = u + 32
                    continue 
                mem[_194 + _197 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_197) <= _197:
                    _250 = mem[_188]
                    s = 0
                    while s < _250:
                        mem[s + _194 + _197 + 33] = mem[s + _188 + 32]
                        mem[0] = arg1
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_250) <= _250:
                        _350 = mem[64]
                        mem[mem[64]] = _250 + _194 + _197 + -mem[64] + 1
                        mem[64] = _250 + _194 + _197 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 4
                        idx = idx + 1
                        s = _350
                        continue 
                    mem[_250 + _194 + _197 + 33] = 0
                    _351 = mem[64]
                    mem[mem[64]] = _250 + _194 + _197 + -mem[64] + 1
                    mem[64] = _250 + _194 + _197 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _351
                    continue 
                _251 = mem[_188]
                s = 0
                while s < _251:
                    mem[s + _194 + _197 + 33] = mem[s + _188 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_251) <= _251:
                    _352 = mem[64]
                    mem[mem[64]] = _251 + _194 + _197 + -mem[64] + 1
                    mem[64] = _251 + _194 + _197 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _352
                    continue 
                mem[_251 + _194 + _197 + 33] = 0
                _353 = mem[64]
                mem[mem[64]] = _251 + _194 + _197 + -mem[64] + 1
                mem[64] = _251 + _194 + _197 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _353
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
                    mem[_410 + _342 + _346 + 33] = 0
                    _451 = mem[64]
                    mem[mem[64]] = _410 + _342 + _346 + -mem[64] + 1
                    mem[64] = _410 + _342 + _346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _451
                    continue 
                _411 = mem[_248]
                s = 0
                while s < _411:
                    mem[s + _342 + _346 + 33] = mem[s + _248 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_411) <= _411:
                    _452 = mem[64]
                    mem[mem[64]] = _411 + _342 + _346 + -mem[64] + 1
                    mem[64] = _411 + _342 + _346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _452
                    continue 
                mem[_411 + _342 + _346 + 33] = 0
                _453 = mem[64]
                mem[mem[64]] = _411 + _342 + _346 + -mem[64] + 1
                mem[64] = _411 + _342 + _346 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _453
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
                _412 = mem[_248]
                s = 0
                while s < _412:
                    mem[s + _343 + _347 + 33] = mem[s + _248 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_412) <= _412:
                    _454 = mem[64]
                    mem[mem[64]] = _412 + _343 + _347 + -mem[64] + 1
                    mem[64] = _412 + _343 + _347 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _454
                    continue 
                mem[_412 + _343 + _347 + 33] = 0
                _455 = mem[64]
                mem[mem[64]] = _412 + _343 + _347 + -mem[64] + 1
                mem[64] = _412 + _343 + _347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _455
                continue 
            _413 = mem[_248]
            s = 0
            while s < _413:
                mem[s + _343 + _347 + 33] = mem[s + _248 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_413) <= _413:
                _456 = mem[64]
                mem[mem[64]] = _413 + _343 + _347 + -mem[64] + 1
                mem[64] = _413 + _343 + _347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _456
                continue 
            mem[_413 + _343 + _347 + 33] = 0
            _457 = mem[64]
            mem[mem[64]] = _413 + _343 + _347 + -mem[64] + 1
            mem[64] = _413 + _343 + _347 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _457
            continue 
        mem[mem[64]] = 32
        _184 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_184)] = mem[s + 32 len ceil32(_184)]
        if ceil32(_184) > _184:
            mem[_184 + mem[64] + 64] = 0
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
            _195 = mem[64]
            _199 = mem[s]
            u = 0
            while u < _199:
                mem[u + _195 + 32] = mem[u + s + 32]
                mem[0] = arg1
                mem[32] = 4
                u = u + 32
                continue 
            mem[_195 + _199 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_199) <= _199:
                _252 = mem[_189]
                s = 0
                while s < _252:
                    mem[s + _195 + _199 + 33] = mem[s + _189 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_252) <= _252:
                    _354 = mem[64]
                    mem[mem[64]] = _252 + _195 + _199 + -mem[64] + 1
                    mem[64] = _252 + _195 + _199 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _354
                    continue 
                mem[_252 + _195 + _199 + 33] = 0
                _355 = mem[64]
                mem[mem[64]] = _252 + _195 + _199 + -mem[64] + 1
                mem[64] = _252 + _195 + _199 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _355
                continue 
            _253 = mem[_189]
            s = 0
            while s < _253:
                mem[s + _195 + _199 + 33] = mem[s + _189 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_253) <= _253:
                _356 = mem[64]
                mem[mem[64]] = _253 + _195 + _199 + -mem[64] + 1
                mem[64] = _253 + _195 + _199 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _356
                continue 
            mem[_253 + _195 + _199 + 33] = 0
            _357 = mem[64]
            mem[mem[64]] = _253 + _195 + _199 + -mem[64] + 1
            mem[64] = _253 + _195 + _199 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _357
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
                _414 = mem[_249]
                s = 0
                while s < _414:
                    mem[s + _344 + _348 + 33] = mem[s + _249 + 32]
                    mem[0] = arg1
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_414) <= _414:
                    _458 = mem[64]
                    mem[mem[64]] = _414 + _344 + _348 + -mem[64] + 1
                    mem[64] = _414 + _344 + _348 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 4
                    idx = idx + 1
                    s = _458
                    continue 
                mem[_414 + _344 + _348 + 33] = 0
                _459 = mem[64]
                mem[mem[64]] = _414 + _344 + _348 + -mem[64] + 1
                mem[64] = _414 + _344 + _348 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _459
                continue 
            _415 = mem[_249]
            s = 0
            while s < _415:
                mem[s + _344 + _348 + 33] = mem[s + _249 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_415) <= _415:
                _460 = mem[64]
                mem[mem[64]] = _415 + _344 + _348 + -mem[64] + 1
                mem[64] = _415 + _344 + _348 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _460
                continue 
            mem[_415 + _344 + _348 + 33] = 0
            _461 = mem[64]
            mem[mem[64]] = _415 + _344 + _348 + -mem[64] + 1
            mem[64] = _415 + _344 + _348 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _461
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
            _416 = mem[_249]
            s = 0
            while s < _416:
                mem[s + _345 + _349 + 33] = mem[s + _249 + 32]
                mem[0] = arg1
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_416) <= _416:
                _462 = mem[64]
                mem[mem[64]] = _416 + _345 + _349 + -mem[64] + 1
                mem[64] = _416 + _345 + _349 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 4
                idx = idx + 1
                s = _462
                continue 
            mem[_416 + _345 + _349 + 33] = 0
            _463 = mem[64]
            mem[mem[64]] = _416 + _345 + _349 + -mem[64] + 1
            mem[64] = _416 + _345 + _349 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _463
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
            _464 = mem[64]
            mem[mem[64]] = _417 + _345 + _349 + -mem[64] + 1
            mem[64] = _417 + _345 + _349 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 4
            idx = idx + 1
            s = _464
            continue 
        mem[_417 + _345 + _349 + 33] = 0
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
        mem[_185 + mem[64] + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_185) + 32]
}

function sub_56042f77(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = 0
    mem[132] = address(arg1)
    delegate 0x2fd81249bd4d070a2350b2525829dd273f22ec5c.0x732a2ccf with:
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
                _335 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _335 + 68] = mem[idx + _320 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_335 + 94] = 0
                revert with memory
                  from mem[64]
                   len _335 + -mem[64] + 100
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
                    mem[_786 + _397 + _400 + 33] = 0
                    _1379 = mem[64]
                    mem[mem[64]] = _786 + _397 + _400 + -mem[64] + 1
                    mem[64] = _786 + _397 + _400 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1379
                    continue 
                _787 = mem[_392]
                s = 0
                while s < _787:
                    mem[s + _397 + _400 + 33] = mem[s + _392 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_787) <= _787:
                    _1380 = mem[64]
                    mem[mem[64]] = _787 + _397 + _400 + -mem[64] + 1
                    mem[64] = _787 + _397 + _400 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1380
                    continue 
                mem[_787 + _397 + _400 + 33] = 0
                _1381 = mem[64]
                mem[mem[64]] = _787 + _397 + _400 + -mem[64] + 1
                mem[64] = _787 + _397 + _400 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _1381
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
                    _481 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_481] = 1
                    mem[_481 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _494 = mem[64]
                    _512 = mem[s]
                    t = 0
                    while t < _512:
                        mem[t + _494 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_494 + _512 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_512) <= _512:
                        _790 = mem[_481]
                        s = 0
                        while s < _790:
                            mem[s + _494 + _512 + 33] = mem[s + _481 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_790) <= _790:
                            _1386 = mem[64]
                            mem[mem[64]] = _790 + _494 + _512 + -mem[64] + 1
                            mem[64] = _790 + _494 + _512 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _1386
                            continue 
                        mem[_790 + _494 + _512 + 33] = 0
                        _1387 = mem[64]
                        mem[mem[64]] = _790 + _494 + _512 + -mem[64] + 1
                        mem[64] = _790 + _494 + _512 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1387
                        continue 
                    _791 = mem[_481]
                    s = 0
                    while s < _791:
                        mem[s + _494 + _512 + 33] = mem[s + _481 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_791) <= _791:
                        _1388 = mem[64]
                        mem[mem[64]] = _791 + _494 + _512 + -mem[64] + 1
                        mem[64] = _791 + _494 + _512 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1388
                        continue 
                    mem[_791 + _494 + _512 + 33] = 0
                    _1389 = mem[64]
                    mem[mem[64]] = _791 + _494 + _512 + -mem[64] + 1
                    mem[64] = _791 + _494 + _512 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1389
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
                        _1850 = mem[_781]
                        s = 0
                        while s < _1850:
                            mem[s + _1344 + _1364 + 33] = mem[s + _781 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1850) <= _1850:
                            _2358 = mem[64]
                            mem[mem[64]] = _1850 + _1344 + _1364 + -mem[64] + 1
                            mem[64] = _1850 + _1344 + _1364 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2358
                            continue 
                        mem[_1850 + _1344 + _1364 + 33] = 0
                        _2359 = mem[64]
                        mem[mem[64]] = _1850 + _1344 + _1364 + -mem[64] + 1
                        mem[64] = _1850 + _1344 + _1364 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2359
                        continue 
                    _1851 = mem[_781]
                    s = 0
                    while s < _1851:
                        mem[s + _1344 + _1364 + 33] = mem[s + _781 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1851) <= _1851:
                        _2360 = mem[64]
                        mem[mem[64]] = _1851 + _1344 + _1364 + -mem[64] + 1
                        mem[64] = _1851 + _1344 + _1364 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2360
                        continue 
                    mem[_1851 + _1344 + _1364 + 33] = 0
                    _2361 = mem[64]
                    mem[mem[64]] = _1851 + _1344 + _1364 + -mem[64] + 1
                    mem[64] = _1851 + _1344 + _1364 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2361
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
                    _1852 = mem[_781]
                    s = 0
                    while s < _1852:
                        mem[s + _1345 + _1365 + 33] = mem[s + _781 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1852) <= _1852:
                        _2362 = mem[64]
                        mem[mem[64]] = _1852 + _1345 + _1365 + -mem[64] + 1
                        mem[64] = _1852 + _1345 + _1365 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2362
                        continue 
                    mem[_1852 + _1345 + _1365 + 33] = 0
                    _2363 = mem[64]
                    mem[mem[64]] = _1852 + _1345 + _1365 + -mem[64] + 1
                    mem[64] = _1852 + _1345 + _1365 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2363
                    continue 
                _1853 = mem[_781]
                s = 0
                while s < _1853:
                    mem[s + _1345 + _1365 + 33] = mem[s + _781 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1853) <= _1853:
                    _2364 = mem[64]
                    mem[mem[64]] = _1853 + _1345 + _1365 + -mem[64] + 1
                    mem[64] = _1853 + _1345 + _1365 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2364
                    continue 
                mem[_1853 + _1345 + _1365 + 33] = 0
                _2365 = mem[64]
                mem[mem[64]] = _1853 + _1345 + _1365 + -mem[64] + 1
                mem[64] = _1853 + _1345 + _1365 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2365
                continue 
            if block.timestamp - stor4[address(arg1)][idx].field_512 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512:
                revert with 0, 17
            if not block.timestamp - stor4[address(arg1)][idx].field_512:
                revert with 0, 18
            if (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / block.timestamp - stor4[address(arg1)][idx].field_512 != sub_d754d433:
                revert with 0, 'SafeMath: multiplication overflow'
            _441 = mem[64]
            mem[64] = mem[64] + 64
            mem[_441] = 26
            mem[_441 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _459 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _459 + 68] = mem[idx + _441 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_459 + 94] = 0
                revert with memory
                  from mem[64]
                   len _459 + -mem[64] + 100
            if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
                _554 = mem[64]
                mem[64] = mem[64] + 64
                mem[_554] = 1
                mem[_554 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _569 = mem[64]
                _586 = mem[s]
                t = 0
                while t < _586:
                    mem[t + _569 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_569 + _586 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_586) <= _586:
                    _788 = mem[_554]
                    s = 0
                    while s < _788:
                        mem[s + _569 + _586 + 33] = mem[s + _554 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_788) <= _788:
                        _1382 = mem[64]
                        mem[mem[64]] = _788 + _569 + _586 + -mem[64] + 1
                        mem[64] = _788 + _569 + _586 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1382
                        continue 
                    mem[_788 + _569 + _586 + 33] = 0
                    _1383 = mem[64]
                    mem[mem[64]] = _788 + _569 + _586 + -mem[64] + 1
                    mem[64] = _788 + _569 + _586 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1383
                    continue 
                _789 = mem[_554]
                s = 0
                while s < _789:
                    mem[s + _569 + _586 + 33] = mem[s + _554 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_789) <= _789:
                    _1384 = mem[64]
                    mem[mem[64]] = _789 + _569 + _586 + -mem[64] + 1
                    mem[64] = _789 + _569 + _586 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1384
                    continue 
                mem[_789 + _569 + _586 + 33] = 0
                _1385 = mem[64]
                mem[mem[64]] = _789 + _569 + _586 + -mem[64] + 1
                mem[64] = _789 + _569 + _586 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _1385
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
                    mem[_1846 + _1342 + _1362 + 33] = 0
                    _2351 = mem[64]
                    mem[mem[64]] = _1846 + _1342 + _1362 + -mem[64] + 1
                    mem[64] = _1846 + _1342 + _1362 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2351
                    continue 
                _1847 = mem[_780]
                s = 0
                while s < _1847:
                    mem[s + _1342 + _1362 + 33] = mem[s + _780 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1847) <= _1847:
                    _2352 = mem[64]
                    mem[mem[64]] = _1847 + _1342 + _1362 + -mem[64] + 1
                    mem[64] = _1847 + _1342 + _1362 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2352
                    continue 
                mem[_1847 + _1342 + _1362 + 33] = 0
                _2353 = mem[64]
                mem[mem[64]] = _1847 + _1342 + _1362 + -mem[64] + 1
                mem[64] = _1847 + _1342 + _1362 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2353
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
                _1848 = mem[_780]
                s = 0
                while s < _1848:
                    mem[s + _1343 + _1363 + 33] = mem[s + _780 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1848) <= _1848:
                    _2354 = mem[64]
                    mem[mem[64]] = _1848 + _1343 + _1363 + -mem[64] + 1
                    mem[64] = _1848 + _1343 + _1363 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2354
                    continue 
                mem[_1848 + _1343 + _1363 + 33] = 0
                _2355 = mem[64]
                mem[mem[64]] = _1848 + _1343 + _1363 + -mem[64] + 1
                mem[64] = _1848 + _1343 + _1363 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2355
                continue 
            _1849 = mem[_780]
            s = 0
            while s < _1849:
                mem[s + _1343 + _1363 + 33] = mem[s + _780 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1849) <= _1849:
                _2356 = mem[64]
                mem[mem[64]] = _1849 + _1343 + _1363 + -mem[64] + 1
                mem[64] = _1849 + _1343 + _1363 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2356
                continue 
            mem[_1849 + _1343 + _1363 + 33] = 0
            _2357 = mem[64]
            mem[mem[64]] = _1849 + _1343 + _1363 + -mem[64] + 1
            mem[64] = _1849 + _1343 + _1363 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2357
            continue 
        mem[mem[64]] = 32
        _266 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_266)] = mem[s + 32 len ceil32(_266)]
        if ceil32(_266) > _266:
            mem[_266 + mem[64] + 64] = 0
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
                _273 = mem[64]
                mem[64] = mem[64] + 64
                mem[_273] = 30
                mem[_273 + 32] = 'SafeMath: subtraction overflow'
                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                    _285 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _285 + 68] = mem[idx + _273 + 32]
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
                    _343 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _343 + 68] = mem[idx + _324 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_343 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _343 + -mem[64] + 100
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
                        _802 = mem[_396]
                        s = 0
                        while s < _802:
                            mem[s + _399 + _406 + 33] = mem[s + _396 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_802) <= _802:
                            _1406 = mem[64]
                            mem[mem[64]] = _802 + _399 + _406 + -mem[64] + 1
                            mem[64] = _802 + _399 + _406 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _1406
                            continue 
                        mem[_802 + _399 + _406 + 33] = 0
                        _1407 = mem[64]
                        mem[mem[64]] = _802 + _399 + _406 + -mem[64] + 1
                        mem[64] = _802 + _399 + _406 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1407
                        continue 
                    _803 = mem[_396]
                    s = 0
                    while s < _803:
                        mem[s + _399 + _406 + 33] = mem[s + _396 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_803) <= _803:
                        _1408 = mem[64]
                        mem[mem[64]] = _803 + _399 + _406 + -mem[64] + 1
                        mem[64] = _803 + _399 + _406 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1408
                        continue 
                    mem[_803 + _399 + _406 + 33] = 0
                    _1409 = mem[64]
                    mem[mem[64]] = _803 + _399 + _406 + -mem[64] + 1
                    mem[64] = _803 + _399 + _406 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1409
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
                        _489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_489] = 1
                        mem[_489 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _510 = mem[64]
                        _524 = mem[s]
                        t = 0
                        while t < _524:
                            mem[t + _510 + 32] = mem[t + s + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            t = t + 32
                            continue 
                        mem[_510 + _524 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                        if ceil32(_524) <= _524:
                            _806 = mem[_489]
                            s = 0
                            while s < _806:
                                mem[s + _510 + _524 + 33] = mem[s + _489 + 32]
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_806) <= _806:
                                _1414 = mem[64]
                                mem[mem[64]] = _806 + _510 + _524 + -mem[64] + 1
                                mem[64] = _806 + _510 + _524 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                s = _1414
                                continue 
                            mem[_806 + _510 + _524 + 33] = 0
                            _1415 = mem[64]
                            mem[mem[64]] = _806 + _510 + _524 + -mem[64] + 1
                            mem[64] = _806 + _510 + _524 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _1415
                            continue 
                        _807 = mem[_489]
                        s = 0
                        while s < _807:
                            mem[s + _510 + _524 + 33] = mem[s + _489 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_807) <= _807:
                            _1416 = mem[64]
                            mem[mem[64]] = _807 + _510 + _524 + -mem[64] + 1
                            mem[64] = _807 + _510 + _524 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _1416
                            continue 
                        mem[_807 + _510 + _524 + 33] = 0
                        _1417 = mem[64]
                        mem[mem[64]] = _807 + _510 + _524 + -mem[64] + 1
                        mem[64] = _807 + _510 + _524 + 33
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
                            _1890 = mem[_785]
                            s = 0
                            while s < _1890:
                                mem[s + _1360 + _1376 + 33] = mem[s + _785 + 32]
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_1890) <= _1890:
                                _2438 = mem[64]
                                mem[mem[64]] = _1890 + _1360 + _1376 + -mem[64] + 1
                                mem[64] = _1890 + _1360 + _1376 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                s = _2438
                                continue 
                            mem[_1890 + _1360 + _1376 + 33] = 0
                            _2439 = mem[64]
                            mem[mem[64]] = _1890 + _1360 + _1376 + -mem[64] + 1
                            mem[64] = _1890 + _1360 + _1376 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2439
                            continue 
                        _1891 = mem[_785]
                        s = 0
                        while s < _1891:
                            mem[s + _1360 + _1376 + 33] = mem[s + _785 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1891) <= _1891:
                            _2440 = mem[64]
                            mem[mem[64]] = _1891 + _1360 + _1376 + -mem[64] + 1
                            mem[64] = _1891 + _1360 + _1376 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2440
                            continue 
                        mem[_1891 + _1360 + _1376 + 33] = 0
                        _2441 = mem[64]
                        mem[mem[64]] = _1891 + _1360 + _1376 + -mem[64] + 1
                        mem[64] = _1891 + _1360 + _1376 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2441
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
                        _1892 = mem[_785]
                        s = 0
                        while s < _1892:
                            mem[s + _1361 + _1377 + 33] = mem[s + _785 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1892) <= _1892:
                            _2442 = mem[64]
                            mem[mem[64]] = _1892 + _1361 + _1377 + -mem[64] + 1
                            mem[64] = _1892 + _1361 + _1377 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2442
                            continue 
                        mem[_1892 + _1361 + _1377 + 33] = 0
                        _2443 = mem[64]
                        mem[mem[64]] = _1892 + _1361 + _1377 + -mem[64] + 1
                        mem[64] = _1892 + _1361 + _1377 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2443
                        continue 
                    _1893 = mem[_785]
                    s = 0
                    while s < _1893:
                        mem[s + _1361 + _1377 + 33] = mem[s + _785 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1893) <= _1893:
                        _2444 = mem[64]
                        mem[mem[64]] = _1893 + _1361 + _1377 + -mem[64] + 1
                        mem[64] = _1893 + _1361 + _1377 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2444
                        continue 
                    mem[_1893 + _1361 + _1377 + 33] = 0
                    _2445 = mem[64]
                    mem[mem[64]] = _1893 + _1361 + _1377 + -mem[64] + 1
                    mem[64] = _1893 + _1361 + _1377 + 33
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
                    _469 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _469 + 68] = mem[idx + _449 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_469 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _469 + -mem[64] + 100
                if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
                    _568 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_568] = 1
                    mem[_568 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _583 = mem[64]
                    _600 = mem[s]
                    t = 0
                    while t < _600:
                        mem[t + _583 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_583 + _600 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_600) <= _600:
                        _804 = mem[_568]
                        s = 0
                        while s < _804:
                            mem[s + _583 + _600 + 33] = mem[s + _568 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_804) <= _804:
                            _1410 = mem[64]
                            mem[mem[64]] = _804 + _583 + _600 + -mem[64] + 1
                            mem[64] = _804 + _583 + _600 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _1410
                            continue 
                        mem[_804 + _583 + _600 + 33] = 0
                        _1411 = mem[64]
                        mem[mem[64]] = _804 + _583 + _600 + -mem[64] + 1
                        mem[64] = _804 + _583 + _600 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1411
                        continue 
                    _805 = mem[_568]
                    s = 0
                    while s < _805:
                        mem[s + _583 + _600 + 33] = mem[s + _568 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_805) <= _805:
                        _1412 = mem[64]
                        mem[mem[64]] = _805 + _583 + _600 + -mem[64] + 1
                        mem[64] = _805 + _583 + _600 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1412
                        continue 
                    mem[_805 + _583 + _600 + 33] = 0
                    _1413 = mem[64]
                    mem[mem[64]] = _805 + _583 + _600 + -mem[64] + 1
                    mem[64] = _805 + _583 + _600 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1413
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
                        _1886 = mem[_784]
                        s = 0
                        while s < _1886:
                            mem[s + _1358 + _1374 + 33] = mem[s + _784 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1886) <= _1886:
                            _2430 = mem[64]
                            mem[mem[64]] = _1886 + _1358 + _1374 + -mem[64] + 1
                            mem[64] = _1886 + _1358 + _1374 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2430
                            continue 
                        mem[_1886 + _1358 + _1374 + 33] = 0
                        _2431 = mem[64]
                        mem[mem[64]] = _1886 + _1358 + _1374 + -mem[64] + 1
                        mem[64] = _1886 + _1358 + _1374 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2431
                        continue 
                    _1887 = mem[_784]
                    s = 0
                    while s < _1887:
                        mem[s + _1358 + _1374 + 33] = mem[s + _784 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1887) <= _1887:
                        _2432 = mem[64]
                        mem[mem[64]] = _1887 + _1358 + _1374 + -mem[64] + 1
                        mem[64] = _1887 + _1358 + _1374 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2432
                        continue 
                    mem[_1887 + _1358 + _1374 + 33] = 0
                    _2433 = mem[64]
                    mem[mem[64]] = _1887 + _1358 + _1374 + -mem[64] + 1
                    mem[64] = _1887 + _1358 + _1374 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2433
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
                    _1888 = mem[_784]
                    s = 0
                    while s < _1888:
                        mem[s + _1359 + _1375 + 33] = mem[s + _784 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1888) <= _1888:
                        _2434 = mem[64]
                        mem[mem[64]] = _1888 + _1359 + _1375 + -mem[64] + 1
                        mem[64] = _1888 + _1359 + _1375 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2434
                        continue 
                    mem[_1888 + _1359 + _1375 + 33] = 0
                    _2435 = mem[64]
                    mem[mem[64]] = _1888 + _1359 + _1375 + -mem[64] + 1
                    mem[64] = _1888 + _1359 + _1375 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2435
                    continue 
                _1889 = mem[_784]
                s = 0
                while s < _1889:
                    mem[s + _1359 + _1375 + 33] = mem[s + _784 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1889) <= _1889:
                    _2436 = mem[64]
                    mem[mem[64]] = _1889 + _1359 + _1375 + -mem[64] + 1
                    mem[64] = _1889 + _1359 + _1375 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2436
                    continue 
                mem[_1889 + _1359 + _1375 + 33] = 0
                _2437 = mem[64]
                mem[mem[64]] = _1889 + _1359 + _1375 + -mem[64] + 1
                mem[64] = _1889 + _1359 + _1375 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2437
                continue 
            mem[mem[64]] = 32
            _268 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_268)] = mem[s + 32 len ceil32(_268)]
            if ceil32(_268) > _268:
                mem[_268 + mem[64] + 64] = 0
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
                _1404 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1404] = 30
                mem[_1404 + 32] = 'SafeMath: subtraction overflow'
                if stor4[address(arg1)][idx].field_512 > block.timestamp:
                    _1431 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1431 + 68] = mem[idx + _1404 + 32]
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
                _1504 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1504] = 26
                mem[_1504 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _1548 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1548 + 68] = mem[idx + _1504 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_1548 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1548 + -mem[64] + 100
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
                        _1874 = mem[_1596]
                        s = 0
                        while s < _1874:
                            mem[s + _1600 + _1606 + 33] = mem[s + _1596 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1874) <= _1874:
                            _2406 = mem[64]
                            mem[mem[64]] = _1874 + _1600 + _1606 + -mem[64] + 1
                            mem[64] = _1874 + _1600 + _1606 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2406
                            continue 
                        mem[_1874 + _1600 + _1606 + 33] = 0
                        _2407 = mem[64]
                        mem[mem[64]] = _1874 + _1600 + _1606 + -mem[64] + 1
                        mem[64] = _1874 + _1600 + _1606 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2407
                        continue 
                    _1875 = mem[_1596]
                    s = 0
                    while s < _1875:
                        mem[s + _1600 + _1606 + 33] = mem[s + _1596 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1875) <= _1875:
                        _2408 = mem[64]
                        mem[mem[64]] = _1875 + _1600 + _1606 + -mem[64] + 1
                        mem[64] = _1875 + _1600 + _1606 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2408
                        continue 
                    mem[_1875 + _1600 + _1606 + 33] = 0
                    _2409 = mem[64]
                    mem[mem[64]] = _1875 + _1600 + _1606 + -mem[64] + 1
                    mem[64] = _1875 + _1600 + _1606 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2409
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
                        _1672 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1672] = 1
                        mem[_1672 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _1688 = mem[64]
                        _1699 = mem[s]
                        t = 0
                        while t < _1699:
                            mem[t + _1688 + 32] = mem[t + s + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            t = t + 32
                            continue 
                        mem[_1688 + _1699 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                        if ceil32(_1699) <= _1699:
                            _1878 = mem[_1672]
                            s = 0
                            while s < _1878:
                                mem[s + _1688 + _1699 + 33] = mem[s + _1672 + 32]
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_1878) <= _1878:
                                _2414 = mem[64]
                                mem[mem[64]] = _1878 + _1688 + _1699 + -mem[64] + 1
                                mem[64] = _1878 + _1688 + _1699 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                s = _2414
                                continue 
                            mem[_1878 + _1688 + _1699 + 33] = 0
                            _2415 = mem[64]
                            mem[mem[64]] = _1878 + _1688 + _1699 + -mem[64] + 1
                            mem[64] = _1878 + _1688 + _1699 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2415
                            continue 
                        _1879 = mem[_1672]
                        s = 0
                        while s < _1879:
                            mem[s + _1688 + _1699 + 33] = mem[s + _1672 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1879) <= _1879:
                            _2416 = mem[64]
                            mem[mem[64]] = _1879 + _1688 + _1699 + -mem[64] + 1
                            mem[64] = _1879 + _1688 + _1699 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2416
                            continue 
                        mem[_1879 + _1688 + _1699 + 33] = 0
                        _2417 = mem[64]
                        mem[mem[64]] = _1879 + _1688 + _1699 + -mem[64] + 1
                        mem[64] = _1879 + _1688 + _1699 + 33
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
                            _2642 = mem[_1843]
                            s = 0
                            while s < _2642:
                                mem[s + _2328 + _2344 + 33] = mem[s + _1843 + 32]
                                mem[0] = address(arg1)
                                mem[32] = 4
                                s = s + 32
                                continue 
                            if ceil32(_2642) <= _2642:
                                _2822 = mem[64]
                                mem[mem[64]] = _2642 + _2328 + _2344 + -mem[64] + 1
                                mem[64] = _2642 + _2328 + _2344 + 33
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = address(arg1)
                                mem[32] = 4
                                idx = idx + 1
                                s = _2822
                                continue 
                            mem[_2642 + _2328 + _2344 + 33] = 0
                            _2823 = mem[64]
                            mem[mem[64]] = _2642 + _2328 + _2344 + -mem[64] + 1
                            mem[64] = _2642 + _2328 + _2344 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2823
                            continue 
                        _2643 = mem[_1843]
                        s = 0
                        while s < _2643:
                            mem[s + _2328 + _2344 + 33] = mem[s + _1843 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_2643) <= _2643:
                            _2824 = mem[64]
                            mem[mem[64]] = _2643 + _2328 + _2344 + -mem[64] + 1
                            mem[64] = _2643 + _2328 + _2344 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2824
                            continue 
                        mem[_2643 + _2328 + _2344 + 33] = 0
                        _2825 = mem[64]
                        mem[mem[64]] = _2643 + _2328 + _2344 + -mem[64] + 1
                        mem[64] = _2643 + _2328 + _2344 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2825
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
                        _2644 = mem[_1843]
                        s = 0
                        while s < _2644:
                            mem[s + _2329 + _2345 + 33] = mem[s + _1843 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_2644) <= _2644:
                            _2826 = mem[64]
                            mem[mem[64]] = _2644 + _2329 + _2345 + -mem[64] + 1
                            mem[64] = _2644 + _2329 + _2345 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2826
                            continue 
                        mem[_2644 + _2329 + _2345 + 33] = 0
                        _2827 = mem[64]
                        mem[mem[64]] = _2644 + _2329 + _2345 + -mem[64] + 1
                        mem[64] = _2644 + _2329 + _2345 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2827
                        continue 
                    _2645 = mem[_1843]
                    s = 0
                    while s < _2645:
                        mem[s + _2329 + _2345 + 33] = mem[s + _1843 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2645) <= _2645:
                        _2828 = mem[64]
                        mem[mem[64]] = _2645 + _2329 + _2345 + -mem[64] + 1
                        mem[64] = _2645 + _2329 + _2345 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2828
                        continue 
                    mem[_2645 + _2329 + _2345 + 33] = 0
                    _2829 = mem[64]
                    mem[mem[64]] = _2645 + _2329 + _2345 + -mem[64] + 1
                    mem[64] = _2645 + _2329 + _2345 + 33
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
                _1642 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1642] = 26
                mem[_1642 + 32] = 'SafeMath: division by zero'
                if not sub_0b433a12:
                    _1654 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1654 + 68] = mem[idx + _1642 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 32
                        continue 
                    mem[_1654 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1654 + -mem[64] + 100
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
                        _1876 = mem[_1716]
                        s = 0
                        while s < _1876:
                            mem[s + _1724 + _1732 + 33] = mem[s + _1716 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1876) <= _1876:
                            _2410 = mem[64]
                            mem[mem[64]] = _1876 + _1724 + _1732 + -mem[64] + 1
                            mem[64] = _1876 + _1724 + _1732 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2410
                            continue 
                        mem[_1876 + _1724 + _1732 + 33] = 0
                        _2411 = mem[64]
                        mem[mem[64]] = _1876 + _1724 + _1732 + -mem[64] + 1
                        mem[64] = _1876 + _1724 + _1732 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2411
                        continue 
                    _1877 = mem[_1716]
                    s = 0
                    while s < _1877:
                        mem[s + _1724 + _1732 + 33] = mem[s + _1716 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1877) <= _1877:
                        _2412 = mem[64]
                        mem[mem[64]] = _1877 + _1724 + _1732 + -mem[64] + 1
                        mem[64] = _1877 + _1724 + _1732 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2412
                        continue 
                    mem[_1877 + _1724 + _1732 + 33] = 0
                    _2413 = mem[64]
                    mem[mem[64]] = _1877 + _1724 + _1732 + -mem[64] + 1
                    mem[64] = _1877 + _1724 + _1732 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2413
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
                        _2638 = mem[_1842]
                        s = 0
                        while s < _2638:
                            mem[s + _2326 + _2342 + 33] = mem[s + _1842 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_2638) <= _2638:
                            _2814 = mem[64]
                            mem[mem[64]] = _2638 + _2326 + _2342 + -mem[64] + 1
                            mem[64] = _2638 + _2326 + _2342 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2814
                            continue 
                        mem[_2638 + _2326 + _2342 + 33] = 0
                        _2815 = mem[64]
                        mem[mem[64]] = _2638 + _2326 + _2342 + -mem[64] + 1
                        mem[64] = _2638 + _2326 + _2342 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2815
                        continue 
                    _2639 = mem[_1842]
                    s = 0
                    while s < _2639:
                        mem[s + _2326 + _2342 + 33] = mem[s + _1842 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2639) <= _2639:
                        _2816 = mem[64]
                        mem[mem[64]] = _2639 + _2326 + _2342 + -mem[64] + 1
                        mem[64] = _2639 + _2326 + _2342 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2816
                        continue 
                    mem[_2639 + _2326 + _2342 + 33] = 0
                    _2817 = mem[64]
                    mem[mem[64]] = _2639 + _2326 + _2342 + -mem[64] + 1
                    mem[64] = _2639 + _2326 + _2342 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2817
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
                    _2640 = mem[_1842]
                    s = 0
                    while s < _2640:
                        mem[s + _2327 + _2343 + 33] = mem[s + _1842 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2640) <= _2640:
                        _2818 = mem[64]
                        mem[mem[64]] = _2640 + _2327 + _2343 + -mem[64] + 1
                        mem[64] = _2640 + _2327 + _2343 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2818
                        continue 
                    mem[_2640 + _2327 + _2343 + 33] = 0
                    _2819 = mem[64]
                    mem[mem[64]] = _2640 + _2327 + _2343 + -mem[64] + 1
                    mem[64] = _2640 + _2327 + _2343 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2819
                    continue 
                _2641 = mem[_1842]
                s = 0
                while s < _2641:
                    mem[s + _2327 + _2343 + 33] = mem[s + _1842 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2641) <= _2641:
                    _2820 = mem[64]
                    mem[mem[64]] = _2641 + _2327 + _2343 + -mem[64] + 1
                    mem[64] = _2641 + _2327 + _2343 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2820
                    continue 
                mem[_2641 + _2327 + _2343 + 33] = 0
                _2821 = mem[64]
                mem[mem[64]] = _2641 + _2327 + _2343 + -mem[64] + 1
                mem[64] = _2641 + _2327 + _2343 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2821
                continue 
            mem[mem[64]] = 32
            _1372 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_1372)] = mem[s + 32 len ceil32(_1372)]
            if ceil32(_1372) > _1372:
                mem[_1372 + mem[64] + 64] = 0
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
            _1405 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1405] = 30
            mem[_1405 + 32] = 'SafeMath: subtraction overflow'
            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                _1433 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1433 + 68] = mem[idx + _1405 + 32]
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
            _1505 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1505] = 26
            mem[_1505 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _1549 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1549 + 68] = mem[idx + _1505 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_1549 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1549 + -mem[64] + 100
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
                    _1880 = mem[_1597]
                    s = 0
                    while s < _1880:
                        mem[s + _1601 + _1608 + 33] = mem[s + _1597 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1880) <= _1880:
                        _2418 = mem[64]
                        mem[mem[64]] = _1880 + _1601 + _1608 + -mem[64] + 1
                        mem[64] = _1880 + _1601 + _1608 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2418
                        continue 
                    mem[_1880 + _1601 + _1608 + 33] = 0
                    _2419 = mem[64]
                    mem[mem[64]] = _1880 + _1601 + _1608 + -mem[64] + 1
                    mem[64] = _1880 + _1601 + _1608 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2419
                    continue 
                _1881 = mem[_1597]
                s = 0
                while s < _1881:
                    mem[s + _1601 + _1608 + 33] = mem[s + _1597 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1881) <= _1881:
                    _2420 = mem[64]
                    mem[mem[64]] = _1881 + _1601 + _1608 + -mem[64] + 1
                    mem[64] = _1881 + _1601 + _1608 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2420
                    continue 
                mem[_1881 + _1601 + _1608 + 33] = 0
                _2421 = mem[64]
                mem[mem[64]] = _1881 + _1601 + _1608 + -mem[64] + 1
                mem[64] = _1881 + _1601 + _1608 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2421
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
                    _1673 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1673] = 1
                    mem[_1673 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _1693 = mem[64]
                    _1701 = mem[s]
                    t = 0
                    while t < _1701:
                        mem[t + _1693 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1693 + _1701 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1701) <= _1701:
                        _1884 = mem[_1673]
                        s = 0
                        while s < _1884:
                            mem[s + _1693 + _1701 + 33] = mem[s + _1673 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1884) <= _1884:
                            _2426 = mem[64]
                            mem[mem[64]] = _1884 + _1693 + _1701 + -mem[64] + 1
                            mem[64] = _1884 + _1693 + _1701 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2426
                            continue 
                        mem[_1884 + _1693 + _1701 + 33] = 0
                        _2427 = mem[64]
                        mem[mem[64]] = _1884 + _1693 + _1701 + -mem[64] + 1
                        mem[64] = _1884 + _1693 + _1701 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2427
                        continue 
                    _1885 = mem[_1673]
                    s = 0
                    while s < _1885:
                        mem[s + _1693 + _1701 + 33] = mem[s + _1673 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1885) <= _1885:
                        _2428 = mem[64]
                        mem[mem[64]] = _1885 + _1693 + _1701 + -mem[64] + 1
                        mem[64] = _1885 + _1693 + _1701 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2428
                        continue 
                    mem[_1885 + _1693 + _1701 + 33] = 0
                    _2429 = mem[64]
                    mem[mem[64]] = _1885 + _1693 + _1701 + -mem[64] + 1
                    mem[64] = _1885 + _1693 + _1701 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2429
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
                        _2650 = mem[_1845]
                        s = 0
                        while s < _2650:
                            mem[s + _2332 + _2348 + 33] = mem[s + _1845 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_2650) <= _2650:
                            _2838 = mem[64]
                            mem[mem[64]] = _2650 + _2332 + _2348 + -mem[64] + 1
                            mem[64] = _2650 + _2332 + _2348 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2838
                            continue 
                        mem[_2650 + _2332 + _2348 + 33] = 0
                        _2839 = mem[64]
                        mem[mem[64]] = _2650 + _2332 + _2348 + -mem[64] + 1
                        mem[64] = _2650 + _2332 + _2348 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2839
                        continue 
                    _2651 = mem[_1845]
                    s = 0
                    while s < _2651:
                        mem[s + _2332 + _2348 + 33] = mem[s + _1845 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2651) <= _2651:
                        _2840 = mem[64]
                        mem[mem[64]] = _2651 + _2332 + _2348 + -mem[64] + 1
                        mem[64] = _2651 + _2332 + _2348 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2840
                        continue 
                    mem[_2651 + _2332 + _2348 + 33] = 0
                    _2841 = mem[64]
                    mem[mem[64]] = _2651 + _2332 + _2348 + -mem[64] + 1
                    mem[64] = _2651 + _2332 + _2348 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2841
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
                    _2652 = mem[_1845]
                    s = 0
                    while s < _2652:
                        mem[s + _2333 + _2349 + 33] = mem[s + _1845 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2652) <= _2652:
                        _2842 = mem[64]
                        mem[mem[64]] = _2652 + _2333 + _2349 + -mem[64] + 1
                        mem[64] = _2652 + _2333 + _2349 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2842
                        continue 
                    mem[_2652 + _2333 + _2349 + 33] = 0
                    _2843 = mem[64]
                    mem[mem[64]] = _2652 + _2333 + _2349 + -mem[64] + 1
                    mem[64] = _2652 + _2333 + _2349 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2843
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
                    _2844 = mem[64]
                    mem[mem[64]] = _2653 + _2333 + _2349 + -mem[64] + 1
                    mem[64] = _2653 + _2333 + _2349 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2844
                    continue 
                mem[_2653 + _2333 + _2349 + 33] = 0
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
                _1657 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1657 + 68] = mem[idx + _1644 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_1657 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1657 + -mem[64] + 100
            if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
                _1717 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1717] = 1
                mem[_1717 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _1727 = mem[64]
                _1733 = mem[s]
                t = 0
                while t < _1733:
                    mem[t + _1727 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1727 + _1733 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1733) <= _1733:
                    _1882 = mem[_1717]
                    s = 0
                    while s < _1882:
                        mem[s + _1727 + _1733 + 33] = mem[s + _1717 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1882) <= _1882:
                        _2422 = mem[64]
                        mem[mem[64]] = _1882 + _1727 + _1733 + -mem[64] + 1
                        mem[64] = _1882 + _1727 + _1733 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2422
                        continue 
                    mem[_1882 + _1727 + _1733 + 33] = 0
                    _2423 = mem[64]
                    mem[mem[64]] = _1882 + _1727 + _1733 + -mem[64] + 1
                    mem[64] = _1882 + _1727 + _1733 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2423
                    continue 
                _1883 = mem[_1717]
                s = 0
                while s < _1883:
                    mem[s + _1727 + _1733 + 33] = mem[s + _1717 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1883) <= _1883:
                    _2424 = mem[64]
                    mem[mem[64]] = _1883 + _1727 + _1733 + -mem[64] + 1
                    mem[64] = _1883 + _1727 + _1733 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2424
                    continue 
                mem[_1883 + _1727 + _1733 + 33] = 0
                _2425 = mem[64]
                mem[mem[64]] = _1883 + _1727 + _1733 + -mem[64] + 1
                mem[64] = _1883 + _1727 + _1733 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2425
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
                    _2646 = mem[_1844]
                    s = 0
                    while s < _2646:
                        mem[s + _2330 + _2346 + 33] = mem[s + _1844 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2646) <= _2646:
                        _2830 = mem[64]
                        mem[mem[64]] = _2646 + _2330 + _2346 + -mem[64] + 1
                        mem[64] = _2646 + _2330 + _2346 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2830
                        continue 
                    mem[_2646 + _2330 + _2346 + 33] = 0
                    _2831 = mem[64]
                    mem[mem[64]] = _2646 + _2330 + _2346 + -mem[64] + 1
                    mem[64] = _2646 + _2330 + _2346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2831
                    continue 
                _2647 = mem[_1844]
                s = 0
                while s < _2647:
                    mem[s + _2330 + _2346 + 33] = mem[s + _1844 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2647) <= _2647:
                    _2832 = mem[64]
                    mem[mem[64]] = _2647 + _2330 + _2346 + -mem[64] + 1
                    mem[64] = _2647 + _2330 + _2346 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2832
                    continue 
                mem[_2647 + _2330 + _2346 + 33] = 0
                _2833 = mem[64]
                mem[mem[64]] = _2647 + _2330 + _2346 + -mem[64] + 1
                mem[64] = _2647 + _2330 + _2346 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2833
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
                _2648 = mem[_1844]
                s = 0
                while s < _2648:
                    mem[s + _2331 + _2347 + 33] = mem[s + _1844 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2648) <= _2648:
                    _2834 = mem[64]
                    mem[mem[64]] = _2648 + _2331 + _2347 + -mem[64] + 1
                    mem[64] = _2648 + _2331 + _2347 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2834
                    continue 
                mem[_2648 + _2331 + _2347 + 33] = 0
                _2835 = mem[64]
                mem[mem[64]] = _2648 + _2331 + _2347 + -mem[64] + 1
                mem[64] = _2648 + _2331 + _2347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2835
                continue 
            _2649 = mem[_1844]
            s = 0
            while s < _2649:
                mem[s + _2331 + _2347 + 33] = mem[s + _1844 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_2649) <= _2649:
                _2836 = mem[64]
                mem[mem[64]] = _2649 + _2331 + _2347 + -mem[64] + 1
                mem[64] = _2649 + _2331 + _2347 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2836
                continue 
            mem[_2649 + _2331 + _2347 + 33] = 0
            _2837 = mem[64]
            mem[mem[64]] = _2649 + _2331 + _2347 + -mem[64] + 1
            mem[64] = _2649 + _2331 + _2347 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2837
            continue 
        mem[mem[64]] = 32
        _1373 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_1373)] = mem[s + 32 len ceil32(_1373)]
        if ceil32(_1373) > _1373:
            mem[_1373 + mem[64] + 64] = 0
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
                _339 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _339 + 68] = mem[idx + _322 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_339 + 94] = 0
                revert with memory
                  from mem[64]
                   len _339 + -mem[64] + 100
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
                    _794 = mem[_394]
                    s = 0
                    while s < _794:
                        mem[s + _398 + _403 + 33] = mem[s + _394 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_794) <= _794:
                        _1392 = mem[64]
                        mem[mem[64]] = _794 + _398 + _403 + -mem[64] + 1
                        mem[64] = _794 + _398 + _403 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1392
                        continue 
                    mem[_794 + _398 + _403 + 33] = 0
                    _1393 = mem[64]
                    mem[mem[64]] = _794 + _398 + _403 + -mem[64] + 1
                    mem[64] = _794 + _398 + _403 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1393
                    continue 
                _795 = mem[_394]
                s = 0
                while s < _795:
                    mem[s + _398 + _403 + 33] = mem[s + _394 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_795) <= _795:
                    _1394 = mem[64]
                    mem[mem[64]] = _795 + _398 + _403 + -mem[64] + 1
                    mem[64] = _795 + _398 + _403 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1394
                    continue 
                mem[_795 + _398 + _403 + 33] = 0
                _1395 = mem[64]
                mem[mem[64]] = _795 + _398 + _403 + -mem[64] + 1
                mem[64] = _795 + _398 + _403 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _1395
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
                    _485 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_485] = 1
                    mem[_485 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _502 = mem[64]
                    _518 = mem[s]
                    t = 0
                    while t < _518:
                        mem[t + _502 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_502 + _518 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_518) <= _518:
                        _798 = mem[_485]
                        s = 0
                        while s < _798:
                            mem[s + _502 + _518 + 33] = mem[s + _485 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_798) <= _798:
                            _1400 = mem[64]
                            mem[mem[64]] = _798 + _502 + _518 + -mem[64] + 1
                            mem[64] = _798 + _502 + _518 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _1400
                            continue 
                        mem[_798 + _502 + _518 + 33] = 0
                        _1401 = mem[64]
                        mem[mem[64]] = _798 + _502 + _518 + -mem[64] + 1
                        mem[64] = _798 + _502 + _518 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1401
                        continue 
                    _799 = mem[_485]
                    s = 0
                    while s < _799:
                        mem[s + _502 + _518 + 33] = mem[s + _485 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_799) <= _799:
                        _1402 = mem[64]
                        mem[mem[64]] = _799 + _502 + _518 + -mem[64] + 1
                        mem[64] = _799 + _502 + _518 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1402
                        continue 
                    mem[_799 + _502 + _518 + 33] = 0
                    _1403 = mem[64]
                    mem[mem[64]] = _799 + _502 + _518 + -mem[64] + 1
                    mem[64] = _799 + _502 + _518 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1403
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
                        _1870 = mem[_783]
                        s = 0
                        while s < _1870:
                            mem[s + _1352 + _1370 + 33] = mem[s + _783 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1870) <= _1870:
                            _2398 = mem[64]
                            mem[mem[64]] = _1870 + _1352 + _1370 + -mem[64] + 1
                            mem[64] = _1870 + _1352 + _1370 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2398
                            continue 
                        mem[_1870 + _1352 + _1370 + 33] = 0
                        _2399 = mem[64]
                        mem[mem[64]] = _1870 + _1352 + _1370 + -mem[64] + 1
                        mem[64] = _1870 + _1352 + _1370 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2399
                        continue 
                    _1871 = mem[_783]
                    s = 0
                    while s < _1871:
                        mem[s + _1352 + _1370 + 33] = mem[s + _783 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1871) <= _1871:
                        _2400 = mem[64]
                        mem[mem[64]] = _1871 + _1352 + _1370 + -mem[64] + 1
                        mem[64] = _1871 + _1352 + _1370 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2400
                        continue 
                    mem[_1871 + _1352 + _1370 + 33] = 0
                    _2401 = mem[64]
                    mem[mem[64]] = _1871 + _1352 + _1370 + -mem[64] + 1
                    mem[64] = _1871 + _1352 + _1370 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2401
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
                    _1872 = mem[_783]
                    s = 0
                    while s < _1872:
                        mem[s + _1353 + _1371 + 33] = mem[s + _783 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1872) <= _1872:
                        _2402 = mem[64]
                        mem[mem[64]] = _1872 + _1353 + _1371 + -mem[64] + 1
                        mem[64] = _1872 + _1353 + _1371 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2402
                        continue 
                    mem[_1872 + _1353 + _1371 + 33] = 0
                    _2403 = mem[64]
                    mem[mem[64]] = _1872 + _1353 + _1371 + -mem[64] + 1
                    mem[64] = _1872 + _1353 + _1371 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2403
                    continue 
                _1873 = mem[_783]
                s = 0
                while s < _1873:
                    mem[s + _1353 + _1371 + 33] = mem[s + _783 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1873) <= _1873:
                    _2404 = mem[64]
                    mem[mem[64]] = _1873 + _1353 + _1371 + -mem[64] + 1
                    mem[64] = _1873 + _1353 + _1371 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2404
                    continue 
                mem[_1873 + _1353 + _1371 + 33] = 0
                _2405 = mem[64]
                mem[mem[64]] = _1873 + _1353 + _1371 + -mem[64] + 1
                mem[64] = _1873 + _1353 + _1371 + 33
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
            _445 = mem[64]
            mem[64] = mem[64] + 64
            mem[_445] = 26
            mem[_445 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _464 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _464 + 68] = mem[idx + _445 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_464 + 94] = 0
                revert with memory
                  from mem[64]
                   len _464 + -mem[64] + 100
            if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
                _561 = mem[64]
                mem[64] = mem[64] + 64
                mem[_561] = 1
                mem[_561 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _576 = mem[64]
                _593 = mem[s]
                t = 0
                while t < _593:
                    mem[t + _576 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_576 + _593 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_593) <= _593:
                    _796 = mem[_561]
                    s = 0
                    while s < _796:
                        mem[s + _576 + _593 + 33] = mem[s + _561 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_796) <= _796:
                        _1396 = mem[64]
                        mem[mem[64]] = _796 + _576 + _593 + -mem[64] + 1
                        mem[64] = _796 + _576 + _593 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _1396
                        continue 
                    mem[_796 + _576 + _593 + 33] = 0
                    _1397 = mem[64]
                    mem[mem[64]] = _796 + _576 + _593 + -mem[64] + 1
                    mem[64] = _796 + _576 + _593 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1397
                    continue 
                _797 = mem[_561]
                s = 0
                while s < _797:
                    mem[s + _576 + _593 + 33] = mem[s + _561 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_797) <= _797:
                    _1398 = mem[64]
                    mem[mem[64]] = _797 + _576 + _593 + -mem[64] + 1
                    mem[64] = _797 + _576 + _593 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _1398
                    continue 
                mem[_797 + _576 + _593 + 33] = 0
                _1399 = mem[64]
                mem[mem[64]] = _797 + _576 + _593 + -mem[64] + 1
                mem[64] = _797 + _576 + _593 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _1399
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
                    _1866 = mem[_782]
                    s = 0
                    while s < _1866:
                        mem[s + _1350 + _1368 + 33] = mem[s + _782 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1866) <= _1866:
                        _2390 = mem[64]
                        mem[mem[64]] = _1866 + _1350 + _1368 + -mem[64] + 1
                        mem[64] = _1866 + _1350 + _1368 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2390
                        continue 
                    mem[_1866 + _1350 + _1368 + 33] = 0
                    _2391 = mem[64]
                    mem[mem[64]] = _1866 + _1350 + _1368 + -mem[64] + 1
                    mem[64] = _1866 + _1350 + _1368 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2391
                    continue 
                _1867 = mem[_782]
                s = 0
                while s < _1867:
                    mem[s + _1350 + _1368 + 33] = mem[s + _782 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1867) <= _1867:
                    _2392 = mem[64]
                    mem[mem[64]] = _1867 + _1350 + _1368 + -mem[64] + 1
                    mem[64] = _1867 + _1350 + _1368 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2392
                    continue 
                mem[_1867 + _1350 + _1368 + 33] = 0
                _2393 = mem[64]
                mem[mem[64]] = _1867 + _1350 + _1368 + -mem[64] + 1
                mem[64] = _1867 + _1350 + _1368 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2393
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
                _1868 = mem[_782]
                s = 0
                while s < _1868:
                    mem[s + _1351 + _1369 + 33] = mem[s + _782 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1868) <= _1868:
                    _2394 = mem[64]
                    mem[mem[64]] = _1868 + _1351 + _1369 + -mem[64] + 1
                    mem[64] = _1868 + _1351 + _1369 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2394
                    continue 
                mem[_1868 + _1351 + _1369 + 33] = 0
                _2395 = mem[64]
                mem[mem[64]] = _1868 + _1351 + _1369 + -mem[64] + 1
                mem[64] = _1868 + _1351 + _1369 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2395
                continue 
            _1869 = mem[_782]
            s = 0
            while s < _1869:
                mem[s + _1351 + _1369 + 33] = mem[s + _782 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1869) <= _1869:
                _2396 = mem[64]
                mem[mem[64]] = _1869 + _1351 + _1369 + -mem[64] + 1
                mem[64] = _1869 + _1351 + _1369 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2396
                continue 
            mem[_1869 + _1351 + _1369 + 33] = 0
            _2397 = mem[64]
            mem[mem[64]] = _1869 + _1351 + _1369 + -mem[64] + 1
            mem[64] = _1869 + _1351 + _1369 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2397
            continue 
        _261 = mem[64]
        mem[mem[64]] = 32
        _267 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_267)] = mem[s + 32 len ceil32(_267)]
        if ceil32(_267) <= _267:
            return 32, mem[mem[64] + 32 len ceil32(_267) + 32]
        mem[_267 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_267) + _261 + -mem[64] + 64
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
            _1390 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1390] = 30
            mem[_1390 + 32] = 'SafeMath: subtraction overflow'
            if stor4[address(arg1)][idx].field_512 > block.timestamp:
                _1423 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1423 + 68] = mem[idx + _1390 + 32]
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
            _1502 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1502] = 26
            mem[_1502 + 32] = 'SafeMath: division by zero'
            if not sub_0b433a12:
                _1530 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1530 + 68] = mem[idx + _1502 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_1530 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1530 + -mem[64] + 100
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
                    _1854 = mem[_1594]
                    s = 0
                    while s < _1854:
                        mem[s + _1598 + _1602 + 33] = mem[s + _1594 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1854) <= _1854:
                        _2366 = mem[64]
                        mem[mem[64]] = _1854 + _1598 + _1602 + -mem[64] + 1
                        mem[64] = _1854 + _1598 + _1602 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2366
                        continue 
                    mem[_1854 + _1598 + _1602 + 33] = 0
                    _2367 = mem[64]
                    mem[mem[64]] = _1854 + _1598 + _1602 + -mem[64] + 1
                    mem[64] = _1854 + _1598 + _1602 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2367
                    continue 
                _1855 = mem[_1594]
                s = 0
                while s < _1855:
                    mem[s + _1598 + _1602 + 33] = mem[s + _1594 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1855) <= _1855:
                    _2368 = mem[64]
                    mem[mem[64]] = _1855 + _1598 + _1602 + -mem[64] + 1
                    mem[64] = _1855 + _1598 + _1602 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2368
                    continue 
                mem[_1855 + _1598 + _1602 + 33] = 0
                _2369 = mem[64]
                mem[mem[64]] = _1855 + _1598 + _1602 + -mem[64] + 1
                mem[64] = _1855 + _1598 + _1602 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2369
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
                    _1670 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1670] = 1
                    mem[_1670 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _1678 = mem[64]
                    _1695 = mem[s]
                    t = 0
                    while t < _1695:
                        mem[t + _1678 + 32] = mem[t + s + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        t = t + 32
                        continue 
                    mem[_1678 + _1695 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                    if ceil32(_1695) <= _1695:
                        _1858 = mem[_1670]
                        s = 0
                        while s < _1858:
                            mem[s + _1678 + _1695 + 33] = mem[s + _1670 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_1858) <= _1858:
                            _2374 = mem[64]
                            mem[mem[64]] = _1858 + _1678 + _1695 + -mem[64] + 1
                            mem[64] = _1858 + _1678 + _1695 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2374
                            continue 
                        mem[_1858 + _1678 + _1695 + 33] = 0
                        _2375 = mem[64]
                        mem[mem[64]] = _1858 + _1678 + _1695 + -mem[64] + 1
                        mem[64] = _1858 + _1678 + _1695 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2375
                        continue 
                    _1859 = mem[_1670]
                    s = 0
                    while s < _1859:
                        mem[s + _1678 + _1695 + 33] = mem[s + _1670 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1859) <= _1859:
                        _2376 = mem[64]
                        mem[mem[64]] = _1859 + _1678 + _1695 + -mem[64] + 1
                        mem[64] = _1859 + _1678 + _1695 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2376
                        continue 
                    mem[_1859 + _1678 + _1695 + 33] = 0
                    _2377 = mem[64]
                    mem[mem[64]] = _1859 + _1678 + _1695 + -mem[64] + 1
                    mem[64] = _1859 + _1678 + _1695 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2377
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
                        _2626 = mem[_1839]
                        s = 0
                        while s < _2626:
                            mem[s + _2320 + _2336 + 33] = mem[s + _1839 + 32]
                            mem[0] = address(arg1)
                            mem[32] = 4
                            s = s + 32
                            continue 
                        if ceil32(_2626) <= _2626:
                            _2790 = mem[64]
                            mem[mem[64]] = _2626 + _2320 + _2336 + -mem[64] + 1
                            mem[64] = _2626 + _2320 + _2336 + 33
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(arg1)
                            mem[32] = 4
                            idx = idx + 1
                            s = _2790
                            continue 
                        mem[_2626 + _2320 + _2336 + 33] = 0
                        _2791 = mem[64]
                        mem[mem[64]] = _2626 + _2320 + _2336 + -mem[64] + 1
                        mem[64] = _2626 + _2320 + _2336 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2791
                        continue 
                    _2627 = mem[_1839]
                    s = 0
                    while s < _2627:
                        mem[s + _2320 + _2336 + 33] = mem[s + _1839 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2627) <= _2627:
                        _2792 = mem[64]
                        mem[mem[64]] = _2627 + _2320 + _2336 + -mem[64] + 1
                        mem[64] = _2627 + _2320 + _2336 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2792
                        continue 
                    mem[_2627 + _2320 + _2336 + 33] = 0
                    _2793 = mem[64]
                    mem[mem[64]] = _2627 + _2320 + _2336 + -mem[64] + 1
                    mem[64] = _2627 + _2320 + _2336 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2793
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
                    _2628 = mem[_1839]
                    s = 0
                    while s < _2628:
                        mem[s + _2321 + _2337 + 33] = mem[s + _1839 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2628) <= _2628:
                        _2794 = mem[64]
                        mem[mem[64]] = _2628 + _2321 + _2337 + -mem[64] + 1
                        mem[64] = _2628 + _2321 + _2337 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2794
                        continue 
                    mem[_2628 + _2321 + _2337 + 33] = 0
                    _2795 = mem[64]
                    mem[mem[64]] = _2628 + _2321 + _2337 + -mem[64] + 1
                    mem[64] = _2628 + _2321 + _2337 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2795
                    continue 
                _2629 = mem[_1839]
                s = 0
                while s < _2629:
                    mem[s + _2321 + _2337 + 33] = mem[s + _1839 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2629) <= _2629:
                    _2796 = mem[64]
                    mem[mem[64]] = _2629 + _2321 + _2337 + -mem[64] + 1
                    mem[64] = _2629 + _2321 + _2337 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2796
                    continue 
                mem[_2629 + _2321 + _2337 + 33] = 0
                _2797 = mem[64]
                mem[mem[64]] = _2629 + _2321 + _2337 + -mem[64] + 1
                mem[64] = _2629 + _2321 + _2337 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2797
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
                _1648 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1648 + 68] = mem[idx + _1638 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 32
                    continue 
                mem[_1648 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1648 + -mem[64] + 100
            if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
                _1714 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1714] = 1
                mem[_1714 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _1718 = mem[64]
                _1730 = mem[s]
                t = 0
                while t < _1730:
                    mem[t + _1718 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1718 + _1730 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1730) <= _1730:
                    _1856 = mem[_1714]
                    s = 0
                    while s < _1856:
                        mem[s + _1718 + _1730 + 33] = mem[s + _1714 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1856) <= _1856:
                        _2370 = mem[64]
                        mem[mem[64]] = _1856 + _1718 + _1730 + -mem[64] + 1
                        mem[64] = _1856 + _1718 + _1730 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2370
                        continue 
                    mem[_1856 + _1718 + _1730 + 33] = 0
                    _2371 = mem[64]
                    mem[mem[64]] = _1856 + _1718 + _1730 + -mem[64] + 1
                    mem[64] = _1856 + _1718 + _1730 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2371
                    continue 
                _1857 = mem[_1714]
                s = 0
                while s < _1857:
                    mem[s + _1718 + _1730 + 33] = mem[s + _1714 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1857) <= _1857:
                    _2372 = mem[64]
                    mem[mem[64]] = _1857 + _1718 + _1730 + -mem[64] + 1
                    mem[64] = _1857 + _1718 + _1730 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2372
                    continue 
                mem[_1857 + _1718 + _1730 + 33] = 0
                _2373 = mem[64]
                mem[mem[64]] = _1857 + _1718 + _1730 + -mem[64] + 1
                mem[64] = _1857 + _1718 + _1730 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2373
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
                    mem[_2622 + _2318 + _2334 + 33] = 0
                    _2783 = mem[64]
                    mem[mem[64]] = _2622 + _2318 + _2334 + -mem[64] + 1
                    mem[64] = _2622 + _2318 + _2334 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2783
                    continue 
                _2623 = mem[_1838]
                s = 0
                while s < _2623:
                    mem[s + _2318 + _2334 + 33] = mem[s + _1838 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2623) <= _2623:
                    _2784 = mem[64]
                    mem[mem[64]] = _2623 + _2318 + _2334 + -mem[64] + 1
                    mem[64] = _2623 + _2318 + _2334 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2784
                    continue 
                mem[_2623 + _2318 + _2334 + 33] = 0
                _2785 = mem[64]
                mem[mem[64]] = _2623 + _2318 + _2334 + -mem[64] + 1
                mem[64] = _2623 + _2318 + _2334 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2785
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
                _2624 = mem[_1838]
                s = 0
                while s < _2624:
                    mem[s + _2319 + _2335 + 33] = mem[s + _1838 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2624) <= _2624:
                    _2786 = mem[64]
                    mem[mem[64]] = _2624 + _2319 + _2335 + -mem[64] + 1
                    mem[64] = _2624 + _2319 + _2335 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2786
                    continue 
                mem[_2624 + _2319 + _2335 + 33] = 0
                _2787 = mem[64]
                mem[mem[64]] = _2624 + _2319 + _2335 + -mem[64] + 1
                mem[64] = _2624 + _2319 + _2335 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2787
                continue 
            _2625 = mem[_1838]
            s = 0
            while s < _2625:
                mem[s + _2319 + _2335 + 33] = mem[s + _1838 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_2625) <= _2625:
                _2788 = mem[64]
                mem[mem[64]] = _2625 + _2319 + _2335 + -mem[64] + 1
                mem[64] = _2625 + _2319 + _2335 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2788
                continue 
            mem[_2625 + _2319 + _2335 + 33] = 0
            _2789 = mem[64]
            mem[mem[64]] = _2625 + _2319 + _2335 + -mem[64] + 1
            mem[64] = _2625 + _2319 + _2335 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2789
            continue 
        mem[mem[64]] = 32
        _1366 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_1366)] = mem[s + 32 len ceil32(_1366)]
        if ceil32(_1366) > _1366:
            mem[_1366 + mem[64] + 64] = 0
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
        _1391 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1391] = 30
        mem[_1391 + 32] = 'SafeMath: subtraction overflow'
        if stor4[address(arg1)][idx].field_512 > block.timestamp:
            _1425 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1425 + 68] = mem[idx + _1391 + 32]
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
        _1503 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1503] = 26
        mem[_1503 + 32] = 'SafeMath: division by zero'
        if not sub_0b433a12:
            _1531 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1531 + 68] = mem[idx + _1503 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_1531 + 94] = 0
            revert with memory
              from mem[64]
               len _1531 + -mem[64] + 100
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
                _1860 = mem[_1595]
                s = 0
                while s < _1860:
                    mem[s + _1599 + _1604 + 33] = mem[s + _1595 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1860) <= _1860:
                    _2378 = mem[64]
                    mem[mem[64]] = _1860 + _1599 + _1604 + -mem[64] + 1
                    mem[64] = _1860 + _1599 + _1604 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2378
                    continue 
                mem[_1860 + _1599 + _1604 + 33] = 0
                _2379 = mem[64]
                mem[mem[64]] = _1860 + _1599 + _1604 + -mem[64] + 1
                mem[64] = _1860 + _1599 + _1604 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2379
                continue 
            _1861 = mem[_1595]
            s = 0
            while s < _1861:
                mem[s + _1599 + _1604 + 33] = mem[s + _1595 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1861) <= _1861:
                _2380 = mem[64]
                mem[mem[64]] = _1861 + _1599 + _1604 + -mem[64] + 1
                mem[64] = _1861 + _1599 + _1604 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2380
                continue 
            mem[_1861 + _1599 + _1604 + 33] = 0
            _2381 = mem[64]
            mem[mem[64]] = _1861 + _1599 + _1604 + -mem[64] + 1
            mem[64] = _1861 + _1599 + _1604 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2381
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
                _1671 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1671] = 1
                mem[_1671 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _1683 = mem[64]
                _1697 = mem[s]
                t = 0
                while t < _1697:
                    mem[t + _1683 + 32] = mem[t + s + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    t = t + 32
                    continue 
                mem[_1683 + _1697 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
                if ceil32(_1697) <= _1697:
                    _1864 = mem[_1671]
                    s = 0
                    while s < _1864:
                        mem[s + _1683 + _1697 + 33] = mem[s + _1671 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_1864) <= _1864:
                        _2386 = mem[64]
                        mem[mem[64]] = _1864 + _1683 + _1697 + -mem[64] + 1
                        mem[64] = _1864 + _1683 + _1697 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2386
                        continue 
                    mem[_1864 + _1683 + _1697 + 33] = 0
                    _2387 = mem[64]
                    mem[mem[64]] = _1864 + _1683 + _1697 + -mem[64] + 1
                    mem[64] = _1864 + _1683 + _1697 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2387
                    continue 
                _1865 = mem[_1671]
                s = 0
                while s < _1865:
                    mem[s + _1683 + _1697 + 33] = mem[s + _1671 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1865) <= _1865:
                    _2388 = mem[64]
                    mem[mem[64]] = _1865 + _1683 + _1697 + -mem[64] + 1
                    mem[64] = _1865 + _1683 + _1697 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2388
                    continue 
                mem[_1865 + _1683 + _1697 + 33] = 0
                _2389 = mem[64]
                mem[mem[64]] = _1865 + _1683 + _1697 + -mem[64] + 1
                mem[64] = _1865 + _1683 + _1697 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2389
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
                    _2634 = mem[_1841]
                    s = 0
                    while s < _2634:
                        mem[s + _2324 + _2340 + 33] = mem[s + _1841 + 32]
                        mem[0] = address(arg1)
                        mem[32] = 4
                        s = s + 32
                        continue 
                    if ceil32(_2634) <= _2634:
                        _2806 = mem[64]
                        mem[mem[64]] = _2634 + _2324 + _2340 + -mem[64] + 1
                        mem[64] = _2634 + _2324 + _2340 + 33
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = address(arg1)
                        mem[32] = 4
                        idx = idx + 1
                        s = _2806
                        continue 
                    mem[_2634 + _2324 + _2340 + 33] = 0
                    _2807 = mem[64]
                    mem[mem[64]] = _2634 + _2324 + _2340 + -mem[64] + 1
                    mem[64] = _2634 + _2324 + _2340 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2807
                    continue 
                _2635 = mem[_1841]
                s = 0
                while s < _2635:
                    mem[s + _2324 + _2340 + 33] = mem[s + _1841 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2635) <= _2635:
                    _2808 = mem[64]
                    mem[mem[64]] = _2635 + _2324 + _2340 + -mem[64] + 1
                    mem[64] = _2635 + _2324 + _2340 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2808
                    continue 
                mem[_2635 + _2324 + _2340 + 33] = 0
                _2809 = mem[64]
                mem[mem[64]] = _2635 + _2324 + _2340 + -mem[64] + 1
                mem[64] = _2635 + _2324 + _2340 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2809
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
                _2636 = mem[_1841]
                s = 0
                while s < _2636:
                    mem[s + _2325 + _2341 + 33] = mem[s + _1841 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2636) <= _2636:
                    _2810 = mem[64]
                    mem[mem[64]] = _2636 + _2325 + _2341 + -mem[64] + 1
                    mem[64] = _2636 + _2325 + _2341 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2810
                    continue 
                mem[_2636 + _2325 + _2341 + 33] = 0
                _2811 = mem[64]
                mem[mem[64]] = _2636 + _2325 + _2341 + -mem[64] + 1
                mem[64] = _2636 + _2325 + _2341 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2811
                continue 
            _2637 = mem[_1841]
            s = 0
            while s < _2637:
                mem[s + _2325 + _2341 + 33] = mem[s + _1841 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_2637) <= _2637:
                _2812 = mem[64]
                mem[mem[64]] = _2637 + _2325 + _2341 + -mem[64] + 1
                mem[64] = _2637 + _2325 + _2341 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2812
                continue 
            mem[_2637 + _2325 + _2341 + 33] = 0
            _2813 = mem[64]
            mem[mem[64]] = _2637 + _2325 + _2341 + -mem[64] + 1
            mem[64] = _2637 + _2325 + _2341 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2813
            continue 
        if block.timestamp - stor4[address(arg1)][idx].field_512 and sub_d754d433 > -1 / block.timestamp - stor4[address(arg1)][idx].field_512:
            revert with 0, 17
        if not block.timestamp - stor4[address(arg1)][idx].field_512:
            revert with 0, 18
        if (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / block.timestamp - stor4[address(arg1)][idx].field_512 != sub_d754d433:
            revert with 0, 'SafeMath: multiplication overflow'
        _1640 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1640] = 26
        mem[_1640 + 32] = 'SafeMath: division by zero'
        if not sub_0b433a12:
            _1651 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1651 + 68] = mem[idx + _1640 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_1651 + 94] = 0
            revert with memory
              from mem[64]
               len _1651 + -mem[64] + 100
        if not (block.timestamp * sub_d754d433) - (stor4[address(arg1)][idx].field_512 * sub_d754d433) / sub_0b433a12:
            _1715 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1715] = 1
            mem[_1715 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _1721 = mem[64]
            _1731 = mem[s]
            t = 0
            while t < _1731:
                mem[t + _1721 + 32] = mem[t + s + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                t = t + 32
                continue 
            mem[_1721 + _1731 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
            if ceil32(_1731) <= _1731:
                _1862 = mem[_1715]
                s = 0
                while s < _1862:
                    mem[s + _1721 + _1731 + 33] = mem[s + _1715 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_1862) <= _1862:
                    _2382 = mem[64]
                    mem[mem[64]] = _1862 + _1721 + _1731 + -mem[64] + 1
                    mem[64] = _1862 + _1721 + _1731 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2382
                    continue 
                mem[_1862 + _1721 + _1731 + 33] = 0
                _2383 = mem[64]
                mem[mem[64]] = _1862 + _1721 + _1731 + -mem[64] + 1
                mem[64] = _1862 + _1721 + _1731 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2383
                continue 
            _1863 = mem[_1715]
            s = 0
            while s < _1863:
                mem[s + _1721 + _1731 + 33] = mem[s + _1715 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_1863) <= _1863:
                _2384 = mem[64]
                mem[mem[64]] = _1863 + _1721 + _1731 + -mem[64] + 1
                mem[64] = _1863 + _1721 + _1731 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2384
                continue 
            mem[_1863 + _1721 + _1731 + 33] = 0
            _2385 = mem[64]
            mem[mem[64]] = _1863 + _1721 + _1731 + -mem[64] + 1
            mem[64] = _1863 + _1721 + _1731 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2385
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
                _2630 = mem[_1840]
                s = 0
                while s < _2630:
                    mem[s + _2322 + _2338 + 33] = mem[s + _1840 + 32]
                    mem[0] = address(arg1)
                    mem[32] = 4
                    s = s + 32
                    continue 
                if ceil32(_2630) <= _2630:
                    _2798 = mem[64]
                    mem[mem[64]] = _2630 + _2322 + _2338 + -mem[64] + 1
                    mem[64] = _2630 + _2322 + _2338 + 33
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 4
                    idx = idx + 1
                    s = _2798
                    continue 
                mem[_2630 + _2322 + _2338 + 33] = 0
                _2799 = mem[64]
                mem[mem[64]] = _2630 + _2322 + _2338 + -mem[64] + 1
                mem[64] = _2630 + _2322 + _2338 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2799
                continue 
            _2631 = mem[_1840]
            s = 0
            while s < _2631:
                mem[s + _2322 + _2338 + 33] = mem[s + _1840 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_2631) <= _2631:
                _2800 = mem[64]
                mem[mem[64]] = _2631 + _2322 + _2338 + -mem[64] + 1
                mem[64] = _2631 + _2322 + _2338 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2800
                continue 
            mem[_2631 + _2322 + _2338 + 33] = 0
            _2801 = mem[64]
            mem[mem[64]] = _2631 + _2322 + _2338 + -mem[64] + 1
            mem[64] = _2631 + _2322 + _2338 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2801
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
            _2632 = mem[_1840]
            s = 0
            while s < _2632:
                mem[s + _2323 + _2339 + 33] = mem[s + _1840 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                s = s + 32
                continue 
            if ceil32(_2632) <= _2632:
                _2802 = mem[64]
                mem[mem[64]] = _2632 + _2323 + _2339 + -mem[64] + 1
                mem[64] = _2632 + _2323 + _2339 + 33
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = _2802
                continue 
            mem[_2632 + _2323 + _2339 + 33] = 0
            _2803 = mem[64]
            mem[mem[64]] = _2632 + _2323 + _2339 + -mem[64] + 1
            mem[64] = _2632 + _2323 + _2339 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2803
            continue 
        _2633 = mem[_1840]
        s = 0
        while s < _2633:
            mem[s + _2323 + _2339 + 33] = mem[s + _1840 + 32]
            mem[0] = address(arg1)
            mem[32] = 4
            s = s + 32
            continue 
        if ceil32(_2633) <= _2633:
            _2804 = mem[64]
            mem[mem[64]] = _2633 + _2323 + _2339 + -mem[64] + 1
            mem[64] = _2633 + _2323 + _2339 + 33
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = _2804
            continue 
        mem[_2633 + _2323 + _2339 + 33] = 0
        _2805 = mem[64]
        mem[mem[64]] = _2633 + _2323 + _2339 + -mem[64] + 1
        mem[64] = _2633 + _2323 + _2339 + 33
        if idx == -1:
            revert with 0, 17
        mem[0] = address(arg1)
        mem[32] = 4
        idx = idx + 1
        s = _2805
        continue 
    mem[mem[64]] = 32
    _1367 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_1367)] = mem[s + 32 len ceil32(_1367)]
    if ceil32(_1367) > _1367:
        mem[_1367 + mem[64] + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_1367) + 32]
}



}
