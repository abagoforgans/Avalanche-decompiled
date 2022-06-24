contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct operators;

function sub_22a782f8(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if operators[arg1].field_0:
        return operators[arg1].field_0, operators[arg1].field_160 << 224
    mem[292 len arg2.length] = arg2[all]
    mem[arg2.length + 292] = 0
    revert with 0, 32, arg2.length, arg2[all], mem[arg2.length + 292 len ceil32(arg2.length) - arg2.length]
}

function owner() payable {
    return owner
}

function getOperator(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return operators[arg1].field_0, operators[arg1].field_160 << 224
}

function operators(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return operators[arg1].field_0, operators[arg1].field_160 << 224
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function rebuildCaches(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[96] = 0x7418536000000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).rebuildCache() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ca83111e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'OR: INPUTS_LENGTH_MUST_MATCH'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if operators[cd[((32 * idx) + cd[4] + 36)]].field_0 != address(cd[((64 * idx) + cd[36] + 36)]):
            return 0
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((64 * idx) + cd[36] + 68)] == Mask(32, 224, cd[((64 * idx) + cd[36] + 68)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 1
        if operators[cd[((32 * idx) + cd[4] + 36)]].field_160 << 224 != Mask(32, 224, cd[((64 * idx) + cd[36] + 68)]):
            return 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}

function sub_a1b05058(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'OR: INPUTS_LENGTH_MUST_MATCH'
    idx = 0
    s = calldata.size
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 1
        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
        operators[cd[((32 * idx) + cd[4] + 36)]].field_0 = address(cd[((64 * idx) + cd[36] + 36)])
        require cd[((64 * idx) + cd[36] + 68)] == Mask(32, 224, cd[((64 * idx) + cd[36] + 68)])
        operators[cd[((32 * idx) + cd[4] + 36)]].field_0 = address(cd[((64 * idx) + cd[36] + 36)])
        operators[cd[((32 * idx) + cd[4] + 36)]].field_160 = 0
        mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
        mem[mem[64] + 32] = address(cd[((64 * idx) + cd[36] + 36)])
        require cd[((64 * idx) + cd[36] + 68)] == Mask(32, 224, cd[((64 * idx) + cd[36] + 68)])
        mem[mem[64] + 64] = Mask(32, 224, cd[((64 * idx) + cd[36] + 68)])
        emit 0x965ee37a: cd[((32 * idx) + cd[4] + 36)], address(cd[((64 * idx) + cd[36] + 36)]), Mask(32, 224, cd[((64 * idx) + cd[36] + 68)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = (64 * idx) + cd[36] + 36
        s = cd[((32 * idx) + cd[4] + 36)]
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = 0x7418536000000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        call address(cd[((32 * idx) + cd[68] + 36)]).rebuildCache() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
