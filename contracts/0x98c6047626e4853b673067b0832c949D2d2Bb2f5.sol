contract main {




// =====================  Runtime code  =====================


#
#  - sub_21444fed(?)
#  - sub_3d8f03a0(?)
#  - sub_6fbc9807(?)
#  - sub_987d6de7(?)
#  - sub_c54820e8(?)
#  - sub_ea87b634(?)
#
mapping of uint256 sub_f119462d;
mapping of uint8 stor1;
mapping of uint256 sub_c40571ec;
mapping of uint8 stor3;
mapping of uint256 sub_bb46335f;
mapping of uint256 sub_139f7b39;
address sub_277f45d1Address;
uint256 id;
mapping of uint8 stor99;

function sub_139f7b39(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_139f7b39[arg1]
}

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

function sub_bb46335f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bb46335f[arg1]
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
    require msg.sender == 0x85a92368ab710a85f57b9872c0fe4361a405e5d
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
        _2506 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_2506] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_2506 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_2506 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_2506 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_2506 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_2506 + 160] = cd[(s + 160)]
        mem[t] = _2506
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    _2505 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _2507 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _2505 + 1) + 32
    if not _2505 + 1:
        if 0 >= mem[_2507]:
            revert with 'NH{q', 50
        mem[_2507 + 32] = cd[4]
        _5016 = mem[96]
        idx = 0
        while idx < _5016:
            if idx >= mem[_2507]:
                revert with 'NH{q', 50
            _5021 = mem[(32 * idx) + _2507 + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _5026 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 160] == 1:
                _5036 = mem[mem[(32 * idx) + 128]]
                _5037 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _5074 = mem[mem[(32 * idx) + 128] + 64]
                    _5080 = mem[64]
                    _5081 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5081 + 32] = mem[_5081 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5173 = mem[_5081]
                    s = 0
                    while s < _5173:
                        mem[_5080 + s + 36] = mem[_5081 + s + 32]
                        _5016 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5173) <= _5173:
                        staticcall address(_5074).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5080 + _5173 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5026 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5026 + 12 len 20] == address(_5036):
                                if not -mem[_5026 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[160] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / mem[160] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                if not -mem[_5026 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[128] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / mem[128] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                        else:
                            _7548 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7548] = return_data.size
                            mem[_7548 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5026 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5026 + 12 len 20] == address(_5036):
                                if not -mem[_5026 + 128] + 10000:
                                    if mem[_7548 + 64]:
                                        if False and mem[_7548 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7548 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7548 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7548 + 32] and 10000 > -1 / mem[_7548 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7548 + 32] / 10000 != mem[_7548 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7548 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7548 + 32] < 10000 * mem[_7548 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7548 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7548 + 32]
                                    if 0 / 10000 * mem[_7548 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7548 + 32]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7548 + 64]:
                                        if mem[_7548 + 32] and 10000 > -1 / mem[_7548 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7548 + 32] / 10000 != mem[_7548 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7548 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7548 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7548 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7548 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7548 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[_7548 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7548 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7548 + 64] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[_7548 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[_7548 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7548 + 64]) / mem[_7548 + 64] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7548 + 32] and 10000 > -1 / mem[_7548 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7548 + 32] / 10000 != mem[_7548 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7548 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7548 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7548 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7548 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[_7548 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7548 + 64]) / (10000 * mem[_7548 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[_7548 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7548 + 64]) / (10000 * mem[_7548 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7548 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7548 + 64]) / (10000 * mem[_7548 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                if not -mem[_5026 + 128] + 10000:
                                    if mem[_7548 + 32]:
                                        if False and mem[_7548 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7548 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7548 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7548 + 64] and 10000 > -1 / mem[_7548 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7548 + 64] / 10000 != mem[_7548 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7548 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7548 + 64] < 10000 * mem[_7548 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7548 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7548 + 64]
                                    if 0 / 10000 * mem[_7548 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7548 + 64]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7548 + 32]:
                                        if mem[_7548 + 64] and 10000 > -1 / mem[_7548 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7548 + 64] / 10000 != mem[_7548 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7548 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7548 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7548 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7548 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7548 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[_7548 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7548 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7548 + 32] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[_7548 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[_7548 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7548 + 32]) / mem[_7548 + 32] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7548 + 64] and 10000 > -1 / mem[_7548 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7548 + 64] / 10000 != mem[_7548 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7548 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7548 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7548 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7548 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[_7548 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7548 + 32]) / (10000 * mem[_7548 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[_7548 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7548 + 32]) / (10000 * mem[_7548 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7548 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7548 + 32]) / (10000 * mem[_7548 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                    else:
                        mem[_5080 + _5173 + 36] = 0
                        staticcall address(_5074).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5080 + _5173 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5026 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5026 + 12 len 20] == address(_5036):
                                if not -mem[_5026 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[160] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / mem[160] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                if not -mem[_5026 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[128] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / mem[128] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                        else:
                            _7568 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7568] = return_data.size
                            mem[_7568 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5026 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5026 + 12 len 20] == address(_5036):
                                if not -mem[_5026 + 128] + 10000:
                                    if mem[_7568 + 64]:
                                        if False and mem[_7568 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7568 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7568 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7568 + 32] and 10000 > -1 / mem[_7568 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7568 + 32] / 10000 != mem[_7568 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7568 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7568 + 32] < 10000 * mem[_7568 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7568 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7568 + 32]
                                    if 0 / 10000 * mem[_7568 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7568 + 32]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7568 + 64]:
                                        if mem[_7568 + 32] and 10000 > -1 / mem[_7568 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7568 + 32] / 10000 != mem[_7568 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7568 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7568 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7568 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7568 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7568 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[_7568 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7568 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7568 + 64] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[_7568 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[_7568 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7568 + 64]) / mem[_7568 + 64] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7568 + 32] and 10000 > -1 / mem[_7568 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7568 + 32] / 10000 != mem[_7568 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7568 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7568 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7568 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7568 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[_7568 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7568 + 64]) / (10000 * mem[_7568 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[_7568 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7568 + 64]) / (10000 * mem[_7568 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7568 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7568 + 64]) / (10000 * mem[_7568 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                if not -mem[_5026 + 128] + 10000:
                                    if mem[_7568 + 32]:
                                        if False and mem[_7568 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7568 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7568 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7568 + 64] and 10000 > -1 / mem[_7568 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7568 + 64] / 10000 != mem[_7568 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7568 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7568 + 64] < 10000 * mem[_7568 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7568 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7568 + 64]
                                    if 0 / 10000 * mem[_7568 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7568 + 64]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7568 + 32]:
                                        if mem[_7568 + 64] and 10000 > -1 / mem[_7568 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7568 + 64] / 10000 != mem[_7568 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7568 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7568 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7568 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7568 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7568 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[_7568 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7568 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7568 + 32] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[_7568 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[_7568 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7568 + 32]) / mem[_7568 + 32] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7568 + 64] and 10000 > -1 / mem[_7568 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7568 + 64] / 10000 != mem[_7568 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7568 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7568 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7568 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7568 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[_7568 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7568 + 32]) / (10000 * mem[_7568 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[_7568 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7568 + 32]) / (10000 * mem[_7568 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7568 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7568 + 32]) / (10000 * mem[_7568 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                else:
                    _5075 = mem[mem[(32 * idx) + 128] + 64]
                    _5084 = mem[64]
                    _5085 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5085 + 32] = mem[_5085 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5174 = mem[_5085]
                    s = 0
                    while s < _5174:
                        mem[_5084 + s + 36] = mem[_5085 + s + 32]
                        _5016 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5174) <= _5174:
                        staticcall address(_5075).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5084 + _5174 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5026 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5026 + 12 len 20] == address(_5037):
                                if not -mem[_5026 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[160] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / mem[160] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                if not -mem[_5026 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[128] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / mem[128] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                        else:
                            _7550 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7550] = return_data.size
                            mem[_7550 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5026 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5026 + 12 len 20] == address(_5037):
                                if not -mem[_5026 + 128] + 10000:
                                    if mem[_7550 + 64]:
                                        if False and mem[_7550 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7550 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7550 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7550 + 32] and 10000 > -1 / mem[_7550 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7550 + 32] / 10000 != mem[_7550 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7550 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7550 + 32] < 10000 * mem[_7550 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7550 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7550 + 32]
                                    if 0 / 10000 * mem[_7550 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7550 + 32]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7550 + 64]:
                                        if mem[_7550 + 32] and 10000 > -1 / mem[_7550 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7550 + 32] / 10000 != mem[_7550 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7550 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7550 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7550 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7550 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7550 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[_7550 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7550 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7550 + 64] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[_7550 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[_7550 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7550 + 64]) / mem[_7550 + 64] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7550 + 32] and 10000 > -1 / mem[_7550 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7550 + 32] / 10000 != mem[_7550 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7550 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7550 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7550 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7550 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[_7550 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7550 + 64]) / (10000 * mem[_7550 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[_7550 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7550 + 64]) / (10000 * mem[_7550 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7550 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7550 + 64]) / (10000 * mem[_7550 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                if not -mem[_5026 + 128] + 10000:
                                    if mem[_7550 + 32]:
                                        if False and mem[_7550 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7550 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7550 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7550 + 64] and 10000 > -1 / mem[_7550 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7550 + 64] / 10000 != mem[_7550 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7550 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7550 + 64] < 10000 * mem[_7550 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7550 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7550 + 64]
                                    if 0 / 10000 * mem[_7550 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7550 + 64]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7550 + 32]:
                                        if mem[_7550 + 64] and 10000 > -1 / mem[_7550 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7550 + 64] / 10000 != mem[_7550 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7550 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7550 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7550 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7550 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7550 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[_7550 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7550 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7550 + 32] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[_7550 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[_7550 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7550 + 32]) / mem[_7550 + 32] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7550 + 64] and 10000 > -1 / mem[_7550 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7550 + 64] / 10000 != mem[_7550 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7550 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7550 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7550 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7550 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[_7550 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7550 + 32]) / (10000 * mem[_7550 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[_7550 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7550 + 32]) / (10000 * mem[_7550 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7550 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7550 + 32]) / (10000 * mem[_7550 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                    else:
                        mem[_5084 + _5174 + 36] = 0
                        staticcall address(_5075).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5084 + _5174 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5026 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5026 + 12 len 20] == address(_5037):
                                if not -mem[_5026 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[160] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / mem[160] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                if not -mem[_5026 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[128] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / mem[128] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                        else:
                            _7573 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7573] = return_data.size
                            mem[_7573 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5026 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5026 + 12 len 20] == address(_5037):
                                if not -mem[_5026 + 128] + 10000:
                                    if mem[_7573 + 64]:
                                        if False and mem[_7573 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7573 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7573 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7573 + 32] and 10000 > -1 / mem[_7573 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7573 + 32] / 10000 != mem[_7573 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7573 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7573 + 32] < 10000 * mem[_7573 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7573 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7573 + 32]
                                    if 0 / 10000 * mem[_7573 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7573 + 32]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7573 + 64]:
                                        if mem[_7573 + 32] and 10000 > -1 / mem[_7573 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7573 + 32] / 10000 != mem[_7573 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7573 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7573 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7573 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7573 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7573 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[_7573 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7573 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7573 + 64] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[_7573 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[_7573 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7573 + 64]) / mem[_7573 + 64] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7573 + 32] and 10000 > -1 / mem[_7573 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7573 + 32] / 10000 != mem[_7573 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7573 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7573 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7573 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7573 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[_7573 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7573 + 64]) / (10000 * mem[_7573 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[_7573 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7573 + 64]) / (10000 * mem[_7573 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7573 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7573 + 64]) / (10000 * mem[_7573 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                if not -mem[_5026 + 128] + 10000:
                                    if mem[_7573 + 32]:
                                        if False and mem[_7573 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7573 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7573 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7573 + 64] and 10000 > -1 / mem[_7573 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7573 + 64] / 10000 != mem[_7573 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7573 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7573 + 64] < 10000 * mem[_7573 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7573 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7573 + 64]
                                    if 0 / 10000 * mem[_7573 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7573 + 64]) - 1
                                else:
                                    if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                        revert with 'NH{q', 17
                                    if not -mem[_5026 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7573 + 32]:
                                        if mem[_7573 + 64] and 10000 > -1 / mem[_7573 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7573 + 64] / 10000 != mem[_7573 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7573 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7573 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7573 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7573 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7573 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if 0 / (10000 * mem[_7573 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7573 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                    else:
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7573 + 32] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 17
                                        if not mem[_7573 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021 * mem[_7573 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7573 + 32]) / mem[_7573 + 32] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7573 + 64] and 10000 > -1 / mem[_7573 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7573 + 64] / 10000 != mem[_7573 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7573 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7573 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7573 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7573 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                            revert with 'NH{q', 18
                                        require (10000 * _5021 * mem[_7573 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7573 + 32]) / (10000 * mem[_7573 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                        if (10000 * _5021 * mem[_7573 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7573 + 32]) / (10000 * mem[_7573 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7573 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7573 + 32]) / (10000 * mem[_7573 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
            else:
                mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
                mem[32] = 3
                if not stor3[mem[mem[(32 * idx) + 128] + 108 len 20]]:
                    if mem[mem[(32 * idx) + 128] + 160] != 5:
                        if mem[mem[(32 * idx) + 128] + 160] == 7:
                            mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
                            mem[32] = 0
                            mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            _5054 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                            mem[32] = 0
                            _5056 = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                            mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                            mem[32] = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                            _5059 = mem[mem[(32 * idx) + 128] + 96]
                            mem[mem[64]] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint8(stor[_5054])
                            mem[mem[64] + 36] = uint8(stor[_5056][mem[0]])
                            mem[mem[64] + 68] = _5021
                            require ext_code.size(address(_5059))
                            staticcall address(_5059).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args uint8(stor[_5054]), uint8(stor[_5056][mem[0]]), _5021
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5235 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5235] == mem[_5235]
                            require mem[_5235]
                            if mem[_5235] < 1:
                                revert with 'NH{q', 17
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_2507]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _2507 + 32] = mem[_5235] - 1
                        else:
                            if mem[mem[(32 * idx) + 128] + 160] < 80:
                                if mem[mem[(32 * idx) + 128] + 160] != 12:
                                    require mem[mem[(32 * idx) + 128] + 160] == 99
                                    require _5021
                                    if _5021 < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = _5021 - 1
                                else:
                                    require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                    staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5175 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 160
                                    require mem[_5175] == mem[_5175 + 18 len 14]
                                    require mem[_5175 + 32] == mem[_5175 + 50 len 14]
                                    require mem[_5175 + 64] == mem[_5175 + 82 len 14]
                                    require mem[_5175 + 96] == mem[_5175 + 114 len 14]
                                    require mem[_5175 + 128] == mem[_5175 + 128]
                                    if 10^18 < mem[_5175 + 128]:
                                        revert with 'NH{q', 17
                                    if -mem[_5175 + 128] + 10^18 > 10^18:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if mem[_5026 + 12 len 20] < mem[_5026 + 44 len 20]:
                                        if mem[_5026 + 12 len 20] == mem[_5026 + 12 len 20]:
                                            if not -mem[_5175 + 128] + 10^18:
                                                if mem[_5175 + 114 len 14]:
                                                    if False and mem[_5175 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5175 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5175 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5175 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5175 + 82 len 14] < mem[_5175 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5175 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5175 + 82 len 14]
                                                if 0 / mem[_5175 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5175 + 82 len 14]) - 1
                                            else:
                                                if _5021 and -mem[_5175 + 128] + 10^18 > -1 / _5021:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5175 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / -mem[_5175 + 128] + 10^18 != _5021:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5175 + 114 len 14]:
                                                    if mem[_5175 + 82 len 14] > -((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < mem[_5175 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)
                                                    if 0 / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 and mem[_5175 + 114 len 14] > -1 / (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5175 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 114 len 14] / mem[_5175 + 114 len 14] != (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5175 + 82 len 14] > -((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < mem[_5175 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 114 len 14] / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 114 len 14] / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 114 len 14] / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)) - 1
                                        else:
                                            if not -mem[_5175 + 128] + 10^18:
                                                if mem[_5175 + 82 len 14]:
                                                    if False and mem[_5175 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5175 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5175 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5175 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5175 + 114 len 14] < mem[_5175 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5175 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5175 + 114 len 14]
                                                if 0 / mem[_5175 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5175 + 114 len 14]) - 1
                                            else:
                                                if _5021 and -mem[_5175 + 128] + 10^18 > -1 / _5021:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5175 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / -mem[_5175 + 128] + 10^18 != _5021:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5175 + 82 len 14]:
                                                    if mem[_5175 + 114 len 14] > -((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < mem[_5175 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)
                                                    if 0 / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 and mem[_5175 + 82 len 14] > -1 / (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5175 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 82 len 14] / mem[_5175 + 82 len 14] != (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5175 + 114 len 14] > -((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < mem[_5175 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 82 len 14] / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 82 len 14] / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 82 len 14] / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)) - 1
                                    else:
                                        if mem[_5026 + 12 len 20] == mem[_5026 + 44 len 20]:
                                            if not -mem[_5175 + 128] + 10^18:
                                                if mem[_5175 + 114 len 14]:
                                                    if False and mem[_5175 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5175 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5175 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5175 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5175 + 82 len 14] < mem[_5175 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5175 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5175 + 82 len 14]
                                                if 0 / mem[_5175 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5175 + 82 len 14]) - 1
                                            else:
                                                if _5021 and -mem[_5175 + 128] + 10^18 > -1 / _5021:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5175 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / -mem[_5175 + 128] + 10^18 != _5021:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5175 + 114 len 14]:
                                                    if mem[_5175 + 82 len 14] > -((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < mem[_5175 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)
                                                    if 0 / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 and mem[_5175 + 114 len 14] > -1 / (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5175 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 114 len 14] / mem[_5175 + 114 len 14] != (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5175 + 82 len 14] > -((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < mem[_5175 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 114 len 14] / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 114 len 14] / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 114 len 14] / mem[_5175 + 82 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)) - 1
                                        else:
                                            if not -mem[_5175 + 128] + 10^18:
                                                if mem[_5175 + 82 len 14]:
                                                    if False and mem[_5175 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5175 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5175 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5175 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5175 + 114 len 14] < mem[_5175 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5175 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5175 + 114 len 14]
                                                if 0 / mem[_5175 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5175 + 114 len 14]) - 1
                                            else:
                                                if _5021 and -mem[_5175 + 128] + 10^18 > -1 / _5021:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5175 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / -mem[_5175 + 128] + 10^18 != _5021:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5175 + 82 len 14]:
                                                    if mem[_5175 + 114 len 14] > -((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < mem[_5175 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)
                                                    if 0 / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 and mem[_5175 + 82 len 14] > -1 / (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5175 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 82 len 14] / mem[_5175 + 82 len 14] != (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5175 + 114 len 14] > -((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < mem[_5175 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 82 len 14] / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)
                                                    if (10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 82 len 14] / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18 * mem[_5175 + 82 len 14] / mem[_5175 + 114 len 14] + ((10^18 * _5021) - (mem[_5175 + 128] * _5021) / 10^18)) - 1
                            else:
                                if mem[mem[(32 * idx) + 128] + 160] >= 90:
                                    if mem[mem[(32 * idx) + 128] + 160] != 12:
                                        require mem[mem[(32 * idx) + 128] + 160] == 99
                                        require _5021
                                        if _5021 < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = _5021 - 1
                                    else:
                                        require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                        staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                                gas gas_remaining wei
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5186 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_5186] == mem[_5186 + 18 len 14]
                                        require mem[_5186 + 32] == mem[_5186 + 50 len 14]
                                        require mem[_5186 + 64] == mem[_5186 + 82 len 14]
                                        require mem[_5186 + 96] == mem[_5186 + 114 len 14]
                                        require mem[_5186 + 128] == mem[_5186 + 128]
                                        if 10^18 < mem[_5186 + 128]:
                                            revert with 'NH{q', 17
                                        if -mem[_5186 + 128] + 10^18 > 10^18:
                                            revert with 0, 'ds-math-sub-underflow'
                                        if mem[_5026 + 12 len 20] < mem[_5026 + 44 len 20]:
                                            if mem[_5026 + 12 len 20] == mem[_5026 + 12 len 20]:
                                                if not -mem[_5186 + 128] + 10^18:
                                                    if mem[_5186 + 114 len 14]:
                                                        if False and mem[_5186 + 114 len 14] > 0:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5186 + 114 len 14]:
                                                            revert with 'NH{q', 18
                                                        if 0 / mem[_5186 + 114 len 14]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5186 + 82 len 14] > -1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5186 + 82 len 14] < mem[_5186 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5186 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5186 + 82 len 14]
                                                    if 0 / mem[_5186 + 82 len 14] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5186 + 82 len 14]) - 1
                                                else:
                                                    if _5021 and -mem[_5186 + 128] + 10^18 > -1 / _5021:
                                                        revert with 'NH{q', 17
                                                    if not -mem[_5186 + 128] + 10^18:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / -mem[_5186 + 128] + 10^18 != _5021:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if not mem[_5186 + 114 len 14]:
                                                        if mem[_5186 + 82 len 14] > -((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < mem[_5186 + 82 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require 0 / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)
                                                        if 0 / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)) - 1
                                                    else:
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 and mem[_5186 + 114 len 14] > -1 / (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5186 + 114 len 14]:
                                                            revert with 'NH{q', 18
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 114 len 14] / mem[_5186 + 114 len 14] != (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        if mem[_5186 + 82 len 14] > -((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < mem[_5186 + 82 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 114 len 14] / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 114 len 14] / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 114 len 14] / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)) - 1
                                            else:
                                                if not -mem[_5186 + 128] + 10^18:
                                                    if mem[_5186 + 82 len 14]:
                                                        if False and mem[_5186 + 82 len 14] > 0:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5186 + 82 len 14]:
                                                            revert with 'NH{q', 18
                                                        if 0 / mem[_5186 + 82 len 14]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5186 + 114 len 14] > -1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5186 + 114 len 14] < mem[_5186 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5186 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5186 + 114 len 14]
                                                    if 0 / mem[_5186 + 114 len 14] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5186 + 114 len 14]) - 1
                                                else:
                                                    if _5021 and -mem[_5186 + 128] + 10^18 > -1 / _5021:
                                                        revert with 'NH{q', 17
                                                    if not -mem[_5186 + 128] + 10^18:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / -mem[_5186 + 128] + 10^18 != _5021:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if not mem[_5186 + 82 len 14]:
                                                        if mem[_5186 + 114 len 14] > -((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < mem[_5186 + 114 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require 0 / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)
                                                        if 0 / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)) - 1
                                                    else:
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 and mem[_5186 + 82 len 14] > -1 / (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5186 + 82 len 14]:
                                                            revert with 'NH{q', 18
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 82 len 14] / mem[_5186 + 82 len 14] != (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        if mem[_5186 + 114 len 14] > -((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < mem[_5186 + 114 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 82 len 14] / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 82 len 14] / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 82 len 14] / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)) - 1
                                        else:
                                            if mem[_5026 + 12 len 20] == mem[_5026 + 44 len 20]:
                                                if not -mem[_5186 + 128] + 10^18:
                                                    if mem[_5186 + 114 len 14]:
                                                        if False and mem[_5186 + 114 len 14] > 0:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5186 + 114 len 14]:
                                                            revert with 'NH{q', 18
                                                        if 0 / mem[_5186 + 114 len 14]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5186 + 82 len 14] > -1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5186 + 82 len 14] < mem[_5186 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5186 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5186 + 82 len 14]
                                                    if 0 / mem[_5186 + 82 len 14] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5186 + 82 len 14]) - 1
                                                else:
                                                    if _5021 and -mem[_5186 + 128] + 10^18 > -1 / _5021:
                                                        revert with 'NH{q', 17
                                                    if not -mem[_5186 + 128] + 10^18:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / -mem[_5186 + 128] + 10^18 != _5021:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if not mem[_5186 + 114 len 14]:
                                                        if mem[_5186 + 82 len 14] > -((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < mem[_5186 + 82 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require 0 / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)
                                                        if 0 / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)) - 1
                                                    else:
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 and mem[_5186 + 114 len 14] > -1 / (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5186 + 114 len 14]:
                                                            revert with 'NH{q', 18
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 114 len 14] / mem[_5186 + 114 len 14] != (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        if mem[_5186 + 82 len 14] > -((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < mem[_5186 + 82 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 114 len 14] / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 114 len 14] / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 114 len 14] / mem[_5186 + 82 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)) - 1
                                            else:
                                                if not -mem[_5186 + 128] + 10^18:
                                                    if mem[_5186 + 82 len 14]:
                                                        if False and mem[_5186 + 82 len 14] > 0:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5186 + 82 len 14]:
                                                            revert with 'NH{q', 18
                                                        if 0 / mem[_5186 + 82 len 14]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5186 + 114 len 14] > -1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5186 + 114 len 14] < mem[_5186 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5186 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5186 + 114 len 14]
                                                    if 0 / mem[_5186 + 114 len 14] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5186 + 114 len 14]) - 1
                                                else:
                                                    if _5021 and -mem[_5186 + 128] + 10^18 > -1 / _5021:
                                                        revert with 'NH{q', 17
                                                    if not -mem[_5186 + 128] + 10^18:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / -mem[_5186 + 128] + 10^18 != _5021:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if not mem[_5186 + 82 len 14]:
                                                        if mem[_5186 + 114 len 14] > -((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < mem[_5186 + 114 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require 0 / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)
                                                        if 0 / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)) - 1
                                                    else:
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 and mem[_5186 + 82 len 14] > -1 / (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18:
                                                            revert with 'NH{q', 17
                                                        if not mem[_5186 + 82 len 14]:
                                                            revert with 'NH{q', 18
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 82 len 14] / mem[_5186 + 82 len 14] != (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        if mem[_5186 + 114 len 14] > -((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) - 1:
                                                            revert with 'NH{q', 17
                                                        if mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < mem[_5186 + 114 len 14]:
                                                            revert with 0, 'ds-math-add-overflow'
                                                        if not mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18):
                                                            revert with 'NH{q', 18
                                                        require (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 82 len 14] / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)
                                                        if (10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 82 len 14] / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18) < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18 * mem[_5186 + 82 len 14] / mem[_5186 + 114 len 14] + ((10^18 * _5021) - (mem[_5186 + 128] * _5021) / 10^18)) - 1
                                else:
                                    mem[0] = mem[mem[(32 * idx) + 128] + 76 len 20]
                                    mem[32] = 0
                                    mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    _5115 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0))
                                    mem[32] = 0
                                    _5117 = sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0)
                                    mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                                    mem[32] = sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0)
                                    if mem[mem[(32 * idx) + 128] + 160] == 81:
                                        _5161 = mem[mem[(32 * idx) + 128] + 64]
                                        mem[mem[64]] = 0x5e0d443f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5115'))))
                                        mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5117')))))
                                        mem[mem[64] + 68] = _5021
                                        require ext_code.size(address(_5161))
                                        staticcall address(_5161).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('type', 256, ('stor', ('var', '_5115')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5117'))))), _5021
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5366 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5366] == mem[_5366]
                                        require mem[_5366]
                                        if mem[_5366] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = mem[_5366] - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 160] == 82:
                                            _5177 = mem[mem[(32 * idx) + 128] + 64]
                                            mem[mem[64]] = 0x556d6e9f00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(stor[_5115])
                                            mem[mem[64] + 36] = uint256(stor[_5117][mem[0]])
                                            mem[mem[64] + 68] = _5021
                                            require ext_code.size(address(_5177))
                                            staticcall address(_5177).get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args uint256(stor[_5115]), uint256(stor[_5117][mem[0]]), _5021
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5395 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5395] == mem[_5395]
                                            require mem[_5395]
                                            if mem[_5395] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = mem[_5395] - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 160] == 83:
                                                _5194 = mem[mem[(32 * idx) + 128] + 64]
                                                mem[mem[64]] = 0x7211ef700000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5115'))))
                                                mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5117')))))
                                                mem[mem[64] + 68] = _5021
                                                require ext_code.size(address(_5194))
                                                staticcall address(_5194).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('type', 256, ('stor', ('var', '_5115')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5117'))))), _5021
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5445 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5445] == mem[_5445]
                                                if mem[_5026 + 160] != 85:
                                                    require mem[_5445]
                                                    if mem[_5445] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = mem[_5445] - 1
                                                else:
                                                    if 43114 != chainid:
                                                        require mem[_5445]
                                                        if mem[_5445] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = mem[_5445] - 1
                                                    else:
                                                        if uint256(stor[_5117][mem[0]]):
                                                            require mem[_5445]
                                                            if mem[_5445] < 1:
                                                                revert with 'NH{q', 17
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[_2507]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + _2507 + 32] = mem[_5445] - 1
                                                        else:
                                                            if mem[_5445] and 9998 > -1 / mem[_5445]:
                                                                revert with 'NH{q', 17
                                                            require 9998 * mem[_5445] / 10000
                                                            if 9998 * mem[_5445] / 10000 < 1:
                                                                revert with 'NH{q', 17
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[_2507]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + _2507 + 32] = (9998 * mem[_5445] / 10000) - 1
                                            else:
                                                if mem[mem[(32 * idx) + 128] + 160] != 85:
                                                    require mem[mem[(32 * idx) + 128] + 160] == 84
                                                    _5207 = mem[mem[(32 * idx) + 128] + 64]
                                                    mem[mem[64]] = 0x85f11d1e00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = uint256(stor[_5115])
                                                    mem[mem[64] + 36] = uint256(stor[_5117][mem[0]])
                                                    mem[mem[64] + 68] = _5021
                                                    require ext_code.size(address(_5207))
                                                    staticcall address(_5207).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args uint256(stor[_5115]), uint256(stor[_5117][mem[0]]), _5021
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5458 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5458] == mem[_5458]
                                                    if 43114 != chainid:
                                                        require mem[_5458]
                                                        if mem[_5458] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = mem[_5458] - 1
                                                    else:
                                                        if mem[_5458] and 9996 > -1 / mem[_5458]:
                                                            revert with 'NH{q', 17
                                                        require 9996 * mem[_5458] / 10000
                                                        if 9996 * mem[_5458] / 10000 < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = (9996 * mem[_5458] / 10000) - 1
                                                else:
                                                    _5200 = mem[mem[(32 * idx) + 128] + 64]
                                                    mem[mem[64]] = 0x7211ef700000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5115'))))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5117')))))
                                                    mem[mem[64] + 68] = _5021
                                                    require ext_code.size(address(_5200))
                                                    staticcall address(_5200).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('type', 256, ('stor', ('var', '_5115')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5117'))))), _5021
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5452 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5452] == mem[_5452]
                                                    if mem[_5026 + 160] != 85:
                                                        require mem[_5452]
                                                        if mem[_5452] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = mem[_5452] - 1
                                                    else:
                                                        if 43114 != chainid:
                                                            require mem[_5452]
                                                            if mem[_5452] < 1:
                                                                revert with 'NH{q', 17
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[_2507]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + _2507 + 32] = mem[_5452] - 1
                                                        else:
                                                            if uint256(stor[_5117][mem[0]]):
                                                                require mem[_5452]
                                                                if mem[_5452] < 1:
                                                                    revert with 'NH{q', 17
                                                                if idx > -2:
                                                                    revert with 'NH{q', 17
                                                                if idx + 1 >= mem[_2507]:
                                                                    revert with 'NH{q', 50
                                                                mem[(32 * idx + 1) + _2507 + 32] = mem[_5452] - 1
                                                            else:
                                                                if mem[_5452] and 9998 > -1 / mem[_5452]:
                                                                    revert with 'NH{q', 17
                                                                require 9998 * mem[_5452] / 10000
                                                                if 9998 * mem[_5452] / 10000 < 1:
                                                                    revert with 'NH{q', 17
                                                                if idx > -2:
                                                                    revert with 'NH{q', 17
                                                                if idx + 1 >= mem[_2507]:
                                                                    revert with 'NH{q', 50
                                                                mem[(32 * idx + 1) + _2507 + 32] = (9998 * mem[_5452] / 10000) - 1
                    else:
                        _5047 = mem[mem[(32 * idx) + 128] + 96]
                        _5061 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_5061 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_5061]:
                            revert with 'NH{q', 50
                        mem[_5061 + 32] = mem[_5026 + 12 len 20]
                        if 1 >= mem[_5061]:
                            revert with 'NH{q', 50
                        mem[_5061 + 64] = mem[_5026 + 44 len 20]
                        mem[_5061 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5061 + 100] = _5021
                        mem[_5061 + 132] = 64
                        mem[_5061 + 164] = mem[_5061]
                        s = 0
                        t = _5061 + 32
                        u = _5061 + 196
                        while s < mem[_5061]:
                            mem[u] = mem[t + 12 len 20]
                            _5016 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_5047))
                        staticcall address(_5047).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5061 + (32 * mem[_5061]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7540 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7574 = mem[_7540]
                        require mem[_7540] <= test266151307()
                        require _7540 + mem[_7540] + 31 < _7540 + return_data.size
                        _7678 = mem[_7540 + mem[_7540]]
                        if mem[_7540 + mem[_7540]] > test266151307():
                            revert with 'NH{q', 65
                        if _7540 + ceil32(return_data.size) + floor32(mem[_7540 + mem[_7540]]) + 1 > test266151307() or floor32(mem[_7540 + mem[_7540]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _7540 + ceil32(return_data.size) + floor32(mem[_7540 + mem[_7540]]) + 1
                        mem[_7540 + ceil32(return_data.size)] = _7678
                        require _7574 + (32 * _7678) + 32 <= return_data.size
                        s = 0
                        t = _7540 + _7574 + 32
                        u = _7540 + ceil32(return_data.size) + 32
                        while s < _7678:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _5016 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _7678 < 1:
                            revert with 'NH{q', 17
                        if _7678 - 1 >= _7678:
                            revert with 'NH{q', 50
                        require mem[(32 * _7678 - 1) + _7540 + ceil32(return_data.size) + 32]
                        if mem[(32 * _7678 - 1) + _7540 + ceil32(return_data.size) + 32] < 1:
                            revert with 'NH{q', 17
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_2507]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _2507 + 32] = mem[(32 * _7678 - 1) + _7540 + ceil32(return_data.size) + 32] - 1
                else:
                    _5041 = mem[mem[(32 * idx) + 128]]
                    _5042 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                        _5091 = mem[mem[(32 * idx) + 128] + 64]
                        _5123 = mem[64]
                        _5124 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5124 + 32] = mem[_5124 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _5188 = mem[_5124]
                        s = 0
                        while s < _5188:
                            mem[_5123 + s + 36] = mem[_5124 + s + 32]
                            _5016 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_5188) <= _5188:
                            staticcall address(_5091).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5123 + _5188 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5026 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5026 + 12 len 20] == address(_5041):
                                    if not -mem[_5026 + 128] + 10000:
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
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[160] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / mem[160] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                else:
                                    if not -mem[_5026 + 128] + 10000:
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
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[128] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / mem[128] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                _7552 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7552] = return_data.size
                                mem[_7552 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5026 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5026 + 12 len 20] == address(_5041):
                                    if not -mem[_5026 + 128] + 10000:
                                        if mem[_7552 + 64]:
                                            if False and mem[_7552 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7552 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7552 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7552 + 32] and 10000 > -1 / mem[_7552 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7552 + 32] / 10000 != mem[_7552 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7552 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7552 + 32] < 10000 * mem[_7552 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7552 + 32]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7552 + 32]
                                        if 0 / 10000 * mem[_7552 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7552 + 32]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7552 + 64]:
                                            if mem[_7552 + 32] and 10000 > -1 / mem[_7552 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7552 + 32] / 10000 != mem[_7552 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7552 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7552 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7552 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7552 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7552 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[_7552 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7552 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7552 + 64] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[_7552 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[_7552 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7552 + 64]) / mem[_7552 + 64] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7552 + 32] and 10000 > -1 / mem[_7552 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7552 + 32] / 10000 != mem[_7552 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7552 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7552 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7552 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7552 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[_7552 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7552 + 64]) / (10000 * mem[_7552 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[_7552 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7552 + 64]) / (10000 * mem[_7552 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7552 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7552 + 64]) / (10000 * mem[_7552 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                else:
                                    if not -mem[_5026 + 128] + 10000:
                                        if mem[_7552 + 32]:
                                            if False and mem[_7552 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7552 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7552 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7552 + 64] and 10000 > -1 / mem[_7552 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7552 + 64] / 10000 != mem[_7552 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7552 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7552 + 64] < 10000 * mem[_7552 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7552 + 64]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7552 + 64]
                                        if 0 / 10000 * mem[_7552 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7552 + 64]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7552 + 32]:
                                            if mem[_7552 + 64] and 10000 > -1 / mem[_7552 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7552 + 64] / 10000 != mem[_7552 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7552 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7552 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7552 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7552 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7552 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[_7552 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7552 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7552 + 32] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[_7552 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[_7552 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7552 + 32]) / mem[_7552 + 32] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7552 + 64] and 10000 > -1 / mem[_7552 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7552 + 64] / 10000 != mem[_7552 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7552 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7552 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7552 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7552 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[_7552 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7552 + 32]) / (10000 * mem[_7552 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[_7552 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7552 + 32]) / (10000 * mem[_7552 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7552 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7552 + 32]) / (10000 * mem[_7552 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                        else:
                            mem[_5123 + _5188 + 36] = 0
                            staticcall address(_5091).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5123 + _5188 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5026 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5026 + 12 len 20] == address(_5041):
                                    if not -mem[_5026 + 128] + 10000:
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
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[160] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / mem[160] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                else:
                                    if not -mem[_5026 + 128] + 10000:
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
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[128] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / mem[128] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                _7579 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7579] = return_data.size
                                mem[_7579 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5026 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5026 + 12 len 20] == address(_5041):
                                    if not -mem[_5026 + 128] + 10000:
                                        if mem[_7579 + 64]:
                                            if False and mem[_7579 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7579 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7579 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7579 + 32] and 10000 > -1 / mem[_7579 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7579 + 32] / 10000 != mem[_7579 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7579 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7579 + 32] < 10000 * mem[_7579 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7579 + 32]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7579 + 32]
                                        if 0 / 10000 * mem[_7579 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7579 + 32]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7579 + 64]:
                                            if mem[_7579 + 32] and 10000 > -1 / mem[_7579 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7579 + 32] / 10000 != mem[_7579 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7579 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7579 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7579 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7579 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7579 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[_7579 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7579 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7579 + 64] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[_7579 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[_7579 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7579 + 64]) / mem[_7579 + 64] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7579 + 32] and 10000 > -1 / mem[_7579 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7579 + 32] / 10000 != mem[_7579 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7579 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7579 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7579 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7579 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[_7579 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7579 + 64]) / (10000 * mem[_7579 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[_7579 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7579 + 64]) / (10000 * mem[_7579 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7579 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7579 + 64]) / (10000 * mem[_7579 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                else:
                                    if not -mem[_5026 + 128] + 10000:
                                        if mem[_7579 + 32]:
                                            if False and mem[_7579 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7579 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7579 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7579 + 64] and 10000 > -1 / mem[_7579 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7579 + 64] / 10000 != mem[_7579 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7579 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7579 + 64] < 10000 * mem[_7579 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7579 + 64]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7579 + 64]
                                        if 0 / 10000 * mem[_7579 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7579 + 64]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7579 + 32]:
                                            if mem[_7579 + 64] and 10000 > -1 / mem[_7579 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7579 + 64] / 10000 != mem[_7579 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7579 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7579 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7579 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7579 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7579 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[_7579 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7579 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7579 + 32] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[_7579 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[_7579 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7579 + 32]) / mem[_7579 + 32] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7579 + 64] and 10000 > -1 / mem[_7579 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7579 + 64] / 10000 != mem[_7579 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7579 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7579 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7579 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7579 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[_7579 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7579 + 32]) / (10000 * mem[_7579 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[_7579 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7579 + 32]) / (10000 * mem[_7579 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7579 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7579 + 32]) / (10000 * mem[_7579 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                    else:
                        _5092 = mem[mem[(32 * idx) + 128] + 64]
                        _5127 = mem[64]
                        _5128 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5128 + 32] = mem[_5128 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _5189 = mem[_5128]
                        s = 0
                        while s < _5189:
                            mem[_5127 + s + 36] = mem[_5128 + s + 32]
                            _5016 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_5189) <= _5189:
                            staticcall address(_5092).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5127 + _5189 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5026 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5026 + 12 len 20] == address(_5042):
                                    if not -mem[_5026 + 128] + 10000:
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
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[160] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / mem[160] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                else:
                                    if not -mem[_5026 + 128] + 10000:
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
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[128] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / mem[128] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                _7554 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7554] = return_data.size
                                mem[_7554 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5026 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5026 + 12 len 20] == address(_5042):
                                    if not -mem[_5026 + 128] + 10000:
                                        if mem[_7554 + 64]:
                                            if False and mem[_7554 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7554 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7554 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7554 + 32] and 10000 > -1 / mem[_7554 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7554 + 32] / 10000 != mem[_7554 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7554 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7554 + 32] < 10000 * mem[_7554 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7554 + 32]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7554 + 32]
                                        if 0 / 10000 * mem[_7554 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7554 + 32]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7554 + 64]:
                                            if mem[_7554 + 32] and 10000 > -1 / mem[_7554 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7554 + 32] / 10000 != mem[_7554 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7554 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7554 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7554 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7554 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7554 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[_7554 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7554 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7554 + 64] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[_7554 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[_7554 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7554 + 64]) / mem[_7554 + 64] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7554 + 32] and 10000 > -1 / mem[_7554 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7554 + 32] / 10000 != mem[_7554 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7554 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7554 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7554 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7554 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[_7554 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7554 + 64]) / (10000 * mem[_7554 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[_7554 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7554 + 64]) / (10000 * mem[_7554 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7554 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7554 + 64]) / (10000 * mem[_7554 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                else:
                                    if not -mem[_5026 + 128] + 10000:
                                        if mem[_7554 + 32]:
                                            if False and mem[_7554 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7554 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7554 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7554 + 64] and 10000 > -1 / mem[_7554 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7554 + 64] / 10000 != mem[_7554 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7554 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7554 + 64] < 10000 * mem[_7554 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7554 + 64]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7554 + 64]
                                        if 0 / 10000 * mem[_7554 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7554 + 64]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7554 + 32]:
                                            if mem[_7554 + 64] and 10000 > -1 / mem[_7554 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7554 + 64] / 10000 != mem[_7554 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7554 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7554 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7554 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7554 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7554 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[_7554 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7554 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7554 + 32] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[_7554 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[_7554 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7554 + 32]) / mem[_7554 + 32] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7554 + 64] and 10000 > -1 / mem[_7554 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7554 + 64] / 10000 != mem[_7554 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7554 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7554 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7554 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7554 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[_7554 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7554 + 32]) / (10000 * mem[_7554 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[_7554 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7554 + 32]) / (10000 * mem[_7554 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7554 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7554 + 32]) / (10000 * mem[_7554 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                        else:
                            mem[_5127 + _5189 + 36] = 0
                            staticcall address(_5092).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5127 + _5189 + -mem[64] + 32]
                            if not return_data.size:
                                if 10000 < mem[_5026 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5026 + 12 len 20] == address(_5042):
                                    if not -mem[_5026 + 128] + 10000:
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
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[160] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / mem[160] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[160]) - (mem[_5026 + 128] * _5021 * mem[160]) / (10000 * mem[128]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                else:
                                    if not -mem[_5026 + 128] + 10000:
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
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[128] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / mem[128] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[128]) - (mem[_5026 + 128] * _5021 * mem[128]) / (10000 * mem[160]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                            else:
                                _7584 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7584] = return_data.size
                                mem[_7584 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if 10000 < mem[_5026 + 128]:
                                    revert with 'NH{q', 17
                                if mem[_5026 + 12 len 20] == address(_5042):
                                    if not -mem[_5026 + 128] + 10000:
                                        if mem[_7584 + 64]:
                                            if False and mem[_7584 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7584 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7584 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7584 + 32] and 10000 > -1 / mem[_7584 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7584 + 32] / 10000 != mem[_7584 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7584 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7584 + 32] < 10000 * mem[_7584 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7584 + 32]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7584 + 32]
                                        if 0 / 10000 * mem[_7584 + 32] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7584 + 32]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7584 + 64]:
                                            if mem[_7584 + 32] and 10000 > -1 / mem[_7584 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7584 + 32] / 10000 != mem[_7584 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7584 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7584 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7584 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7584 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7584 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[_7584 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7584 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7584 + 64] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[_7584 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[_7584 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7584 + 64]) / mem[_7584 + 64] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7584 + 32] and 10000 > -1 / mem[_7584 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7584 + 32] / 10000 != mem[_7584 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7584 + 32] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7584 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7584 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7584 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[_7584 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7584 + 64]) / (10000 * mem[_7584 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[_7584 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7584 + 64]) / (10000 * mem[_7584 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7584 + 64]) - (mem[_5026 + 128] * _5021 * mem[_7584 + 64]) / (10000 * mem[_7584 + 32]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                else:
                                    if not -mem[_5026 + 128] + 10000:
                                        if mem[_7584 + 32]:
                                            if False and mem[_7584 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_7584 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_7584 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7584 + 64] and 10000 > -1 / mem[_7584 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7584 + 64] / 10000 != mem[_7584 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7584 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7584 + 64] < 10000 * mem[_7584 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_7584 + 64]:
                                            revert with 'NH{q', 18
                                        require 0 / 10000 * mem[_7584 + 64]
                                        if 0 / 10000 * mem[_7584 + 64] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7584 + 64]) - 1
                                    else:
                                        if _5021 and -mem[_5026 + 128] + 10000 > -1 / _5021:
                                            revert with 'NH{q', 17
                                        if not -mem[_5026 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * _5021) - (mem[_5026 + 128] * _5021) / -mem[_5026 + 128] + 10000 != _5021:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_7584 + 32]:
                                            if mem[_7584 + 64] and 10000 > -1 / mem[_7584 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7584 + 64] / 10000 != mem[_7584 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7584 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7584 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7584 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7584 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require 0 / (10000 * mem[_7584 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if 0 / (10000 * mem[_7584 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7584 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
                                        else:
                                            if (10000 * _5021) - (mem[_5026 + 128] * _5021) and mem[_7584 + 32] > -1 / (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 17
                                            if not mem[_7584 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * _5021 * mem[_7584 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7584 + 32]) / mem[_7584 + 32] != (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_7584 + 64] and 10000 > -1 / mem[_7584 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_7584 + 64] / 10000 != mem[_7584 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_7584 + 64] > (-10000 * _5021) + (mem[_5026 + 128] * _5021) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_7584 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 10000 * mem[_7584 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_7584 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021):
                                                revert with 'NH{q', 18
                                            require (10000 * _5021 * mem[_7584 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7584 + 32]) / (10000 * mem[_7584 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)
                                            if (10000 * _5021 * mem[_7584 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7584 + 32]) / (10000 * mem[_7584 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021) < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5021 * mem[_7584 + 32]) - (mem[_5026 + 128] * _5021 * mem[_7584 + 32]) / (10000 * mem[_7584 + 64]) + (10000 * _5021) - (mem[_5026 + 128] * _5021)) - 1
            if idx == -1:
                revert with 'NH{q', 17
            _5016 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _5030 = mem[_2507]
        mem[mem[64] + 32] = mem[_2507]
        mem[mem[64] + 64 len 32 * _5030] = mem[_2507 + 32 len 32 * _5030]
        var68001 = _5030
        return 32, mem[mem[64] + 32 len (32 * _5030) + 32]
    mem[_2507 + 32 len 32 * _2505 + 1] = call.data[calldata.size len 32 * _2505 + 1]
    if 0 >= mem[_2507]:
        revert with 'NH{q', 50
    mem[_2507 + 32] = cd[4]
    _5017 = mem[96]
    idx = 0
    while idx < _5017:
        if idx >= mem[_2507]:
            revert with 'NH{q', 50
        _5024 = mem[(32 * idx) + _2507 + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _5027 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 160] == 1:
            _5038 = mem[mem[(32 * idx) + 128]]
            _5039 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                _5077 = mem[mem[(32 * idx) + 128] + 64]
                _5093 = mem[64]
                _5094 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5094 + 32] = mem[_5094 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _5180 = mem[_5094]
                s = 0
                while s < _5180:
                    mem[_5093 + s + 36] = mem[_5094 + s + 32]
                    _5017 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_5180) <= _5180:
                    staticcall address(_5077).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5093 + _5180 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5027 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5027 + 12 len 20] == address(_5038):
                            if not -mem[_5027 + 128] + 10000:
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
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[160] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / mem[160] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            if not -mem[_5027 + 128] + 10000:
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
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[128] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / mem[128] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                    else:
                        _7556 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_7556] = return_data.size
                        mem[_7556 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5027 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5027 + 12 len 20] == address(_5038):
                            if not -mem[_5027 + 128] + 10000:
                                if mem[_7556 + 64]:
                                    if False and mem[_7556 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7556 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7556 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7556 + 32] and 10000 > -1 / mem[_7556 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7556 + 32] / 10000 != mem[_7556 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7556 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7556 + 32] < 10000 * mem[_7556 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7556 + 32]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7556 + 32]
                                if 0 / 10000 * mem[_7556 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7556 + 32]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7556 + 64]:
                                    if mem[_7556 + 32] and 10000 > -1 / mem[_7556 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7556 + 32] / 10000 != mem[_7556 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7556 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7556 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7556 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7556 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7556 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[_7556 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7556 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7556 + 64] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[_7556 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[_7556 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7556 + 64]) / mem[_7556 + 64] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7556 + 32] and 10000 > -1 / mem[_7556 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7556 + 32] / 10000 != mem[_7556 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7556 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7556 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7556 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7556 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[_7556 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7556 + 64]) / (10000 * mem[_7556 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[_7556 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7556 + 64]) / (10000 * mem[_7556 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7556 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7556 + 64]) / (10000 * mem[_7556 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            if not -mem[_5027 + 128] + 10000:
                                if mem[_7556 + 32]:
                                    if False and mem[_7556 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7556 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7556 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7556 + 64] and 10000 > -1 / mem[_7556 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7556 + 64] / 10000 != mem[_7556 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7556 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7556 + 64] < 10000 * mem[_7556 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7556 + 64]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7556 + 64]
                                if 0 / 10000 * mem[_7556 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7556 + 64]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7556 + 32]:
                                    if mem[_7556 + 64] and 10000 > -1 / mem[_7556 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7556 + 64] / 10000 != mem[_7556 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7556 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7556 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7556 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7556 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7556 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[_7556 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7556 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7556 + 32] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[_7556 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[_7556 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7556 + 32]) / mem[_7556 + 32] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7556 + 64] and 10000 > -1 / mem[_7556 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7556 + 64] / 10000 != mem[_7556 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7556 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7556 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7556 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7556 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[_7556 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7556 + 32]) / (10000 * mem[_7556 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[_7556 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7556 + 32]) / (10000 * mem[_7556 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7556 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7556 + 32]) / (10000 * mem[_7556 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                else:
                    mem[_5093 + _5180 + 36] = 0
                    staticcall address(_5077).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5093 + _5180 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5027 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5027 + 12 len 20] == address(_5038):
                            if not -mem[_5027 + 128] + 10000:
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
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[160] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / mem[160] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            if not -mem[_5027 + 128] + 10000:
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
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[128] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / mem[128] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                    else:
                        _7589 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_7589] = return_data.size
                        mem[_7589 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5027 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5027 + 12 len 20] == address(_5038):
                            if not -mem[_5027 + 128] + 10000:
                                if mem[_7589 + 64]:
                                    if False and mem[_7589 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7589 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7589 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7589 + 32] and 10000 > -1 / mem[_7589 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7589 + 32] / 10000 != mem[_7589 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7589 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7589 + 32] < 10000 * mem[_7589 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7589 + 32]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7589 + 32]
                                if 0 / 10000 * mem[_7589 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7589 + 32]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7589 + 64]:
                                    if mem[_7589 + 32] and 10000 > -1 / mem[_7589 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7589 + 32] / 10000 != mem[_7589 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7589 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7589 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7589 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7589 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7589 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[_7589 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7589 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7589 + 64] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[_7589 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[_7589 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7589 + 64]) / mem[_7589 + 64] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7589 + 32] and 10000 > -1 / mem[_7589 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7589 + 32] / 10000 != mem[_7589 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7589 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7589 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7589 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7589 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[_7589 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7589 + 64]) / (10000 * mem[_7589 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[_7589 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7589 + 64]) / (10000 * mem[_7589 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7589 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7589 + 64]) / (10000 * mem[_7589 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            if not -mem[_5027 + 128] + 10000:
                                if mem[_7589 + 32]:
                                    if False and mem[_7589 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7589 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7589 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7589 + 64] and 10000 > -1 / mem[_7589 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7589 + 64] / 10000 != mem[_7589 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7589 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7589 + 64] < 10000 * mem[_7589 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7589 + 64]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7589 + 64]
                                if 0 / 10000 * mem[_7589 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7589 + 64]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7589 + 32]:
                                    if mem[_7589 + 64] and 10000 > -1 / mem[_7589 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7589 + 64] / 10000 != mem[_7589 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7589 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7589 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7589 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7589 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7589 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[_7589 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7589 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7589 + 32] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[_7589 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[_7589 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7589 + 32]) / mem[_7589 + 32] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7589 + 64] and 10000 > -1 / mem[_7589 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7589 + 64] / 10000 != mem[_7589 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7589 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7589 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7589 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7589 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[_7589 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7589 + 32]) / (10000 * mem[_7589 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[_7589 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7589 + 32]) / (10000 * mem[_7589 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7589 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7589 + 32]) / (10000 * mem[_7589 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
            else:
                _5078 = mem[mem[(32 * idx) + 128] + 64]
                _5097 = mem[64]
                _5098 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5098 + 32] = mem[_5098 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _5181 = mem[_5098]
                s = 0
                while s < _5181:
                    mem[_5097 + s + 36] = mem[_5098 + s + 32]
                    _5017 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_5181) <= _5181:
                    staticcall address(_5078).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5097 + _5181 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5027 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5027 + 12 len 20] == address(_5039):
                            if not -mem[_5027 + 128] + 10000:
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
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[160] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / mem[160] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            if not -mem[_5027 + 128] + 10000:
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
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[128] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / mem[128] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                    else:
                        _7558 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_7558] = return_data.size
                        mem[_7558 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5027 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5027 + 12 len 20] == address(_5039):
                            if not -mem[_5027 + 128] + 10000:
                                if mem[_7558 + 64]:
                                    if False and mem[_7558 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7558 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7558 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7558 + 32] and 10000 > -1 / mem[_7558 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7558 + 32] / 10000 != mem[_7558 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7558 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7558 + 32] < 10000 * mem[_7558 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7558 + 32]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7558 + 32]
                                if 0 / 10000 * mem[_7558 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7558 + 32]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7558 + 64]:
                                    if mem[_7558 + 32] and 10000 > -1 / mem[_7558 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7558 + 32] / 10000 != mem[_7558 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7558 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7558 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7558 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7558 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7558 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[_7558 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7558 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7558 + 64] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[_7558 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[_7558 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7558 + 64]) / mem[_7558 + 64] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7558 + 32] and 10000 > -1 / mem[_7558 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7558 + 32] / 10000 != mem[_7558 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7558 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7558 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7558 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7558 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[_7558 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7558 + 64]) / (10000 * mem[_7558 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[_7558 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7558 + 64]) / (10000 * mem[_7558 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7558 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7558 + 64]) / (10000 * mem[_7558 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            if not -mem[_5027 + 128] + 10000:
                                if mem[_7558 + 32]:
                                    if False and mem[_7558 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7558 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7558 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7558 + 64] and 10000 > -1 / mem[_7558 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7558 + 64] / 10000 != mem[_7558 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7558 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7558 + 64] < 10000 * mem[_7558 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7558 + 64]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7558 + 64]
                                if 0 / 10000 * mem[_7558 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7558 + 64]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7558 + 32]:
                                    if mem[_7558 + 64] and 10000 > -1 / mem[_7558 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7558 + 64] / 10000 != mem[_7558 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7558 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7558 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7558 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7558 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7558 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[_7558 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7558 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7558 + 32] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[_7558 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[_7558 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7558 + 32]) / mem[_7558 + 32] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7558 + 64] and 10000 > -1 / mem[_7558 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7558 + 64] / 10000 != mem[_7558 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7558 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7558 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7558 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7558 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[_7558 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7558 + 32]) / (10000 * mem[_7558 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[_7558 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7558 + 32]) / (10000 * mem[_7558 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7558 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7558 + 32]) / (10000 * mem[_7558 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                else:
                    mem[_5097 + _5181 + 36] = 0
                    staticcall address(_5078).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5097 + _5181 + -mem[64] + 32]
                    if not return_data.size:
                        if 10000 < mem[_5027 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5027 + 12 len 20] == address(_5039):
                            if not -mem[_5027 + 128] + 10000:
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
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[160] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / mem[160] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            if not -mem[_5027 + 128] + 10000:
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
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[128] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / mem[128] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                    else:
                        _7594 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_7594] = return_data.size
                        mem[_7594 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if 10000 < mem[_5027 + 128]:
                            revert with 'NH{q', 17
                        if mem[_5027 + 12 len 20] == address(_5039):
                            if not -mem[_5027 + 128] + 10000:
                                if mem[_7594 + 64]:
                                    if False and mem[_7594 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7594 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7594 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7594 + 32] and 10000 > -1 / mem[_7594 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7594 + 32] / 10000 != mem[_7594 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7594 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7594 + 32] < 10000 * mem[_7594 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7594 + 32]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7594 + 32]
                                if 0 / 10000 * mem[_7594 + 32] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7594 + 32]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7594 + 64]:
                                    if mem[_7594 + 32] and 10000 > -1 / mem[_7594 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7594 + 32] / 10000 != mem[_7594 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7594 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7594 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7594 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7594 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7594 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[_7594 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7594 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7594 + 64] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[_7594 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[_7594 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7594 + 64]) / mem[_7594 + 64] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7594 + 32] and 10000 > -1 / mem[_7594 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7594 + 32] / 10000 != mem[_7594 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7594 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7594 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7594 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7594 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[_7594 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7594 + 64]) / (10000 * mem[_7594 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[_7594 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7594 + 64]) / (10000 * mem[_7594 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7594 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7594 + 64]) / (10000 * mem[_7594 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            if not -mem[_5027 + 128] + 10000:
                                if mem[_7594 + 32]:
                                    if False and mem[_7594 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_7594 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_7594 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_7594 + 64] and 10000 > -1 / mem[_7594 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7594 + 64] / 10000 != mem[_7594 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_7594 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_7594 + 64] < 10000 * mem[_7594 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_7594 + 64]:
                                    revert with 'NH{q', 18
                                require 0 / 10000 * mem[_7594 + 64]
                                if 0 / 10000 * mem[_7594 + 64] < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7594 + 64]) - 1
                            else:
                                if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                    revert with 'NH{q', 17
                                if not -mem[_5027 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_7594 + 32]:
                                    if mem[_7594 + 64] and 10000 > -1 / mem[_7594 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7594 + 64] / 10000 != mem[_7594 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7594 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7594 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7594 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7594 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require 0 / (10000 * mem[_7594 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if 0 / (10000 * mem[_7594 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7594 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                else:
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7594 + 32] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 17
                                    if not mem[_7594 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024 * mem[_7594 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7594 + 32]) / mem[_7594 + 32] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7594 + 64] and 10000 > -1 / mem[_7594 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7594 + 64] / 10000 != mem[_7594 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7594 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_7594 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7594 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_7594 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                        revert with 'NH{q', 18
                                    require (10000 * _5024 * mem[_7594 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7594 + 32]) / (10000 * mem[_7594 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                    if (10000 * _5024 * mem[_7594 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7594 + 32]) / (10000 * mem[_7594 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7594 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7594 + 32]) / (10000 * mem[_7594 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
        else:
            mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
            mem[32] = 3
            if not stor3[mem[mem[(32 * idx) + 128] + 108 len 20]]:
                if mem[mem[(32 * idx) + 128] + 160] != 5:
                    if mem[mem[(32 * idx) + 128] + 160] == 7:
                        mem[0] = mem[mem[(32 * idx) + 128] + 108 len 20]
                        mem[32] = 0
                        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                        _5066 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                        mem[32] = 0
                        _5068 = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                        mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                        mem[32] = sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0)
                        _5071 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64]] = 0xa95b089f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint8(stor[_5066])
                        mem[mem[64] + 36] = uint8(stor[_5068][mem[0]])
                        mem[mem[64] + 68] = _5024
                        require ext_code.size(address(_5071))
                        staticcall address(_5071).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args uint8(stor[_5066]), uint8(stor[_5068][mem[0]]), _5024
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5243 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5243] == mem[_5243]
                        require mem[_5243]
                        if mem[_5243] < 1:
                            revert with 'NH{q', 17
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_2507]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _2507 + 32] = mem[_5243] - 1
                    else:
                        if mem[mem[(32 * idx) + 128] + 160] < 80:
                            if mem[mem[(32 * idx) + 128] + 160] != 12:
                                require mem[mem[(32 * idx) + 128] + 160] == 99
                                require _5024
                                if _5024 < 1:
                                    revert with 'NH{q', 17
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2507]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2507 + 32] = _5024 - 1
                            else:
                                require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5182 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 160
                                require mem[_5182] == mem[_5182 + 18 len 14]
                                require mem[_5182 + 32] == mem[_5182 + 50 len 14]
                                require mem[_5182 + 64] == mem[_5182 + 82 len 14]
                                require mem[_5182 + 96] == mem[_5182 + 114 len 14]
                                require mem[_5182 + 128] == mem[_5182 + 128]
                                if 10^18 < mem[_5182 + 128]:
                                    revert with 'NH{q', 17
                                if -mem[_5182 + 128] + 10^18 > 10^18:
                                    revert with 0, 'ds-math-sub-underflow'
                                if mem[_5027 + 12 len 20] < mem[_5027 + 44 len 20]:
                                    if mem[_5027 + 12 len 20] == mem[_5027 + 12 len 20]:
                                        if not -mem[_5182 + 128] + 10^18:
                                            if mem[_5182 + 114 len 14]:
                                                if False and mem[_5182 + 114 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5182 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5182 + 114 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5182 + 82 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5182 + 82 len 14] < mem[_5182 + 82 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5182 + 82 len 14]:
                                                revert with 'NH{q', 18
                                            require 0 / mem[_5182 + 82 len 14]
                                            if 0 / mem[_5182 + 82 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5182 + 82 len 14]) - 1
                                        else:
                                            if _5024 and -mem[_5182 + 128] + 10^18 > -1 / _5024:
                                                revert with 'NH{q', 17
                                            if not -mem[_5182 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / -mem[_5182 + 128] + 10^18 != _5024:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5182 + 114 len 14]:
                                                if mem[_5182 + 82 len 14] > -((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < mem[_5182 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18):
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)
                                                if 0 / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 and mem[_5182 + 114 len 14] > -1 / (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5182 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 114 len 14] / mem[_5182 + 114 len 14] != (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5182 + 82 len 14] > -((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < mem[_5182 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18):
                                                    revert with 'NH{q', 18
                                                require (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 114 len 14] / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 114 len 14] / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 114 len 14] / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)) - 1
                                    else:
                                        if not -mem[_5182 + 128] + 10^18:
                                            if mem[_5182 + 82 len 14]:
                                                if False and mem[_5182 + 82 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5182 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5182 + 82 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5182 + 114 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5182 + 114 len 14] < mem[_5182 + 114 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5182 + 114 len 14]:
                                                revert with 'NH{q', 18
                                            require 0 / mem[_5182 + 114 len 14]
                                            if 0 / mem[_5182 + 114 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5182 + 114 len 14]) - 1
                                        else:
                                            if _5024 and -mem[_5182 + 128] + 10^18 > -1 / _5024:
                                                revert with 'NH{q', 17
                                            if not -mem[_5182 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / -mem[_5182 + 128] + 10^18 != _5024:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5182 + 82 len 14]:
                                                if mem[_5182 + 114 len 14] > -((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < mem[_5182 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18):
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)
                                                if 0 / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 and mem[_5182 + 82 len 14] > -1 / (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5182 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 82 len 14] / mem[_5182 + 82 len 14] != (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5182 + 114 len 14] > -((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < mem[_5182 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18):
                                                    revert with 'NH{q', 18
                                                require (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 82 len 14] / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 82 len 14] / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 82 len 14] / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)) - 1
                                else:
                                    if mem[_5027 + 12 len 20] == mem[_5027 + 44 len 20]:
                                        if not -mem[_5182 + 128] + 10^18:
                                            if mem[_5182 + 114 len 14]:
                                                if False and mem[_5182 + 114 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5182 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5182 + 114 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5182 + 82 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5182 + 82 len 14] < mem[_5182 + 82 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5182 + 82 len 14]:
                                                revert with 'NH{q', 18
                                            require 0 / mem[_5182 + 82 len 14]
                                            if 0 / mem[_5182 + 82 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5182 + 82 len 14]) - 1
                                        else:
                                            if _5024 and -mem[_5182 + 128] + 10^18 > -1 / _5024:
                                                revert with 'NH{q', 17
                                            if not -mem[_5182 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / -mem[_5182 + 128] + 10^18 != _5024:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5182 + 114 len 14]:
                                                if mem[_5182 + 82 len 14] > -((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < mem[_5182 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18):
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)
                                                if 0 / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 and mem[_5182 + 114 len 14] > -1 / (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5182 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 114 len 14] / mem[_5182 + 114 len 14] != (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5182 + 82 len 14] > -((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < mem[_5182 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18):
                                                    revert with 'NH{q', 18
                                                require (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 114 len 14] / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 114 len 14] / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 114 len 14] / mem[_5182 + 82 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)) - 1
                                    else:
                                        if not -mem[_5182 + 128] + 10^18:
                                            if mem[_5182 + 82 len 14]:
                                                if False and mem[_5182 + 82 len 14] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_5182 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_5182 + 82 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_5182 + 114 len 14] > -1:
                                                revert with 'NH{q', 17
                                            if mem[_5182 + 114 len 14] < mem[_5182 + 114 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not mem[_5182 + 114 len 14]:
                                                revert with 'NH{q', 18
                                            require 0 / mem[_5182 + 114 len 14]
                                            if 0 / mem[_5182 + 114 len 14] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2507]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5182 + 114 len 14]) - 1
                                        else:
                                            if _5024 and -mem[_5182 + 128] + 10^18 > -1 / _5024:
                                                revert with 'NH{q', 17
                                            if not -mem[_5182 + 128] + 10^18:
                                                revert with 'NH{q', 18
                                            if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / -mem[_5182 + 128] + 10^18 != _5024:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_5182 + 82 len 14]:
                                                if mem[_5182 + 114 len 14] > -((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < mem[_5182 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18):
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)
                                                if 0 / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)) - 1
                                            else:
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 and mem[_5182 + 82 len 14] > -1 / (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18:
                                                    revert with 'NH{q', 17
                                                if not mem[_5182 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 82 len 14] / mem[_5182 + 82 len 14] != (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5182 + 114 len 14] > -((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) - 1:
                                                    revert with 'NH{q', 17
                                                if mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < mem[_5182 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18):
                                                    revert with 'NH{q', 18
                                                require (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 82 len 14] / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)
                                                if (10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 82 len 14] / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18) < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18 * mem[_5182 + 82 len 14] / mem[_5182 + 114 len 14] + ((10^18 * _5024) - (mem[_5182 + 128] * _5024) / 10^18)) - 1
                        else:
                            if mem[mem[(32 * idx) + 128] + 160] >= 90:
                                if mem[mem[(32 * idx) + 128] + 160] != 12:
                                    require mem[mem[(32 * idx) + 128] + 160] == 99
                                    require _5024
                                    if _5024 < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = _5024 - 1
                                else:
                                    require ext_code.size(mem[mem[(32 * idx) + 128] + 76 len 20])
                                    staticcall mem[mem[(32 * idx) + 128] + 76 len 20].getTradeInfo() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5190 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 160
                                    require mem[_5190] == mem[_5190 + 18 len 14]
                                    require mem[_5190 + 32] == mem[_5190 + 50 len 14]
                                    require mem[_5190 + 64] == mem[_5190 + 82 len 14]
                                    require mem[_5190 + 96] == mem[_5190 + 114 len 14]
                                    require mem[_5190 + 128] == mem[_5190 + 128]
                                    if 10^18 < mem[_5190 + 128]:
                                        revert with 'NH{q', 17
                                    if -mem[_5190 + 128] + 10^18 > 10^18:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if mem[_5027 + 12 len 20] < mem[_5027 + 44 len 20]:
                                        if mem[_5027 + 12 len 20] == mem[_5027 + 12 len 20]:
                                            if not -mem[_5190 + 128] + 10^18:
                                                if mem[_5190 + 114 len 14]:
                                                    if False and mem[_5190 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5190 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5190 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5190 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5190 + 82 len 14] < mem[_5190 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5190 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5190 + 82 len 14]
                                                if 0 / mem[_5190 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5190 + 82 len 14]) - 1
                                            else:
                                                if _5024 and -mem[_5190 + 128] + 10^18 > -1 / _5024:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5190 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / -mem[_5190 + 128] + 10^18 != _5024:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5190 + 114 len 14]:
                                                    if mem[_5190 + 82 len 14] > -((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < mem[_5190 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)
                                                    if 0 / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 and mem[_5190 + 114 len 14] > -1 / (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5190 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 114 len 14] / mem[_5190 + 114 len 14] != (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5190 + 82 len 14] > -((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < mem[_5190 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 114 len 14] / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 114 len 14] / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 114 len 14] / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)) - 1
                                        else:
                                            if not -mem[_5190 + 128] + 10^18:
                                                if mem[_5190 + 82 len 14]:
                                                    if False and mem[_5190 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5190 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5190 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5190 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5190 + 114 len 14] < mem[_5190 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5190 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5190 + 114 len 14]
                                                if 0 / mem[_5190 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5190 + 114 len 14]) - 1
                                            else:
                                                if _5024 and -mem[_5190 + 128] + 10^18 > -1 / _5024:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5190 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / -mem[_5190 + 128] + 10^18 != _5024:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5190 + 82 len 14]:
                                                    if mem[_5190 + 114 len 14] > -((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < mem[_5190 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)
                                                    if 0 / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 and mem[_5190 + 82 len 14] > -1 / (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5190 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 82 len 14] / mem[_5190 + 82 len 14] != (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5190 + 114 len 14] > -((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < mem[_5190 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 82 len 14] / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 82 len 14] / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 82 len 14] / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)) - 1
                                    else:
                                        if mem[_5027 + 12 len 20] == mem[_5027 + 44 len 20]:
                                            if not -mem[_5190 + 128] + 10^18:
                                                if mem[_5190 + 114 len 14]:
                                                    if False and mem[_5190 + 114 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5190 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5190 + 114 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5190 + 82 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5190 + 82 len 14] < mem[_5190 + 82 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5190 + 82 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5190 + 82 len 14]
                                                if 0 / mem[_5190 + 82 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5190 + 82 len 14]) - 1
                                            else:
                                                if _5024 and -mem[_5190 + 128] + 10^18 > -1 / _5024:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5190 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / -mem[_5190 + 128] + 10^18 != _5024:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5190 + 114 len 14]:
                                                    if mem[_5190 + 82 len 14] > -((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < mem[_5190 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)
                                                    if 0 / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 and mem[_5190 + 114 len 14] > -1 / (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5190 + 114 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 114 len 14] / mem[_5190 + 114 len 14] != (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5190 + 82 len 14] > -((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < mem[_5190 + 82 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 114 len 14] / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 114 len 14] / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 114 len 14] / mem[_5190 + 82 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)) - 1
                                        else:
                                            if not -mem[_5190 + 128] + 10^18:
                                                if mem[_5190 + 82 len 14]:
                                                    if False and mem[_5190 + 82 len 14] > 0:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5190 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if 0 / mem[_5190 + 82 len 14]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                if mem[_5190 + 114 len 14] > -1:
                                                    revert with 'NH{q', 17
                                                if mem[_5190 + 114 len 14] < mem[_5190 + 114 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not mem[_5190 + 114 len 14]:
                                                    revert with 'NH{q', 18
                                                require 0 / mem[_5190 + 114 len 14]
                                                if 0 / mem[_5190 + 114 len 14] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5190 + 114 len 14]) - 1
                                            else:
                                                if _5024 and -mem[_5190 + 128] + 10^18 > -1 / _5024:
                                                    revert with 'NH{q', 17
                                                if not -mem[_5190 + 128] + 10^18:
                                                    revert with 'NH{q', 18
                                                if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / -mem[_5190 + 128] + 10^18 != _5024:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if not mem[_5190 + 82 len 14]:
                                                    if mem[_5190 + 114 len 14] > -((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < mem[_5190 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require 0 / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)
                                                    if 0 / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)) - 1
                                                else:
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 and mem[_5190 + 82 len 14] > -1 / (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18:
                                                        revert with 'NH{q', 17
                                                    if not mem[_5190 + 82 len 14]:
                                                        revert with 'NH{q', 18
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 82 len 14] / mem[_5190 + 82 len 14] != (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if mem[_5190 + 114 len 14] > -((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) - 1:
                                                        revert with 'NH{q', 17
                                                    if mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < mem[_5190 + 114 len 14]:
                                                        revert with 0, 'ds-math-add-overflow'
                                                    if not mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18):
                                                        revert with 'NH{q', 18
                                                    require (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 82 len 14] / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)
                                                    if (10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 82 len 14] / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18) < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18 * mem[_5190 + 82 len 14] / mem[_5190 + 114 len 14] + ((10^18 * _5024) - (mem[_5190 + 128] * _5024) / 10^18)) - 1
                            else:
                                mem[0] = mem[mem[(32 * idx) + 128] + 76 len 20]
                                mem[32] = 0
                                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                _5140 = sha3(mem[0], sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0))
                                mem[32] = 0
                                _5142 = sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0)
                                mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0)
                                if mem[mem[(32 * idx) + 128] + 160] == 81:
                                    _5169 = mem[mem[(32 * idx) + 128] + 64]
                                    mem[mem[64]] = 0x5e0d443f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5140'))))
                                    mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5142')))))
                                    mem[mem[64] + 68] = _5024
                                    require ext_code.size(address(_5169))
                                    staticcall address(_5169).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('type', 256, ('stor', ('var', '_5140')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5142'))))), _5024
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5380 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5380] == mem[_5380]
                                    require mem[_5380]
                                    if mem[_5380] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = mem[_5380] - 1
                                else:
                                    if mem[mem[(32 * idx) + 128] + 160] == 82:
                                        _5184 = mem[mem[(32 * idx) + 128] + 64]
                                        mem[mem[64]] = 0x556d6e9f00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(stor[_5140])
                                        mem[mem[64] + 36] = uint256(stor[_5142][mem[0]])
                                        mem[mem[64] + 68] = _5024
                                        require ext_code.size(address(_5184))
                                        staticcall address(_5184).get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args uint256(stor[_5140]), uint256(stor[_5142][mem[0]]), _5024
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5413 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5413] == mem[_5413]
                                        require mem[_5413]
                                        if mem[_5413] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = mem[_5413] - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 160] == 83:
                                            _5196 = mem[mem[(32 * idx) + 128] + 64]
                                            mem[mem[64]] = 0x7211ef700000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5140'))))
                                            mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5142')))))
                                            mem[mem[64] + 68] = _5024
                                            require ext_code.size(address(_5196))
                                            staticcall address(_5196).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('type', 256, ('stor', ('var', '_5140')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5142'))))), _5024
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5449 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5449] == mem[_5449]
                                            if mem[_5027 + 160] != 85:
                                                require mem[_5449]
                                                if mem[_5449] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2507]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2507 + 32] = mem[_5449] - 1
                                            else:
                                                if 43114 != chainid:
                                                    require mem[_5449]
                                                    if mem[_5449] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = mem[_5449] - 1
                                                else:
                                                    if uint256(stor[_5142][mem[0]]):
                                                        require mem[_5449]
                                                        if mem[_5449] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = mem[_5449] - 1
                                                    else:
                                                        if mem[_5449] and 9998 > -1 / mem[_5449]:
                                                            revert with 'NH{q', 17
                                                        require 9998 * mem[_5449] / 10000
                                                        if 9998 * mem[_5449] / 10000 < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = (9998 * mem[_5449] / 10000) - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 160] != 85:
                                                require mem[mem[(32 * idx) + 128] + 160] == 84
                                                _5210 = mem[mem[(32 * idx) + 128] + 64]
                                                mem[mem[64]] = 0x85f11d1e00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = uint256(stor[_5140])
                                                mem[mem[64] + 36] = uint256(stor[_5142][mem[0]])
                                                mem[mem[64] + 68] = _5024
                                                require ext_code.size(address(_5210))
                                                staticcall address(_5210).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args uint256(stor[_5140]), uint256(stor[_5142][mem[0]]), _5024
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5459 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5459] == mem[_5459]
                                                if 43114 != chainid:
                                                    require mem[_5459]
                                                    if mem[_5459] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = mem[_5459] - 1
                                                else:
                                                    if mem[_5459] and 9996 > -1 / mem[_5459]:
                                                        revert with 'NH{q', 17
                                                    require 9996 * mem[_5459] / 10000
                                                    if 9996 * mem[_5459] / 10000 < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = (9996 * mem[_5459] / 10000) - 1
                                            else:
                                                _5204 = mem[mem[(32 * idx) + 128] + 64]
                                                mem[mem[64]] = 0x7211ef700000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_5140'))))
                                                mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5142')))))
                                                mem[mem[64] + 68] = _5024
                                                require ext_code.size(address(_5204))
                                                staticcall address(_5204).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('type', 256, ('stor', ('var', '_5140')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mem', ('range', 0, 32)), ('var', '_5142'))))), _5024
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5455 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5455] == mem[_5455]
                                                if mem[_5027 + 160] != 85:
                                                    require mem[_5455]
                                                    if mem[_5455] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2507]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2507 + 32] = mem[_5455] - 1
                                                else:
                                                    if 43114 != chainid:
                                                        require mem[_5455]
                                                        if mem[_5455] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2507]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2507 + 32] = mem[_5455] - 1
                                                    else:
                                                        if uint256(stor[_5142][mem[0]]):
                                                            require mem[_5455]
                                                            if mem[_5455] < 1:
                                                                revert with 'NH{q', 17
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[_2507]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + _2507 + 32] = mem[_5455] - 1
                                                        else:
                                                            if mem[_5455] and 9998 > -1 / mem[_5455]:
                                                                revert with 'NH{q', 17
                                                            require 9998 * mem[_5455] / 10000
                                                            if 9998 * mem[_5455] / 10000 < 1:
                                                                revert with 'NH{q', 17
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[_2507]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + _2507 + 32] = (9998 * mem[_5455] / 10000) - 1
                else:
                    _5049 = mem[mem[(32 * idx) + 128] + 96]
                    _5073 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_5073 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_5073]:
                        revert with 'NH{q', 50
                    mem[_5073 + 32] = mem[_5027 + 12 len 20]
                    if 1 >= mem[_5073]:
                        revert with 'NH{q', 50
                    mem[_5073 + 64] = mem[_5027 + 44 len 20]
                    mem[_5073 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5073 + 100] = _5024
                    mem[_5073 + 132] = 64
                    mem[_5073 + 164] = mem[_5073]
                    s = 0
                    t = _5073 + 32
                    u = _5073 + 196
                    while s < mem[_5073]:
                        mem[u] = mem[t + 12 len 20]
                        _5017 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(_5049))
                    staticcall address(_5049).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5073 + (32 * mem[_5073]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7545 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7595 = mem[_7545]
                    require mem[_7545] <= test266151307()
                    require _7545 + mem[_7545] + 31 < _7545 + return_data.size
                    _7695 = mem[_7545 + mem[_7545]]
                    if mem[_7545 + mem[_7545]] > test266151307():
                        revert with 'NH{q', 65
                    if _7545 + ceil32(return_data.size) + floor32(mem[_7545 + mem[_7545]]) + 1 > test266151307() or floor32(mem[_7545 + mem[_7545]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _7545 + ceil32(return_data.size) + floor32(mem[_7545 + mem[_7545]]) + 1
                    mem[_7545 + ceil32(return_data.size)] = _7695
                    require _7595 + (32 * _7695) + 32 <= return_data.size
                    s = 0
                    t = _7545 + _7595 + 32
                    u = _7545 + ceil32(return_data.size) + 32
                    while s < _7695:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _5017 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if _7695 < 1:
                        revert with 'NH{q', 17
                    if _7695 - 1 >= _7695:
                        revert with 'NH{q', 50
                    require mem[(32 * _7695 - 1) + _7545 + ceil32(return_data.size) + 32]
                    if mem[(32 * _7695 - 1) + _7545 + ceil32(return_data.size) + 32] < 1:
                        revert with 'NH{q', 17
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_2507]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + _2507 + 32] = mem[(32 * _7695 - 1) + _7545 + ceil32(return_data.size) + 32] - 1
            else:
                _5044 = mem[mem[(32 * idx) + 128]]
                _5045 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _5104 = mem[mem[(32 * idx) + 128] + 64]
                    _5148 = mem[64]
                    _5149 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5149 + 32] = mem[_5149 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5192 = mem[_5149]
                    s = 0
                    while s < _5192:
                        mem[_5148 + s + 36] = mem[_5149 + s + 32]
                        _5017 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5192) <= _5192:
                        staticcall address(_5104).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5148 + _5192 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5027 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5027 + 12 len 20] == address(_5044):
                                if not -mem[_5027 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[160] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / mem[160] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                            else:
                                if not -mem[_5027 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[128] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / mem[128] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            _7560 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7560] = return_data.size
                            mem[_7560 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5027 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5027 + 12 len 20] == address(_5044):
                                if not -mem[_5027 + 128] + 10000:
                                    if mem[_7560 + 64]:
                                        if False and mem[_7560 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7560 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7560 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7560 + 32] and 10000 > -1 / mem[_7560 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7560 + 32] / 10000 != mem[_7560 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7560 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7560 + 32] < 10000 * mem[_7560 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7560 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7560 + 32]
                                    if 0 / 10000 * mem[_7560 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7560 + 32]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7560 + 64]:
                                        if mem[_7560 + 32] and 10000 > -1 / mem[_7560 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7560 + 32] / 10000 != mem[_7560 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7560 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7560 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7560 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7560 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7560 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[_7560 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7560 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7560 + 64] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[_7560 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[_7560 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7560 + 64]) / mem[_7560 + 64] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7560 + 32] and 10000 > -1 / mem[_7560 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7560 + 32] / 10000 != mem[_7560 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7560 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7560 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7560 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7560 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[_7560 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7560 + 64]) / (10000 * mem[_7560 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[_7560 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7560 + 64]) / (10000 * mem[_7560 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7560 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7560 + 64]) / (10000 * mem[_7560 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                            else:
                                if not -mem[_5027 + 128] + 10000:
                                    if mem[_7560 + 32]:
                                        if False and mem[_7560 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7560 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7560 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7560 + 64] and 10000 > -1 / mem[_7560 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7560 + 64] / 10000 != mem[_7560 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7560 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7560 + 64] < 10000 * mem[_7560 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7560 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7560 + 64]
                                    if 0 / 10000 * mem[_7560 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7560 + 64]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7560 + 32]:
                                        if mem[_7560 + 64] and 10000 > -1 / mem[_7560 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7560 + 64] / 10000 != mem[_7560 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7560 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7560 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7560 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7560 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7560 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[_7560 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7560 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7560 + 32] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[_7560 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[_7560 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7560 + 32]) / mem[_7560 + 32] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7560 + 64] and 10000 > -1 / mem[_7560 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7560 + 64] / 10000 != mem[_7560 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7560 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7560 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7560 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7560 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[_7560 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7560 + 32]) / (10000 * mem[_7560 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[_7560 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7560 + 32]) / (10000 * mem[_7560 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7560 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7560 + 32]) / (10000 * mem[_7560 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                    else:
                        mem[_5148 + _5192 + 36] = 0
                        staticcall address(_5104).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5148 + _5192 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5027 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5027 + 12 len 20] == address(_5044):
                                if not -mem[_5027 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[160] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / mem[160] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                            else:
                                if not -mem[_5027 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[128] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / mem[128] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            _7600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7600] = return_data.size
                            mem[_7600 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5027 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5027 + 12 len 20] == address(_5044):
                                if not -mem[_5027 + 128] + 10000:
                                    if mem[_7600 + 64]:
                                        if False and mem[_7600 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7600 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7600 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7600 + 32] and 10000 > -1 / mem[_7600 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7600 + 32] / 10000 != mem[_7600 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7600 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7600 + 32] < 10000 * mem[_7600 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7600 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7600 + 32]
                                    if 0 / 10000 * mem[_7600 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7600 + 32]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7600 + 64]:
                                        if mem[_7600 + 32] and 10000 > -1 / mem[_7600 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7600 + 32] / 10000 != mem[_7600 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7600 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7600 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7600 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7600 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7600 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[_7600 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7600 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7600 + 64] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[_7600 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[_7600 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7600 + 64]) / mem[_7600 + 64] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7600 + 32] and 10000 > -1 / mem[_7600 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7600 + 32] / 10000 != mem[_7600 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7600 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7600 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7600 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7600 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[_7600 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7600 + 64]) / (10000 * mem[_7600 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[_7600 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7600 + 64]) / (10000 * mem[_7600 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7600 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7600 + 64]) / (10000 * mem[_7600 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                            else:
                                if not -mem[_5027 + 128] + 10000:
                                    if mem[_7600 + 32]:
                                        if False and mem[_7600 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7600 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7600 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7600 + 64] and 10000 > -1 / mem[_7600 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7600 + 64] / 10000 != mem[_7600 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7600 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7600 + 64] < 10000 * mem[_7600 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7600 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7600 + 64]
                                    if 0 / 10000 * mem[_7600 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7600 + 64]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7600 + 32]:
                                        if mem[_7600 + 64] and 10000 > -1 / mem[_7600 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7600 + 64] / 10000 != mem[_7600 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7600 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7600 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7600 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7600 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7600 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[_7600 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7600 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7600 + 32] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[_7600 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[_7600 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7600 + 32]) / mem[_7600 + 32] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7600 + 64] and 10000 > -1 / mem[_7600 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7600 + 64] / 10000 != mem[_7600 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7600 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7600 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7600 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7600 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[_7600 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7600 + 32]) / (10000 * mem[_7600 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[_7600 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7600 + 32]) / (10000 * mem[_7600 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7600 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7600 + 32]) / (10000 * mem[_7600 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                else:
                    _5105 = mem[mem[(32 * idx) + 128] + 64]
                    _5152 = mem[64]
                    _5153 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5153 + 32] = mem[_5153 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _5193 = mem[_5153]
                    s = 0
                    while s < _5193:
                        mem[_5152 + s + 36] = mem[_5153 + s + 32]
                        _5017 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_5193) <= _5193:
                        staticcall address(_5105).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5152 + _5193 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5027 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5027 + 12 len 20] == address(_5045):
                                if not -mem[_5027 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[160] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / mem[160] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                            else:
                                if not -mem[_5027 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[128] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / mem[128] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            _7562 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7562] = return_data.size
                            mem[_7562 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5027 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5027 + 12 len 20] == address(_5045):
                                if not -mem[_5027 + 128] + 10000:
                                    if mem[_7562 + 64]:
                                        if False and mem[_7562 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7562 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7562 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7562 + 32] and 10000 > -1 / mem[_7562 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7562 + 32] / 10000 != mem[_7562 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7562 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7562 + 32] < 10000 * mem[_7562 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7562 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7562 + 32]
                                    if 0 / 10000 * mem[_7562 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7562 + 32]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7562 + 64]:
                                        if mem[_7562 + 32] and 10000 > -1 / mem[_7562 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7562 + 32] / 10000 != mem[_7562 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7562 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7562 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7562 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7562 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7562 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[_7562 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7562 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7562 + 64] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[_7562 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[_7562 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7562 + 64]) / mem[_7562 + 64] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7562 + 32] and 10000 > -1 / mem[_7562 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7562 + 32] / 10000 != mem[_7562 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7562 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7562 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7562 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7562 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[_7562 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7562 + 64]) / (10000 * mem[_7562 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[_7562 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7562 + 64]) / (10000 * mem[_7562 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7562 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7562 + 64]) / (10000 * mem[_7562 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                            else:
                                if not -mem[_5027 + 128] + 10000:
                                    if mem[_7562 + 32]:
                                        if False and mem[_7562 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7562 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7562 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7562 + 64] and 10000 > -1 / mem[_7562 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7562 + 64] / 10000 != mem[_7562 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7562 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7562 + 64] < 10000 * mem[_7562 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7562 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7562 + 64]
                                    if 0 / 10000 * mem[_7562 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7562 + 64]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7562 + 32]:
                                        if mem[_7562 + 64] and 10000 > -1 / mem[_7562 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7562 + 64] / 10000 != mem[_7562 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7562 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7562 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7562 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7562 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7562 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[_7562 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7562 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7562 + 32] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[_7562 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[_7562 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7562 + 32]) / mem[_7562 + 32] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7562 + 64] and 10000 > -1 / mem[_7562 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7562 + 64] / 10000 != mem[_7562 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7562 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7562 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7562 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7562 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[_7562 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7562 + 32]) / (10000 * mem[_7562 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[_7562 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7562 + 32]) / (10000 * mem[_7562 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7562 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7562 + 32]) / (10000 * mem[_7562 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                    else:
                        mem[_5152 + _5193 + 36] = 0
                        staticcall address(_5105).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _5152 + _5193 + -mem[64] + 32]
                        if not return_data.size:
                            if 10000 < mem[_5027 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5027 + 12 len 20] == address(_5045):
                                if not -mem[_5027 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[128]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[160] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / mem[160] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[160]) - (mem[_5027 + 128] * _5024 * mem[160]) / (10000 * mem[128]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                            else:
                                if not -mem[_5027 + 128] + 10000:
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
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[160]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[128] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / mem[128] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[128]) - (mem[_5027 + 128] * _5024 * mem[128]) / (10000 * mem[160]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                        else:
                            _7605 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_7605] = return_data.size
                            mem[_7605 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 10000 < mem[_5027 + 128]:
                                revert with 'NH{q', 17
                            if mem[_5027 + 12 len 20] == address(_5045):
                                if not -mem[_5027 + 128] + 10000:
                                    if mem[_7605 + 64]:
                                        if False and mem[_7605 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7605 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7605 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7605 + 32] and 10000 > -1 / mem[_7605 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7605 + 32] / 10000 != mem[_7605 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7605 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7605 + 32] < 10000 * mem[_7605 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7605 + 32]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7605 + 32]
                                    if 0 / 10000 * mem[_7605 + 32] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7605 + 32]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7605 + 64]:
                                        if mem[_7605 + 32] and 10000 > -1 / mem[_7605 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7605 + 32] / 10000 != mem[_7605 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7605 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7605 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7605 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7605 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7605 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[_7605 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7605 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7605 + 64] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[_7605 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[_7605 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7605 + 64]) / mem[_7605 + 64] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7605 + 32] and 10000 > -1 / mem[_7605 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7605 + 32] / 10000 != mem[_7605 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7605 + 32] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7605 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7605 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7605 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[_7605 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7605 + 64]) / (10000 * mem[_7605 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[_7605 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7605 + 64]) / (10000 * mem[_7605 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7605 + 64]) - (mem[_5027 + 128] * _5024 * mem[_7605 + 64]) / (10000 * mem[_7605 + 32]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                            else:
                                if not -mem[_5027 + 128] + 10000:
                                    if mem[_7605 + 32]:
                                        if False and mem[_7605 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_7605 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_7605 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_7605 + 64] and 10000 > -1 / mem[_7605 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7605 + 64] / 10000 != mem[_7605 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_7605 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_7605 + 64] < 10000 * mem[_7605 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_7605 + 64]:
                                        revert with 'NH{q', 18
                                    require 0 / 10000 * mem[_7605 + 64]
                                    if 0 / 10000 * mem[_7605 + 64] < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2507]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2507 + 32] = (0 / 10000 * mem[_7605 + 64]) - 1
                                else:
                                    if _5024 and -mem[_5027 + 128] + 10000 > -1 / _5024:
                                        revert with 'NH{q', 17
                                    if not -mem[_5027 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * _5024) - (mem[_5027 + 128] * _5024) / -mem[_5027 + 128] + 10000 != _5024:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_7605 + 32]:
                                        if mem[_7605 + 64] and 10000 > -1 / mem[_7605 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7605 + 64] / 10000 != mem[_7605 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7605 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7605 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7605 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7605 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require 0 / (10000 * mem[_7605 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if 0 / (10000 * mem[_7605 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = (0 / (10000 * mem[_7605 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
                                    else:
                                        if (10000 * _5024) - (mem[_5027 + 128] * _5024) and mem[_7605 + 32] > -1 / (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 17
                                        if not mem[_7605 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * _5024 * mem[_7605 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7605 + 32]) / mem[_7605 + 32] != (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_7605 + 64] and 10000 > -1 / mem[_7605 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_7605 + 64] / 10000 != mem[_7605 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_7605 + 64] > (-10000 * _5024) + (mem[_5027 + 128] * _5024) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_7605 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 10000 * mem[_7605 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_7605 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024):
                                            revert with 'NH{q', 18
                                        require (10000 * _5024 * mem[_7605 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7605 + 32]) / (10000 * mem[_7605 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)
                                        if (10000 * _5024 * mem[_7605 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7605 + 32]) / (10000 * mem[_7605 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024) < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2507]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2507 + 32] = ((10000 * _5024 * mem[_7605 + 32]) - (mem[_5027 + 128] * _5024 * mem[_7605 + 32]) / (10000 * mem[_7605 + 64]) + (10000 * _5024) - (mem[_5027 + 128] * _5024)) - 1
        if idx == -1:
            revert with 'NH{q', 17
        _5017 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _5033 = mem[_2507]
    mem[mem[64] + 32] = mem[_2507]
    mem[mem[64] + 64 len 32 * _5033] = mem[_2507 + 32 len 32 * _5033]
    var69001 = _5033
    return 32, mem[mem[64] + 32 len (32 * _5033) + 32]
}



}
