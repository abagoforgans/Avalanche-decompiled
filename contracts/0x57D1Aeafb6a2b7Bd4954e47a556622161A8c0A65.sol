contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of struct sub_aeb45f01;
mapping of uint8 stor2;
mapping of uint8 stor3;

function processedHashes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_4a905f1e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_aeb45f01[arg1].field_0, 
           bool(sub_aeb45f01[arg1].field_256),
           sub_aeb45f01[arg1].field_512,
           sub_aeb45f01[arg1].field_768
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function sub_982fb9d8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_aeb45f01(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_aeb45f01[arg1].field_0, 
           bool(sub_aeb45f01[arg1].field_256),
           sub_aeb45f01[arg1].field_512,
           sub_aeb45f01[arg1].field_768
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_3a8ee97d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
    emit 0x81cdda5c: address(arg1)
}

function sub_85d9ef5a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 0
    emit 0x6d976a53: address(arg1)
}

function sub_2188650e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_aeb45f01[arg1].field_768 = arg2
    return sub_aeb45f01[arg1].field_768
}

function setPause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    return bool(uint8(stor0.field_160))
}

function setUnPause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
    return bool(uint8(stor0.field_160))
}

function setMinAmount(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_aeb45f01[arg1].field_512 = arg2
    return sub_aeb45f01[arg1].field_512
}

function setIsEnabled(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_aeb45f01[arg1].field_256 = uint8(arg2)
    return bool(sub_aeb45f01[arg1].field_256)
}

function withdrawBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    emit Withdrawal(eth.balance(this.address), msg.sender);
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

function sub_e56461ad(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if not sub_aeb45f01[arg1].field_256:
        revert with 0, 'Chain is currently disabled'
    if msg.value < sub_aeb45f01[arg1].field_512:
        revert with 0, 'Please send more tokens'
    if msg.value > sub_aeb45f01[arg1].field_768:
        revert with 0, 'Surpasses max transfer amount'
    emit Deposit(msg.value, address(arg2), arg1);
}

function sub_b95d57b4(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor3[address(msg.sender)]:
        revert with 0, 'Sender role required'
    if block.gasprice and arg4 > -1 / block.gasprice:
        revert with 'NH{q', 17
    if not stor2[arg3]:
        stor2[arg3] = 1
        if arg2 > sub_aeb45f01[chainid].field_768:
            revert with 0, 'Amount more than max'
        if arg2 < block.gasprice * arg4:
            revert with 'NH{q', 17
        emit 0x2f824f69: address(arg1), arg2 - (block.gasprice * arg4), arg3
        call address(arg1) with:
           value arg2 - (block.gasprice * arg4) wei
             gas 5000 wei
        if not ext_call.success:
            revert with 0, 'Failed to send Ether'
}

function sub_6379f082(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((128 * idx) + cd[4] + 36)]
        mem[32] = 1
        require cd[((128 * idx) + cd[4] + 36)] == cd[((128 * idx) + cd[4] + 36)]
        sub_aeb45f01[cd[((128 * idx) + cd[4] + 36)]].field_0 = cd[((128 * idx) + cd[4] + 36)]
        require cd[((128 * idx) + cd[4] + 68)] == bool(cd[((128 * idx) + cd[4] + 68)])
        sub_aeb45f01[cd[((128 * idx) + cd[4] + 36)]].field_256 = uint8(bool(cd[((128 * idx) + cd[4] + 68)]))
        require cd[((128 * idx) + cd[4] + 100)] == cd[((128 * idx) + cd[4] + 100)]
        sub_aeb45f01[cd[((128 * idx) + cd[4] + 36)]].field_512 = cd[((128 * idx) + cd[4] + 100)]
        require cd[((128 * idx) + cd[4] + 132)] == cd[((128 * idx) + cd[4] + 132)]
        sub_aeb45f01[cd[((128 * idx) + cd[4] + 36)]].field_768 = cd[((128 * idx) + cd[4] + 132)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_564c1a0b(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307() or floor32(('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    mem[0] = msg.sender
    if not stor3[address(msg.sender)]:
        revert with 0, 'Sender role required'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Input length mismatch'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'Input length mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _137 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _139 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        _141 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        if block.gasprice and cd[100] > -1 / block.gasprice:
            revert with 'NH{q', 17
        mem[0] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        mem[32] = 2
        if not stor2[mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]]:
            mem[0] = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
            mem[32] = 2
            stor2[mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]] = 1
            if mem[(32 * idx) + floor32(('cd', 4).length) + 129] > sub_aeb45f01[chainid].field_768:
                revert with 0, 'Amount more than max'
            if mem[(32 * idx) + floor32(('cd', 4).length) + 129] < block.gasprice * cd[100]:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 32] = _139 - (block.gasprice * cd[100])
            mem[mem[64] + 64] = _141
            emit 0x2f824f69: mem[mem[64]], _139 - (block.gasprice * cd[100]), _141
            call address(_137) with:
               value _139 - (block.gasprice * cd[100]) wei
                 gas 5000 wei
            if return_data.size:
                _151 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_151] = return_data.size
                mem[_151 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Failed to send Ether'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
