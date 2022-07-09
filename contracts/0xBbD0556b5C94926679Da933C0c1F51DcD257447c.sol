contract main {




// =====================  Runtime code  =====================


#
#  - sub_32d6aff9(?)
#  - sub_6fbc9807(?)
#  - sub_987d6de7(?)
#  - sub_c54820e8(?)
#  - sub_ddb27633(?)
#  - sub_ea87b634(?)
#
const getId = 112233


mapping of uint256 sub_f119462d;
mapping of uint8 stor1;
mapping of uint256 sub_c40571ec;
mapping of uint8 stor3;
address sub_277f45d1Address;
mapping of uint8 stor99;

function sub_277f45d1(?) payable {
    return sub_277f45d1Address
}

function sub_7a0a228e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_c40571ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c40571ec[arg1]
}

function sub_f119462d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_f119462d[arg1][arg2]
}

function sub_fa847836(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_407045a8(?) payable {
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
        _2818 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_2818] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_2818 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_2818 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_2818 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_2818 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_2818 + 160] = cd[(s + 160)]
        mem[t] = _2818
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    _2817 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _2819 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _2817 + 1) + 32
    if not _2817 + 1:
        if 0 >= mem[_2819]:
            revert with 'NH{q', 50
        mem[_2819 + 32] = cd[4]
        _5632 = mem[96]
        idx = 0
        while idx < _5632:
            if idx >= mem[_2819]:
                revert with 'NH{q', 50
            _5637 = mem[(32 * idx) + _2819 + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _5642 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 160] == 1:
                _5652 = mem[mem[(32 * idx) + 128]]
                _5653 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _5690 = mem[mem[(32 * idx) + 128] + 64]
                    _5696 = mem[64]
                    _5697 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5697 + 32] = mem[_5697 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5797 = mem[_5697]
                    s = 0
                    while s < _5797:
                        mem[_5696 + s + 36] = mem[_5697 + s + 32]
                        _5632 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5797) <= _5797:
                        staticcall address(_5690).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5696 + _5797 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5642 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5642 + 12 len 20] == address(_5652):
                                if not -mem[_5642 + 128] + 10000:
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
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[160] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / mem[160] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                if not -mem[_5642 + 128] + 10000:
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
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[128] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / mem[128] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                        else:
                            _8484 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8484] = return_data.size
                            mem[_8484 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5642 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5642 + 12 len 20] == address(_5652):
                                if not -mem[_5642 + 128] + 10000:
                                    if mem[_8484 + 64]:
                                        if False and mem[_8484 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8484 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8484 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8484 + 32] and 10000 > -1 / mem[_8484 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8484 + 32] / 10000 != mem[_8484 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8484 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8484 + 32] < 10000 * mem[_8484 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8484 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8484 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8484 + 32]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8484 + 64]:
                                        if mem[_8484 + 32] and 10000 > -1 / mem[_8484 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8484 + 32] / 10000 != mem[_8484 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8484 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8484 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8484 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8484 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8484 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8484 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8484 + 64] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[_8484 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8484 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8484 + 64]) / mem[_8484 + 64] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8484 + 32] and 10000 > -1 / mem[_8484 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8484 + 32] / 10000 != mem[_8484 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8484 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8484 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8484 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8484 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8484 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8484 + 64]) / (10000 * mem[_8484 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8484 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8484 + 64]) / (10000 * mem[_8484 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                if not -mem[_5642 + 128] + 10000:
                                    if mem[_8484 + 32]:
                                        if False and mem[_8484 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8484 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8484 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8484 + 64] and 10000 > -1 / mem[_8484 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8484 + 64] / 10000 != mem[_8484 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8484 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8484 + 64] < 10000 * mem[_8484 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8484 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8484 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8484 + 64]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8484 + 32]:
                                        if mem[_8484 + 64] and 10000 > -1 / mem[_8484 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8484 + 64] / 10000 != mem[_8484 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8484 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8484 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8484 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8484 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8484 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8484 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8484 + 32] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[_8484 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8484 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8484 + 32]) / mem[_8484 + 32] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8484 + 64] and 10000 > -1 / mem[_8484 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8484 + 64] / 10000 != mem[_8484 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8484 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8484 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8484 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8484 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8484 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8484 + 32]) / (10000 * mem[_8484 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8484 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8484 + 32]) / (10000 * mem[_8484 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                    else:
                        mem[_5696 + _5797 + 36] = 0
                        staticcall address(_5690).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5696 + _5797 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5642 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5642 + 12 len 20] == address(_5652):
                                if not -mem[_5642 + 128] + 10000:
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
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[160] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / mem[160] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                if not -mem[_5642 + 128] + 10000:
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
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[128] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / mem[128] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                        else:
                            _8508 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8508] = return_data.size
                            mem[_8508 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5642 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5642 + 12 len 20] == address(_5652):
                                if not -mem[_5642 + 128] + 10000:
                                    if mem[_8508 + 64]:
                                        if False and mem[_8508 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8508 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8508 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8508 + 32] and 10000 > -1 / mem[_8508 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8508 + 32] / 10000 != mem[_8508 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8508 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8508 + 32] < 10000 * mem[_8508 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8508 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8508 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8508 + 32]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8508 + 64]:
                                        if mem[_8508 + 32] and 10000 > -1 / mem[_8508 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8508 + 32] / 10000 != mem[_8508 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8508 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8508 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8508 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8508 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8508 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8508 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8508 + 64] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[_8508 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8508 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8508 + 64]) / mem[_8508 + 64] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8508 + 32] and 10000 > -1 / mem[_8508 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8508 + 32] / 10000 != mem[_8508 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8508 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8508 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8508 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8508 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8508 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8508 + 64]) / (10000 * mem[_8508 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8508 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8508 + 64]) / (10000 * mem[_8508 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                if not -mem[_5642 + 128] + 10000:
                                    if mem[_8508 + 32]:
                                        if False and mem[_8508 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8508 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8508 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8508 + 64] and 10000 > -1 / mem[_8508 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8508 + 64] / 10000 != mem[_8508 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8508 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8508 + 64] < 10000 * mem[_8508 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8508 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8508 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8508 + 64]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8508 + 32]:
                                        if mem[_8508 + 64] and 10000 > -1 / mem[_8508 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8508 + 64] / 10000 != mem[_8508 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8508 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8508 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8508 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8508 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8508 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8508 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8508 + 32] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[_8508 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8508 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8508 + 32]) / mem[_8508 + 32] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8508 + 64] and 10000 > -1 / mem[_8508 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8508 + 64] / 10000 != mem[_8508 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8508 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8508 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8508 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8508 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8508 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8508 + 32]) / (10000 * mem[_8508 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8508 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8508 + 32]) / (10000 * mem[_8508 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                else:
                    _5691 = mem[mem[(32 * idx) + 128] + 64]
                    _5700 = mem[64]
                    _5701 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5701 + 32] = mem[_5701 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5798 = mem[_5701]
                    s = 0
                    while s < _5798:
                        mem[_5700 + s + 36] = mem[_5701 + s + 32]
                        _5632 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5798) <= _5798:
                        staticcall address(_5691).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5700 + _5798 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5642 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5642 + 12 len 20] == address(_5653):
                                if not -mem[_5642 + 128] + 10000:
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
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[160] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / mem[160] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                if not -mem[_5642 + 128] + 10000:
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
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[128] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / mem[128] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                        else:
                            _8486 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8486] = return_data.size
                            mem[_8486 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5642 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5642 + 12 len 20] == address(_5653):
                                if not -mem[_5642 + 128] + 10000:
                                    if mem[_8486 + 64]:
                                        if False and mem[_8486 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8486 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8486 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8486 + 32] and 10000 > -1 / mem[_8486 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8486 + 32] / 10000 != mem[_8486 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8486 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8486 + 32] < 10000 * mem[_8486 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8486 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8486 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8486 + 32]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8486 + 64]:
                                        if mem[_8486 + 32] and 10000 > -1 / mem[_8486 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8486 + 32] / 10000 != mem[_8486 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8486 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8486 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8486 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8486 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8486 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8486 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8486 + 64] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[_8486 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8486 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8486 + 64]) / mem[_8486 + 64] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8486 + 32] and 10000 > -1 / mem[_8486 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8486 + 32] / 10000 != mem[_8486 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8486 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8486 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8486 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8486 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8486 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8486 + 64]) / (10000 * mem[_8486 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8486 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8486 + 64]) / (10000 * mem[_8486 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                if not -mem[_5642 + 128] + 10000:
                                    if mem[_8486 + 32]:
                                        if False and mem[_8486 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8486 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8486 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8486 + 64] and 10000 > -1 / mem[_8486 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8486 + 64] / 10000 != mem[_8486 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8486 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8486 + 64] < 10000 * mem[_8486 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8486 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8486 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8486 + 64]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8486 + 32]:
                                        if mem[_8486 + 64] and 10000 > -1 / mem[_8486 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8486 + 64] / 10000 != mem[_8486 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8486 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8486 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8486 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8486 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8486 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8486 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8486 + 32] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[_8486 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8486 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8486 + 32]) / mem[_8486 + 32] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8486 + 64] and 10000 > -1 / mem[_8486 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8486 + 64] / 10000 != mem[_8486 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8486 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8486 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8486 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8486 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8486 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8486 + 32]) / (10000 * mem[_8486 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8486 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8486 + 32]) / (10000 * mem[_8486 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                    else:
                        mem[_5700 + _5798 + 36] = 0
                        staticcall address(_5691).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5700 + _5798 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5642 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5642 + 12 len 20] == address(_5653):
                                if not -mem[_5642 + 128] + 10000:
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
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[160] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / mem[160] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                if not -mem[_5642 + 128] + 10000:
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
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[128] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / mem[128] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                        else:
                            _8513 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8513] = return_data.size
                            mem[_8513 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5642 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5642 + 12 len 20] == address(_5653):
                                if not -mem[_5642 + 128] + 10000:
                                    if mem[_8513 + 64]:
                                        if False and mem[_8513 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8513 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8513 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8513 + 32] and 10000 > -1 / mem[_8513 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8513 + 32] / 10000 != mem[_8513 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8513 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8513 + 32] < 10000 * mem[_8513 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8513 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8513 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8513 + 32]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8513 + 64]:
                                        if mem[_8513 + 32] and 10000 > -1 / mem[_8513 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8513 + 32] / 10000 != mem[_8513 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8513 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8513 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8513 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8513 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8513 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8513 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8513 + 64] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[_8513 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8513 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8513 + 64]) / mem[_8513 + 64] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8513 + 32] and 10000 > -1 / mem[_8513 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8513 + 32] / 10000 != mem[_8513 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8513 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8513 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8513 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8513 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8513 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8513 + 64]) / (10000 * mem[_8513 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8513 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8513 + 64]) / (10000 * mem[_8513 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                if not -mem[_5642 + 128] + 10000:
                                    if mem[_8513 + 32]:
                                        if False and mem[_8513 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8513 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8513 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8513 + 64] and 10000 > -1 / mem[_8513 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8513 + 64] / 10000 != mem[_8513 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8513 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8513 + 64] < 10000 * mem[_8513 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8513 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8513 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8513 + 64]) - 1
                                else:
                                    if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                        revert with 'NH{q', 17
                                    if not -mem[_5642 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8513 + 32]:
                                        if mem[_8513 + 64] and 10000 > -1 / mem[_8513 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8513 + 64] / 10000 != mem[_8513 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8513 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8513 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8513 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8513 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8513 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8513 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                    else:
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8513 + 32] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 17
                                        if not mem[_8513 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8513 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8513 + 32]) / mem[_8513 + 32] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8513 + 64] and 10000 > -1 / mem[_8513 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8513 + 64] / 10000 != mem[_8513 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8513 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8513 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8513 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8513 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                            revert with 'NH{q', 18
                                        if (10000 * _5637 * mem[_8513 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8513 + 32]) / (10000 * mem[_8513 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8513 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8513 + 32]) / (10000 * mem[_8513 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
            else:
                mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
                mem[32] = 3
                if stor3[mem[mem[(32 * idx) + 128] + 108 len 20]]:
                    _5657 = mem[mem[(32 * idx) + 128]]
                    _5658 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                        _5707 = mem[mem[(32 * idx) + 128] + 64]
                        _5739 = mem[64]
                        _5740 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5740 + 32] = mem[_5740 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _5839 = mem[_5740]
                        s = 0
                        while s < _5839:
                            mem[_5739 + s + 36] = mem[_5740 + s + 32]
                            _5632 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_5839) <= _5839:
                            staticcall address(_5707).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5739 + _5839 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5642 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5642 + 12 len 20] == address(_5657):
                                    if not -mem[_5642 + 128] + 10000:
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
                                        if 0 / 10000 * mem[128] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[160] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / mem[160] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                else:
                                    if not -mem[_5642 + 128] + 10000:
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
                                        if 0 / 10000 * mem[160] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[128] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / mem[128] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                _8490 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8490] = return_data.size
                                mem[_8490 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5642 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5642 + 12 len 20] == address(_5657):
                                    if not -mem[_5642 + 128] + 10000:
                                        if mem[_8490 + 64]:
                                            if False and mem[_8490 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_8490 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_8490 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8490 + 32] and 10000 > -1 / mem[_8490 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8490 + 32] / 10000 != mem[_8490 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8490 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8490 + 32] < 10000 * mem[_8490 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8490 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / 10000 * mem[_8490 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8490 + 32]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_8490 + 64]:
                                            if mem[_8490 + 32] and 10000 > -1 / mem[_8490 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8490 + 32] / 10000 != mem[_8490 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8490 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8490 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8490 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8490 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[_8490 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8490 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8490 + 64] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[_8490 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8490 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8490 + 64]) / mem[_8490 + 64] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_8490 + 32] and 10000 > -1 / mem[_8490 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8490 + 32] / 10000 != mem[_8490 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8490 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8490 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8490 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8490 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8490 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8490 + 64]) / (10000 * mem[_8490 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8490 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8490 + 64]) / (10000 * mem[_8490 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                else:
                                    if not -mem[_5642 + 128] + 10000:
                                        if mem[_8490 + 32]:
                                            if False and mem[_8490 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_8490 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_8490 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8490 + 64] and 10000 > -1 / mem[_8490 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8490 + 64] / 10000 != mem[_8490 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8490 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8490 + 64] < 10000 * mem[_8490 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8490 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / 10000 * mem[_8490 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8490 + 64]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_8490 + 32]:
                                            if mem[_8490 + 64] and 10000 > -1 / mem[_8490 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8490 + 64] / 10000 != mem[_8490 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8490 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8490 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8490 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8490 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[_8490 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8490 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8490 + 32] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[_8490 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8490 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8490 + 32]) / mem[_8490 + 32] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_8490 + 64] and 10000 > -1 / mem[_8490 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8490 + 64] / 10000 != mem[_8490 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8490 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8490 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8490 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8490 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8490 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8490 + 32]) / (10000 * mem[_8490 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8490 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8490 + 32]) / (10000 * mem[_8490 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                        else:
                            mem[_5739 + _5839 + 36] = 0
                            staticcall address(_5707).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5739 + _5839 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5642 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5642 + 12 len 20] == address(_5657):
                                    if not -mem[_5642 + 128] + 10000:
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
                                        if 0 / 10000 * mem[128] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[160] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / mem[160] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                else:
                                    if not -mem[_5642 + 128] + 10000:
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
                                        if 0 / 10000 * mem[160] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[128] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / mem[128] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                _8519 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8519] = return_data.size
                                mem[_8519 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5642 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5642 + 12 len 20] == address(_5657):
                                    if not -mem[_5642 + 128] + 10000:
                                        if mem[_8519 + 64]:
                                            if False and mem[_8519 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_8519 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_8519 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8519 + 32] and 10000 > -1 / mem[_8519 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8519 + 32] / 10000 != mem[_8519 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8519 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8519 + 32] < 10000 * mem[_8519 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8519 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / 10000 * mem[_8519 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8519 + 32]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_8519 + 64]:
                                            if mem[_8519 + 32] and 10000 > -1 / mem[_8519 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8519 + 32] / 10000 != mem[_8519 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8519 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8519 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8519 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8519 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[_8519 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8519 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8519 + 64] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[_8519 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8519 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8519 + 64]) / mem[_8519 + 64] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_8519 + 32] and 10000 > -1 / mem[_8519 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8519 + 32] / 10000 != mem[_8519 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8519 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8519 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8519 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8519 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8519 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8519 + 64]) / (10000 * mem[_8519 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8519 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8519 + 64]) / (10000 * mem[_8519 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                else:
                                    if not -mem[_5642 + 128] + 10000:
                                        if mem[_8519 + 32]:
                                            if False and mem[_8519 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_8519 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_8519 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8519 + 64] and 10000 > -1 / mem[_8519 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8519 + 64] / 10000 != mem[_8519 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8519 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8519 + 64] < 10000 * mem[_8519 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8519 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / 10000 * mem[_8519 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8519 + 64]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_8519 + 32]:
                                            if mem[_8519 + 64] and 10000 > -1 / mem[_8519 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8519 + 64] / 10000 != mem[_8519 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8519 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8519 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8519 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8519 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[_8519 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8519 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8519 + 32] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[_8519 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8519 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8519 + 32]) / mem[_8519 + 32] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_8519 + 64] and 10000 > -1 / mem[_8519 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8519 + 64] / 10000 != mem[_8519 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8519 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8519 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8519 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8519 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8519 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8519 + 32]) / (10000 * mem[_8519 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8519 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8519 + 32]) / (10000 * mem[_8519 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                    else:
                        _5708 = mem[mem[(32 * idx) + 128] + 64]
                        _5743 = mem[64]
                        _5744 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5744 + 32] = mem[_5744 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _5840 = mem[_5744]
                        s = 0
                        while s < _5840:
                            mem[_5743 + s + 36] = mem[_5744 + s + 32]
                            _5632 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_5840) <= _5840:
                            staticcall address(_5708).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5743 + _5840 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5642 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5642 + 12 len 20] == address(_5658):
                                    if not -mem[_5642 + 128] + 10000:
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
                                        if 0 / 10000 * mem[128] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[160] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / mem[160] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                else:
                                    if not -mem[_5642 + 128] + 10000:
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
                                        if 0 / 10000 * mem[160] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[128] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / mem[128] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                _8492 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8492] = return_data.size
                                mem[_8492 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5642 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5642 + 12 len 20] == address(_5658):
                                    if not -mem[_5642 + 128] + 10000:
                                        if mem[_8492 + 64]:
                                            if False and mem[_8492 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_8492 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_8492 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8492 + 32] and 10000 > -1 / mem[_8492 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8492 + 32] / 10000 != mem[_8492 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8492 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8492 + 32] < 10000 * mem[_8492 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8492 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / 10000 * mem[_8492 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8492 + 32]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_8492 + 64]:
                                            if mem[_8492 + 32] and 10000 > -1 / mem[_8492 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8492 + 32] / 10000 != mem[_8492 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8492 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8492 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8492 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8492 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[_8492 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8492 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8492 + 64] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[_8492 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8492 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8492 + 64]) / mem[_8492 + 64] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_8492 + 32] and 10000 > -1 / mem[_8492 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8492 + 32] / 10000 != mem[_8492 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8492 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8492 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8492 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8492 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8492 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8492 + 64]) / (10000 * mem[_8492 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8492 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8492 + 64]) / (10000 * mem[_8492 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                else:
                                    if not -mem[_5642 + 128] + 10000:
                                        if mem[_8492 + 32]:
                                            if False and mem[_8492 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_8492 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_8492 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8492 + 64] and 10000 > -1 / mem[_8492 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8492 + 64] / 10000 != mem[_8492 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8492 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8492 + 64] < 10000 * mem[_8492 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8492 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / 10000 * mem[_8492 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8492 + 64]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_8492 + 32]:
                                            if mem[_8492 + 64] and 10000 > -1 / mem[_8492 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8492 + 64] / 10000 != mem[_8492 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8492 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8492 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8492 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8492 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[_8492 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8492 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8492 + 32] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[_8492 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8492 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8492 + 32]) / mem[_8492 + 32] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_8492 + 64] and 10000 > -1 / mem[_8492 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8492 + 64] / 10000 != mem[_8492 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8492 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8492 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8492 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8492 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8492 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8492 + 32]) / (10000 * mem[_8492 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8492 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8492 + 32]) / (10000 * mem[_8492 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                        else:
                            mem[_5743 + _5840 + 36] = 0
                            staticcall address(_5708).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5743 + _5840 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5642 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5642 + 12 len 20] == address(_5658):
                                    if not -mem[_5642 + 128] + 10000:
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
                                        if 0 / 10000 * mem[128] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[160] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / mem[160] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[160]) - (mem[_5642 + 128] * _5637 * mem[160]) / (10000 * mem[128]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                else:
                                    if not -mem[_5642 + 128] + 10000:
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
                                        if 0 / 10000 * mem[160] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[128] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / mem[128] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[128]) - (mem[_5642 + 128] * _5637 * mem[128]) / (10000 * mem[160]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                            else:
                                _8524 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_8524] = return_data.size
                                mem[_8524 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5642 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5642 + 12 len 20] == address(_5658):
                                    if not -mem[_5642 + 128] + 10000:
                                        if mem[_8524 + 64]:
                                            if False and mem[_8524 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_8524 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_8524 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8524 + 32] and 10000 > -1 / mem[_8524 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8524 + 32] / 10000 != mem[_8524 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8524 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8524 + 32] < 10000 * mem[_8524 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8524 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / 10000 * mem[_8524 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8524 + 32]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_8524 + 64]:
                                            if mem[_8524 + 32] and 10000 > -1 / mem[_8524 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8524 + 32] / 10000 != mem[_8524 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8524 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8524 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8524 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8524 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[_8524 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8524 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8524 + 64] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[_8524 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8524 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8524 + 64]) / mem[_8524 + 64] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_8524 + 32] and 10000 > -1 / mem[_8524 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8524 + 32] / 10000 != mem[_8524 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8524 + 32] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8524 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8524 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8524 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8524 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8524 + 64]) / (10000 * mem[_8524 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8524 + 64]) - (mem[_5642 + 128] * _5637 * mem[_8524 + 64]) / (10000 * mem[_8524 + 32]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                else:
                                    if not -mem[_5642 + 128] + 10000:
                                        if mem[_8524 + 32]:
                                            if False and mem[_8524 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_8524 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_8524 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8524 + 64] and 10000 > -1 / mem[_8524 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8524 + 64] / 10000 != mem[_8524 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8524 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8524 + 64] < 10000 * mem[_8524 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_8524 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / 10000 * mem[_8524 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8524 + 64]) - 1
                                    else:
                                        if _5637 and -mem[_5642 + 128] + 10000 > -1 / _5637:
                                            revert with 'NH{q', 17
                                        if not -mem[_5642 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5637) - (mem[_5642 + 128] * _5637) / -mem[_5642 + 128] + 10000 != _5637:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_8524 + 32]:
                                            if mem[_8524 + 64] and 10000 > -1 / mem[_8524 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8524 + 64] / 10000 != mem[_8524 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8524 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8524 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8524 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8524 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if 0 / (10000 * mem[_8524 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8524 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                                        else:
                                            if (10000 * _5637) - (mem[_5642 + 128] * _5637) and mem[_8524 + 32] > -1 / (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 17
                                            if not mem[_8524 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8524 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8524 + 32]) / mem[_8524 + 32] != (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_8524 + 64] and 10000 > -1 / mem[_8524 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_8524 + 64] / 10000 != mem[_8524 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_8524 + 64] > (-10000 * _5637) + (mem[_5642 + 128] * _5637) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_8524 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 10000 * mem[_8524 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_8524 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637):
                                                revert with 'NH{q', 18
                                            if (10000 * _5637 * mem[_8524 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8524 + 32]) / (10000 * mem[_8524 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5637 * mem[_8524 + 32]) - (mem[_5642 + 128] * _5637 * mem[_8524 + 32]) / (10000 * mem[_8524 + 64]) + (10000 * _5637) - (mem[_5642 + 128] * _5637)) - 1
                else:
                    if mem[mem[(32 * idx) + 128] + 160] == 5:
                        _5663 = mem[mem[(32 * idx) + 128] + 96]
                        _5677 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_5677 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_5677]:
                            revert with 'NH{q', 50
                        mem[_5677 + 32] = mem[_5642 + 12 len 20]
                        if 1 >= mem[_5677]:
                            revert with 'NH{q', 50
                        mem[_5677 + 64] = mem[_5642 + 44 len 20]
                        mem[_5677 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5677 + 100] = _5637
                        mem[_5677 + 132] = 64
                        mem[_5677 + 164] = mem[_5677]
                        s = 0
                        t = _5677 + 32
                        u = _5677 + 196
                        while s < mem[_5677]:
                            mem[u] = mem[t + 12 len 20]
                            _5632 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_5663))
                        staticcall address(_5663).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5677 + (32 * mem[_5677]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8476 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8514 = mem[_8476]
                        require mem[_8476] <= test266151307()
                        require _8476 + mem[_8476] + 31 < _8476 + return_data.size
                        _8618 = mem[_8476 + mem[_8476]]
                        if mem[_8476 + mem[_8476]] > test266151307():
                            revert with 'NH{q', 65
                        if _8476 + ceil32(return_data.size) + floor32(mem[_8476 + mem[_8476]]) + 1 > test266151307() or floor32(mem[_8476 + mem[_8476]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _8476 + ceil32(return_data.size) + floor32(mem[_8476 + mem[_8476]]) + 1
                        mem[_8476 + ceil32(return_data.size)] = _8618
                        require _8514 + (32 * _8618) + 32 <= return_data.size
                        s = 0
                        t = _8476 + _8514 + 32
                        u = _8476 + ceil32(return_data.size) + 32
                        while s < _8618:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _5632 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _8618 < 1:
                            revert with 'NH{q', 17
                        if _8618 - 1 >= _8618:
                            revert with 'NH{q', 50
                        if mem[(32 * _8618 - 1) + _8476 + ceil32(return_data.size) + 32] < 1:
                            revert with 'NH{q', 17
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_2819]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _2819 + 32] = mem[(32 * _8618 - 1) + _8476 + ceil32(return_data.size) + 32] - 1
                    else:
                        if mem[mem[(32 * idx) + 128] + 160] == 7:
                            mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
                            mem[32] = 0
                            mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            _5670 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                            mem[32] = 0
                            _5672 = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                            mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                            mem[32] = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                            _5675 = mem[mem[(32 * idx) + 128] + 96]
                            mem[mem[64]] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint8(stor[_5670])
                            mem[mem[64] + 36] = uint8(stor[_5672][mem[0]])
                            mem[mem[64] + 68] = _5637
                            require ext_code.size(address(_5675))
                            staticcall address(_5675).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args uint8(stor[_5670]), uint8(stor[_5672][mem[0]]), _5637
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5940 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5940] == mem[_5940]
                            if mem[_5940] < 1:
                                revert with 'NH{q', 17
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_2819]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _2819 + 32] = mem[_5940] - 1
                        else:
                            if mem[mem[(32 * idx) + 128] + 160] < 80:
                                if mem[mem[(32 * idx) + 128] + 160] == 12:
                                    require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                    staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5803 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 160
                                    require mem[_5803] == mem[_5803 + 18 len 14]
                                    require mem[_5803 + 32] == mem[_5803 + 50 len 14]
                                    require mem[_5803 + 64] == mem[_5803 + 82 len 14]
                                    require mem[_5803 + 96] == mem[_5803 + 114 len 14]
                                    require mem[_5803 + 128] == mem[_5803 + 128]
                                    if 10^18 < mem[_5803 + 128]:
                                        revert with 'NH{q', 17
                                    if -mem[_5803 + 128] + 10^18 > 10^18:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if mem[_5642 + 12 len 20] < mem[_5642 + 44 len 20]:
                                        if mem[_5642 + 12 len 20] == mem[_5642 + 12 len 20]:
                                            if not -mem[_5803 + 128] + 10^18:
                                                if mem[_5803 + 114 len 14]:
                                                    if False and mem[_5803 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5803 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5803 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5803 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5803 + 82 len 14] < mem[_5803 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5803 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5803 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5803 + 82 len 14]) - 1
                                            else:
                                                if _5637 and -mem[_5803 + 128] + 10^18 > -1 / _5637:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5803 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / -mem[_5803 + 128] + 10^18 != _5637:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5803 + 114 len 14]:
                                                    if mem[_5803 + 82 len 14] > -((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < mem[_5803 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 and mem[_5803 + 114 len 14] > -1 / (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5803 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 114 len 14] / mem[_5803 + 114 len 14] != (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5803 + 82 len 14] > -((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < mem[_5803 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 114 len 14] / mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 114 len 14] / mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18)) - 1
                                        else:
                                            if not -mem[_5803 + 128] + 10^18:
                                                if mem[_5803 + 82 len 14]:
                                                    if False and mem[_5803 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5803 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5803 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5803 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5803 + 114 len 14] < mem[_5803 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5803 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5803 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5803 + 114 len 14]) - 1
                                            else:
                                                if _5637 and -mem[_5803 + 128] + 10^18 > -1 / _5637:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5803 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / -mem[_5803 + 128] + 10^18 != _5637:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5803 + 82 len 14]:
                                                    if mem[_5803 + 114 len 14] > -((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < mem[_5803 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 and mem[_5803 + 82 len 14] > -1 / (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5803 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 82 len 14] / mem[_5803 + 82 len 14] != (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5803 + 114 len 14] > -((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < mem[_5803 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 82 len 14] / mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 82 len 14] / mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18)) - 1
                                    else:
                                        if mem[_5642 + 12 len 20] == mem[_5642 + 44 len 20]:
                                            if not -mem[_5803 + 128] + 10^18:
                                                if mem[_5803 + 114 len 14]:
                                                    if False and mem[_5803 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5803 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5803 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5803 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5803 + 82 len 14] < mem[_5803 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5803 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5803 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5803 + 82 len 14]) - 1
                                            else:
                                                if _5637 and -mem[_5803 + 128] + 10^18 > -1 / _5637:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5803 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / -mem[_5803 + 128] + 10^18 != _5637:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5803 + 114 len 14]:
                                                    if mem[_5803 + 82 len 14] > -((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < mem[_5803 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 and mem[_5803 + 114 len 14] > -1 / (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5803 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 114 len 14] / mem[_5803 + 114 len 14] != (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5803 + 82 len 14] > -((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < mem[_5803 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 114 len 14] / mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 114 len 14] / mem[_5803 + 82 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18)) - 1
                                        else:
                                            if not -mem[_5803 + 128] + 10^18:
                                                if mem[_5803 + 82 len 14]:
                                                    if False and mem[_5803 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5803 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5803 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5803 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5803 + 114 len 14] < mem[_5803 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5803 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5803 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5803 + 114 len 14]) - 1
                                            else:
                                                if _5637 and -mem[_5803 + 128] + 10^18 > -1 / _5637:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5803 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / -mem[_5803 + 128] + 10^18 != _5637:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5803 + 82 len 14]:
                                                    if mem[_5803 + 114 len 14] > -((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < mem[_5803 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 and mem[_5803 + 82 len 14] > -1 / (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5803 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 82 len 14] / mem[_5803 + 82 len 14] != (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5803 + 114 len 14] > -((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < mem[_5803 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 82 len 14] / mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18 * mem[_5803 + 82 len 14] / mem[_5803 + 114 len 14] + ((10^18 * _5637) - (mem[_5803 + 128] * _5637) / 10^18)) - 1
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _5632 = mem[96]
                                    idx = idx + 1
                                    continue 
                                if mem[mem[(32 * idx) + 128] + 160] == 13:
                                    _5773 = mem[mem[(32 * idx) + 128]]
                                    _5774 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    mem[mem[64] + 68] = address(_5774)
                                    mem[mem[64] + 100] = _5637
                                    require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                    staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                            gas gas_remaining wei
                                           args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_5773), address(_5774), _5637
                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6224 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    require mem[_6224] == mem[_6224]
                                    require mem[_6224 + 32] == mem[_6224 + 32]
                                    if mem[_6224] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = mem[_6224] - 1
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _5632 = mem[96]
                                    idx = idx + 1
                                    continue 
                                if mem[mem[(32 * idx) + 128] + 160] == 14:
                                    _5801 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    mem[mem[64] + 36] = address(_5801)
                                    mem[mem[64] + 68] = _5637
                                    require ext_code.size(0x66357dcace80431aee0a7507e2e361b7e2402370)
                                    staticcall 0x66357dcace80431aee0a7507e2e361b7e2402370.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4], address(_5801), _5637
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6190 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6190] == mem[_6190]
                                    if mem[_6190] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = mem[_6190] - 1
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _5632 = mem[96]
                                    idx = idx + 1
                                    continue 
                                if mem[mem[(32 * idx) + 128] + 160] == 16:
                                    _5827 = mem[mem[(32 * idx) + 128] + 96]
                                    _5829 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    mem[mem[64] + 36] = address(_5829)
                                    mem[mem[64] + 68] = _5637
                                    require ext_code.size(address(_5827))
                                    staticcall address(_5827).getSwapOutput(address arg1, address arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4], address(_5829), _5637
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6198 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6198] == mem[_6198]
                                    if mem[_6198] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = mem[_6198] - 1
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _5632 = mem[96]
                                    idx = idx + 1
                                    continue 
                                if mem[mem[(32 * idx) + 128] + 160] == 17:
                                    _5857 = mem[mem[(32 * idx) + 128] + 64]
                                    _5858 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64] + 4] = _5637
                                    mem[mem[64] + 36] = address(_5858)
                                    require ext_code.size(address(_5857))
                                    staticcall address(_5857).getAmountOut(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args _5637, address(_5858)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6114 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6114] == mem[_6114]
                                    if mem[_6114] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = mem[_6114] - 1
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _5632 = mem[96]
                                    idx = idx + 1
                                    continue 
                                if mem[mem[(32 * idx) + 128] + 160] != 18:
                                    require mem[mem[(32 * idx) + 128] + 160] == 99
                                    if _5637 < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = _5637 - 1
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    _5632 = mem[96]
                                    idx = idx + 1
                                    continue 
                                _5879 = mem[mem[(32 * idx) + 128] + 64]
                                _5880 = mem[mem[(32 * idx) + 128] + 128]
                                _5881 = mem[mem[(32 * idx) + 128]]
                                _5882 = mem[mem[(32 * idx) + 128] + 32]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _5880 or 1208925819614629174706176 or address(_5879)
                                require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
                                staticcall 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args (_5880 or 1208925819614629174706176 or address(_5879))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5962 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _6036 = mem[_5962]
                                require mem[_5962] <= test266151307()
                                require _5962 + mem[_5962] + 31 < _5962 + return_data.size
                                _6144 = mem[_5962 + mem[_5962]]
                                if mem[_5962 + mem[_5962]] > test266151307():
                                    revert with 'NH{q', 65
                                if _5962 + ceil32(return_data.size) + floor32(mem[_5962 + mem[_5962]]) + 1 > test266151307() or floor32(mem[_5962 + mem[_5962]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _5962 + ceil32(return_data.size) + floor32(mem[_5962 + mem[_5962]]) + 1
                                mem[_5962 + ceil32(return_data.size)] = _6144
                                require _6036 + (32 * _6144) + 32 <= return_data.size
                                s = 0
                                t = _5962 + _6036 + 32
                                u = _5962 + ceil32(return_data.size) + 32
                                while s < _6144:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    _5632 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _8467 = mem[_5962 + 32]
                                require mem[_5962 + 32] <= test266151307()
                                require _5962 + mem[_5962 + 32] + 31 < _5962 + return_data.size
                                _8488 = mem[_5962 + mem[_5962 + 32]]
                                if mem[_5962 + mem[_5962 + 32]] > test266151307():
                                    revert with 'NH{q', 65
                                _8676 = mem[64]
                                if mem[64] + floor32(mem[_5962 + mem[_5962 + 32]]) + 1 > test266151307() or mem[64] + floor32(mem[_5962 + mem[_5962 + 32]]) + 1 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + floor32(mem[_5962 + mem[_5962 + 32]]) + 1
                                mem[_8676] = _8488
                                require _8467 + (32 * _8488) + 32 <= return_data.size
                                s = 0
                                t = _5962 + _8467 + 32
                                u = _8676 + 32
                                while s < _8488:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _5632 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require mem[_5962 + 64] == mem[_5962 + 64]
                                s = 0
                                t = 0
                                u = 0
                                while s < mem[_5962 + ceil32(return_data.size)]:
                                    if s >= mem[_5962 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * s) + _5962 + ceil32(return_data.size) + 44 len 20] != address(_5881):
                                        if s >= mem[_5962 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        if mem[(32 * s) + _5962 + ceil32(return_data.size) + 44 len 20] != address(_5882):
                                            if s == -1:
                                                revert with 'NH{q', 17
                                            _5632 = mem[96]
                                            s = s + 1
                                            t = t
                                            u = u
                                            continue 
                                        if s >= _8488:
                                            revert with 'NH{q', 50
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        _5632 = mem[96]
                                        s = s + 1
                                        t = mem[(32 * s) + _8676 + 32]
                                        u = u
                                        continue 
                                    if s >= _8488:
                                        revert with 'NH{q', 50
                                    if s >= mem[_5962 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * s) + _5962 + ceil32(return_data.size) + 44 len 20] != address(_5882):
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        _5632 = mem[96]
                                        s = s + 1
                                        t = t
                                        u = mem[(32 * s) + _8676 + 32]
                                        continue 
                                    if s >= _8488:
                                        revert with 'NH{q', 50
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _5632 = mem[96]
                                    s = s + 1
                                    t = mem[(32 * s) + _8676 + 32]
                                    u = mem[(32 * s) + _8676 + 32]
                                    continue 
                                _10666 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_10666] = 0
                                mem[_10666 + 32] = address(_5881)
                                mem[_10666 + 64] = address(_5882)
                                mem[_10666 + 96] = _5637
                                mem[_10666 + 128] = _5880 or 1208925819614629174706176 or address(_5879)
                                mem[_10666 + 160] = 0
                                mem[_10666 + 192] = 0
                                mem[_10666 + 224] = 0
                                _10674 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10666 + 256] = _10674
                                mem[_10674 + 32] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[_10674 + 36] = 96
                                mem[_10674 + 132] = 0
                                mem[_10674 + 164] = address(_5881)
                                mem[_10674 + 196] = address(_5882)
                                mem[_10674 + 228] = _5637
                                mem[_10674 + 260] = _5880 or 1208925819614629174706176 or address(_5879)
                                mem[_10674 + 292] = 0
                                mem[_10674 + 324] = 0
                                mem[_10674 + 356] = 0
                                mem[_10674 + 388] = 288
                                _10762 = mem[_10674]
                                mem[_10674 + 420] = mem[_10674]
                                s = 0
                                while s < mem[_10674]:
                                    mem[_10674 + s + 452] = mem[_10674 + s + 32]
                                    _5632 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_10674]) > mem[_10674]:
                                    mem[_10674 + mem[_10674] + 452] = 0
                                mem[_10674 + 68] = u
                                mem[_10674 + 100] = t
                                require ext_code.size(address(_5879))
                                staticcall address(_5879).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                        gas gas_remaining wei
                                       args 96, u, t, 0, address(_5881), address(_5882), _5637, _5880 or 1208925819614629174706176 or address(_5879), 0, 0, 0, 288, mem[_10674], mem[_10674 + 452 len ceil32(mem[_10674])]
                                mem[_10674 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _10674 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] < 1:
                                    revert with 'NH{q', 17
                                if ceil32(_10762) > -2:
                                    revert with 'NH{q', 17
                                if ceil32(_10762) + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * ceil32(_10762) + 1) + _2819 + 32] = ext_call.return_data[0] - 1
                                if ceil32(_10762) == -1:
                                    revert with 'NH{q', 17
                                _5632 = mem[96]
                                s = ceil32(_10762) + 1
                                continue 
                            if mem[mem[(32 * idx) + 128] + 160] < 90:
                                mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
                                mem[32] = 0
                                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                _5731 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                                mem[32] = 0
                                _5733 = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                                mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                                if mem[mem[(32 * idx) + 128] + 160] == 81:
                                    _5781 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0x5e0d443f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5731'))))
                                    mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5733')))))
                                    mem[mem[64] + 68] = _5637
                                    require ext_code.size(address(_5781))
                                    staticcall address(_5781).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('type', 256, ('stor', ('var', '_5731')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5733'))))), _5637
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6083 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6083] == mem[_6083]
                                    if mem[_6083] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = mem[_6083] - 1
                                else:
                                    if mem[mem[(32 * idx) + 128] + 160] == 82:
                                        _5809 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0x556d6e9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(stor[_5731])
                                        mem[mem[64] + 36] = uint256(stor[_5733][mem[0]])
                                        mem[mem[64] + 68] = _5637
                                        require ext_code.size(address(_5809))
                                        staticcall address(_5809).get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args uint256(stor[_5731]), uint256(stor[_5733][mem[0]]), _5637
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6116 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6116] == mem[_6116]
                                        if mem[_6116] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = mem[_6116] - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 160] == 83:
                                            _5837 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0x7211ef700000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5731'))))
                                            mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5733')))))
                                            mem[mem[64] + 68] = _5637
                                            require ext_code.size(address(_5837))
                                            staticcall address(_5837).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('type', 256, ('stor', ('var', '_5731')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5733'))))), _5637
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6147 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6147] == mem[_6147]
                                            if mem[_6147] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = mem[_6147] - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 160] != 84:
                                                revert with 'NH{q', 17
                                            _5865 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0x85f11d1e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(stor[_5731])
                                            mem[mem[64] + 36] = uint256(stor[_5733][mem[0]])
                                            mem[mem[64] + 68] = _5637
                                            require ext_code.size(address(_5865))
                                            staticcall address(_5865).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args uint256(stor[_5731]), uint256(stor[_5733][mem[0]]), _5637
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6173 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6173] == mem[_6173]
                                            if mem[_6173] and 9996 > -1 / mem[_6173]:
                                                revert with 'NH{q', 17
                                            if 9996 * mem[_6173] / 10000 < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (9996 * mem[_6173] / 10000) - 1
                            else:
                                if mem[mem[(32 * idx) + 128] + 160] == 12:
                                    require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                    staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5835 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 160
                                    require mem[_5835] == mem[_5835 + 18 len 14]
                                    require mem[_5835 + 32] == mem[_5835 + 50 len 14]
                                    require mem[_5835 + 64] == mem[_5835 + 82 len 14]
                                    require mem[_5835 + 96] == mem[_5835 + 114 len 14]
                                    require mem[_5835 + 128] == mem[_5835 + 128]
                                    if 10^18 < mem[_5835 + 128]:
                                        revert with 'NH{q', 17
                                    if -mem[_5835 + 128] + 10^18 > 10^18:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if mem[_5642 + 12 len 20] < mem[_5642 + 44 len 20]:
                                        if mem[_5642 + 12 len 20] == mem[_5642 + 12 len 20]:
                                            if not -mem[_5835 + 128] + 10^18:
                                                if mem[_5835 + 114 len 14]:
                                                    if False and mem[_5835 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5835 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5835 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5835 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5835 + 82 len 14] < mem[_5835 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5835 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5835 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5835 + 82 len 14]) - 1
                                            else:
                                                if _5637 and -mem[_5835 + 128] + 10^18 > -1 / _5637:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5835 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / -mem[_5835 + 128] + 10^18 != _5637:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5835 + 114 len 14]:
                                                    if mem[_5835 + 82 len 14] > -((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < mem[_5835 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 and mem[_5835 + 114 len 14] > -1 / (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5835 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 114 len 14] / mem[_5835 + 114 len 14] != (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5835 + 82 len 14] > -((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < mem[_5835 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 114 len 14] / mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 114 len 14] / mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18)) - 1
                                        else:
                                            if not -mem[_5835 + 128] + 10^18:
                                                if mem[_5835 + 82 len 14]:
                                                    if False and mem[_5835 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5835 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5835 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5835 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5835 + 114 len 14] < mem[_5835 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5835 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5835 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5835 + 114 len 14]) - 1
                                            else:
                                                if _5637 and -mem[_5835 + 128] + 10^18 > -1 / _5637:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5835 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / -mem[_5835 + 128] + 10^18 != _5637:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5835 + 82 len 14]:
                                                    if mem[_5835 + 114 len 14] > -((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < mem[_5835 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 and mem[_5835 + 82 len 14] > -1 / (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5835 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 82 len 14] / mem[_5835 + 82 len 14] != (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5835 + 114 len 14] > -((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < mem[_5835 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 82 len 14] / mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 82 len 14] / mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18)) - 1
                                    else:
                                        if mem[_5642 + 12 len 20] == mem[_5642 + 44 len 20]:
                                            if not -mem[_5835 + 128] + 10^18:
                                                if mem[_5835 + 114 len 14]:
                                                    if False and mem[_5835 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5835 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5835 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5835 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5835 + 82 len 14] < mem[_5835 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5835 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5835 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5835 + 82 len 14]) - 1
                                            else:
                                                if _5637 and -mem[_5835 + 128] + 10^18 > -1 / _5637:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5835 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / -mem[_5835 + 128] + 10^18 != _5637:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5835 + 114 len 14]:
                                                    if mem[_5835 + 82 len 14] > -((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < mem[_5835 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 and mem[_5835 + 114 len 14] > -1 / (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5835 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 114 len 14] / mem[_5835 + 114 len 14] != (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5835 + 82 len 14] > -((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < mem[_5835 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 114 len 14] / mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 114 len 14] / mem[_5835 + 82 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18)) - 1
                                        else:
                                            if not -mem[_5835 + 128] + 10^18:
                                                if mem[_5835 + 82 len 14]:
                                                    if False and mem[_5835 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5835 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5835 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5835 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5835 + 114 len 14] < mem[_5835 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5835 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5835 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5835 + 114 len 14]) - 1
                                            else:
                                                if _5637 and -mem[_5835 + 128] + 10^18 > -1 / _5637:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5835 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / -mem[_5835 + 128] + 10^18 != _5637:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5835 + 82 len 14]:
                                                    if mem[_5835 + 114 len 14] > -((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < mem[_5835 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 and mem[_5835 + 82 len 14] > -1 / (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5835 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 82 len 14] / mem[_5835 + 82 len 14] != (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5835 + 114 len 14] > -((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < mem[_5835 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18):
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 82 len 14] / mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18 * mem[_5835 + 82 len 14] / mem[_5835 + 114 len 14] + ((10^18 * _5637) - (mem[_5835 + 128] * _5637) / 10^18)) - 1
                                else:
                                    if mem[mem[(32 * idx) + 128] + 160] == 13:
                                        _5805 = mem[mem[(32 * idx) + 128]]
                                        _5806 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                        mem[mem[64] + 68] = address(_5806)
                                        mem[mem[64] + 100] = _5637
                                        require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                        staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                                gas gas_remaining wei
                                               args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_5805), address(_5806), _5637
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6230 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        require mem[_6230] == mem[_6230]
                                        require mem[_6230 + 32] == mem[_6230 + 32]
                                        if mem[_6230] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = mem[_6230] - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 160] == 14:
                                            _5833 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                            mem[mem[64] + 36] = address(_5833)
                                            mem[mem[64] + 68] = _5637
                                            require ext_code.size(0x66357dcace80431aee0a7507e2e361b7e2402370)
                                            staticcall 0x66357dcace80431aee0a7507e2e361b7e2402370.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4], address(_5833), _5637
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6199 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6199] == mem[_6199]
                                            if mem[_6199] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = mem[_6199] - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 160] == 16:
                                                _5861 = mem[mem[(32 * idx) + 128] + 96]
                                                _5863 = mem[mem[(32 * idx) + 128] + 32]
                                                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                                mem[mem[64] + 36] = address(_5863)
                                                mem[mem[64] + 68] = _5637
                                                require ext_code.size(address(_5861))
                                                staticcall address(_5861).getSwapOutput(address arg1, address arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args mem[mem[64] + 4], address(_5863), _5637
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6204 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6204] == mem[_6204]
                                                if mem[_6204] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = mem[_6204] - 1
                                            else:
                                                if mem[mem[(32 * idx) + 128] + 160] == 17:
                                                    _5885 = mem[mem[(32 * idx) + 128] + 64]
                                                    _5886 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64] + 4] = _5637
                                                    mem[mem[64] + 36] = address(_5886)
                                                    require ext_code.size(address(_5885))
                                                    staticcall address(_5885).getAmountOut(uint256 arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args _5637, address(_5886)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6146 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6146] == mem[_6146]
                                                    if mem[_6146] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = mem[_6146] - 1
                                                else:
                                                    if mem[mem[(32 * idx) + 128] + 160] != 18:
                                                        require mem[mem[(32 * idx) + 128] + 160] == 99
                                                        if _5637 < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2819]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2819 + 32] = _5637 - 1
                                                    else:
                                                        _5900 = mem[mem[(32 * idx) + 128] + 64]
                                                        _5901 = mem[mem[(32 * idx) + 128] + 128]
                                                        _5902 = mem[mem[(32 * idx) + 128]]
                                                        _5903 = mem[mem[(32 * idx) + 128] + 32]
                                                        mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _5901 or 1208925819614629174706176 or address(_5900)
                                                        require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
                                                        staticcall 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.getPoolTokens(bytes32 arg1) with:
                                                                gas gas_remaining wei
                                                               args (_5901 or 1208925819614629174706176 or address(_5900))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5994 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _6080 = mem[_5994]
                                                        require mem[_5994] <= test266151307()
                                                        require _5994 + mem[_5994] + 31 < _5994 + return_data.size
                                                        _6171 = mem[_5994 + mem[_5994]]
                                                        if mem[_5994 + mem[_5994]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        if _5994 + ceil32(return_data.size) + floor32(mem[_5994 + mem[_5994]]) + 1 > test266151307() or floor32(mem[_5994 + mem[_5994]]) + 1 < 0:
                                                            revert with 'NH{q', 65
                                                        mem[64] = _5994 + ceil32(return_data.size) + floor32(mem[_5994 + mem[_5994]]) + 1
                                                        mem[_5994 + ceil32(return_data.size)] = _6171
                                                        require _6080 + (32 * _6171) + 32 <= return_data.size
                                                        s = 0
                                                        t = _5994 + _6080 + 32
                                                        u = _5994 + ceil32(return_data.size) + 32
                                                        while s < _6171:
                                                            require mem[t] == mem[t + 12 len 20]
                                                            mem[u] = mem[t]
                                                            _5632 = mem[96]
                                                            s = s + 1
                                                            t = t + 32
                                                            u = u + 32
                                                            continue 
                                                        _8468 = mem[_5994 + 32]
                                                        require mem[_5994 + 32] <= test266151307()
                                                        require _5994 + mem[_5994 + 32] + 31 < _5994 + return_data.size
                                                        _8489 = mem[_5994 + mem[_5994 + 32]]
                                                        if mem[_5994 + mem[_5994 + 32]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        _8677 = mem[64]
                                                        if mem[64] + floor32(mem[_5994 + mem[_5994 + 32]]) + 1 > test266151307() or mem[64] + floor32(mem[_5994 + mem[_5994 + 32]]) + 1 < mem[64]:
                                                            revert with 'NH{q', 65
                                                        mem[64] = mem[64] + floor32(mem[_5994 + mem[_5994 + 32]]) + 1
                                                        mem[_8677] = _8489
                                                        require _8468 + (32 * _8489) + 32 <= return_data.size
                                                        s = 0
                                                        t = _5994 + _8468 + 32
                                                        u = _8677 + 32
                                                        while s < _8489:
                                                            require mem[t] == mem[t]
                                                            mem[u] = mem[t]
                                                            _5632 = mem[96]
                                                            s = s + 1
                                                            t = t + 32
                                                            u = u + 32
                                                            continue 
                                                        require mem[_5994 + 64] == mem[_5994 + 64]
                                                        s = 0
                                                        t = 0
                                                        u = 0
                                                        while s < mem[_5994 + ceil32(return_data.size)]:
                                                            if s >= mem[_5994 + ceil32(return_data.size)]:
                                                                revert with 'NH{q', 50
                                                            if mem[(32 * s) + _5994 + ceil32(return_data.size) + 44 len 20] != address(_5902):
                                                                if s >= mem[_5994 + ceil32(return_data.size)]:
                                                                    revert with 'NH{q', 50
                                                                if mem[(32 * s) + _5994 + ceil32(return_data.size) + 44 len 20] != address(_5903):
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    _5632 = mem[96]
                                                                    s = s + 1
                                                                    t = t
                                                                    u = u
                                                                    continue 
                                                                if s >= _8489:
                                                                    revert with 'NH{q', 50
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                _5632 = mem[96]
                                                                s = s + 1
                                                                t = mem[(32 * s) + _8677 + 32]
                                                                u = u
                                                                continue 
                                                            if s >= _8489:
                                                                revert with 'NH{q', 50
                                                            if s >= mem[_5994 + ceil32(return_data.size)]:
                                                                revert with 'NH{q', 50
                                                            if mem[(32 * s) + _5994 + ceil32(return_data.size) + 44 len 20] != address(_5903):
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                _5632 = mem[96]
                                                                s = s + 1
                                                                t = t
                                                                u = mem[(32 * s) + _8677 + 32]
                                                                continue 
                                                            if s >= _8489:
                                                                revert with 'NH{q', 50
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            _5632 = mem[96]
                                                            s = s + 1
                                                            t = mem[(32 * s) + _8677 + 32]
                                                            u = mem[(32 * s) + _8677 + 32]
                                                            continue 
                                                        _10668 = mem[64]
                                                        mem[64] = mem[64] + 288
                                                        mem[_10668] = 0
                                                        mem[_10668 + 32] = address(_5902)
                                                        mem[_10668 + 64] = address(_5903)
                                                        mem[_10668 + 96] = _5637
                                                        mem[_10668 + 128] = _5901 or 1208925819614629174706176 or address(_5900)
                                                        mem[_10668 + 160] = 0
                                                        mem[_10668 + 192] = 0
                                                        mem[_10668 + 224] = 0
                                                        _10676 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_10668 + 256] = _10676
                                                        mem[_10676 + 32] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                                        mem[_10676 + 36] = 96
                                                        mem[_10676 + 132] = 0
                                                        mem[_10676 + 164] = address(_5902)
                                                        mem[_10676 + 196] = address(_5903)
                                                        mem[_10676 + 228] = _5637
                                                        mem[_10676 + 260] = _5901 or 1208925819614629174706176 or address(_5900)
                                                        mem[_10676 + 292] = 0
                                                        mem[_10676 + 324] = 0
                                                        mem[_10676 + 356] = 0
                                                        mem[_10676 + 388] = 288
                                                        mem[_10676 + 420] = mem[_10676]
                                                        s = 0
                                                        while s < mem[_10676]:
                                                            mem[_10676 + s + 452] = mem[_10676 + s + 32]
                                                            _5632 = mem[96]
                                                            s = s + 32
                                                            continue 
                                                        if ceil32(mem[_10676]) > mem[_10676]:
                                                            mem[_10676 + mem[_10676] + 452] = 0
                                                        mem[_10676 + 68] = u
                                                        mem[_10676 + 100] = t
                                                        require ext_code.size(address(_5900))
                                                        staticcall address(_5900).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                                                gas gas_remaining wei
                                                               args 96, u, t, 0, address(_5902), address(_5903), _5637, _5901 or 1208925819614629174706176 or address(_5900), 0, 0, 0, 288, mem[_10676], mem[_10676 + 452 len ceil32(mem[_10676])]
                                                        mem[_10676 + 32] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _10676 + ceil32(return_data.size) + 32
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        if ext_call.return_data[0] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2819]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2819 + 32] = ext_call.return_data[0] - 1
            if idx == -1:
                revert with 'NH{q', 17
            _5632 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _5646 = mem[_2819]
        mem[mem[64] + 32] = mem[_2819]
        mem[mem[64] + 64 len 32 * _5646] = mem[_2819 + 32 len 32 * _5646]
        var67001 = _5646
        return 32, mem[mem[64] + 32 len (32 * _5646) + 32]
    mem[_2819 + 32 len 32 * _2817 + 1] = call.data[calldata.size len 32 * _2817 + 1]
    if 0 >= mem[_2819]:
        revert with 'NH{q', 50
    mem[_2819 + 32] = cd[4]
    _5633 = mem[96]
    idx = 0
    while idx < _5633:
        if idx >= mem[_2819]:
            revert with 'NH{q', 50
        _5640 = mem[(32 * idx) + _2819 + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _5643 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 160] == 1:
            _5654 = mem[mem[(32 * idx) + 128]]
            _5655 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                _5693 = mem[mem[(32 * idx) + 128] + 64]
                _5709 = mem[64]
                _5710 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5710 + 32] = mem[_5710 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _5812 = mem[_5710]
                s = 0
                while s < _5812:
                    mem[_5709 + s + 36] = mem[_5710 + s + 32]
                    _5633 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_5812) <= _5812:
                    staticcall address(_5693).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5709 + _5812 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5643 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5643 + 12 len 20] == address(_5654):
                            if not -mem[_5643 + 128] + 10000:
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
                                if 0 / 10000 * mem[128] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[160] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / mem[160] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            if not -mem[_5643 + 128] + 10000:
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
                                if 0 / 10000 * mem[160] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[128] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / mem[128] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                    else:
                        _8494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8494] = return_data.size
                        mem[_8494 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5643 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5643 + 12 len 20] == address(_5654):
                            if not -mem[_5643 + 128] + 10000:
                                if mem[_8494 + 64]:
                                    if False and mem[_8494 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_8494 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_8494 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_8494 + 32] and 10000 > -1 / mem[_8494 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8494 + 32] / 10000 != mem[_8494 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_8494 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8494 + 32] < 10000 * mem[_8494 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_8494 + 32]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * mem[_8494 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8494 + 32]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_8494 + 64]:
                                    if mem[_8494 + 32] and 10000 > -1 / mem[_8494 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8494 + 32] / 10000 != mem[_8494 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8494 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8494 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8494 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8494 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[_8494 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8494 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8494 + 64] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[_8494 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8494 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8494 + 64]) / mem[_8494 + 64] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8494 + 32] and 10000 > -1 / mem[_8494 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8494 + 32] / 10000 != mem[_8494 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8494 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8494 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8494 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8494 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8494 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8494 + 64]) / (10000 * mem[_8494 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8494 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8494 + 64]) / (10000 * mem[_8494 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            if not -mem[_5643 + 128] + 10000:
                                if mem[_8494 + 32]:
                                    if False and mem[_8494 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_8494 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_8494 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_8494 + 64] and 10000 > -1 / mem[_8494 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8494 + 64] / 10000 != mem[_8494 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_8494 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8494 + 64] < 10000 * mem[_8494 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_8494 + 64]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * mem[_8494 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8494 + 64]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_8494 + 32]:
                                    if mem[_8494 + 64] and 10000 > -1 / mem[_8494 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8494 + 64] / 10000 != mem[_8494 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8494 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8494 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8494 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8494 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[_8494 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8494 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8494 + 32] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[_8494 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8494 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8494 + 32]) / mem[_8494 + 32] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8494 + 64] and 10000 > -1 / mem[_8494 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8494 + 64] / 10000 != mem[_8494 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8494 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8494 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8494 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8494 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8494 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8494 + 32]) / (10000 * mem[_8494 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8494 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8494 + 32]) / (10000 * mem[_8494 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                else:
                    mem[_5709 + _5812 + 36] = 0
                    staticcall address(_5693).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5709 + _5812 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5643 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5643 + 12 len 20] == address(_5654):
                            if not -mem[_5643 + 128] + 10000:
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
                                if 0 / 10000 * mem[128] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[160] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / mem[160] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            if not -mem[_5643 + 128] + 10000:
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
                                if 0 / 10000 * mem[160] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[128] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / mem[128] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                    else:
                        _8529 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8529] = return_data.size
                        mem[_8529 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5643 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5643 + 12 len 20] == address(_5654):
                            if not -mem[_5643 + 128] + 10000:
                                if mem[_8529 + 64]:
                                    if False and mem[_8529 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_8529 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_8529 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_8529 + 32] and 10000 > -1 / mem[_8529 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8529 + 32] / 10000 != mem[_8529 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_8529 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8529 + 32] < 10000 * mem[_8529 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_8529 + 32]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * mem[_8529 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8529 + 32]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_8529 + 64]:
                                    if mem[_8529 + 32] and 10000 > -1 / mem[_8529 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8529 + 32] / 10000 != mem[_8529 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8529 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8529 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8529 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8529 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[_8529 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8529 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8529 + 64] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[_8529 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8529 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8529 + 64]) / mem[_8529 + 64] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8529 + 32] and 10000 > -1 / mem[_8529 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8529 + 32] / 10000 != mem[_8529 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8529 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8529 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8529 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8529 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8529 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8529 + 64]) / (10000 * mem[_8529 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8529 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8529 + 64]) / (10000 * mem[_8529 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            if not -mem[_5643 + 128] + 10000:
                                if mem[_8529 + 32]:
                                    if False and mem[_8529 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_8529 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_8529 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_8529 + 64] and 10000 > -1 / mem[_8529 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8529 + 64] / 10000 != mem[_8529 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_8529 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8529 + 64] < 10000 * mem[_8529 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_8529 + 64]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * mem[_8529 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8529 + 64]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_8529 + 32]:
                                    if mem[_8529 + 64] and 10000 > -1 / mem[_8529 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8529 + 64] / 10000 != mem[_8529 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8529 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8529 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8529 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8529 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[_8529 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8529 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8529 + 32] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[_8529 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8529 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8529 + 32]) / mem[_8529 + 32] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8529 + 64] and 10000 > -1 / mem[_8529 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8529 + 64] / 10000 != mem[_8529 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8529 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8529 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8529 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8529 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8529 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8529 + 32]) / (10000 * mem[_8529 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8529 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8529 + 32]) / (10000 * mem[_8529 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
            else:
                _5694 = mem[mem[(32 * idx) + 128] + 64]
                _5713 = mem[64]
                _5714 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5714 + 32] = mem[_5714 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _5813 = mem[_5714]
                s = 0
                while s < _5813:
                    mem[_5713 + s + 36] = mem[_5714 + s + 32]
                    _5633 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_5813) <= _5813:
                    staticcall address(_5694).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5713 + _5813 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5643 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5643 + 12 len 20] == address(_5655):
                            if not -mem[_5643 + 128] + 10000:
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
                                if 0 / 10000 * mem[128] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[160] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / mem[160] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            if not -mem[_5643 + 128] + 10000:
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
                                if 0 / 10000 * mem[160] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[128] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / mem[128] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                    else:
                        _8496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8496] = return_data.size
                        mem[_8496 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5643 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5643 + 12 len 20] == address(_5655):
                            if not -mem[_5643 + 128] + 10000:
                                if mem[_8496 + 64]:
                                    if False and mem[_8496 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_8496 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_8496 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_8496 + 32] and 10000 > -1 / mem[_8496 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8496 + 32] / 10000 != mem[_8496 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_8496 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8496 + 32] < 10000 * mem[_8496 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_8496 + 32]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * mem[_8496 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8496 + 32]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_8496 + 64]:
                                    if mem[_8496 + 32] and 10000 > -1 / mem[_8496 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8496 + 32] / 10000 != mem[_8496 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8496 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8496 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8496 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8496 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[_8496 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8496 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8496 + 64] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[_8496 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8496 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8496 + 64]) / mem[_8496 + 64] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8496 + 32] and 10000 > -1 / mem[_8496 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8496 + 32] / 10000 != mem[_8496 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8496 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8496 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8496 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8496 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8496 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8496 + 64]) / (10000 * mem[_8496 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8496 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8496 + 64]) / (10000 * mem[_8496 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            if not -mem[_5643 + 128] + 10000:
                                if mem[_8496 + 32]:
                                    if False and mem[_8496 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_8496 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_8496 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_8496 + 64] and 10000 > -1 / mem[_8496 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8496 + 64] / 10000 != mem[_8496 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_8496 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8496 + 64] < 10000 * mem[_8496 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_8496 + 64]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * mem[_8496 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8496 + 64]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_8496 + 32]:
                                    if mem[_8496 + 64] and 10000 > -1 / mem[_8496 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8496 + 64] / 10000 != mem[_8496 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8496 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8496 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8496 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8496 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[_8496 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8496 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8496 + 32] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[_8496 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8496 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8496 + 32]) / mem[_8496 + 32] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8496 + 64] and 10000 > -1 / mem[_8496 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8496 + 64] / 10000 != mem[_8496 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8496 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8496 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8496 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8496 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8496 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8496 + 32]) / (10000 * mem[_8496 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8496 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8496 + 32]) / (10000 * mem[_8496 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                else:
                    mem[_5713 + _5813 + 36] = 0
                    staticcall address(_5694).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5713 + _5813 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5643 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5643 + 12 len 20] == address(_5655):
                            if not -mem[_5643 + 128] + 10000:
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
                                if 0 / 10000 * mem[128] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[160] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / mem[160] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            if not -mem[_5643 + 128] + 10000:
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
                                if 0 / 10000 * mem[160] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[128] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / mem[128] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                    else:
                        _8534 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8534] = return_data.size
                        mem[_8534 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5643 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5643 + 12 len 20] == address(_5655):
                            if not -mem[_5643 + 128] + 10000:
                                if mem[_8534 + 64]:
                                    if False and mem[_8534 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_8534 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_8534 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_8534 + 32] and 10000 > -1 / mem[_8534 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8534 + 32] / 10000 != mem[_8534 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_8534 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8534 + 32] < 10000 * mem[_8534 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_8534 + 32]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * mem[_8534 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8534 + 32]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_8534 + 64]:
                                    if mem[_8534 + 32] and 10000 > -1 / mem[_8534 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8534 + 32] / 10000 != mem[_8534 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8534 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8534 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8534 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8534 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[_8534 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8534 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8534 + 64] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[_8534 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8534 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8534 + 64]) / mem[_8534 + 64] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8534 + 32] and 10000 > -1 / mem[_8534 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8534 + 32] / 10000 != mem[_8534 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8534 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8534 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8534 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8534 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8534 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8534 + 64]) / (10000 * mem[_8534 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8534 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8534 + 64]) / (10000 * mem[_8534 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            if not -mem[_5643 + 128] + 10000:
                                if mem[_8534 + 32]:
                                    if False and mem[_8534 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_8534 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_8534 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_8534 + 64] and 10000 > -1 / mem[_8534 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8534 + 64] / 10000 != mem[_8534 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_8534 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_8534 + 64] < 10000 * mem[_8534 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_8534 + 64]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * mem[_8534 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8534 + 64]) - 1
                            else:
                                if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                    revert with 'NH{q', 17
                                if not -mem[_5643 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_8534 + 32]:
                                    if mem[_8534 + 64] and 10000 > -1 / mem[_8534 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8534 + 64] / 10000 != mem[_8534 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8534 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8534 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8534 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8534 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if 0 / (10000 * mem[_8534 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8534 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                else:
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8534 + 32] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 17
                                    if not mem[_8534 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8534 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8534 + 32]) / mem[_8534 + 32] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8534 + 64] and 10000 > -1 / mem[_8534 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8534 + 64] / 10000 != mem[_8534 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8534 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_8534 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8534 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_8534 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                        revert with 'NH{q', 18
                                    if (10000 * _5640 * mem[_8534 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8534 + 32]) / (10000 * mem[_8534 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8534 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8534 + 32]) / (10000 * mem[_8534 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
        else:
            mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
            mem[32] = 3
            if stor3[mem[mem[(32 * idx) + 128] + 108 len 20]]:
                _5660 = mem[mem[(32 * idx) + 128]]
                _5661 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _5720 = mem[mem[(32 * idx) + 128] + 64]
                    _5764 = mem[64]
                    _5765 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5765 + 32] = mem[_5765 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5854 = mem[_5765]
                    s = 0
                    while s < _5854:
                        mem[_5764 + s + 36] = mem[_5765 + s + 32]
                        _5633 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5854) <= _5854:
                        staticcall address(_5720).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5764 + _5854 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5643 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5643 + 12 len 20] == address(_5660):
                                if not -mem[_5643 + 128] + 10000:
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
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[160] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / mem[160] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                            else:
                                if not -mem[_5643 + 128] + 10000:
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
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[128] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / mem[128] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            _8500 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8500] = return_data.size
                            mem[_8500 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5643 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5643 + 12 len 20] == address(_5660):
                                if not -mem[_5643 + 128] + 10000:
                                    if mem[_8500 + 64]:
                                        if False and mem[_8500 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8500 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8500 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8500 + 32] and 10000 > -1 / mem[_8500 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8500 + 32] / 10000 != mem[_8500 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8500 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8500 + 32] < 10000 * mem[_8500 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8500 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8500 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8500 + 32]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8500 + 64]:
                                        if mem[_8500 + 32] and 10000 > -1 / mem[_8500 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8500 + 32] / 10000 != mem[_8500 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8500 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8500 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8500 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8500 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8500 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8500 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8500 + 64] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[_8500 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8500 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8500 + 64]) / mem[_8500 + 64] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8500 + 32] and 10000 > -1 / mem[_8500 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8500 + 32] / 10000 != mem[_8500 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8500 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8500 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8500 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8500 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8500 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8500 + 64]) / (10000 * mem[_8500 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8500 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8500 + 64]) / (10000 * mem[_8500 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                            else:
                                if not -mem[_5643 + 128] + 10000:
                                    if mem[_8500 + 32]:
                                        if False and mem[_8500 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8500 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8500 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8500 + 64] and 10000 > -1 / mem[_8500 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8500 + 64] / 10000 != mem[_8500 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8500 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8500 + 64] < 10000 * mem[_8500 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8500 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8500 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8500 + 64]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8500 + 32]:
                                        if mem[_8500 + 64] and 10000 > -1 / mem[_8500 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8500 + 64] / 10000 != mem[_8500 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8500 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8500 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8500 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8500 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8500 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8500 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8500 + 32] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[_8500 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8500 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8500 + 32]) / mem[_8500 + 32] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8500 + 64] and 10000 > -1 / mem[_8500 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8500 + 64] / 10000 != mem[_8500 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8500 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8500 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8500 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8500 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8500 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8500 + 32]) / (10000 * mem[_8500 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8500 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8500 + 32]) / (10000 * mem[_8500 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                    else:
                        mem[_5764 + _5854 + 36] = 0
                        staticcall address(_5720).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5764 + _5854 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5643 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5643 + 12 len 20] == address(_5660):
                                if not -mem[_5643 + 128] + 10000:
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
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[160] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / mem[160] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                            else:
                                if not -mem[_5643 + 128] + 10000:
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
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[128] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / mem[128] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            _8540 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8540] = return_data.size
                            mem[_8540 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5643 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5643 + 12 len 20] == address(_5660):
                                if not -mem[_5643 + 128] + 10000:
                                    if mem[_8540 + 64]:
                                        if False and mem[_8540 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8540 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8540 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8540 + 32] and 10000 > -1 / mem[_8540 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8540 + 32] / 10000 != mem[_8540 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8540 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8540 + 32] < 10000 * mem[_8540 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8540 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8540 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8540 + 32]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8540 + 64]:
                                        if mem[_8540 + 32] and 10000 > -1 / mem[_8540 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8540 + 32] / 10000 != mem[_8540 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8540 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8540 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8540 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8540 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8540 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8540 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8540 + 64] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[_8540 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8540 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8540 + 64]) / mem[_8540 + 64] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8540 + 32] and 10000 > -1 / mem[_8540 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8540 + 32] / 10000 != mem[_8540 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8540 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8540 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8540 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8540 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8540 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8540 + 64]) / (10000 * mem[_8540 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8540 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8540 + 64]) / (10000 * mem[_8540 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                            else:
                                if not -mem[_5643 + 128] + 10000:
                                    if mem[_8540 + 32]:
                                        if False and mem[_8540 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8540 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8540 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8540 + 64] and 10000 > -1 / mem[_8540 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8540 + 64] / 10000 != mem[_8540 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8540 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8540 + 64] < 10000 * mem[_8540 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8540 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8540 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8540 + 64]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8540 + 32]:
                                        if mem[_8540 + 64] and 10000 > -1 / mem[_8540 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8540 + 64] / 10000 != mem[_8540 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8540 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8540 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8540 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8540 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8540 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8540 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8540 + 32] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[_8540 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8540 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8540 + 32]) / mem[_8540 + 32] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8540 + 64] and 10000 > -1 / mem[_8540 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8540 + 64] / 10000 != mem[_8540 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8540 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8540 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8540 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8540 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8540 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8540 + 32]) / (10000 * mem[_8540 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8540 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8540 + 32]) / (10000 * mem[_8540 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                else:
                    _5721 = mem[mem[(32 * idx) + 128] + 64]
                    _5768 = mem[64]
                    _5769 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5769 + 32] = mem[_5769 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5855 = mem[_5769]
                    s = 0
                    while s < _5855:
                        mem[_5768 + s + 36] = mem[_5769 + s + 32]
                        _5633 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5855) <= _5855:
                        staticcall address(_5721).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5768 + _5855 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5643 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5643 + 12 len 20] == address(_5661):
                                if not -mem[_5643 + 128] + 10000:
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
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[160] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / mem[160] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                            else:
                                if not -mem[_5643 + 128] + 10000:
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
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[128] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / mem[128] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            _8502 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8502] = return_data.size
                            mem[_8502 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5643 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5643 + 12 len 20] == address(_5661):
                                if not -mem[_5643 + 128] + 10000:
                                    if mem[_8502 + 64]:
                                        if False and mem[_8502 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8502 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8502 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8502 + 32] and 10000 > -1 / mem[_8502 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8502 + 32] / 10000 != mem[_8502 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8502 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8502 + 32] < 10000 * mem[_8502 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8502 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8502 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8502 + 32]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8502 + 64]:
                                        if mem[_8502 + 32] and 10000 > -1 / mem[_8502 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8502 + 32] / 10000 != mem[_8502 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8502 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8502 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8502 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8502 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8502 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8502 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8502 + 64] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[_8502 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8502 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8502 + 64]) / mem[_8502 + 64] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8502 + 32] and 10000 > -1 / mem[_8502 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8502 + 32] / 10000 != mem[_8502 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8502 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8502 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8502 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8502 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8502 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8502 + 64]) / (10000 * mem[_8502 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8502 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8502 + 64]) / (10000 * mem[_8502 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                            else:
                                if not -mem[_5643 + 128] + 10000:
                                    if mem[_8502 + 32]:
                                        if False and mem[_8502 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8502 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8502 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8502 + 64] and 10000 > -1 / mem[_8502 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8502 + 64] / 10000 != mem[_8502 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8502 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8502 + 64] < 10000 * mem[_8502 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8502 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8502 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8502 + 64]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8502 + 32]:
                                        if mem[_8502 + 64] and 10000 > -1 / mem[_8502 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8502 + 64] / 10000 != mem[_8502 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8502 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8502 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8502 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8502 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8502 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8502 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8502 + 32] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[_8502 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8502 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8502 + 32]) / mem[_8502 + 32] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8502 + 64] and 10000 > -1 / mem[_8502 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8502 + 64] / 10000 != mem[_8502 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8502 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8502 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8502 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8502 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8502 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8502 + 32]) / (10000 * mem[_8502 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8502 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8502 + 32]) / (10000 * mem[_8502 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                    else:
                        mem[_5768 + _5855 + 36] = 0
                        staticcall address(_5721).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5768 + _5855 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5643 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5643 + 12 len 20] == address(_5661):
                                if not -mem[_5643 + 128] + 10000:
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
                                    if 0 / 10000 * mem[128] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[160] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / mem[160] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[160]) - (mem[_5643 + 128] * _5640 * mem[160]) / (10000 * mem[128]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                            else:
                                if not -mem[_5643 + 128] + 10000:
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
                                    if 0 / 10000 * mem[160] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[128] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / mem[128] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[128]) - (mem[_5643 + 128] * _5640 * mem[128]) / (10000 * mem[160]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                        else:
                            _8545 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_8545] = return_data.size
                            mem[_8545 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5643 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5643 + 12 len 20] == address(_5661):
                                if not -mem[_5643 + 128] + 10000:
                                    if mem[_8545 + 64]:
                                        if False and mem[_8545 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8545 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8545 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8545 + 32] and 10000 > -1 / mem[_8545 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8545 + 32] / 10000 != mem[_8545 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8545 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8545 + 32] < 10000 * mem[_8545 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8545 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8545 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8545 + 32]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8545 + 64]:
                                        if mem[_8545 + 32] and 10000 > -1 / mem[_8545 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8545 + 32] / 10000 != mem[_8545 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8545 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8545 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8545 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8545 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8545 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8545 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8545 + 64] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[_8545 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8545 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8545 + 64]) / mem[_8545 + 64] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8545 + 32] and 10000 > -1 / mem[_8545 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8545 + 32] / 10000 != mem[_8545 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8545 + 32] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8545 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8545 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8545 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8545 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8545 + 64]) / (10000 * mem[_8545 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8545 + 64]) - (mem[_5643 + 128] * _5640 * mem[_8545 + 64]) / (10000 * mem[_8545 + 32]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                            else:
                                if not -mem[_5643 + 128] + 10000:
                                    if mem[_8545 + 32]:
                                        if False and mem[_8545 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_8545 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_8545 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_8545 + 64] and 10000 > -1 / mem[_8545 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8545 + 64] / 10000 != mem[_8545 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_8545 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_8545 + 64] < 10000 * mem[_8545 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_8545 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / 10000 * mem[_8545 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = (0 / 10000 * mem[_8545 + 64]) - 1
                                else:
                                    if _5640 and -mem[_5643 + 128] + 10000 > -1 / _5640:
                                        revert with 'NH{q', 17
                                    if not -mem[_5643 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5640) - (mem[_5643 + 128] * _5640) / -mem[_5643 + 128] + 10000 != _5640:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_8545 + 32]:
                                        if mem[_8545 + 64] and 10000 > -1 / mem[_8545 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8545 + 64] / 10000 != mem[_8545 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8545 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8545 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8545 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8545 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if 0 / (10000 * mem[_8545 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (0 / (10000 * mem[_8545 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
                                    else:
                                        if (10000 * _5640) - (mem[_5643 + 128] * _5640) and mem[_8545 + 32] > -1 / (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 17
                                        if not mem[_8545 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8545 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8545 + 32]) / mem[_8545 + 32] != (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_8545 + 64] and 10000 > -1 / mem[_8545 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_8545 + 64] / 10000 != mem[_8545 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_8545 + 64] > (-10000 * _5640) + (mem[_5643 + 128] * _5640) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_8545 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 10000 * mem[_8545 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_8545 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640):
                                            revert with 'NH{q', 18
                                        if (10000 * _5640 * mem[_8545 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8545 + 32]) / (10000 * mem[_8545 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = ((10000 * _5640 * mem[_8545 + 32]) - (mem[_5643 + 128] * _5640 * mem[_8545 + 32]) / (10000 * mem[_8545 + 64]) + (10000 * _5640) - (mem[_5643 + 128] * _5640)) - 1
            else:
                if mem[mem[(32 * idx) + 128] + 160] == 5:
                    _5665 = mem[mem[(32 * idx) + 128] + 96]
                    _5689 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_5689 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_5689]:
                        revert with 'NH{q', 50
                    mem[_5689 + 32] = mem[_5643 + 12 len 20]
                    if 1 >= mem[_5689]:
                        revert with 'NH{q', 50
                    mem[_5689 + 64] = mem[_5643 + 44 len 20]
                    mem[_5689 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5689 + 100] = _5640
                    mem[_5689 + 132] = 64
                    mem[_5689 + 164] = mem[_5689]
                    s = 0
                    t = _5689 + 32
                    u = _5689 + 196
                    while s < mem[_5689]:
                        mem[u] = mem[t + 12 len 20]
                        _5633 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_5665))
                    staticcall address(_5665).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5689 + (32 * mem[_5689]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8481 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8535 = mem[_8481]
                    require mem[_8481] <= test266151307()
                    require _8481 + mem[_8481] + 31 < _8481 + return_data.size
                    _8635 = mem[_8481 + mem[_8481]]
                    if mem[_8481 + mem[_8481]] > test266151307():
                        revert with 'NH{q', 65
                    if _8481 + ceil32(return_data.size) + floor32(mem[_8481 + mem[_8481]]) + 1 > test266151307() or floor32(mem[_8481 + mem[_8481]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _8481 + ceil32(return_data.size) + floor32(mem[_8481 + mem[_8481]]) + 1
                    mem[_8481 + ceil32(return_data.size)] = _8635
                    require _8535 + (32 * _8635) + 32 <= return_data.size
                    s = 0
                    t = _8481 + _8535 + 32
                    u = _8481 + ceil32(return_data.size) + 32
                    while s < _8635:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _5633 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if _8635 < 1:
                        revert with 'NH{q', 17
                    if _8635 - 1 >= _8635:
                        revert with 'NH{q', 50
                    if mem[(32 * _8635 - 1) + _8481 + ceil32(return_data.size) + 32] < 1:
                        revert with 'NH{q', 17
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_2819]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + _2819 + 32] = mem[(32 * _8635 - 1) + _8481 + ceil32(return_data.size) + 32] - 1
                else:
                    if mem[mem[(32 * idx) + 128] + 160] == 7:
                        mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
                        mem[32] = 0
                        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                        _5682 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                        mem[32] = 0
                        _5684 = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                        mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                        mem[32] = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                        _5687 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64]] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint8(stor[_5682])
                        mem[mem[64] + 36] = uint8(stor[_5684][mem[0]])
                        mem[mem[64] + 68] = _5640
                        require ext_code.size(address(_5687))
                        staticcall address(_5687).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args uint8(stor[_5682]), uint8(stor[_5684][mem[0]]), _5640
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5949 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5949] == mem[_5949]
                        if mem[_5949] < 1:
                            revert with 'NH{q', 17
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_2819]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _2819 + 32] = mem[_5949] - 1
                    else:
                        if mem[mem[(32 * idx) + 128] + 160] < 80:
                            if mem[mem[(32 * idx) + 128] + 160] == 12:
                                require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5818 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_5818] == mem[_5818 + 18 len 14]
                                require mem[_5818 + 32] == mem[_5818 + 50 len 14]
                                require mem[_5818 + 64] == mem[_5818 + 82 len 14]
                                require mem[_5818 + 96] == mem[_5818 + 114 len 14]
                                require mem[_5818 + 128] == mem[_5818 + 128]
                                if 10^18 < mem[_5818 + 128]:
                                    revert with 'NH{q', 17
                                if -mem[_5818 + 128] + 10^18 > 10^18:
                                    revert with 0, 'ds-math-sub-underflow'
                                if mem[_5643 + 12 len 20] < mem[_5643 + 44 len 20]:
                                    if mem[_5643 + 12 len 20] == mem[_5643 + 12 len 20]:
                                        if not -mem[_5818 + 128] + 10^18:
                                            if mem[_5818 + 114 len 14]:
                                                if False and mem[_5818 + 114 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5818 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5818 + 114 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5818 + 82 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5818 + 82 len 14] < mem[_5818 + 82 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5818 + 82 len 14]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_5818 + 82 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5818 + 82 len 14]) - 1
                                        else:
                                            if _5640 and -mem[_5818 + 128] + 10^18 > -1 / _5640:
                                                revert with 'NH{q', 17
                                            if not -mem[_5818 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / -mem[_5818 + 128] + 10^18 != _5640:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5818 + 114 len 14]:
                                                if mem[_5818 + 82 len 14] > -((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < mem[_5818 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 and mem[_5818 + 114 len 14] > -1 / (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5818 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 114 len 14] / mem[_5818 + 114 len 14] != (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5818 + 82 len 14] > -((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < mem[_5818 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 114 len 14] / mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 114 len 14] / mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18)) - 1
                                    else:
                                        if not -mem[_5818 + 128] + 10^18:
                                            if mem[_5818 + 82 len 14]:
                                                if False and mem[_5818 + 82 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5818 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5818 + 82 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5818 + 114 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5818 + 114 len 14] < mem[_5818 + 114 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5818 + 114 len 14]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_5818 + 114 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5818 + 114 len 14]) - 1
                                        else:
                                            if _5640 and -mem[_5818 + 128] + 10^18 > -1 / _5640:
                                                revert with 'NH{q', 17
                                            if not -mem[_5818 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / -mem[_5818 + 128] + 10^18 != _5640:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5818 + 82 len 14]:
                                                if mem[_5818 + 114 len 14] > -((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < mem[_5818 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 and mem[_5818 + 82 len 14] > -1 / (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5818 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 82 len 14] / mem[_5818 + 82 len 14] != (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5818 + 114 len 14] > -((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < mem[_5818 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 82 len 14] / mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 82 len 14] / mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18)) - 1
                                else:
                                    if mem[_5643 + 12 len 20] == mem[_5643 + 44 len 20]:
                                        if not -mem[_5818 + 128] + 10^18:
                                            if mem[_5818 + 114 len 14]:
                                                if False and mem[_5818 + 114 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5818 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5818 + 114 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5818 + 82 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5818 + 82 len 14] < mem[_5818 + 82 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5818 + 82 len 14]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_5818 + 82 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5818 + 82 len 14]) - 1
                                        else:
                                            if _5640 and -mem[_5818 + 128] + 10^18 > -1 / _5640:
                                                revert with 'NH{q', 17
                                            if not -mem[_5818 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / -mem[_5818 + 128] + 10^18 != _5640:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5818 + 114 len 14]:
                                                if mem[_5818 + 82 len 14] > -((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < mem[_5818 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 and mem[_5818 + 114 len 14] > -1 / (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5818 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 114 len 14] / mem[_5818 + 114 len 14] != (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5818 + 82 len 14] > -((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < mem[_5818 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 114 len 14] / mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 114 len 14] / mem[_5818 + 82 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18)) - 1
                                    else:
                                        if not -mem[_5818 + 128] + 10^18:
                                            if mem[_5818 + 82 len 14]:
                                                if False and mem[_5818 + 82 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5818 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5818 + 82 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5818 + 114 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5818 + 114 len 14] < mem[_5818 + 114 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5818 + 114 len 14]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_5818 + 114 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5818 + 114 len 14]) - 1
                                        else:
                                            if _5640 and -mem[_5818 + 128] + 10^18 > -1 / _5640:
                                                revert with 'NH{q', 17
                                            if not -mem[_5818 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / -mem[_5818 + 128] + 10^18 != _5640:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5818 + 82 len 14]:
                                                if mem[_5818 + 114 len 14] > -((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < mem[_5818 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 and mem[_5818 + 82 len 14] > -1 / (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5818 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 82 len 14] / mem[_5818 + 82 len 14] != (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5818 + 114 len 14] > -((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < mem[_5818 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 82 len 14] / mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18 * mem[_5818 + 82 len 14] / mem[_5818 + 114 len 14] + ((10^18 * _5640) - (mem[_5818 + 128] * _5640) / 10^18)) - 1
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _5633 = mem[96]
                                idx = idx + 1
                                continue 
                            if mem[mem[(32 * idx) + 128] + 160] == 13:
                                _5785 = mem[mem[(32 * idx) + 128]]
                                _5786 = mem[mem[(32 * idx) + 128] + 32]
                                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                mem[mem[64] + 68] = address(_5786)
                                mem[mem[64] + 100] = _5640
                                require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                        gas gas_remaining wei
                                       args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_5785), address(_5786), _5640
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6227 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_6227] == mem[_6227]
                                require mem[_6227 + 32] == mem[_6227 + 32]
                                if mem[_6227] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = mem[_6227] - 1
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _5633 = mem[96]
                                idx = idx + 1
                                continue 
                            if mem[mem[(32 * idx) + 128] + 160] == 14:
                                _5816 = mem[mem[(32 * idx) + 128] + 32]
                                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                mem[mem[64] + 36] = address(_5816)
                                mem[mem[64] + 68] = _5640
                                require ext_code.size(0x66357dcace80431aee0a7507e2e361b7e2402370)
                                staticcall 0x66357dcace80431aee0a7507e2e361b7e2402370.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_5816), _5640
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6194 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6194] == mem[_6194]
                                if mem[_6194] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = mem[_6194] - 1
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _5633 = mem[96]
                                idx = idx + 1
                                continue 
                            if mem[mem[(32 * idx) + 128] + 160] == 16:
                                _5842 = mem[mem[(32 * idx) + 128] + 96]
                                _5844 = mem[mem[(32 * idx) + 128] + 32]
                                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                mem[mem[64] + 36] = address(_5844)
                                mem[mem[64] + 68] = _5640
                                require ext_code.size(address(_5842))
                                staticcall address(_5842).getSwapOutput(address arg1, address arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4], address(_5844), _5640
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6201 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6201] == mem[_6201]
                                if mem[_6201] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = mem[_6201] - 1
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _5633 = mem[96]
                                idx = idx + 1
                                continue 
                            if mem[mem[(32 * idx) + 128] + 160] == 17:
                                _5868 = mem[mem[(32 * idx) + 128] + 64]
                                _5869 = mem[mem[(32 * idx) + 128]]
                                mem[mem[64] + 4] = _5640
                                mem[mem[64] + 36] = address(_5869)
                                require ext_code.size(address(_5868))
                                staticcall address(_5868).getAmountOut(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args _5640, address(_5869)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6133 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6133] == mem[_6133]
                                if mem[_6133] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = mem[_6133] - 1
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _5633 = mem[96]
                                idx = idx + 1
                                continue 
                            if mem[mem[(32 * idx) + 128] + 160] != 18:
                                require mem[mem[(32 * idx) + 128] + 160] == 99
                                if _5640 < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = _5640 - 1
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _5633 = mem[96]
                                idx = idx + 1
                                continue 
                            _5889 = mem[mem[(32 * idx) + 128] + 64]
                            _5890 = mem[mem[(32 * idx) + 128] + 128]
                            _5891 = mem[mem[(32 * idx) + 128]]
                            _5892 = mem[mem[(32 * idx) + 128] + 32]
                            mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _5890 or 1208925819614629174706176 or address(_5889)
                            require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
                            staticcall 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.getPoolTokens(bytes32 arg1) with:
                                    gas gas_remaining wei
                                   args (_5890 or 1208925819614629174706176 or address(_5889))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5977 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _6056 = mem[_5977]
                            require mem[_5977] <= test266151307()
                            require _5977 + mem[_5977] + 31 < _5977 + return_data.size
                            _6157 = mem[_5977 + mem[_5977]]
                            if mem[_5977 + mem[_5977]] > test266151307():
                                revert with 'NH{q', 65
                            if _5977 + ceil32(return_data.size) + floor32(mem[_5977 + mem[_5977]]) + 1 > test266151307() or floor32(mem[_5977 + mem[_5977]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _5977 + ceil32(return_data.size) + floor32(mem[_5977 + mem[_5977]]) + 1
                            mem[_5977 + ceil32(return_data.size)] = _6157
                            require _6056 + (32 * _6157) + 32 <= return_data.size
                            s = 0
                            t = _5977 + _6056 + 32
                            u = _5977 + ceil32(return_data.size) + 32
                            while s < _6157:
                                require mem[t] == mem[t + 12 len 20]
                                mem[u] = mem[t]
                                _5633 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            _8471 = mem[_5977 + 32]
                            require mem[_5977 + 32] <= test266151307()
                            require _5977 + mem[_5977 + 32] + 31 < _5977 + return_data.size
                            _8498 = mem[_5977 + mem[_5977 + 32]]
                            if mem[_5977 + mem[_5977 + 32]] > test266151307():
                                revert with 'NH{q', 65
                            _8678 = mem[64]
                            if mem[64] + floor32(mem[_5977 + mem[_5977 + 32]]) + 1 > test266151307() or mem[64] + floor32(mem[_5977 + mem[_5977 + 32]]) + 1 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + floor32(mem[_5977 + mem[_5977 + 32]]) + 1
                            mem[_8678] = _8498
                            require _8471 + (32 * _8498) + 32 <= return_data.size
                            s = 0
                            t = _5977 + _8471 + 32
                            u = _8678 + 32
                            while s < _8498:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _5633 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require mem[_5977 + 64] == mem[_5977 + 64]
                            s = 0
                            t = 0
                            u = 0
                            while s < mem[_5977 + ceil32(return_data.size)]:
                                if s >= mem[_5977 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[(32 * s) + _5977 + ceil32(return_data.size) + 44 len 20] != address(_5891):
                                    if s >= mem[_5977 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * s) + _5977 + ceil32(return_data.size) + 44 len 20] != address(_5892):
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        _5633 = mem[96]
                                        s = s + 1
                                        t = t
                                        u = u
                                        continue 
                                    if s >= _8498:
                                        revert with 'NH{q', 50
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _5633 = mem[96]
                                    s = s + 1
                                    t = mem[(32 * s) + _8678 + 32]
                                    u = u
                                    continue 
                                if s >= _8498:
                                    revert with 'NH{q', 50
                                if s >= mem[_5977 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[(32 * s) + _5977 + ceil32(return_data.size) + 44 len 20] != address(_5892):
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _5633 = mem[96]
                                    s = s + 1
                                    t = t
                                    u = mem[(32 * s) + _8678 + 32]
                                    continue 
                                if s >= _8498:
                                    revert with 'NH{q', 50
                                if s == -1:
                                    revert with 'NH{q', 17
                                _5633 = mem[96]
                                s = s + 1
                                t = mem[(32 * s) + _8678 + 32]
                                u = mem[(32 * s) + _8678 + 32]
                                continue 
                            _10670 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_10670] = 0
                            mem[_10670 + 32] = address(_5891)
                            mem[_10670 + 64] = address(_5892)
                            mem[_10670 + 96] = _5640
                            mem[_10670 + 128] = _5890 or 1208925819614629174706176 or address(_5889)
                            mem[_10670 + 160] = 0
                            mem[_10670 + 192] = 0
                            mem[_10670 + 224] = 0
                            _10678 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10670 + 256] = _10678
                            mem[_10678 + 32] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                            mem[_10678 + 36] = 96
                            mem[_10678 + 132] = 0
                            mem[_10678 + 164] = address(_5891)
                            mem[_10678 + 196] = address(_5892)
                            mem[_10678 + 228] = _5640
                            mem[_10678 + 260] = _5890 or 1208925819614629174706176 or address(_5889)
                            mem[_10678 + 292] = 0
                            mem[_10678 + 324] = 0
                            mem[_10678 + 356] = 0
                            mem[_10678 + 388] = 288
                            _10764 = mem[_10678]
                            mem[_10678 + 420] = mem[_10678]
                            s = 0
                            while s < mem[_10678]:
                                mem[_10678 + s + 452] = mem[_10678 + s + 32]
                                _5633 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_10678]) > mem[_10678]:
                                mem[_10678 + mem[_10678] + 452] = 0
                            mem[_10678 + 68] = u
                            mem[_10678 + 100] = t
                            require ext_code.size(address(_5889))
                            staticcall address(_5889).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                    gas gas_remaining wei
                                   args 96, u, t, 0, address(_5891), address(_5892), _5640, _5890 or 1208925819614629174706176 or address(_5889), 0, 0, 0, 288, mem[_10678], mem[_10678 + 452 len ceil32(mem[_10678])]
                            mem[_10678 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _10678 + ceil32(return_data.size) + 32
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] < 1:
                                revert with 'NH{q', 17
                            if ceil32(_10764) > -2:
                                revert with 'NH{q', 17
                            if ceil32(_10764) + 1 >= mem[_2819]:
                                revert with 'NH{q', 50
                            mem[(32 * ceil32(_10764) + 1) + _2819 + 32] = ext_call.return_data[0] - 1
                            if ceil32(_10764) == -1:
                                revert with 'NH{q', 17
                            _5633 = mem[96]
                            s = ceil32(_10764) + 1
                            continue 
                        if mem[mem[(32 * idx) + 128] + 160] < 90:
                            mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
                            mem[32] = 0
                            mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            _5756 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                            mem[32] = 0
                            _5758 = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                            mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                            mem[32] = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                            if mem[mem[(32 * idx) + 128] + 160] == 81:
                                _5793 = mem[mem[(32 * idx) + 128] + 96]
                                mem[mem[64]] = 0x5e0d443f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5756'))))
                                mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5758')))))
                                mem[mem[64] + 68] = _5640
                                require ext_code.size(address(_5793))
                                staticcall address(_5793).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('type', 256, ('stor', ('var', '_5756')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5758'))))), _5640
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6100 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6100] == mem[_6100]
                                if mem[_6100] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2819]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2819 + 32] = mem[_6100] - 1
                            else:
                                if mem[mem[(32 * idx) + 128] + 160] == 82:
                                    _5824 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0x556d6e9f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(stor[_5756])
                                    mem[mem[64] + 36] = uint256(stor[_5758][mem[0]])
                                    mem[mem[64] + 68] = _5640
                                    require ext_code.size(address(_5824))
                                    staticcall address(_5824).get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args uint256(stor[_5756]), uint256(stor[_5758][mem[0]]), _5640
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6135 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6135] == mem[_6135]
                                    if mem[_6135] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = mem[_6135] - 1
                                else:
                                    if mem[mem[(32 * idx) + 128] + 160] == 83:
                                        _5852 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0x7211ef700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5756'))))
                                        mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5758')))))
                                        mem[mem[64] + 68] = _5640
                                        require ext_code.size(address(_5852))
                                        staticcall address(_5852).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('type', 256, ('stor', ('var', '_5756')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5758'))))), _5640
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6160 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6160] == mem[_6160]
                                        if mem[_6160] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = mem[_6160] - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 160] != 84:
                                            revert with 'NH{q', 17
                                        _5876 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0x85f11d1e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(stor[_5756])
                                        mem[mem[64] + 36] = uint256(stor[_5758][mem[0]])
                                        mem[mem[64] + 68] = _5640
                                        require ext_code.size(address(_5876))
                                        staticcall address(_5876).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args uint256(stor[_5756]), uint256(stor[_5758][mem[0]]), _5640
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6178 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6178] == mem[_6178]
                                        if mem[_6178] and 9996 > -1 / mem[_6178]:
                                            revert with 'NH{q', 17
                                        if 9996 * mem[_6178] / 10000 < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = (9996 * mem[_6178] / 10000) - 1
                        else:
                            if mem[mem[(32 * idx) + 128] + 160] == 12:
                                require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5850 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_5850] == mem[_5850 + 18 len 14]
                                require mem[_5850 + 32] == mem[_5850 + 50 len 14]
                                require mem[_5850 + 64] == mem[_5850 + 82 len 14]
                                require mem[_5850 + 96] == mem[_5850 + 114 len 14]
                                require mem[_5850 + 128] == mem[_5850 + 128]
                                if 10^18 < mem[_5850 + 128]:
                                    revert with 'NH{q', 17
                                if -mem[_5850 + 128] + 10^18 > 10^18:
                                    revert with 0, 'ds-math-sub-underflow'
                                if mem[_5643 + 12 len 20] < mem[_5643 + 44 len 20]:
                                    if mem[_5643 + 12 len 20] == mem[_5643 + 12 len 20]:
                                        if not -mem[_5850 + 128] + 10^18:
                                            if mem[_5850 + 114 len 14]:
                                                if False and mem[_5850 + 114 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5850 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5850 + 114 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5850 + 82 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5850 + 82 len 14] < mem[_5850 + 82 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5850 + 82 len 14]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_5850 + 82 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5850 + 82 len 14]) - 1
                                        else:
                                            if _5640 and -mem[_5850 + 128] + 10^18 > -1 / _5640:
                                                revert with 'NH{q', 17
                                            if not -mem[_5850 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / -mem[_5850 + 128] + 10^18 != _5640:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5850 + 114 len 14]:
                                                if mem[_5850 + 82 len 14] > -((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < mem[_5850 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 and mem[_5850 + 114 len 14] > -1 / (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5850 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 114 len 14] / mem[_5850 + 114 len 14] != (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5850 + 82 len 14] > -((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < mem[_5850 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 114 len 14] / mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 114 len 14] / mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18)) - 1
                                    else:
                                        if not -mem[_5850 + 128] + 10^18:
                                            if mem[_5850 + 82 len 14]:
                                                if False and mem[_5850 + 82 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5850 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5850 + 82 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5850 + 114 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5850 + 114 len 14] < mem[_5850 + 114 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5850 + 114 len 14]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_5850 + 114 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5850 + 114 len 14]) - 1
                                        else:
                                            if _5640 and -mem[_5850 + 128] + 10^18 > -1 / _5640:
                                                revert with 'NH{q', 17
                                            if not -mem[_5850 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / -mem[_5850 + 128] + 10^18 != _5640:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5850 + 82 len 14]:
                                                if mem[_5850 + 114 len 14] > -((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < mem[_5850 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 and mem[_5850 + 82 len 14] > -1 / (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5850 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 82 len 14] / mem[_5850 + 82 len 14] != (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5850 + 114 len 14] > -((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < mem[_5850 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 82 len 14] / mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 82 len 14] / mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18)) - 1
                                else:
                                    if mem[_5643 + 12 len 20] == mem[_5643 + 44 len 20]:
                                        if not -mem[_5850 + 128] + 10^18:
                                            if mem[_5850 + 114 len 14]:
                                                if False and mem[_5850 + 114 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5850 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5850 + 114 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5850 + 82 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5850 + 82 len 14] < mem[_5850 + 82 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5850 + 82 len 14]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_5850 + 82 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5850 + 82 len 14]) - 1
                                        else:
                                            if _5640 and -mem[_5850 + 128] + 10^18 > -1 / _5640:
                                                revert with 'NH{q', 17
                                            if not -mem[_5850 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / -mem[_5850 + 128] + 10^18 != _5640:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5850 + 114 len 14]:
                                                if mem[_5850 + 82 len 14] > -((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < mem[_5850 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 and mem[_5850 + 114 len 14] > -1 / (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5850 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 114 len 14] / mem[_5850 + 114 len 14] != (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5850 + 82 len 14] > -((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < mem[_5850 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 114 len 14] / mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 114 len 14] / mem[_5850 + 82 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18)) - 1
                                    else:
                                        if not -mem[_5850 + 128] + 10^18:
                                            if mem[_5850 + 82 len 14]:
                                                if False and mem[_5850 + 82 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5850 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5850 + 82 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5850 + 114 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5850 + 114 len 14] < mem[_5850 + 114 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5850 + 114 len 14]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_5850 + 114 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5850 + 114 len 14]) - 1
                                        else:
                                            if _5640 and -mem[_5850 + 128] + 10^18 > -1 / _5640:
                                                revert with 'NH{q', 17
                                            if not -mem[_5850 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / -mem[_5850 + 128] + 10^18 != _5640:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5850 + 82 len 14]:
                                                if mem[_5850 + 114 len 14] > -((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < mem[_5850 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = (0 / mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 and mem[_5850 + 82 len 14] > -1 / (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5850 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 82 len 14] / mem[_5850 + 82 len 14] != (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5850 + 114 len 14] > -((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < mem[_5850 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18):
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 82 len 14] / mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18 * mem[_5850 + 82 len 14] / mem[_5850 + 114 len 14] + ((10^18 * _5640) - (mem[_5850 + 128] * _5640) / 10^18)) - 1
                            else:
                                if mem[mem[(32 * idx) + 128] + 160] == 13:
                                    _5820 = mem[mem[(32 * idx) + 128]]
                                    _5821 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    mem[mem[64] + 68] = address(_5821)
                                    mem[mem[64] + 100] = _5640
                                    require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                    staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                            gas gas_remaining wei
                                           args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_5820), address(_5821), _5640
                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6231 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    require mem[_6231] == mem[_6231]
                                    require mem[_6231 + 32] == mem[_6231 + 32]
                                    if mem[_6231] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2819]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2819 + 32] = mem[_6231] - 1
                                else:
                                    if mem[mem[(32 * idx) + 128] + 160] == 14:
                                        _5848 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                        mem[mem[64] + 36] = address(_5848)
                                        mem[mem[64] + 68] = _5640
                                        require ext_code.size(0x66357dcace80431aee0a7507e2e361b7e2402370)
                                        staticcall 0x66357dcace80431aee0a7507e2e361b7e2402370.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4], address(_5848), _5640
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6202 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6202] == mem[_6202]
                                        if mem[_6202] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2819]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2819 + 32] = mem[_6202] - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 160] == 16:
                                            _5872 = mem[mem[(32 * idx) + 128] + 96]
                                            _5874 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                            mem[mem[64] + 36] = address(_5874)
                                            mem[mem[64] + 68] = _5640
                                            require ext_code.size(address(_5872))
                                            staticcall address(_5872).getSwapOutput(address arg1, address arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4], address(_5874), _5640
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6206 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6206] == mem[_6206]
                                            if mem[_6206] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2819]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2819 + 32] = mem[_6206] - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 160] == 17:
                                                _5895 = mem[mem[(32 * idx) + 128] + 64]
                                                _5896 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64] + 4] = _5640
                                                mem[mem[64] + 36] = address(_5896)
                                                require ext_code.size(address(_5895))
                                                staticcall address(_5895).getAmountOut(uint256 arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args _5640, address(_5896)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6159 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6159] == mem[_6159]
                                                if mem[_6159] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2819]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2819 + 32] = mem[_6159] - 1
                                            else:
                                                if mem[mem[(32 * idx) + 128] + 160] != 18:
                                                    require mem[mem[(32 * idx) + 128] + 160] == 99
                                                    if _5640 < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = _5640 - 1
                                                else:
                                                    _5907 = mem[mem[(32 * idx) + 128] + 64]
                                                    _5908 = mem[mem[(32 * idx) + 128] + 128]
                                                    _5909 = mem[mem[(32 * idx) + 128]]
                                                    _5910 = mem[mem[(32 * idx) + 128] + 32]
                                                    mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _5908 or 1208925819614629174706176 or address(_5907)
                                                    require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
                                                    staticcall 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.getPoolTokens(bytes32 arg1) with:
                                                            gas gas_remaining wei
                                                           args (_5908 or 1208925819614629174706176 or address(_5907))
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6019 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _6097 = mem[_6019]
                                                    require mem[_6019] <= test266151307()
                                                    require _6019 + mem[_6019] + 31 < _6019 + return_data.size
                                                    _6176 = mem[_6019 + mem[_6019]]
                                                    if mem[_6019 + mem[_6019]] > test266151307():
                                                        revert with 'NH{q', 65
                                                    if _6019 + ceil32(return_data.size) + floor32(mem[_6019 + mem[_6019]]) + 1 > test266151307() or floor32(mem[_6019 + mem[_6019]]) + 1 < 0:
                                                        revert with 'NH{q', 65
                                                    mem[64] = _6019 + ceil32(return_data.size) + floor32(mem[_6019 + mem[_6019]]) + 1
                                                    mem[_6019 + ceil32(return_data.size)] = _6176
                                                    require _6097 + (32 * _6176) + 32 <= return_data.size
                                                    s = 0
                                                    t = _6019 + _6097 + 32
                                                    u = _6019 + ceil32(return_data.size) + 32
                                                    while s < _6176:
                                                        require mem[t] == mem[t + 12 len 20]
                                                        mem[u] = mem[t]
                                                        _5633 = mem[96]
                                                        s = s + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    _8472 = mem[_6019 + 32]
                                                    require mem[_6019 + 32] <= test266151307()
                                                    require _6019 + mem[_6019 + 32] + 31 < _6019 + return_data.size
                                                    _8499 = mem[_6019 + mem[_6019 + 32]]
                                                    if mem[_6019 + mem[_6019 + 32]] > test266151307():
                                                        revert with 'NH{q', 65
                                                    _8679 = mem[64]
                                                    if mem[64] + floor32(mem[_6019 + mem[_6019 + 32]]) + 1 > test266151307() or mem[64] + floor32(mem[_6019 + mem[_6019 + 32]]) + 1 < mem[64]:
                                                        revert with 'NH{q', 65
                                                    mem[64] = mem[64] + floor32(mem[_6019 + mem[_6019 + 32]]) + 1
                                                    mem[_8679] = _8499
                                                    require _8472 + (32 * _8499) + 32 <= return_data.size
                                                    s = 0
                                                    t = _6019 + _8472 + 32
                                                    u = _8679 + 32
                                                    while s < _8499:
                                                        require mem[t] == mem[t]
                                                        mem[u] = mem[t]
                                                        _5633 = mem[96]
                                                        s = s + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    require mem[_6019 + 64] == mem[_6019 + 64]
                                                    s = 0
                                                    t = 0
                                                    u = 0
                                                    while s < mem[_6019 + ceil32(return_data.size)]:
                                                        if s >= mem[_6019 + ceil32(return_data.size)]:
                                                            revert with 'NH{q', 50
                                                        if mem[(32 * s) + _6019 + ceil32(return_data.size) + 44 len 20] != address(_5909):
                                                            if s >= mem[_6019 + ceil32(return_data.size)]:
                                                                revert with 'NH{q', 50
                                                            if mem[(32 * s) + _6019 + ceil32(return_data.size) + 44 len 20] != address(_5910):
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                _5633 = mem[96]
                                                                s = s + 1
                                                                t = t
                                                                u = u
                                                                continue 
                                                            if s >= _8499:
                                                                revert with 'NH{q', 50
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            _5633 = mem[96]
                                                            s = s + 1
                                                            t = mem[(32 * s) + _8679 + 32]
                                                            u = u
                                                            continue 
                                                        if s >= _8499:
                                                            revert with 'NH{q', 50
                                                        if s >= mem[_6019 + ceil32(return_data.size)]:
                                                            revert with 'NH{q', 50
                                                        if mem[(32 * s) + _6019 + ceil32(return_data.size) + 44 len 20] != address(_5910):
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            _5633 = mem[96]
                                                            s = s + 1
                                                            t = t
                                                            u = mem[(32 * s) + _8679 + 32]
                                                            continue 
                                                        if s >= _8499:
                                                            revert with 'NH{q', 50
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        _5633 = mem[96]
                                                        s = s + 1
                                                        t = mem[(32 * s) + _8679 + 32]
                                                        u = mem[(32 * s) + _8679 + 32]
                                                        continue 
                                                    _10672 = mem[64]
                                                    mem[64] = mem[64] + 288
                                                    mem[_10672] = 0
                                                    mem[_10672 + 32] = address(_5909)
                                                    mem[_10672 + 64] = address(_5910)
                                                    mem[_10672 + 96] = _5640
                                                    mem[_10672 + 128] = _5908 or 1208925819614629174706176 or address(_5907)
                                                    mem[_10672 + 160] = 0
                                                    mem[_10672 + 192] = 0
                                                    mem[_10672 + 224] = 0
                                                    _10680 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_10672 + 256] = _10680
                                                    mem[_10680 + 32] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                                    mem[_10680 + 36] = 96
                                                    mem[_10680 + 132] = 0
                                                    mem[_10680 + 164] = address(_5909)
                                                    mem[_10680 + 196] = address(_5910)
                                                    mem[_10680 + 228] = _5640
                                                    mem[_10680 + 260] = _5908 or 1208925819614629174706176 or address(_5907)
                                                    mem[_10680 + 292] = 0
                                                    mem[_10680 + 324] = 0
                                                    mem[_10680 + 356] = 0
                                                    mem[_10680 + 388] = 288
                                                    mem[_10680 + 420] = mem[_10680]
                                                    s = 0
                                                    while s < mem[_10680]:
                                                        mem[_10680 + s + 452] = mem[_10680 + s + 32]
                                                        _5633 = mem[96]
                                                        s = s + 32
                                                        continue 
                                                    if ceil32(mem[_10680]) > mem[_10680]:
                                                        mem[_10680 + mem[_10680] + 452] = 0
                                                    mem[_10680 + 68] = u
                                                    mem[_10680 + 100] = t
                                                    require ext_code.size(address(_5907))
                                                    staticcall address(_5907).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                                            gas gas_remaining wei
                                                           args 96, u, t, 0, address(_5909), address(_5910), _5640, _5908 or 1208925819614629174706176 or address(_5907), 0, 0, 0, 288, mem[_10680], mem[_10680 + 452 len ceil32(mem[_10680])]
                                                    mem[_10680 + 32] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _10680 + ceil32(return_data.size) + 32
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    if ext_call.return_data[0] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2819]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2819 + 32] = ext_call.return_data[0] - 1
        if idx == -1:
            revert with 'NH{q', 17
        _5633 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _5649 = mem[_2819]
    mem[mem[64] + 32] = mem[_2819]
    mem[mem[64] + 64 len 32 * _5649] = mem[_2819 + 32 len 32 * _5649]
    var68001 = _5649
    return 32, mem[mem[64] + 32 len (32 * _5649) + 32]
}



}
