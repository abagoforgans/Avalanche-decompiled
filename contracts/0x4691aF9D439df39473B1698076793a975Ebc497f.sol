contract main {




// =====================  Runtime code  =====================


#
#  - sub_316acee8(?)
#
uint8 stor0; offset 160
address owner;
mapping of uint256 sub_91c4e6b5;
mapping of struct tasks;
mapping of address sub_ba27f50b;
mapping of address sub_269f0717;
uint256 fee;
address feeReceiverAddress;
uint256 sub_0c12f930;
uint256 sub_cb0ae3cc;
mapping of uint256 stor99;

function sub_0c12f930(?) {
    return sub_0c12f930
}

function sub_269f0717(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_269f0717[arg1]
}

function paused() {
    return bool(stor0)
}

function tasks(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tasks[arg1].field_0, address(tasks[arg1].field_256), tasks[arg1].field_512, address(tasks[arg1].field_768)
}

function owner() {
    return owner
}

function sub_91c4e6b5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_91c4e6b5[arg1][arg2]
}

function feeReceiver() {
    return feeReceiverAddress
}

function sub_ba27f50b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ba27f50b[arg1]
}

function sub_cb0ae3cc(?) {
    return sub_cb0ae3cc
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function sub_9668b65a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeReceiverAddress = arg1
}

function sub_a8ae5207(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ba27f50b[address(arg1)] = address(arg2)
    sub_269f0717[address(arg2)] = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setPause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if stor0:
            if not stor0:
                revert with 0, 'Pausable: not paused'
            stor0 = 0
            emit Unpaused(msg.sender);
    else:
        if not stor0:
            stor0 = 1
            emit Paused(msg.sender);
        if not arg1:
            if stor0:
                if not stor0:
                    revert with 0, 'Pausable: not paused'
                stor0 = 0
                emit Unpaused(msg.sender);
}

function sub_f01274fa(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 227
        require calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 36 >= 192
        _118 = mem[64]
        if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        mem[_118] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
        mem[_118 + 32] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] <= test266151307()
        require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 67 < calldata.size
        if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _119 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])) + 1
        mem[_119] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]
        require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] + 68 <= calldata.size
        mem[_119 + 32 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]]
        mem[_119 + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] + 32] = 0
        mem[_118 + 64] = _119
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] <= test266151307()
        require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 67 < calldata.size
        if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _120 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)])) + 1
        mem[_120] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]
        require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] + 68 <= calldata.size
        mem[_120 + 32 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]]
        mem[_120 + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] + 32] = 0
        mem[_118 + 96] = _120
        mem[_118 + 128] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)])
        mem[_118 + 160] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)]
        if sub_0c12f930 == -1:
            revert with 'NH{q', 17
        sub_0c12f930++
        if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] < 1:
            revert with 'NH{q', 17
        if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] - 1 != sub_0c12f930:
            revert with 0, 'LPBridgeRemote::handleCrossTasks: WRONG_TASK_ID'
        mem[0] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
        mem[32] = 3
        if sub_ba27f50b[address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])]:
            mem[mem[64] + 36] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
            require ext_code.size(sub_ba27f50b[address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])])
            call sub_ba27f50b[address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])].0x40c10f19 with:
                 gas gas_remaining wei
                args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)]), cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_91c4e6b5[address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)])][address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])] > !cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]:
                revert with 'NH{q', 17
            sub_91c4e6b5[address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)])][address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])] += cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
            mem[0] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            mem[32] = 3
            mem[mem[64]] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            mem[mem[64] + 32] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
            emit 0x522f1366: address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]), cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)], address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)]), sub_ba27f50b[address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])], cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
        else:
            mem[mem[64] len 5794] = code.data[7649 len 5794]
            mem[mem[64] + 5794] = 96
            mem[mem[64] + 5890] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]
            s = 0
            while s < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]:
                mem[s + mem[64] + 5922] = mem[s + _119 + 32]
                s = s + 32
                continue 
            if ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) <= cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]:
                mem[mem[64] + 5826] = ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + 128
                _234 = mem[_120]
                mem[ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + mem[64] + 5922] = mem[_120]
                s = 0
                while s < _234:
                    mem[s + ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + mem[64] + 5954] = mem[s + _120 + 32]
                    s = s + 32
                    continue 
                if ceil32(_234) <= _234:
                    mem[mem[64] + 5858] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    create contract with 0 wei
                                    code: code.data[7649 len 5794], Array(len=cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)], data=cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)], mem[mem[64] + 5922 len ceil32(_234) + ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + 32]), ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + 128
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)])
                    mem[mem[64] + 36] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)]), cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_332] == bool(mem[_332])
                    sub_ba27f50b[address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])] = address(create.new_address)
                    sub_269f0717[address(create.new_address)] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    _348 = mem[_118 + 128]
                    mem[0] = mem[_118 + 172 len 20]
                    mem[32] = 1
                    _350 = sha3(mem[0], 1)
                    mem[0] = mem[_118 + 44 len 20]
                    mem[32] = _350
                    if stor[_350][mem[0]] > !_348:
                        revert with 'NH{q', 17
                    stor[_350][mem[0]] += _348
                    _368 = mem[_118]
                    mem[0] = mem[_118 + 44 len 20]
                    mem[32] = 3
                    _371 = mem[_118 + 160]
                    _373 = mem[_118 + 128]
                    mem[mem[64]] = mem[_118 + 44 len 20]
                    mem[mem[64] + 32] = _373
                    emit 0x522f1366: mem[mem[64]], _373, address(_371), sub_ba27f50b[mem[0]], _368
                else:
                    mem[_234 + ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + mem[64] + 5954] = 0
                    mem[mem[64] + 5858] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    create contract with 0 wei
                                    code: code.data[7649 len 5794], Array(len=cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)], data=cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)], mem[mem[64] + 5922 len ceil32(_234) + ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + 32]), ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + 128
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)])
                    mem[mem[64] + 36] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)]), cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _333 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_333] == bool(mem[_333])
                    sub_ba27f50b[address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])] = address(create.new_address)
                    sub_269f0717[address(create.new_address)] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    _353 = mem[_118 + 128]
                    mem[0] = mem[_118 + 172 len 20]
                    mem[32] = 1
                    _355 = sha3(mem[0], 1)
                    mem[0] = mem[_118 + 44 len 20]
                    mem[32] = _355
                    if stor[_355][mem[0]] > !_353:
                        revert with 'NH{q', 17
                    stor[_355][mem[0]] += _353
                    _376 = mem[_118]
                    mem[0] = mem[_118 + 44 len 20]
                    mem[32] = 3
                    _379 = mem[_118 + 160]
                    _381 = mem[_118 + 128]
                    mem[mem[64]] = mem[_118 + 44 len 20]
                    mem[mem[64] + 32] = _381
                    emit 0x522f1366: mem[mem[64]], _381, address(_379), sub_ba27f50b[mem[0]], _376
            else:
                mem[cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] + mem[64] + 5922] = 0
                mem[mem[64] + 5826] = ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + 128
                _235 = mem[_120]
                mem[ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + mem[64] + 5922] = mem[_120]
                s = 0
                while s < _235:
                    mem[s + ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + mem[64] + 5954] = mem[s + _120 + 32]
                    s = s + 32
                    continue 
                if ceil32(_235) <= _235:
                    mem[mem[64] + 5858] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    create contract with 0 wei
                                    code: code.data[7649 len 5794], Array(len=cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)], data=cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)], mem[mem[64] + 5922 len ceil32(_235) + ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + 32]), ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + 128
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)])
                    mem[mem[64] + 36] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)]), cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _334 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_334] == bool(mem[_334])
                    sub_ba27f50b[address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])] = address(create.new_address)
                    sub_269f0717[address(create.new_address)] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    _358 = mem[_118 + 128]
                    mem[0] = mem[_118 + 172 len 20]
                    mem[32] = 1
                    _360 = sha3(mem[0], 1)
                    mem[0] = mem[_118 + 44 len 20]
                    mem[32] = _360
                    if stor[_360][mem[0]] > !_358:
                        revert with 'NH{q', 17
                    stor[_360][mem[0]] += _358
                    _384 = mem[_118]
                    mem[0] = mem[_118 + 44 len 20]
                    mem[32] = 3
                    _387 = mem[_118 + 160]
                    _389 = mem[_118 + 128]
                    mem[mem[64]] = mem[_118 + 44 len 20]
                    mem[mem[64] + 32] = _389
                    emit 0x522f1366: mem[mem[64]], _389, address(_387), sub_ba27f50b[mem[0]], _384
                else:
                    mem[_235 + ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + mem[64] + 5954] = 0
                    mem[mem[64] + 5858] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    create contract with 0 wei
                                    code: code.data[7649 len 5794], Array(len=cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)], data=cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)], mem[mem[64] + 5922 len ceil32(_235) + ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + 32]), ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]) + 128
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)])
                    mem[mem[64] + 36] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)]), cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _335 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_335] == bool(mem[_335])
                    sub_ba27f50b[address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])] = address(create.new_address)
                    sub_269f0717[address(create.new_address)] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
                    _363 = mem[_118 + 128]
                    mem[0] = mem[_118 + 172 len 20]
                    mem[32] = 1
                    _365 = sha3(mem[0], 1)
                    mem[0] = mem[_118 + 44 len 20]
                    mem[32] = _365
                    if stor[_365][mem[0]] > !_363:
                        revert with 'NH{q', 17
                    stor[_365][mem[0]] += _363
                    _392 = mem[_118]
                    mem[0] = mem[_118 + 44 len 20]
                    mem[32] = 3
                    _395 = mem[_118 + 160]
                    _397 = mem[_118 + 128]
                    mem[mem[64]] = mem[_118 + 44 len 20]
                    mem[mem[64] + 32] = _397
                    emit 0x522f1366: mem[mem[64]], _397, address(_395), sub_ba27f50b[mem[0]], _392
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
