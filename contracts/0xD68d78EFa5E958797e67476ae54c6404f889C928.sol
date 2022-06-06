contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() payable {
    return owner
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
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

function setMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function revokeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
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

function setMinters(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function revokeMinters(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_4cace359(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg4.length + 129] = 0
    if not stor1[address(msg.sender)]:
        revert with 0, '403'
    if ceil32(arg3.length) <= arg3.length:
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(arg1)) <= 0:
            revert with 0, 'Address: call to non-contract'
        if ceil32(arg4.length) <= arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 358 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195)] = unknown_0x7897f76a(?????), address(arg2) << 64, 0, 96, ceil32(arg3.length) + 128, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, Mask(8 * floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) + -ceil32(arg3.length) + -ceil32(arg4.length) - 164, -(8 * floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) + -ceil32(arg3.length) + -ceil32(arg4.length) - 164) + 256, 30) >> -(8 * floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) + -ceil32(arg3.length) + -ceil32(arg4.length) - 164) + 256
        else:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 358 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195)] = unknown_0x7897f76a(?????), address(arg2) << 64, 0, 96, ceil32(arg3.length) + 128, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, Mask(8 * floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) + -ceil32(arg3.length) + -ceil32(arg4.length) - 164, -(8 * floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) + -ceil32(arg3.length) + -arg4.length - 164) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) + -ceil32(arg3.length) + -arg4.length - 164) + 256
        if floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) > ceil32(arg3.length) + ceil32(arg4.length) + 164:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + 522] = 0
        call address(arg1) with:
           funct Mask(32, -(8 * floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) + -ceil32(arg3.length) + -ceil32(arg4.length) - 164) + 224, unknown_0x7897f76a(?????), address(arg2) << 64, 0, 96, ceil32(arg3.length) + 128, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256) << (8 * floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) + -ceil32(arg3.length) + -ceil32(arg4.length) - 164) - 224
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 362 len (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 160]
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 262] = arg4.length
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + 294 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + arg4.length + 294] = 0
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 294] = 30
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(arg1)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 358 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195)] = unknown_0x7897f76a(?????), address(arg2) << 64, 0, 96, ceil32(arg3.length) + 128, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 294 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) + -arg3.length - 164]
        if floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) > ceil32(arg3.length) + ceil32(arg4.length) + 164:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + 522] = 0
        call address(arg1) with:
           funct Mask(32, 224, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg3.length + 294 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 195) + -arg3.length - 164]) >> 224
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 362 len (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 160]
    if ext_call.success:
    if not return_data.size:
        if arg3.length > 0:
            revert with arg3[all]
    else:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Address: low-level call failed', 0
}



}
