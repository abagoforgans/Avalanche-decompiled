contract main {




// =====================  Runtime code  =====================


#
#  - sub_21444fed(?)
#  - sub_32d6aff9(?)
#  - sub_6fbc9807(?)
#  - sub_987d6de7(?)
#  - sub_c54820e8(?)
#  - sub_ea87b634(?)
#
mapping of uint256 sub_f119462d;
mapping of uint8 stor1;
mapping of uint256 sub_c40571ec;
mapping of uint8 stor3;
address sub_277f45d1Address;
uint256 id;
mapping of uint8 stor99;

function sub_277f45d1(?) {
    return sub_277f45d1Address
}

function getId() {
    return id
}

function sub_7a0a228e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_c40571ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c40571ec[arg1]
}

function sub_f119462d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_f119462d[arg1][arg2]
}

function sub_fa847836(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function initContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0x85a92368ab710a85f57b9872c0fe4361a405e5d != msg.sender:
        require msg.sender == 0xebdef90adcd0cef650afd081375570b391a6880a
    mem[132] = 0, mem[132 len 28]
    delegate arg1.mem[132 len 4] with:
         gas gas_remaining wei
        args 
    require return_data.size
    require delegate.return_code
    require return_data.size == 32
    sub_277f45d1Address = arg1
}

function sub_407045a8(?) {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size - s >= 192
        _2578 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_2578] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_2578 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_2578 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_2578 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_2578 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_2578 + 160] = cd[(s + 160)]
        mem[t] = _2578
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    _2577 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _2579 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _2577 + 1) + 32
    if not _2577 + 1:
        if 0 >= mem[_2579]:
            revert with 'NH{q', 50
        mem[_2579 + 32] = cd[4]
        _5160 = mem[96]
        idx = 0
        while idx < _5160:
            if idx >= mem[_2579]:
                revert with 'NH{q', 50
            _5165 = mem[(32 * idx) + _2579 + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _5170 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 160] == 1:
                _5180 = mem[mem[(32 * idx) + 128]]
                _5181 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _5218 = mem[mem[(32 * idx) + 128] + 64]
                    _5224 = mem[64]
                    _5225 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5225 + 32] = mem[_5225 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5317 = mem[_5225]
                    s = 0
                    while s < _5317:
                        mem[_5224 + s + 36] = mem[_5225 + s + 32]
                        _5160 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5317) <= _5317:
                        staticcall address(_5218).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5224 + _5317 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5170 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5170 + 12 len 20] == address(_5180):
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[128]
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[160] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / mem[160] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[160]
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[128] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / mem[128] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                        else:
                            _7764 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7764] = return_data.size
                            mem[_7764 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5170 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5170 + 12 len 20] == address(_5180):
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[_7764 + 64]:
                                        if False and mem[_7764 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7764 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7764 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7764 + 32] and 10000 > -1 / mem[_7764 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7764 + 32] / 10000 != mem[_7764 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7764 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7764 + 32] < 10000 * mem[_7764 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7764 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7764 + 32]
                                    if 0 / 10000 * mem[_7764 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7764 + 32]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7764 + 64]:
                                        if mem[_7764 + 32] and 10000 > -1 / mem[_7764 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7764 + 32] / 10000 != mem[_7764 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7764 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7764 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7764 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7764 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7764 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[_7764 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7764 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7764 + 64] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[_7764 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[_7764 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7764 + 64]) / mem[_7764 + 64] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7764 + 32] and 10000 > -1 / mem[_7764 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7764 + 32] / 10000 != mem[_7764 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7764 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7764 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7764 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7764 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[_7764 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7764 + 64]) / (10000 * mem[_7764 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[_7764 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7764 + 64]) / (10000 * mem[_7764 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7764 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7764 + 64]) / (10000 * mem[_7764 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[_7764 + 32]:
                                        if False and mem[_7764 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7764 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7764 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7764 + 64] and 10000 > -1 / mem[_7764 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7764 + 64] / 10000 != mem[_7764 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7764 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7764 + 64] < 10000 * mem[_7764 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7764 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7764 + 64]
                                    if 0 / 10000 * mem[_7764 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7764 + 64]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7764 + 32]:
                                        if mem[_7764 + 64] and 10000 > -1 / mem[_7764 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7764 + 64] / 10000 != mem[_7764 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7764 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7764 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7764 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7764 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7764 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[_7764 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7764 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7764 + 32] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[_7764 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[_7764 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7764 + 32]) / mem[_7764 + 32] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7764 + 64] and 10000 > -1 / mem[_7764 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7764 + 64] / 10000 != mem[_7764 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7764 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7764 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7764 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7764 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[_7764 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7764 + 32]) / (10000 * mem[_7764 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[_7764 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7764 + 32]) / (10000 * mem[_7764 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7764 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7764 + 32]) / (10000 * mem[_7764 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                    else:
                        mem[_5224 + _5317 + 36] = 0
                        staticcall address(_5218).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5224 + _5317 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5170 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5170 + 12 len 20] == address(_5180):
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[128]
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[160] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / mem[160] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[160]
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[128] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / mem[128] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                        else:
                            _7784 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7784] = return_data.size
                            mem[_7784 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5170 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5170 + 12 len 20] == address(_5180):
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[_7784 + 64]:
                                        if False and mem[_7784 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7784 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7784 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7784 + 32] and 10000 > -1 / mem[_7784 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7784 + 32] / 10000 != mem[_7784 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7784 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7784 + 32] < 10000 * mem[_7784 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7784 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7784 + 32]
                                    if 0 / 10000 * mem[_7784 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7784 + 32]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7784 + 64]:
                                        if mem[_7784 + 32] and 10000 > -1 / mem[_7784 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7784 + 32] / 10000 != mem[_7784 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7784 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7784 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7784 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7784 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7784 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[_7784 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7784 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7784 + 64] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[_7784 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[_7784 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7784 + 64]) / mem[_7784 + 64] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7784 + 32] and 10000 > -1 / mem[_7784 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7784 + 32] / 10000 != mem[_7784 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7784 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7784 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7784 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7784 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[_7784 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7784 + 64]) / (10000 * mem[_7784 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[_7784 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7784 + 64]) / (10000 * mem[_7784 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7784 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7784 + 64]) / (10000 * mem[_7784 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[_7784 + 32]:
                                        if False and mem[_7784 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7784 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7784 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7784 + 64] and 10000 > -1 / mem[_7784 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7784 + 64] / 10000 != mem[_7784 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7784 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7784 + 64] < 10000 * mem[_7784 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7784 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7784 + 64]
                                    if 0 / 10000 * mem[_7784 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7784 + 64]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7784 + 32]:
                                        if mem[_7784 + 64] and 10000 > -1 / mem[_7784 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7784 + 64] / 10000 != mem[_7784 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7784 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7784 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7784 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7784 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7784 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[_7784 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7784 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7784 + 32] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[_7784 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[_7784 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7784 + 32]) / mem[_7784 + 32] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7784 + 64] and 10000 > -1 / mem[_7784 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7784 + 64] / 10000 != mem[_7784 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7784 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7784 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7784 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7784 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[_7784 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7784 + 32]) / (10000 * mem[_7784 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[_7784 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7784 + 32]) / (10000 * mem[_7784 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7784 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7784 + 32]) / (10000 * mem[_7784 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                else:
                    _5219 = mem[mem[(32 * idx) + 128] + 64]
                    _5228 = mem[64]
                    _5229 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5229 + 32] = mem[_5229 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5318 = mem[_5229]
                    s = 0
                    while s < _5318:
                        mem[_5228 + s + 36] = mem[_5229 + s + 32]
                        _5160 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5318) <= _5318:
                        staticcall address(_5219).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5228 + _5318 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5170 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5170 + 12 len 20] == address(_5181):
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[128]
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[160] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / mem[160] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[160]
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[128] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / mem[128] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                        else:
                            _7766 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7766] = return_data.size
                            mem[_7766 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5170 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5170 + 12 len 20] == address(_5181):
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[_7766 + 64]:
                                        if False and mem[_7766 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7766 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7766 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7766 + 32] and 10000 > -1 / mem[_7766 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7766 + 32] / 10000 != mem[_7766 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7766 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7766 + 32] < 10000 * mem[_7766 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7766 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7766 + 32]
                                    if 0 / 10000 * mem[_7766 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7766 + 32]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7766 + 64]:
                                        if mem[_7766 + 32] and 10000 > -1 / mem[_7766 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7766 + 32] / 10000 != mem[_7766 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7766 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7766 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7766 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7766 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7766 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[_7766 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7766 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7766 + 64] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[_7766 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[_7766 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7766 + 64]) / mem[_7766 + 64] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7766 + 32] and 10000 > -1 / mem[_7766 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7766 + 32] / 10000 != mem[_7766 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7766 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7766 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7766 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7766 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[_7766 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7766 + 64]) / (10000 * mem[_7766 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[_7766 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7766 + 64]) / (10000 * mem[_7766 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7766 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7766 + 64]) / (10000 * mem[_7766 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[_7766 + 32]:
                                        if False and mem[_7766 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7766 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7766 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7766 + 64] and 10000 > -1 / mem[_7766 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7766 + 64] / 10000 != mem[_7766 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7766 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7766 + 64] < 10000 * mem[_7766 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7766 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7766 + 64]
                                    if 0 / 10000 * mem[_7766 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7766 + 64]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7766 + 32]:
                                        if mem[_7766 + 64] and 10000 > -1 / mem[_7766 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7766 + 64] / 10000 != mem[_7766 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7766 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7766 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7766 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7766 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7766 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[_7766 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7766 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7766 + 32] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[_7766 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[_7766 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7766 + 32]) / mem[_7766 + 32] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7766 + 64] and 10000 > -1 / mem[_7766 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7766 + 64] / 10000 != mem[_7766 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7766 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7766 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7766 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7766 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[_7766 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7766 + 32]) / (10000 * mem[_7766 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[_7766 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7766 + 32]) / (10000 * mem[_7766 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7766 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7766 + 32]) / (10000 * mem[_7766 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                    else:
                        mem[_5228 + _5318 + 36] = 0
                        staticcall address(_5219).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5228 + _5318 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5170 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5170 + 12 len 20] == address(_5181):
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[128]
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[160] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / mem[160] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[160]
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[128] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / mem[128] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                        else:
                            _7789 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7789] = return_data.size
                            mem[_7789 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5170 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5170 + 12 len 20] == address(_5181):
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[_7789 + 64]:
                                        if False and mem[_7789 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7789 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7789 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7789 + 32] and 10000 > -1 / mem[_7789 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7789 + 32] / 10000 != mem[_7789 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7789 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7789 + 32] < 10000 * mem[_7789 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7789 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7789 + 32]
                                    if 0 / 10000 * mem[_7789 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7789 + 32]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7789 + 64]:
                                        if mem[_7789 + 32] and 10000 > -1 / mem[_7789 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7789 + 32] / 10000 != mem[_7789 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7789 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7789 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7789 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7789 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7789 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[_7789 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7789 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7789 + 64] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[_7789 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[_7789 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7789 + 64]) / mem[_7789 + 64] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7789 + 32] and 10000 > -1 / mem[_7789 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7789 + 32] / 10000 != mem[_7789 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7789 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7789 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7789 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7789 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[_7789 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7789 + 64]) / (10000 * mem[_7789 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[_7789 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7789 + 64]) / (10000 * mem[_7789 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7789 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7789 + 64]) / (10000 * mem[_7789 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                if not -mem[_5170 + 128] + 10000:
                                    if mem[_7789 + 32]:
                                        if False and mem[_7789 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7789 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7789 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7789 + 64] and 10000 > -1 / mem[_7789 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7789 + 64] / 10000 != mem[_7789 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7789 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7789 + 64] < 10000 * mem[_7789 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7789 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7789 + 64]
                                    if 0 / 10000 * mem[_7789 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7789 + 64]) - 1
                                else:
                                    if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                        revert with 'NH{q', 17
                                    if not -mem[_5170 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7789 + 32]:
                                        if mem[_7789 + 64] and 10000 > -1 / mem[_7789 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7789 + 64] / 10000 != mem[_7789 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7789 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7789 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7789 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7789 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7789 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if 0 / (10000 * mem[_7789 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7789 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                    else:
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7789 + 32] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 17
                                        if not mem[_7789 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165 * mem[_7789 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7789 + 32]) / mem[_7789 + 32] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7789 + 64] and 10000 > -1 / mem[_7789 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7789 + 64] / 10000 != mem[_7789 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7789 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7789 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7789 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7789 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                            revert with 'NH{q', 18
                                        require (10000 * _5165 * mem[_7789 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7789 + 32]) / (10000 * mem[_7789 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                        if (10000 * _5165 * mem[_7789 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7789 + 32]) / (10000 * mem[_7789 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7789 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7789 + 32]) / (10000 * mem[_7789 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
            else:
                mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
                mem[32] = 3
                if not stor3[mem[mem[(32 * idx) + 128] + 108 len 20]]:
                    if mem[mem[(32 * idx) + 128] + 160] != 5:
                        if mem[mem[(32 * idx) + 128] + 160] == 7:
                            mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
                            mem[32] = 0
                            mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            _5198 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                            mem[32] = 0
                            _5200 = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                            mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                            mem[32] = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                            _5203 = mem[mem[(32 * idx) + 128] + 96]
                            mem[mem[64]] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint8(stor[_5198])
                            mem[mem[64] + 36] = uint8(stor[_5200][mem[0]])
                            mem[mem[64] + 68] = _5165
                            require ext_code.size(address(_5203))
                            staticcall address(_5203).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args uint8(stor[_5198]), uint8(stor[_5200][mem[0]]), _5165
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5415 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5415] == mem[_5415]
                            require mem[_5415]
                            if mem[_5415] < 1:
                                revert with 'NH{q', 17
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_2579]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _2579 + 32] = mem[_5415] - 1
                        else:
                            if mem[mem[(32 * idx) + 128] + 160] < 80:
                                if mem[mem[(32 * idx) + 128] + 160] != 12:
                                    if mem[mem[(32 * idx) + 128] + 160] == 99:
                                        require _5165
                                        if _5165 < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = _5165 - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 160] != 13:
                                            require mem[mem[(32 * idx) + 128] + 160] == 14
                                            _5350 = mem[mem[(32 * idx) + 128] + 96]
                                            _5352 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                            mem[mem[64] + 36] = address(_5352)
                                            mem[mem[64] + 68] = _5165
                                            require ext_code.size(address(_5350))
                                            staticcall address(_5350).quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4], address(_5352), _5165
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5648 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5648] == mem[_5648]
                                            require mem[_5648]
                                            if mem[_5648] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = mem[_5648] - 1
                                        else:
                                            _5333 = mem[mem[(32 * idx) + 128]]
                                            _5334 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                            mem[mem[64] + 68] = address(_5334)
                                            mem[mem[64] + 100] = _5165
                                            require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                            staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                                    gas gas_remaining wei
                                                   args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_5333), address(_5334), _5165
                                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5672 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            require mem[_5672] == mem[_5672]
                                            require mem[_5672 + 32] == mem[_5672 + 32]
                                            require mem[_5672]
                                            if mem[_5672] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = mem[_5672] - 1
                                else:
                                    require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                    staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5320 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 160
                                    require mem[_5320] == mem[_5320 + 18 len 14]
                                    require mem[_5320 + 32] == mem[_5320 + 50 len 14]
                                    require mem[_5320 + 64] == mem[_5320 + 82 len 14]
                                    require mem[_5320 + 96] == mem[_5320 + 114 len 14]
                                    require mem[_5320 + 128] == mem[_5320 + 128]
                                    if 10^18 < mem[_5320 + 128]:
                                        revert with 'NH{q', 17
                                    if -mem[_5320 + 128] + 10^18 > 10^18:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if mem[_5170 + 12 len 20] < mem[_5170 + 44 len 20]:
                                        if mem[_5170 + 12 len 20] == mem[_5170 + 12 len 20]:
                                            if not -mem[_5320 + 128] + 10^18:
                                                if mem[_5320 + 114 len 14]:
                                                    if False and mem[_5320 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5320 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5320 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5320 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5320 + 82 len 14] < mem[_5320 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5320 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5320 + 82 len 14]
                                                if 0 / mem[_5320 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5320 + 82 len 14]) - 1
                                            else:
                                                if _5165 and -mem[_5320 + 128] + 10^18 > -1 / _5165:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5320 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / -mem[_5320 + 128] + 10^18 != _5165:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5320 + 114 len 14]:
                                                    if mem[_5320 + 82 len 14] > -((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < mem[_5320 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)
                                                    if 0 / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 and mem[_5320 + 114 len 14] > -1 / (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5320 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 114 len 14] / mem[_5320 + 114 len 14] != (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5320 + 82 len 14] > -((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < mem[_5320 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 114 len 14] / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 114 len 14] / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 114 len 14] / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)) - 1
                                        else:
                                            if not -mem[_5320 + 128] + 10^18:
                                                if mem[_5320 + 82 len 14]:
                                                    if False and mem[_5320 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5320 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5320 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5320 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5320 + 114 len 14] < mem[_5320 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5320 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5320 + 114 len 14]
                                                if 0 / mem[_5320 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5320 + 114 len 14]) - 1
                                            else:
                                                if _5165 and -mem[_5320 + 128] + 10^18 > -1 / _5165:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5320 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / -mem[_5320 + 128] + 10^18 != _5165:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5320 + 82 len 14]:
                                                    if mem[_5320 + 114 len 14] > -((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < mem[_5320 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)
                                                    if 0 / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 and mem[_5320 + 82 len 14] > -1 / (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5320 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 82 len 14] / mem[_5320 + 82 len 14] != (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5320 + 114 len 14] > -((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < mem[_5320 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 82 len 14] / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 82 len 14] / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 82 len 14] / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)) - 1
                                    else:
                                        if mem[_5170 + 12 len 20] == mem[_5170 + 44 len 20]:
                                            if not -mem[_5320 + 128] + 10^18:
                                                if mem[_5320 + 114 len 14]:
                                                    if False and mem[_5320 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5320 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5320 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5320 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5320 + 82 len 14] < mem[_5320 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5320 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5320 + 82 len 14]
                                                if 0 / mem[_5320 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5320 + 82 len 14]) - 1
                                            else:
                                                if _5165 and -mem[_5320 + 128] + 10^18 > -1 / _5165:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5320 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / -mem[_5320 + 128] + 10^18 != _5165:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5320 + 114 len 14]:
                                                    if mem[_5320 + 82 len 14] > -((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < mem[_5320 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)
                                                    if 0 / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 and mem[_5320 + 114 len 14] > -1 / (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5320 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 114 len 14] / mem[_5320 + 114 len 14] != (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5320 + 82 len 14] > -((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < mem[_5320 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 114 len 14] / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 114 len 14] / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 114 len 14] / mem[_5320 + 82 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)) - 1
                                        else:
                                            if not -mem[_5320 + 128] + 10^18:
                                                if mem[_5320 + 82 len 14]:
                                                    if False and mem[_5320 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5320 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5320 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5320 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5320 + 114 len 14] < mem[_5320 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5320 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5320 + 114 len 14]
                                                if 0 / mem[_5320 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5320 + 114 len 14]) - 1
                                            else:
                                                if _5165 and -mem[_5320 + 128] + 10^18 > -1 / _5165:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5320 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / -mem[_5320 + 128] + 10^18 != _5165:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5320 + 82 len 14]:
                                                    if mem[_5320 + 114 len 14] > -((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < mem[_5320 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)
                                                    if 0 / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 and mem[_5320 + 82 len 14] > -1 / (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5320 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 82 len 14] / mem[_5320 + 82 len 14] != (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5320 + 114 len 14] > -((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < mem[_5320 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 82 len 14] / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)
                                                    if (10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 82 len 14] / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18 * mem[_5320 + 82 len 14] / mem[_5320 + 114 len 14] + ((10^18 * _5165) - (mem[_5320 + 128] * _5165) / 10^18)) - 1
                            else:
                                if mem[mem[(32 * idx) + 128] + 160] >= 90:
                                    if mem[mem[(32 * idx) + 128] + 160] != 12:
                                        if mem[mem[(32 * idx) + 128] + 160] == 99:
                                            require _5165
                                            if _5165 < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = _5165 - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 160] != 13:
                                                require mem[mem[(32 * idx) + 128] + 160] == 14
                                                _5371 = mem[mem[(32 * idx) + 128] + 96]
                                                _5373 = mem[mem[(32 * idx) + 128] + 32]
                                                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                                mem[mem[64] + 36] = address(_5373)
                                                mem[mem[64] + 68] = _5165
                                                require ext_code.size(address(_5371))
                                                staticcall address(_5371).quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args mem[mem[64] + 4], address(_5373), _5165
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5656 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5656] == mem[_5656]
                                                require mem[_5656]
                                                if mem[_5656] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = mem[_5656] - 1
                                            else:
                                                _5355 = mem[mem[(32 * idx) + 128]]
                                                _5356 = mem[mem[(32 * idx) + 128] + 32]
                                                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                                mem[mem[64] + 68] = address(_5356)
                                                mem[mem[64] + 100] = _5165
                                                require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                                staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                                        gas gas_remaining wei
                                                       args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_5355), address(_5356), _5165
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5674 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                require mem[_5674] == mem[_5674]
                                                require mem[_5674 + 32] == mem[_5674 + 32]
                                                require mem[_5674]
                                                if mem[_5674] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = mem[_5674] - 1
                                    else:
                                        require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                        staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5337 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_5337] == mem[_5337 + 18 len 14]
                                        require mem[_5337 + 32] == mem[_5337 + 50 len 14]
                                        require mem[_5337 + 64] == mem[_5337 + 82 len 14]
                                        require mem[_5337 + 96] == mem[_5337 + 114 len 14]
                                        require mem[_5337 + 128] == mem[_5337 + 128]
                                        if 10^18 < mem[_5337 + 128]:
                                            revert with 'NH{q', 17
                                        if -mem[_5337 + 128] + 10^18 > 10^18:
                                            revert with 0, 'ds-math-sub-underflow'
                                        if mem[_5170 + 12 len 20] < mem[_5170 + 44 len 20]:
                                            if mem[_5170 + 12 len 20] == mem[_5170 + 12 len 20]:
                                                if not -mem[_5337 + 128] + 10^18:
                                                    if mem[_5337 + 114 len 14]:
                                                        if False and mem[_5337 + 114 len 14] > 0:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5337 + 114 len 14]:
                                                            revert with 'NH{q', 18
                                                        if 0 / mem[_5337 + 114 len 14]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5337 + 82 len 14] > -1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5337 + 82 len 14] < mem[_5337 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5337 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5337 + 82 len 14]
                                                    if 0 / mem[_5337 + 82 len 14] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5337 + 82 len 14]) - 1
                                                else:
                                                    if _5165 and -mem[_5337 + 128] + 10^18 > -1 / _5165:
                                                        revert with 'NH{q', 17
                                                    if not -mem[_5337 + 128] + 10^18:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / -mem[_5337 + 128] + 10^18 != _5165:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if not mem[_5337 + 114 len 14]:
                                                        if mem[_5337 + 82 len 14] > -((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < mem[_5337 + 82 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require 0 / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)
                                                        if 0 / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)) - 1
                                                    else:
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 and mem[_5337 + 114 len 14] > -1 / (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5337 + 114 len 14]:
                                                            revert with 'NH{q', 18
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 114 len 14] / mem[_5337 + 114 len 14] != (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        if mem[_5337 + 82 len 14] > -((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < mem[_5337 + 82 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 114 len 14] / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 114 len 14] / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 114 len 14] / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)) - 1
                                            else:
                                                if not -mem[_5337 + 128] + 10^18:
                                                    if mem[_5337 + 82 len 14]:
                                                        if False and mem[_5337 + 82 len 14] > 0:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5337 + 82 len 14]:
                                                            revert with 'NH{q', 18
                                                        if 0 / mem[_5337 + 82 len 14]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5337 + 114 len 14] > -1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5337 + 114 len 14] < mem[_5337 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5337 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5337 + 114 len 14]
                                                    if 0 / mem[_5337 + 114 len 14] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5337 + 114 len 14]) - 1
                                                else:
                                                    if _5165 and -mem[_5337 + 128] + 10^18 > -1 / _5165:
                                                        revert with 'NH{q', 17
                                                    if not -mem[_5337 + 128] + 10^18:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / -mem[_5337 + 128] + 10^18 != _5165:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if not mem[_5337 + 82 len 14]:
                                                        if mem[_5337 + 114 len 14] > -((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < mem[_5337 + 114 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require 0 / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)
                                                        if 0 / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)) - 1
                                                    else:
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 and mem[_5337 + 82 len 14] > -1 / (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5337 + 82 len 14]:
                                                            revert with 'NH{q', 18
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 82 len 14] / mem[_5337 + 82 len 14] != (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        if mem[_5337 + 114 len 14] > -((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < mem[_5337 + 114 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 82 len 14] / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 82 len 14] / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 82 len 14] / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)) - 1
                                        else:
                                            if mem[_5170 + 12 len 20] == mem[_5170 + 44 len 20]:
                                                if not -mem[_5337 + 128] + 10^18:
                                                    if mem[_5337 + 114 len 14]:
                                                        if False and mem[_5337 + 114 len 14] > 0:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5337 + 114 len 14]:
                                                            revert with 'NH{q', 18
                                                        if 0 / mem[_5337 + 114 len 14]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5337 + 82 len 14] > -1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5337 + 82 len 14] < mem[_5337 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5337 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5337 + 82 len 14]
                                                    if 0 / mem[_5337 + 82 len 14] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5337 + 82 len 14]) - 1
                                                else:
                                                    if _5165 and -mem[_5337 + 128] + 10^18 > -1 / _5165:
                                                        revert with 'NH{q', 17
                                                    if not -mem[_5337 + 128] + 10^18:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / -mem[_5337 + 128] + 10^18 != _5165:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if not mem[_5337 + 114 len 14]:
                                                        if mem[_5337 + 82 len 14] > -((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < mem[_5337 + 82 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require 0 / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)
                                                        if 0 / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)) - 1
                                                    else:
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 and mem[_5337 + 114 len 14] > -1 / (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5337 + 114 len 14]:
                                                            revert with 'NH{q', 18
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 114 len 14] / mem[_5337 + 114 len 14] != (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        if mem[_5337 + 82 len 14] > -((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < mem[_5337 + 82 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 114 len 14] / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 114 len 14] / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 114 len 14] / mem[_5337 + 82 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)) - 1
                                            else:
                                                if not -mem[_5337 + 128] + 10^18:
                                                    if mem[_5337 + 82 len 14]:
                                                        if False and mem[_5337 + 82 len 14] > 0:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5337 + 82 len 14]:
                                                            revert with 'NH{q', 18
                                                        if 0 / mem[_5337 + 82 len 14]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5337 + 114 len 14] > -1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5337 + 114 len 14] < mem[_5337 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5337 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5337 + 114 len 14]
                                                    if 0 / mem[_5337 + 114 len 14] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5337 + 114 len 14]) - 1
                                                else:
                                                    if _5165 and -mem[_5337 + 128] + 10^18 > -1 / _5165:
                                                        revert with 'NH{q', 17
                                                    if not -mem[_5337 + 128] + 10^18:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / -mem[_5337 + 128] + 10^18 != _5165:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if not mem[_5337 + 82 len 14]:
                                                        if mem[_5337 + 114 len 14] > -((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < mem[_5337 + 114 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require 0 / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)
                                                        if 0 / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)) - 1
                                                    else:
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 and mem[_5337 + 82 len 14] > -1 / (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5337 + 82 len 14]:
                                                            revert with 'NH{q', 18
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 82 len 14] / mem[_5337 + 82 len 14] != (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        if mem[_5337 + 114 len 14] > -((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < mem[_5337 + 114 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 82 len 14] / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)
                                                        if (10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 82 len 14] / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18 * mem[_5337 + 82 len 14] / mem[_5337 + 114 len 14] + ((10^18 * _5165) - (mem[_5337 + 128] * _5165) / 10^18)) - 1
                                else:
                                    mem[0] = mem[mem[(32 * idx) + 128] + 76 len 20]
                                    mem[32] = 0
                                    mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    _5259 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0))
                                    mem[32] = 0
                                    _5261 = sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0)
                                    mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                                    mem[32] = sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0)
                                    if mem[mem[(32 * idx) + 128] + 160] == 81:
                                        _5305 = mem[mem[(32 * idx) + 128] + 64]
                                        mem[mem[64]] = 0x5e0d443f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5259'))))
                                        mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5261')))))
                                        mem[mem[64] + 68] = _5165
                                        require ext_code.size(address(_5305))
                                        staticcall address(_5305).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('type', 256, ('stor', ('var', '_5259')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5261'))))), _5165
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5546 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5546] == mem[_5546]
                                        require mem[_5546]
                                        if mem[_5546] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = mem[_5546] - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 160] == 82:
                                            _5322 = mem[mem[(32 * idx) + 128] + 64]
                                            mem[mem[64]] = 0x556d6e9f00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(stor[_5259])
                                            mem[mem[64] + 36] = uint256(stor[_5261][mem[0]])
                                            mem[mem[64] + 68] = _5165
                                            require ext_code.size(address(_5322))
                                            staticcall address(_5322).get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args uint256(stor[_5259]), uint256(stor[_5261][mem[0]]), _5165
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5575 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5575] == mem[_5575]
                                            require mem[_5575]
                                            if mem[_5575] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = mem[_5575] - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 160] == 83:
                                                _5358 = mem[mem[(32 * idx) + 128] + 64]
                                                mem[mem[64]] = 0x7211ef700000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5259'))))
                                                mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5261')))))
                                                mem[mem[64] + 68] = _5165
                                                require ext_code.size(address(_5358))
                                                staticcall address(_5358).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('type', 256, ('stor', ('var', '_5259')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5261'))))), _5165
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5625 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5625] == mem[_5625]
                                                if mem[_5170 + 160] != 85:
                                                    require mem[_5625]
                                                    if mem[_5625] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = mem[_5625] - 1
                                                else:
                                                    if 43114 != chainid:
                                                        require mem[_5625]
                                                        if mem[_5625] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = mem[_5625] - 1
                                                    else:
                                                        if uint256(stor[_5261][mem[0]]):
                                                            require mem[_5625]
                                                            if mem[_5625] < 1:
                                                                revert with 'NH{q', 17
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[_2579]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + _2579 + 32] = mem[_5625] - 1
                                                        else:
                                                            if mem[_5625] and 9998 > -1 / mem[_5625]:
                                                                revert with 'NH{q', 17
                                                            require 9998 * mem[_5625] / 10000
                                                            if 9998 * mem[_5625] / 10000 < 1:
                                                                revert with 'NH{q', 17
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[_2579]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + _2579 + 32] = (9998 * mem[_5625] / 10000) - 1
                                            else:
                                                if mem[mem[(32 * idx) + 128] + 160] != 85:
                                                    require mem[mem[(32 * idx) + 128] + 160] == 84
                                                    _5387 = mem[mem[(32 * idx) + 128] + 64]
                                                    mem[mem[64]] = 0x85f11d1e00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = uint256(stor[_5259])
                                                    mem[mem[64] + 36] = uint256(stor[_5261][mem[0]])
                                                    mem[mem[64] + 68] = _5165
                                                    require ext_code.size(address(_5387))
                                                    staticcall address(_5387).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args uint256(stor[_5259]), uint256(stor[_5261][mem[0]]), _5165
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5639 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5639] == mem[_5639]
                                                    if 43114 != chainid:
                                                        require mem[_5639]
                                                        if mem[_5639] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = mem[_5639] - 1
                                                    else:
                                                        if mem[_5639] and 9996 > -1 / mem[_5639]:
                                                            revert with 'NH{q', 17
                                                        require 9996 * mem[_5639] / 10000
                                                        if 9996 * mem[_5639] / 10000 < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = (9996 * mem[_5639] / 10000) - 1
                                                else:
                                                    _5376 = mem[mem[(32 * idx) + 128] + 64]
                                                    mem[mem[64]] = 0x7211ef700000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5259'))))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5261')))))
                                                    mem[mem[64] + 68] = _5165
                                                    require ext_code.size(address(_5376))
                                                    staticcall address(_5376).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('type', 256, ('stor', ('var', '_5259')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5261'))))), _5165
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5632 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5632] == mem[_5632]
                                                    if mem[_5170 + 160] != 85:
                                                        require mem[_5632]
                                                        if mem[_5632] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = mem[_5632] - 1
                                                    else:
                                                        if 43114 != chainid:
                                                            require mem[_5632]
                                                            if mem[_5632] < 1:
                                                                revert with 'NH{q', 17
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[_2579]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + _2579 + 32] = mem[_5632] - 1
                                                        else:
                                                            if uint256(stor[_5261][mem[0]]):
                                                                require mem[_5632]
                                                                if mem[_5632] < 1:
                                                                    revert with 'NH{q', 17
                                                                if idx > -2:
                                                                    revert with 'NH{q', 17
                                                                if idx + 1 >= mem[_2579]:
                                                                    revert with 'NH{q', 50
                                                                mem[(32 * idx + 1) + _2579 + 32] = mem[_5632] - 1
                                                            else:
                                                                if mem[_5632] and 9998 > -1 / mem[_5632]:
                                                                    revert with 'NH{q', 17
                                                                require 9998 * mem[_5632] / 10000
                                                                if 9998 * mem[_5632] / 10000 < 1:
                                                                    revert with 'NH{q', 17
                                                                if idx > -2:
                                                                    revert with 'NH{q', 17
                                                                if idx + 1 >= mem[_2579]:
                                                                    revert with 'NH{q', 50
                                                                mem[(32 * idx + 1) + _2579 + 32] = (9998 * mem[_5632] / 10000) - 1
                    else:
                        _5191 = mem[mem[(32 * idx) + 128] + 96]
                        _5205 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_5205 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_5205]:
                            revert with 'NH{q', 50
                        mem[_5205 + 32] = mem[_5170 + 12 len 20]
                        if 1 >= mem[_5205]:
                            revert with 'NH{q', 50
                        mem[_5205 + 64] = mem[_5170 + 44 len 20]
                        mem[_5205 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5205 + 100] = _5165
                        mem[_5205 + 132] = 64
                        mem[_5205 + 164] = mem[_5205]
                        s = 0
                        t = _5205 + 32
                        u = _5205 + 196
                        while s < mem[_5205]:
                            mem[u] = mem[t + 12 len 20]
                            _5160 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_5191))
                        staticcall address(_5191).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5205 + (32 * mem[_5205]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7756 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7790 = mem[_7756]
                        require mem[_7756] <= test266151307()
                        require _7756 + mem[_7756] + 31 < _7756 + return_data.size
                        _7894 = mem[_7756 + mem[_7756]]
                        if mem[_7756 + mem[_7756]] > test266151307():
                            revert with 'NH{q', 65
                        if _7756 + ceil32(return_data.size) + floor32(mem[_7756 + mem[_7756]]) + 1 > test266151307() or floor32(mem[_7756 + mem[_7756]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _7756 + ceil32(return_data.size) + floor32(mem[_7756 + mem[_7756]]) + 1
                        mem[_7756 + ceil32(return_data.size)] = _7894
                        require _7790 + (32 * _7894) + 32 <= return_data.size
                        s = 0
                        t = _7756 + _7790 + 32
                        u = _7756 + ceil32(return_data.size) + 32
                        while s < _7894:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _5160 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _7894 < 1:
                            revert with 'NH{q', 17
                        if _7894 - 1 >= _7894:
                            revert with 'NH{q', 50
                        require mem[(32 * _7894 - 1) + _7756 + ceil32(return_data.size) + 32]
                        if mem[(32 * _7894 - 1) + _7756 + ceil32(return_data.size) + 32] < 1:
                            revert with 'NH{q', 17
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_2579]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _2579 + 32] = mem[(32 * _7894 - 1) + _7756 + ceil32(return_data.size) + 32] - 1
                else:
                    _5185 = mem[mem[(32 * idx) + 128]]
                    _5186 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                        _5235 = mem[mem[(32 * idx) + 128] + 64]
                        _5267 = mem[64]
                        _5268 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5268 + 32] = mem[_5268 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _5339 = mem[_5268]
                        s = 0
                        while s < _5339:
                            mem[_5267 + s + 36] = mem[_5268 + s + 32]
                            _5160 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_5339) <= _5339:
                            staticcall address(_5235).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5267 + _5339 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5170 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5170 + 12 len 20] == address(_5185):
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[128]
                                        if 0 / 10000 * mem[128] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[160] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / mem[160] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                else:
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[160]
                                        if 0 / 10000 * mem[160] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[128] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / mem[128] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                _7768 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7768] = return_data.size
                                mem[_7768 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5170 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5170 + 12 len 20] == address(_5185):
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[_7768 + 64]:
                                            if False and mem[_7768 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7768 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7768 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7768 + 32] and 10000 > -1 / mem[_7768 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7768 + 32] / 10000 != mem[_7768 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7768 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7768 + 32] < 10000 * mem[_7768 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7768 + 32]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7768 + 32]
                                        if 0 / 10000 * mem[_7768 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7768 + 32]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7768 + 64]:
                                            if mem[_7768 + 32] and 10000 > -1 / mem[_7768 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7768 + 32] / 10000 != mem[_7768 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7768 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7768 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7768 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7768 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7768 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[_7768 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7768 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7768 + 64] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[_7768 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[_7768 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7768 + 64]) / mem[_7768 + 64] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7768 + 32] and 10000 > -1 / mem[_7768 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7768 + 32] / 10000 != mem[_7768 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7768 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7768 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7768 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7768 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[_7768 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7768 + 64]) / (10000 * mem[_7768 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[_7768 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7768 + 64]) / (10000 * mem[_7768 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7768 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7768 + 64]) / (10000 * mem[_7768 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                else:
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[_7768 + 32]:
                                            if False and mem[_7768 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7768 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7768 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7768 + 64] and 10000 > -1 / mem[_7768 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7768 + 64] / 10000 != mem[_7768 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7768 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7768 + 64] < 10000 * mem[_7768 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7768 + 64]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7768 + 64]
                                        if 0 / 10000 * mem[_7768 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7768 + 64]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7768 + 32]:
                                            if mem[_7768 + 64] and 10000 > -1 / mem[_7768 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7768 + 64] / 10000 != mem[_7768 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7768 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7768 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7768 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7768 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7768 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[_7768 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7768 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7768 + 32] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[_7768 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[_7768 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7768 + 32]) / mem[_7768 + 32] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7768 + 64] and 10000 > -1 / mem[_7768 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7768 + 64] / 10000 != mem[_7768 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7768 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7768 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7768 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7768 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[_7768 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7768 + 32]) / (10000 * mem[_7768 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[_7768 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7768 + 32]) / (10000 * mem[_7768 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7768 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7768 + 32]) / (10000 * mem[_7768 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                        else:
                            mem[_5267 + _5339 + 36] = 0
                            staticcall address(_5235).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5267 + _5339 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5170 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5170 + 12 len 20] == address(_5185):
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[128]
                                        if 0 / 10000 * mem[128] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[160] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / mem[160] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                else:
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[160]
                                        if 0 / 10000 * mem[160] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[128] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / mem[128] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                _7795 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7795] = return_data.size
                                mem[_7795 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5170 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5170 + 12 len 20] == address(_5185):
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[_7795 + 64]:
                                            if False and mem[_7795 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7795 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7795 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7795 + 32] and 10000 > -1 / mem[_7795 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7795 + 32] / 10000 != mem[_7795 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7795 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7795 + 32] < 10000 * mem[_7795 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7795 + 32]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7795 + 32]
                                        if 0 / 10000 * mem[_7795 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7795 + 32]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7795 + 64]:
                                            if mem[_7795 + 32] and 10000 > -1 / mem[_7795 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7795 + 32] / 10000 != mem[_7795 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7795 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7795 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7795 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7795 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7795 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[_7795 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7795 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7795 + 64] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[_7795 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[_7795 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7795 + 64]) / mem[_7795 + 64] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7795 + 32] and 10000 > -1 / mem[_7795 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7795 + 32] / 10000 != mem[_7795 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7795 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7795 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7795 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7795 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[_7795 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7795 + 64]) / (10000 * mem[_7795 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[_7795 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7795 + 64]) / (10000 * mem[_7795 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7795 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7795 + 64]) / (10000 * mem[_7795 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                else:
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[_7795 + 32]:
                                            if False and mem[_7795 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7795 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7795 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7795 + 64] and 10000 > -1 / mem[_7795 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7795 + 64] / 10000 != mem[_7795 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7795 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7795 + 64] < 10000 * mem[_7795 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7795 + 64]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7795 + 64]
                                        if 0 / 10000 * mem[_7795 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7795 + 64]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7795 + 32]:
                                            if mem[_7795 + 64] and 10000 > -1 / mem[_7795 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7795 + 64] / 10000 != mem[_7795 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7795 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7795 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7795 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7795 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7795 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[_7795 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7795 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7795 + 32] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[_7795 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[_7795 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7795 + 32]) / mem[_7795 + 32] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7795 + 64] and 10000 > -1 / mem[_7795 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7795 + 64] / 10000 != mem[_7795 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7795 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7795 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7795 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7795 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[_7795 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7795 + 32]) / (10000 * mem[_7795 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[_7795 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7795 + 32]) / (10000 * mem[_7795 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7795 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7795 + 32]) / (10000 * mem[_7795 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                    else:
                        _5236 = mem[mem[(32 * idx) + 128] + 64]
                        _5271 = mem[64]
                        _5272 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5272 + 32] = mem[_5272 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _5340 = mem[_5272]
                        s = 0
                        while s < _5340:
                            mem[_5271 + s + 36] = mem[_5272 + s + 32]
                            _5160 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_5340) <= _5340:
                            staticcall address(_5236).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5271 + _5340 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5170 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5170 + 12 len 20] == address(_5186):
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[128]
                                        if 0 / 10000 * mem[128] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[160] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / mem[160] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                else:
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[160]
                                        if 0 / 10000 * mem[160] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[128] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / mem[128] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                _7770 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7770] = return_data.size
                                mem[_7770 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5170 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5170 + 12 len 20] == address(_5186):
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[_7770 + 64]:
                                            if False and mem[_7770 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7770 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7770 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7770 + 32] and 10000 > -1 / mem[_7770 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7770 + 32] / 10000 != mem[_7770 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7770 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7770 + 32] < 10000 * mem[_7770 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7770 + 32]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7770 + 32]
                                        if 0 / 10000 * mem[_7770 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7770 + 32]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7770 + 64]:
                                            if mem[_7770 + 32] and 10000 > -1 / mem[_7770 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7770 + 32] / 10000 != mem[_7770 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7770 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7770 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7770 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7770 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7770 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[_7770 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7770 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7770 + 64] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[_7770 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[_7770 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7770 + 64]) / mem[_7770 + 64] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7770 + 32] and 10000 > -1 / mem[_7770 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7770 + 32] / 10000 != mem[_7770 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7770 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7770 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7770 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7770 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[_7770 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7770 + 64]) / (10000 * mem[_7770 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[_7770 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7770 + 64]) / (10000 * mem[_7770 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7770 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7770 + 64]) / (10000 * mem[_7770 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                else:
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[_7770 + 32]:
                                            if False and mem[_7770 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7770 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7770 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7770 + 64] and 10000 > -1 / mem[_7770 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7770 + 64] / 10000 != mem[_7770 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7770 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7770 + 64] < 10000 * mem[_7770 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7770 + 64]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7770 + 64]
                                        if 0 / 10000 * mem[_7770 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7770 + 64]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7770 + 32]:
                                            if mem[_7770 + 64] and 10000 > -1 / mem[_7770 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7770 + 64] / 10000 != mem[_7770 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7770 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7770 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7770 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7770 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7770 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[_7770 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7770 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7770 + 32] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[_7770 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[_7770 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7770 + 32]) / mem[_7770 + 32] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7770 + 64] and 10000 > -1 / mem[_7770 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7770 + 64] / 10000 != mem[_7770 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7770 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7770 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7770 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7770 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[_7770 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7770 + 32]) / (10000 * mem[_7770 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[_7770 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7770 + 32]) / (10000 * mem[_7770 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7770 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7770 + 32]) / (10000 * mem[_7770 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                        else:
                            mem[_5271 + _5340 + 36] = 0
                            staticcall address(_5236).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5271 + _5340 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5170 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5170 + 12 len 20] == address(_5186):
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[128]
                                        if 0 / 10000 * mem[128] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[160] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / mem[160] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[160]) - (mem[_5170 + 128] * _5165 * mem[160]) / (10000 * mem[128]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                else:
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[160]
                                        if 0 / 10000 * mem[160] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[128] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / mem[128] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[128]) - (mem[_5170 + 128] * _5165 * mem[128]) / (10000 * mem[160]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                            else:
                                _7800 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7800] = return_data.size
                                mem[_7800 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5170 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5170 + 12 len 20] == address(_5186):
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[_7800 + 64]:
                                            if False and mem[_7800 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7800 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7800 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7800 + 32] and 10000 > -1 / mem[_7800 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7800 + 32] / 10000 != mem[_7800 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7800 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7800 + 32] < 10000 * mem[_7800 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7800 + 32]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7800 + 32]
                                        if 0 / 10000 * mem[_7800 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7800 + 32]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7800 + 64]:
                                            if mem[_7800 + 32] and 10000 > -1 / mem[_7800 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7800 + 32] / 10000 != mem[_7800 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7800 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7800 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7800 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7800 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7800 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[_7800 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7800 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7800 + 64] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[_7800 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[_7800 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7800 + 64]) / mem[_7800 + 64] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7800 + 32] and 10000 > -1 / mem[_7800 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7800 + 32] / 10000 != mem[_7800 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7800 + 32] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7800 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7800 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7800 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[_7800 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7800 + 64]) / (10000 * mem[_7800 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[_7800 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7800 + 64]) / (10000 * mem[_7800 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7800 + 64]) - (mem[_5170 + 128] * _5165 * mem[_7800 + 64]) / (10000 * mem[_7800 + 32]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                else:
                                    if not -mem[_5170 + 128] + 10000:
                                        if mem[_7800 + 32]:
                                            if False and mem[_7800 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7800 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7800 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7800 + 64] and 10000 > -1 / mem[_7800 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7800 + 64] / 10000 != mem[_7800 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7800 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7800 + 64] < 10000 * mem[_7800 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7800 + 64]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7800 + 64]
                                        if 0 / 10000 * mem[_7800 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7800 + 64]) - 1
                                    else:
                                        if _5165 and -mem[_5170 + 128] + 10000 > -1 / _5165:
                                            revert with 'NH{q', 17
                                        if not -mem[_5170 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5165) - (mem[_5170 + 128] * _5165) / -mem[_5170 + 128] + 10000 != _5165:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7800 + 32]:
                                            if mem[_7800 + 64] and 10000 > -1 / mem[_7800 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7800 + 64] / 10000 != mem[_7800 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7800 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7800 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7800 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7800 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7800 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if 0 / (10000 * mem[_7800 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7800 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
                                        else:
                                            if (10000 * _5165) - (mem[_5170 + 128] * _5165) and mem[_7800 + 32] > -1 / (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 17
                                            if not mem[_7800 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5165 * mem[_7800 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7800 + 32]) / mem[_7800 + 32] != (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7800 + 64] and 10000 > -1 / mem[_7800 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7800 + 64] / 10000 != mem[_7800 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7800 + 64] > (-10000 * _5165) + (mem[_5170 + 128] * _5165) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7800 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 10000 * mem[_7800 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7800 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165):
                                                revert with 'NH{q', 18
                                            require (10000 * _5165 * mem[_7800 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7800 + 32]) / (10000 * mem[_7800 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)
                                            if (10000 * _5165 * mem[_7800 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7800 + 32]) / (10000 * mem[_7800 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5165 * mem[_7800 + 32]) - (mem[_5170 + 128] * _5165 * mem[_7800 + 32]) / (10000 * mem[_7800 + 64]) + (10000 * _5165) - (mem[_5170 + 128] * _5165)) - 1
            if idx == -1:
                revert with 'NH{q', 17
            _5160 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _5174 = mem[_2579]
        mem[mem[64] + 32] = mem[_2579]
        mem[mem[64] + 64 len 32 * _5174] = mem[_2579 + 32 len 32 * _5174]
        var68001 = _5174
        return 32, mem[mem[64] + 32 len (32 * _5174) + 32]
    mem[_2579 + 32 len 32 * _2577 + 1] = call.data[calldata.size len 32 * _2577 + 1]
    if 0 >= mem[_2579]:
        revert with 'NH{q', 50
    mem[_2579 + 32] = cd[4]
    _5161 = mem[96]
    idx = 0
    while idx < _5161:
        if idx >= mem[_2579]:
            revert with 'NH{q', 50
        _5168 = mem[(32 * idx) + _2579 + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _5171 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 160] == 1:
            _5182 = mem[mem[(32 * idx) + 128]]
            _5183 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                _5221 = mem[mem[(32 * idx) + 128] + 64]
                _5237 = mem[64]
                _5238 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5238 + 32] = mem[_5238 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _5325 = mem[_5238]
                s = 0
                while s < _5325:
                    mem[_5237 + s + 36] = mem[_5238 + s + 32]
                    _5161 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_5325) <= _5325:
                    staticcall address(_5221).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5237 + _5325 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5171 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5171 + 12 len 20] == address(_5182):
                            if not -mem[_5171 + 128] + 10000:
                                if mem[160]:
                                    if False and mem[160] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[128] and 10000 > -1 / mem[128]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] / 10000 != mem[128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[128] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] < 10000 * mem[128]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[128]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[128]
                                if 0 / 10000 * mem[128] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[160] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / mem[160] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            if not -mem[_5171 + 128] + 10000:
                                if mem[128]:
                                    if False and mem[128] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[160] and 10000 > -1 / mem[160]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] / 10000 != mem[160]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[160] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] < 10000 * mem[160]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[160]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[160]
                                if 0 / 10000 * mem[160] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[128] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / mem[128] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                    else:
                        _7772 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_7772] = return_data.size
                        mem[_7772 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5171 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5171 + 12 len 20] == address(_5182):
                            if not -mem[_5171 + 128] + 10000:
                                if mem[_7772 + 64]:
                                    if False and mem[_7772 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7772 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7772 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7772 + 32] and 10000 > -1 / mem[_7772 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7772 + 32] / 10000 != mem[_7772 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7772 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7772 + 32] < 10000 * mem[_7772 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7772 + 32]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7772 + 32]
                                if 0 / 10000 * mem[_7772 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7772 + 32]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7772 + 64]:
                                    if mem[_7772 + 32] and 10000 > -1 / mem[_7772 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7772 + 32] / 10000 != mem[_7772 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7772 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7772 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7772 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7772 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7772 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[_7772 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7772 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7772 + 64] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[_7772 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[_7772 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7772 + 64]) / mem[_7772 + 64] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7772 + 32] and 10000 > -1 / mem[_7772 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7772 + 32] / 10000 != mem[_7772 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7772 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7772 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7772 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7772 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[_7772 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7772 + 64]) / (10000 * mem[_7772 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[_7772 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7772 + 64]) / (10000 * mem[_7772 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7772 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7772 + 64]) / (10000 * mem[_7772 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            if not -mem[_5171 + 128] + 10000:
                                if mem[_7772 + 32]:
                                    if False and mem[_7772 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7772 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7772 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7772 + 64] and 10000 > -1 / mem[_7772 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7772 + 64] / 10000 != mem[_7772 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7772 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7772 + 64] < 10000 * mem[_7772 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7772 + 64]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7772 + 64]
                                if 0 / 10000 * mem[_7772 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7772 + 64]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7772 + 32]:
                                    if mem[_7772 + 64] and 10000 > -1 / mem[_7772 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7772 + 64] / 10000 != mem[_7772 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7772 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7772 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7772 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7772 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7772 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[_7772 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7772 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7772 + 32] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[_7772 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[_7772 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7772 + 32]) / mem[_7772 + 32] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7772 + 64] and 10000 > -1 / mem[_7772 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7772 + 64] / 10000 != mem[_7772 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7772 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7772 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7772 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7772 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[_7772 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7772 + 32]) / (10000 * mem[_7772 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[_7772 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7772 + 32]) / (10000 * mem[_7772 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7772 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7772 + 32]) / (10000 * mem[_7772 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                else:
                    mem[_5237 + _5325 + 36] = 0
                    staticcall address(_5221).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5237 + _5325 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5171 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5171 + 12 len 20] == address(_5182):
                            if not -mem[_5171 + 128] + 10000:
                                if mem[160]:
                                    if False and mem[160] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[128] and 10000 > -1 / mem[128]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] / 10000 != mem[128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[128] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] < 10000 * mem[128]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[128]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[128]
                                if 0 / 10000 * mem[128] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[160] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / mem[160] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            if not -mem[_5171 + 128] + 10000:
                                if mem[128]:
                                    if False and mem[128] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[160] and 10000 > -1 / mem[160]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] / 10000 != mem[160]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[160] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] < 10000 * mem[160]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[160]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[160]
                                if 0 / 10000 * mem[160] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[128] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / mem[128] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                    else:
                        _7805 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_7805] = return_data.size
                        mem[_7805 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5171 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5171 + 12 len 20] == address(_5182):
                            if not -mem[_5171 + 128] + 10000:
                                if mem[_7805 + 64]:
                                    if False and mem[_7805 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7805 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7805 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7805 + 32] and 10000 > -1 / mem[_7805 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7805 + 32] / 10000 != mem[_7805 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7805 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7805 + 32] < 10000 * mem[_7805 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7805 + 32]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7805 + 32]
                                if 0 / 10000 * mem[_7805 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7805 + 32]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7805 + 64]:
                                    if mem[_7805 + 32] and 10000 > -1 / mem[_7805 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7805 + 32] / 10000 != mem[_7805 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7805 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7805 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7805 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7805 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7805 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[_7805 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7805 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7805 + 64] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[_7805 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[_7805 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7805 + 64]) / mem[_7805 + 64] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7805 + 32] and 10000 > -1 / mem[_7805 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7805 + 32] / 10000 != mem[_7805 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7805 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7805 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7805 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7805 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[_7805 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7805 + 64]) / (10000 * mem[_7805 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[_7805 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7805 + 64]) / (10000 * mem[_7805 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7805 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7805 + 64]) / (10000 * mem[_7805 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            if not -mem[_5171 + 128] + 10000:
                                if mem[_7805 + 32]:
                                    if False and mem[_7805 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7805 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7805 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7805 + 64] and 10000 > -1 / mem[_7805 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7805 + 64] / 10000 != mem[_7805 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7805 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7805 + 64] < 10000 * mem[_7805 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7805 + 64]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7805 + 64]
                                if 0 / 10000 * mem[_7805 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7805 + 64]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7805 + 32]:
                                    if mem[_7805 + 64] and 10000 > -1 / mem[_7805 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7805 + 64] / 10000 != mem[_7805 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7805 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7805 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7805 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7805 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7805 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[_7805 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7805 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7805 + 32] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[_7805 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[_7805 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7805 + 32]) / mem[_7805 + 32] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7805 + 64] and 10000 > -1 / mem[_7805 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7805 + 64] / 10000 != mem[_7805 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7805 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7805 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7805 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7805 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[_7805 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7805 + 32]) / (10000 * mem[_7805 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[_7805 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7805 + 32]) / (10000 * mem[_7805 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7805 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7805 + 32]) / (10000 * mem[_7805 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
            else:
                _5222 = mem[mem[(32 * idx) + 128] + 64]
                _5241 = mem[64]
                _5242 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5242 + 32] = mem[_5242 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _5326 = mem[_5242]
                s = 0
                while s < _5326:
                    mem[_5241 + s + 36] = mem[_5242 + s + 32]
                    _5161 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_5326) <= _5326:
                    staticcall address(_5222).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5241 + _5326 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5171 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5171 + 12 len 20] == address(_5183):
                            if not -mem[_5171 + 128] + 10000:
                                if mem[160]:
                                    if False and mem[160] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[128] and 10000 > -1 / mem[128]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] / 10000 != mem[128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[128] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] < 10000 * mem[128]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[128]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[128]
                                if 0 / 10000 * mem[128] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[160] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / mem[160] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            if not -mem[_5171 + 128] + 10000:
                                if mem[128]:
                                    if False and mem[128] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[160] and 10000 > -1 / mem[160]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] / 10000 != mem[160]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[160] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] < 10000 * mem[160]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[160]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[160]
                                if 0 / 10000 * mem[160] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[128] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / mem[128] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                    else:
                        _7774 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_7774] = return_data.size
                        mem[_7774 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5171 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5171 + 12 len 20] == address(_5183):
                            if not -mem[_5171 + 128] + 10000:
                                if mem[_7774 + 64]:
                                    if False and mem[_7774 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7774 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7774 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7774 + 32] and 10000 > -1 / mem[_7774 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7774 + 32] / 10000 != mem[_7774 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7774 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7774 + 32] < 10000 * mem[_7774 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7774 + 32]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7774 + 32]
                                if 0 / 10000 * mem[_7774 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7774 + 32]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7774 + 64]:
                                    if mem[_7774 + 32] and 10000 > -1 / mem[_7774 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7774 + 32] / 10000 != mem[_7774 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7774 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7774 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7774 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7774 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7774 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[_7774 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7774 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7774 + 64] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[_7774 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[_7774 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7774 + 64]) / mem[_7774 + 64] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7774 + 32] and 10000 > -1 / mem[_7774 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7774 + 32] / 10000 != mem[_7774 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7774 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7774 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7774 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7774 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[_7774 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7774 + 64]) / (10000 * mem[_7774 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[_7774 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7774 + 64]) / (10000 * mem[_7774 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7774 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7774 + 64]) / (10000 * mem[_7774 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            if not -mem[_5171 + 128] + 10000:
                                if mem[_7774 + 32]:
                                    if False and mem[_7774 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7774 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7774 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7774 + 64] and 10000 > -1 / mem[_7774 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7774 + 64] / 10000 != mem[_7774 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7774 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7774 + 64] < 10000 * mem[_7774 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7774 + 64]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7774 + 64]
                                if 0 / 10000 * mem[_7774 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7774 + 64]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7774 + 32]:
                                    if mem[_7774 + 64] and 10000 > -1 / mem[_7774 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7774 + 64] / 10000 != mem[_7774 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7774 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7774 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7774 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7774 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7774 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[_7774 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7774 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7774 + 32] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[_7774 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[_7774 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7774 + 32]) / mem[_7774 + 32] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7774 + 64] and 10000 > -1 / mem[_7774 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7774 + 64] / 10000 != mem[_7774 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7774 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7774 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7774 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7774 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[_7774 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7774 + 32]) / (10000 * mem[_7774 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[_7774 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7774 + 32]) / (10000 * mem[_7774 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7774 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7774 + 32]) / (10000 * mem[_7774 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                else:
                    mem[_5241 + _5326 + 36] = 0
                    staticcall address(_5222).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5241 + _5326 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5171 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5171 + 12 len 20] == address(_5183):
                            if not -mem[_5171 + 128] + 10000:
                                if mem[160]:
                                    if False and mem[160] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[128] and 10000 > -1 / mem[128]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] / 10000 != mem[128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[128] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] < 10000 * mem[128]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[128]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[128]
                                if 0 / 10000 * mem[128] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[160] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / mem[160] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            if not -mem[_5171 + 128] + 10000:
                                if mem[128]:
                                    if False and mem[128] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[160] and 10000 > -1 / mem[160]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] / 10000 != mem[160]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[160] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] < 10000 * mem[160]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[160]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[160]
                                if 0 / 10000 * mem[160] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[128] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / mem[128] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                    else:
                        _7810 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_7810] = return_data.size
                        mem[_7810 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5171 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5171 + 12 len 20] == address(_5183):
                            if not -mem[_5171 + 128] + 10000:
                                if mem[_7810 + 64]:
                                    if False and mem[_7810 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7810 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7810 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7810 + 32] and 10000 > -1 / mem[_7810 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7810 + 32] / 10000 != mem[_7810 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7810 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7810 + 32] < 10000 * mem[_7810 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7810 + 32]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7810 + 32]
                                if 0 / 10000 * mem[_7810 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7810 + 32]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7810 + 64]:
                                    if mem[_7810 + 32] and 10000 > -1 / mem[_7810 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7810 + 32] / 10000 != mem[_7810 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7810 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7810 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7810 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7810 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7810 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[_7810 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7810 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7810 + 64] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[_7810 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[_7810 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7810 + 64]) / mem[_7810 + 64] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7810 + 32] and 10000 > -1 / mem[_7810 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7810 + 32] / 10000 != mem[_7810 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7810 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7810 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7810 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7810 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[_7810 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7810 + 64]) / (10000 * mem[_7810 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[_7810 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7810 + 64]) / (10000 * mem[_7810 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7810 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7810 + 64]) / (10000 * mem[_7810 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            if not -mem[_5171 + 128] + 10000:
                                if mem[_7810 + 32]:
                                    if False and mem[_7810 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7810 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7810 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7810 + 64] and 10000 > -1 / mem[_7810 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7810 + 64] / 10000 != mem[_7810 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7810 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7810 + 64] < 10000 * mem[_7810 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7810 + 64]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7810 + 64]
                                if 0 / 10000 * mem[_7810 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2579]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7810 + 64]) - 1
                            else:
                                if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                    revert with 'NH{q', 17
                                if not -mem[_5171 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7810 + 32]:
                                    if mem[_7810 + 64] and 10000 > -1 / mem[_7810 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7810 + 64] / 10000 != mem[_7810 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7810 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7810 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7810 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7810 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7810 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if 0 / (10000 * mem[_7810 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7810 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                else:
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7810 + 32] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 17
                                    if not mem[_7810 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168 * mem[_7810 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7810 + 32]) / mem[_7810 + 32] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7810 + 64] and 10000 > -1 / mem[_7810 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7810 + 64] / 10000 != mem[_7810 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7810 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7810 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7810 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7810 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                        revert with 'NH{q', 18
                                    require (10000 * _5168 * mem[_7810 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7810 + 32]) / (10000 * mem[_7810 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                    if (10000 * _5168 * mem[_7810 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7810 + 32]) / (10000 * mem[_7810 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7810 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7810 + 32]) / (10000 * mem[_7810 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
        else:
            mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
            mem[32] = 3
            if not stor3[mem[mem[(32 * idx) + 128] + 108 len 20]]:
                if mem[mem[(32 * idx) + 128] + 160] != 5:
                    if mem[mem[(32 * idx) + 128] + 160] == 7:
                        mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
                        mem[32] = 0
                        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                        _5210 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                        mem[32] = 0
                        _5212 = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                        mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                        mem[32] = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                        _5215 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64]] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint8(stor[_5210])
                        mem[mem[64] + 36] = uint8(stor[_5212][mem[0]])
                        mem[mem[64] + 68] = _5168
                        require ext_code.size(address(_5215))
                        staticcall address(_5215).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args uint8(stor[_5210]), uint8(stor[_5212][mem[0]]), _5168
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5423 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5423] == mem[_5423]
                        require mem[_5423]
                        if mem[_5423] < 1:
                            revert with 'NH{q', 17
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_2579]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _2579 + 32] = mem[_5423] - 1
                    else:
                        if mem[mem[(32 * idx) + 128] + 160] < 80:
                            if mem[mem[(32 * idx) + 128] + 160] != 12:
                                if mem[mem[(32 * idx) + 128] + 160] == 99:
                                    require _5168
                                    if _5168 < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = _5168 - 1
                                else:
                                    if mem[mem[(32 * idx) + 128] + 160] != 13:
                                        require mem[mem[(32 * idx) + 128] + 160] == 14
                                        _5360 = mem[mem[(32 * idx) + 128] + 96]
                                        _5362 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                        mem[mem[64] + 36] = address(_5362)
                                        mem[mem[64] + 68] = _5168
                                        require ext_code.size(address(_5360))
                                        staticcall address(_5360).quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4], address(_5362), _5168
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5652 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5652] == mem[_5652]
                                        require mem[_5652]
                                        if mem[_5652] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = mem[_5652] - 1
                                    else:
                                        _5342 = mem[mem[(32 * idx) + 128]]
                                        _5343 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                        mem[mem[64] + 68] = address(_5343)
                                        mem[mem[64] + 100] = _5168
                                        require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                        staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                                gas gas_remaining wei
                                               args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_5342), address(_5343), _5168
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5673 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        require mem[_5673] == mem[_5673]
                                        require mem[_5673 + 32] == mem[_5673 + 32]
                                        require mem[_5673]
                                        if mem[_5673] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = mem[_5673] - 1
                            else:
                                require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5328 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_5328] == mem[_5328 + 18 len 14]
                                require mem[_5328 + 32] == mem[_5328 + 50 len 14]
                                require mem[_5328 + 64] == mem[_5328 + 82 len 14]
                                require mem[_5328 + 96] == mem[_5328 + 114 len 14]
                                require mem[_5328 + 128] == mem[_5328 + 128]
                                if 10^18 < mem[_5328 + 128]:
                                    revert with 'NH{q', 17
                                if -mem[_5328 + 128] + 10^18 > 10^18:
                                    revert with 0, 'ds-math-sub-underflow'
                                if mem[_5171 + 12 len 20] < mem[_5171 + 44 len 20]:
                                    if mem[_5171 + 12 len 20] == mem[_5171 + 12 len 20]:
                                        if not -mem[_5328 + 128] + 10^18:
                                            if mem[_5328 + 114 len 14]:
                                                if False and mem[_5328 + 114 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5328 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5328 + 114 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5328 + 82 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5328 + 82 len 14] < mem[_5328 + 82 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5328 + 82 len 14]:
                                                revert with 'NH{q', 18
                                            require 0 / mem[_5328 + 82 len 14]
                                            if 0 / mem[_5328 + 82 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5328 + 82 len 14]) - 1
                                        else:
                                            if _5168 and -mem[_5328 + 128] + 10^18 > -1 / _5168:
                                                revert with 'NH{q', 17
                                            if not -mem[_5328 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / -mem[_5328 + 128] + 10^18 != _5168:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5328 + 114 len 14]:
                                                if mem[_5328 + 82 len 14] > -((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < mem[_5328 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18):
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)
                                                if 0 / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 and mem[_5328 + 114 len 14] > -1 / (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5328 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 114 len 14] / mem[_5328 + 114 len 14] != (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5328 + 82 len 14] > -((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < mem[_5328 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18):
                                                    revert with 'NH{q', 18
                                                require (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 114 len 14] / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 114 len 14] / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 114 len 14] / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)) - 1
                                    else:
                                        if not -mem[_5328 + 128] + 10^18:
                                            if mem[_5328 + 82 len 14]:
                                                if False and mem[_5328 + 82 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5328 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5328 + 82 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5328 + 114 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5328 + 114 len 14] < mem[_5328 + 114 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5328 + 114 len 14]:
                                                revert with 'NH{q', 18
                                            require 0 / mem[_5328 + 114 len 14]
                                            if 0 / mem[_5328 + 114 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5328 + 114 len 14]) - 1
                                        else:
                                            if _5168 and -mem[_5328 + 128] + 10^18 > -1 / _5168:
                                                revert with 'NH{q', 17
                                            if not -mem[_5328 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / -mem[_5328 + 128] + 10^18 != _5168:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5328 + 82 len 14]:
                                                if mem[_5328 + 114 len 14] > -((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < mem[_5328 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18):
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)
                                                if 0 / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 and mem[_5328 + 82 len 14] > -1 / (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5328 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 82 len 14] / mem[_5328 + 82 len 14] != (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5328 + 114 len 14] > -((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < mem[_5328 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18):
                                                    revert with 'NH{q', 18
                                                require (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 82 len 14] / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 82 len 14] / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 82 len 14] / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)) - 1
                                else:
                                    if mem[_5171 + 12 len 20] == mem[_5171 + 44 len 20]:
                                        if not -mem[_5328 + 128] + 10^18:
                                            if mem[_5328 + 114 len 14]:
                                                if False and mem[_5328 + 114 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5328 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5328 + 114 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5328 + 82 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5328 + 82 len 14] < mem[_5328 + 82 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5328 + 82 len 14]:
                                                revert with 'NH{q', 18
                                            require 0 / mem[_5328 + 82 len 14]
                                            if 0 / mem[_5328 + 82 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5328 + 82 len 14]) - 1
                                        else:
                                            if _5168 and -mem[_5328 + 128] + 10^18 > -1 / _5168:
                                                revert with 'NH{q', 17
                                            if not -mem[_5328 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / -mem[_5328 + 128] + 10^18 != _5168:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5328 + 114 len 14]:
                                                if mem[_5328 + 82 len 14] > -((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < mem[_5328 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18):
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)
                                                if 0 / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 and mem[_5328 + 114 len 14] > -1 / (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5328 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 114 len 14] / mem[_5328 + 114 len 14] != (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5328 + 82 len 14] > -((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < mem[_5328 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18):
                                                    revert with 'NH{q', 18
                                                require (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 114 len 14] / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 114 len 14] / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 114 len 14] / mem[_5328 + 82 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)) - 1
                                    else:
                                        if not -mem[_5328 + 128] + 10^18:
                                            if mem[_5328 + 82 len 14]:
                                                if False and mem[_5328 + 82 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5328 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5328 + 82 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5328 + 114 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5328 + 114 len 14] < mem[_5328 + 114 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5328 + 114 len 14]:
                                                revert with 'NH{q', 18
                                            require 0 / mem[_5328 + 114 len 14]
                                            if 0 / mem[_5328 + 114 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5328 + 114 len 14]) - 1
                                        else:
                                            if _5168 and -mem[_5328 + 128] + 10^18 > -1 / _5168:
                                                revert with 'NH{q', 17
                                            if not -mem[_5328 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / -mem[_5328 + 128] + 10^18 != _5168:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5328 + 82 len 14]:
                                                if mem[_5328 + 114 len 14] > -((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < mem[_5328 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18):
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)
                                                if 0 / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 and mem[_5328 + 82 len 14] > -1 / (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5328 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 82 len 14] / mem[_5328 + 82 len 14] != (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5328 + 114 len 14] > -((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < mem[_5328 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18):
                                                    revert with 'NH{q', 18
                                                require (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 82 len 14] / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)
                                                if (10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 82 len 14] / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18 * mem[_5328 + 82 len 14] / mem[_5328 + 114 len 14] + ((10^18 * _5168) - (mem[_5328 + 128] * _5168) / 10^18)) - 1
                        else:
                            if mem[mem[(32 * idx) + 128] + 160] >= 90:
                                if mem[mem[(32 * idx) + 128] + 160] != 12:
                                    if mem[mem[(32 * idx) + 128] + 160] == 99:
                                        require _5168
                                        if _5168 < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = _5168 - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 160] != 13:
                                            require mem[mem[(32 * idx) + 128] + 160] == 14
                                            _5379 = mem[mem[(32 * idx) + 128] + 96]
                                            _5381 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                            mem[mem[64] + 36] = address(_5381)
                                            mem[mem[64] + 68] = _5168
                                            require ext_code.size(address(_5379))
                                            staticcall address(_5379).quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4], address(_5381), _5168
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5658 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5658] == mem[_5658]
                                            require mem[_5658]
                                            if mem[_5658] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = mem[_5658] - 1
                                        else:
                                            _5365 = mem[mem[(32 * idx) + 128]]
                                            _5366 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                            mem[mem[64] + 68] = address(_5366)
                                            mem[mem[64] + 100] = _5168
                                            require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                            staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                                    gas gas_remaining wei
                                                   args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_5365), address(_5366), _5168
                                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5677 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            require mem[_5677] == mem[_5677]
                                            require mem[_5677 + 32] == mem[_5677 + 32]
                                            require mem[_5677]
                                            if mem[_5677] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2579]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2579 + 32] = mem[_5677] - 1
                                else:
                                    require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                    staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5346 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 160
                                    require mem[_5346] == mem[_5346 + 18 len 14]
                                    require mem[_5346 + 32] == mem[_5346 + 50 len 14]
                                    require mem[_5346 + 64] == mem[_5346 + 82 len 14]
                                    require mem[_5346 + 96] == mem[_5346 + 114 len 14]
                                    require mem[_5346 + 128] == mem[_5346 + 128]
                                    if 10^18 < mem[_5346 + 128]:
                                        revert with 'NH{q', 17
                                    if -mem[_5346 + 128] + 10^18 > 10^18:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if mem[_5171 + 12 len 20] < mem[_5171 + 44 len 20]:
                                        if mem[_5171 + 12 len 20] == mem[_5171 + 12 len 20]:
                                            if not -mem[_5346 + 128] + 10^18:
                                                if mem[_5346 + 114 len 14]:
                                                    if False and mem[_5346 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5346 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5346 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5346 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5346 + 82 len 14] < mem[_5346 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5346 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5346 + 82 len 14]
                                                if 0 / mem[_5346 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5346 + 82 len 14]) - 1
                                            else:
                                                if _5168 and -mem[_5346 + 128] + 10^18 > -1 / _5168:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5346 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / -mem[_5346 + 128] + 10^18 != _5168:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5346 + 114 len 14]:
                                                    if mem[_5346 + 82 len 14] > -((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < mem[_5346 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)
                                                    if 0 / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 and mem[_5346 + 114 len 14] > -1 / (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5346 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 114 len 14] / mem[_5346 + 114 len 14] != (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5346 + 82 len 14] > -((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < mem[_5346 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 114 len 14] / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 114 len 14] / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 114 len 14] / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)) - 1
                                        else:
                                            if not -mem[_5346 + 128] + 10^18:
                                                if mem[_5346 + 82 len 14]:
                                                    if False and mem[_5346 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5346 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5346 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5346 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5346 + 114 len 14] < mem[_5346 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5346 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5346 + 114 len 14]
                                                if 0 / mem[_5346 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5346 + 114 len 14]) - 1
                                            else:
                                                if _5168 and -mem[_5346 + 128] + 10^18 > -1 / _5168:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5346 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / -mem[_5346 + 128] + 10^18 != _5168:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5346 + 82 len 14]:
                                                    if mem[_5346 + 114 len 14] > -((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < mem[_5346 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)
                                                    if 0 / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 and mem[_5346 + 82 len 14] > -1 / (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5346 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 82 len 14] / mem[_5346 + 82 len 14] != (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5346 + 114 len 14] > -((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < mem[_5346 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 82 len 14] / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 82 len 14] / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 82 len 14] / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)) - 1
                                    else:
                                        if mem[_5171 + 12 len 20] == mem[_5171 + 44 len 20]:
                                            if not -mem[_5346 + 128] + 10^18:
                                                if mem[_5346 + 114 len 14]:
                                                    if False and mem[_5346 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5346 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5346 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5346 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5346 + 82 len 14] < mem[_5346 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5346 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5346 + 82 len 14]
                                                if 0 / mem[_5346 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5346 + 82 len 14]) - 1
                                            else:
                                                if _5168 and -mem[_5346 + 128] + 10^18 > -1 / _5168:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5346 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / -mem[_5346 + 128] + 10^18 != _5168:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5346 + 114 len 14]:
                                                    if mem[_5346 + 82 len 14] > -((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < mem[_5346 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)
                                                    if 0 / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 and mem[_5346 + 114 len 14] > -1 / (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5346 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 114 len 14] / mem[_5346 + 114 len 14] != (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5346 + 82 len 14] > -((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < mem[_5346 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 114 len 14] / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 114 len 14] / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 114 len 14] / mem[_5346 + 82 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)) - 1
                                        else:
                                            if not -mem[_5346 + 128] + 10^18:
                                                if mem[_5346 + 82 len 14]:
                                                    if False and mem[_5346 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5346 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5346 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5346 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5346 + 114 len 14] < mem[_5346 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5346 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5346 + 114 len 14]
                                                if 0 / mem[_5346 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5346 + 114 len 14]) - 1
                                            else:
                                                if _5168 and -mem[_5346 + 128] + 10^18 > -1 / _5168:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5346 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / -mem[_5346 + 128] + 10^18 != _5168:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5346 + 82 len 14]:
                                                    if mem[_5346 + 114 len 14] > -((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < mem[_5346 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)
                                                    if 0 / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 and mem[_5346 + 82 len 14] > -1 / (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5346 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 82 len 14] / mem[_5346 + 82 len 14] != (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5346 + 114 len 14] > -((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < mem[_5346 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 82 len 14] / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)
                                                    if (10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 82 len 14] / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18 * mem[_5346 + 82 len 14] / mem[_5346 + 114 len 14] + ((10^18 * _5168) - (mem[_5346 + 128] * _5168) / 10^18)) - 1
                            else:
                                mem[0] = mem[mem[(32 * idx) + 128] + 76 len 20]
                                mem[32] = 0
                                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                _5284 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0))
                                mem[32] = 0
                                _5286 = sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0)
                                mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0)
                                if mem[mem[(32 * idx) + 128] + 160] == 81:
                                    _5313 = mem[mem[(32 * idx) + 128] + 64]
                                    mem[mem[64]] = 0x5e0d443f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5284'))))
                                    mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5286')))))
                                    mem[mem[64] + 68] = _5168
                                    require ext_code.size(address(_5313))
                                    staticcall address(_5313).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('type', 256, ('stor', ('var', '_5284')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5286'))))), _5168
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5560 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5560] == mem[_5560]
                                    require mem[_5560]
                                    if mem[_5560] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = mem[_5560] - 1
                                else:
                                    if mem[mem[(32 * idx) + 128] + 160] == 82:
                                        _5330 = mem[mem[(32 * idx) + 128] + 64]
                                        mem[mem[64]] = 0x556d6e9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(stor[_5284])
                                        mem[mem[64] + 36] = uint256(stor[_5286][mem[0]])
                                        mem[mem[64] + 68] = _5168
                                        require ext_code.size(address(_5330))
                                        staticcall address(_5330).get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args uint256(stor[_5284]), uint256(stor[_5286][mem[0]]), _5168
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5593 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5593] == mem[_5593]
                                        require mem[_5593]
                                        if mem[_5593] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = mem[_5593] - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 160] == 83:
                                            _5368 = mem[mem[(32 * idx) + 128] + 64]
                                            mem[mem[64]] = 0x7211ef700000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5284'))))
                                            mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5286')))))
                                            mem[mem[64] + 68] = _5168
                                            require ext_code.size(address(_5368))
                                            staticcall address(_5368).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('type', 256, ('stor', ('var', '_5284')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5286'))))), _5168
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5629 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5629] == mem[_5629]
                                            if mem[_5171 + 160] != 85:
                                                require mem[_5629]
                                                if mem[_5629] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2579]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2579 + 32] = mem[_5629] - 1
                                            else:
                                                if 43114 != chainid:
                                                    require mem[_5629]
                                                    if mem[_5629] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = mem[_5629] - 1
                                                else:
                                                    if uint256(stor[_5286][mem[0]]):
                                                        require mem[_5629]
                                                        if mem[_5629] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = mem[_5629] - 1
                                                    else:
                                                        if mem[_5629] and 9998 > -1 / mem[_5629]:
                                                            revert with 'NH{q', 17
                                                        require 9998 * mem[_5629] / 10000
                                                        if 9998 * mem[_5629] / 10000 < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = (9998 * mem[_5629] / 10000) - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 160] != 85:
                                                require mem[mem[(32 * idx) + 128] + 160] == 84
                                                _5390 = mem[mem[(32 * idx) + 128] + 64]
                                                mem[mem[64]] = 0x85f11d1e00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = uint256(stor[_5284])
                                                mem[mem[64] + 36] = uint256(stor[_5286][mem[0]])
                                                mem[mem[64] + 68] = _5168
                                                require ext_code.size(address(_5390))
                                                staticcall address(_5390).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args uint256(stor[_5284]), uint256(stor[_5286][mem[0]]), _5168
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5641 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5641] == mem[_5641]
                                                if 43114 != chainid:
                                                    require mem[_5641]
                                                    if mem[_5641] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = mem[_5641] - 1
                                                else:
                                                    if mem[_5641] and 9996 > -1 / mem[_5641]:
                                                        revert with 'NH{q', 17
                                                    require 9996 * mem[_5641] / 10000
                                                    if 9996 * mem[_5641] / 10000 < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = (9996 * mem[_5641] / 10000) - 1
                                            else:
                                                _5384 = mem[mem[(32 * idx) + 128] + 64]
                                                mem[mem[64]] = 0x7211ef700000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5284'))))
                                                mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5286')))))
                                                mem[mem[64] + 68] = _5168
                                                require ext_code.size(address(_5384))
                                                staticcall address(_5384).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('type', 256, ('stor', ('var', '_5284')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5286'))))), _5168
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5635 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5635] == mem[_5635]
                                                if mem[_5171 + 160] != 85:
                                                    require mem[_5635]
                                                    if mem[_5635] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2579]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2579 + 32] = mem[_5635] - 1
                                                else:
                                                    if 43114 != chainid:
                                                        require mem[_5635]
                                                        if mem[_5635] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2579]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2579 + 32] = mem[_5635] - 1
                                                    else:
                                                        if uint256(stor[_5286][mem[0]]):
                                                            require mem[_5635]
                                                            if mem[_5635] < 1:
                                                                revert with 'NH{q', 17
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[_2579]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + _2579 + 32] = mem[_5635] - 1
                                                        else:
                                                            if mem[_5635] and 9998 > -1 / mem[_5635]:
                                                                revert with 'NH{q', 17
                                                            require 9998 * mem[_5635] / 10000
                                                            if 9998 * mem[_5635] / 10000 < 1:
                                                                revert with 'NH{q', 17
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[_2579]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + _2579 + 32] = (9998 * mem[_5635] / 10000) - 1
                else:
                    _5193 = mem[mem[(32 * idx) + 128] + 96]
                    _5217 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_5217 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_5217]:
                        revert with 'NH{q', 50
                    mem[_5217 + 32] = mem[_5171 + 12 len 20]
                    if 1 >= mem[_5217]:
                        revert with 'NH{q', 50
                    mem[_5217 + 64] = mem[_5171 + 44 len 20]
                    mem[_5217 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5217 + 100] = _5168
                    mem[_5217 + 132] = 64
                    mem[_5217 + 164] = mem[_5217]
                    s = 0
                    t = _5217 + 32
                    u = _5217 + 196
                    while s < mem[_5217]:
                        mem[u] = mem[t + 12 len 20]
                        _5161 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_5193))
                    staticcall address(_5193).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5217 + (32 * mem[_5217]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7761 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7811 = mem[_7761]
                    require mem[_7761] <= test266151307()
                    require _7761 + mem[_7761] + 31 < _7761 + return_data.size
                    _7911 = mem[_7761 + mem[_7761]]
                    if mem[_7761 + mem[_7761]] > test266151307():
                        revert with 'NH{q', 65
                    if _7761 + ceil32(return_data.size) + floor32(mem[_7761 + mem[_7761]]) + 1 > test266151307() or floor32(mem[_7761 + mem[_7761]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _7761 + ceil32(return_data.size) + floor32(mem[_7761 + mem[_7761]]) + 1
                    mem[_7761 + ceil32(return_data.size)] = _7911
                    require _7811 + (32 * _7911) + 32 <= return_data.size
                    s = 0
                    t = _7761 + _7811 + 32
                    u = _7761 + ceil32(return_data.size) + 32
                    while s < _7911:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _5161 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if _7911 < 1:
                        revert with 'NH{q', 17
                    if _7911 - 1 >= _7911:
                        revert with 'NH{q', 50
                    require mem[(32 * _7911 - 1) + _7761 + ceil32(return_data.size) + 32]
                    if mem[(32 * _7911 - 1) + _7761 + ceil32(return_data.size) + 32] < 1:
                        revert with 'NH{q', 17
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_2579]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + _2579 + 32] = mem[(32 * _7911 - 1) + _7761 + ceil32(return_data.size) + 32] - 1
            else:
                _5188 = mem[mem[(32 * idx) + 128]]
                _5189 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _5248 = mem[mem[(32 * idx) + 128] + 64]
                    _5292 = mem[64]
                    _5293 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5293 + 32] = mem[_5293 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5348 = mem[_5293]
                    s = 0
                    while s < _5348:
                        mem[_5292 + s + 36] = mem[_5293 + s + 32]
                        _5161 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5348) <= _5348:
                        staticcall address(_5248).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5292 + _5348 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5171 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5171 + 12 len 20] == address(_5188):
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[128]
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[160] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / mem[160] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                            else:
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[160]
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[128] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / mem[128] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            _7776 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7776] = return_data.size
                            mem[_7776 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5171 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5171 + 12 len 20] == address(_5188):
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[_7776 + 64]:
                                        if False and mem[_7776 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7776 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7776 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7776 + 32] and 10000 > -1 / mem[_7776 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7776 + 32] / 10000 != mem[_7776 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7776 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7776 + 32] < 10000 * mem[_7776 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7776 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7776 + 32]
                                    if 0 / 10000 * mem[_7776 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7776 + 32]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7776 + 64]:
                                        if mem[_7776 + 32] and 10000 > -1 / mem[_7776 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7776 + 32] / 10000 != mem[_7776 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7776 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7776 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7776 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7776 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7776 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[_7776 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7776 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7776 + 64] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[_7776 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[_7776 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7776 + 64]) / mem[_7776 + 64] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7776 + 32] and 10000 > -1 / mem[_7776 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7776 + 32] / 10000 != mem[_7776 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7776 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7776 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7776 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7776 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[_7776 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7776 + 64]) / (10000 * mem[_7776 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[_7776 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7776 + 64]) / (10000 * mem[_7776 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7776 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7776 + 64]) / (10000 * mem[_7776 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                            else:
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[_7776 + 32]:
                                        if False and mem[_7776 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7776 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7776 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7776 + 64] and 10000 > -1 / mem[_7776 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7776 + 64] / 10000 != mem[_7776 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7776 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7776 + 64] < 10000 * mem[_7776 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7776 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7776 + 64]
                                    if 0 / 10000 * mem[_7776 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7776 + 64]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7776 + 32]:
                                        if mem[_7776 + 64] and 10000 > -1 / mem[_7776 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7776 + 64] / 10000 != mem[_7776 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7776 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7776 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7776 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7776 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7776 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[_7776 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7776 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7776 + 32] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[_7776 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[_7776 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7776 + 32]) / mem[_7776 + 32] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7776 + 64] and 10000 > -1 / mem[_7776 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7776 + 64] / 10000 != mem[_7776 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7776 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7776 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7776 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7776 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[_7776 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7776 + 32]) / (10000 * mem[_7776 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[_7776 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7776 + 32]) / (10000 * mem[_7776 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7776 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7776 + 32]) / (10000 * mem[_7776 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                    else:
                        mem[_5292 + _5348 + 36] = 0
                        staticcall address(_5248).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5292 + _5348 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5171 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5171 + 12 len 20] == address(_5188):
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[128]
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[160] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / mem[160] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                            else:
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[160]
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[128] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / mem[128] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            _7816 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7816] = return_data.size
                            mem[_7816 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5171 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5171 + 12 len 20] == address(_5188):
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[_7816 + 64]:
                                        if False and mem[_7816 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7816 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7816 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7816 + 32] and 10000 > -1 / mem[_7816 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7816 + 32] / 10000 != mem[_7816 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7816 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7816 + 32] < 10000 * mem[_7816 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7816 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7816 + 32]
                                    if 0 / 10000 * mem[_7816 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7816 + 32]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7816 + 64]:
                                        if mem[_7816 + 32] and 10000 > -1 / mem[_7816 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7816 + 32] / 10000 != mem[_7816 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7816 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7816 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7816 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7816 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7816 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[_7816 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7816 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7816 + 64] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[_7816 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[_7816 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7816 + 64]) / mem[_7816 + 64] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7816 + 32] and 10000 > -1 / mem[_7816 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7816 + 32] / 10000 != mem[_7816 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7816 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7816 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7816 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7816 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[_7816 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7816 + 64]) / (10000 * mem[_7816 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[_7816 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7816 + 64]) / (10000 * mem[_7816 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7816 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7816 + 64]) / (10000 * mem[_7816 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                            else:
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[_7816 + 32]:
                                        if False and mem[_7816 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7816 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7816 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7816 + 64] and 10000 > -1 / mem[_7816 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7816 + 64] / 10000 != mem[_7816 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7816 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7816 + 64] < 10000 * mem[_7816 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7816 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7816 + 64]
                                    if 0 / 10000 * mem[_7816 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7816 + 64]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7816 + 32]:
                                        if mem[_7816 + 64] and 10000 > -1 / mem[_7816 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7816 + 64] / 10000 != mem[_7816 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7816 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7816 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7816 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7816 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7816 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[_7816 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7816 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7816 + 32] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[_7816 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[_7816 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7816 + 32]) / mem[_7816 + 32] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7816 + 64] and 10000 > -1 / mem[_7816 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7816 + 64] / 10000 != mem[_7816 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7816 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7816 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7816 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7816 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[_7816 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7816 + 32]) / (10000 * mem[_7816 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[_7816 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7816 + 32]) / (10000 * mem[_7816 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7816 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7816 + 32]) / (10000 * mem[_7816 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                else:
                    _5249 = mem[mem[(32 * idx) + 128] + 64]
                    _5296 = mem[64]
                    _5297 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5297 + 32] = mem[_5297 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5349 = mem[_5297]
                    s = 0
                    while s < _5349:
                        mem[_5296 + s + 36] = mem[_5297 + s + 32]
                        _5161 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5349) <= _5349:
                        staticcall address(_5249).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5296 + _5349 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5171 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5171 + 12 len 20] == address(_5189):
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[128]
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[160] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / mem[160] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                            else:
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[160]
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[128] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / mem[128] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            _7778 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7778] = return_data.size
                            mem[_7778 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5171 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5171 + 12 len 20] == address(_5189):
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[_7778 + 64]:
                                        if False and mem[_7778 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7778 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7778 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7778 + 32] and 10000 > -1 / mem[_7778 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7778 + 32] / 10000 != mem[_7778 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7778 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7778 + 32] < 10000 * mem[_7778 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7778 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7778 + 32]
                                    if 0 / 10000 * mem[_7778 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7778 + 32]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7778 + 64]:
                                        if mem[_7778 + 32] and 10000 > -1 / mem[_7778 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7778 + 32] / 10000 != mem[_7778 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7778 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7778 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7778 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7778 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7778 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[_7778 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7778 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7778 + 64] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[_7778 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[_7778 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7778 + 64]) / mem[_7778 + 64] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7778 + 32] and 10000 > -1 / mem[_7778 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7778 + 32] / 10000 != mem[_7778 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7778 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7778 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7778 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7778 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[_7778 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7778 + 64]) / (10000 * mem[_7778 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[_7778 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7778 + 64]) / (10000 * mem[_7778 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7778 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7778 + 64]) / (10000 * mem[_7778 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                            else:
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[_7778 + 32]:
                                        if False and mem[_7778 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7778 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7778 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7778 + 64] and 10000 > -1 / mem[_7778 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7778 + 64] / 10000 != mem[_7778 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7778 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7778 + 64] < 10000 * mem[_7778 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7778 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7778 + 64]
                                    if 0 / 10000 * mem[_7778 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7778 + 64]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7778 + 32]:
                                        if mem[_7778 + 64] and 10000 > -1 / mem[_7778 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7778 + 64] / 10000 != mem[_7778 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7778 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7778 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7778 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7778 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7778 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[_7778 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7778 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7778 + 32] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[_7778 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[_7778 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7778 + 32]) / mem[_7778 + 32] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7778 + 64] and 10000 > -1 / mem[_7778 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7778 + 64] / 10000 != mem[_7778 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7778 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7778 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7778 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7778 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[_7778 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7778 + 32]) / (10000 * mem[_7778 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[_7778 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7778 + 32]) / (10000 * mem[_7778 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7778 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7778 + 32]) / (10000 * mem[_7778 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                    else:
                        mem[_5296 + _5349 + 36] = 0
                        staticcall address(_5249).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5296 + _5349 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5171 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5171 + 12 len 20] == address(_5189):
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[128]
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[160] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / mem[160] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[160]) - (mem[_5171 + 128] * _5168 * mem[160]) / (10000 * mem[128]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                            else:
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[160]
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[128] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / mem[128] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[128]) - (mem[_5171 + 128] * _5168 * mem[128]) / (10000 * mem[160]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                        else:
                            _7821 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7821] = return_data.size
                            mem[_7821 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5171 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5171 + 12 len 20] == address(_5189):
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[_7821 + 64]:
                                        if False and mem[_7821 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7821 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7821 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7821 + 32] and 10000 > -1 / mem[_7821 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7821 + 32] / 10000 != mem[_7821 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7821 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7821 + 32] < 10000 * mem[_7821 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7821 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7821 + 32]
                                    if 0 / 10000 * mem[_7821 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7821 + 32]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7821 + 64]:
                                        if mem[_7821 + 32] and 10000 > -1 / mem[_7821 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7821 + 32] / 10000 != mem[_7821 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7821 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7821 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7821 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7821 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7821 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[_7821 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7821 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7821 + 64] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[_7821 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[_7821 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7821 + 64]) / mem[_7821 + 64] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7821 + 32] and 10000 > -1 / mem[_7821 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7821 + 32] / 10000 != mem[_7821 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7821 + 32] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7821 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7821 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7821 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[_7821 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7821 + 64]) / (10000 * mem[_7821 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[_7821 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7821 + 64]) / (10000 * mem[_7821 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7821 + 64]) - (mem[_5171 + 128] * _5168 * mem[_7821 + 64]) / (10000 * mem[_7821 + 32]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                            else:
                                if not -mem[_5171 + 128] + 10000:
                                    if mem[_7821 + 32]:
                                        if False and mem[_7821 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7821 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7821 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7821 + 64] and 10000 > -1 / mem[_7821 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7821 + 64] / 10000 != mem[_7821 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7821 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7821 + 64] < 10000 * mem[_7821 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7821 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7821 + 64]
                                    if 0 / 10000 * mem[_7821 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2579]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2579 + 32] = (0 / 10000 * mem[_7821 + 64]) - 1
                                else:
                                    if _5168 and -mem[_5171 + 128] + 10000 > -1 / _5168:
                                        revert with 'NH{q', 17
                                    if not -mem[_5171 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5168) - (mem[_5171 + 128] * _5168) / -mem[_5171 + 128] + 10000 != _5168:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7821 + 32]:
                                        if mem[_7821 + 64] and 10000 > -1 / mem[_7821 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7821 + 64] / 10000 != mem[_7821 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7821 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7821 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7821 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7821 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7821 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if 0 / (10000 * mem[_7821 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = (0 / (10000 * mem[_7821 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
                                    else:
                                        if (10000 * _5168) - (mem[_5171 + 128] * _5168) and mem[_7821 + 32] > -1 / (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 17
                                        if not mem[_7821 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5168 * mem[_7821 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7821 + 32]) / mem[_7821 + 32] != (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7821 + 64] and 10000 > -1 / mem[_7821 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7821 + 64] / 10000 != mem[_7821 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7821 + 64] > (-10000 * _5168) + (mem[_5171 + 128] * _5168) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7821 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 10000 * mem[_7821 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7821 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168):
                                            revert with 'NH{q', 18
                                        require (10000 * _5168 * mem[_7821 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7821 + 32]) / (10000 * mem[_7821 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)
                                        if (10000 * _5168 * mem[_7821 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7821 + 32]) / (10000 * mem[_7821 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2579]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2579 + 32] = ((10000 * _5168 * mem[_7821 + 32]) - (mem[_5171 + 128] * _5168 * mem[_7821 + 32]) / (10000 * mem[_7821 + 64]) + (10000 * _5168) - (mem[_5171 + 128] * _5168)) - 1
        if idx == -1:
            revert with 'NH{q', 17
        _5161 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _5177 = mem[_2579]
    mem[mem[64] + 32] = mem[_2579]
    mem[mem[64] + 64 len 32 * _5177] = mem[_2579 + 32 len 32 * _5177]
    var69001 = _5177
    return 32, mem[mem[64] + 32 len (32 * _5177) + 32]
}



}
