contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;

function owner() payable {
    return owner
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

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
}

function sub_6e35c8dc(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307() or ceil32(ceil32(arg3.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg3.length] = arg3[all]
    mem[ceil32(ceil32(arg2.length)) + arg3.length + 129] = 0
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ceil32(arg2.length) <= arg2.length:
        if ceil32(arg3.length) <= arg3.length:
            create contract with 0 wei
                            code: code.data[3667 len 4157], address(arg1), 64, ceil32(arg2.length) + ceil32(arg3.length) + 164, initialize(string arg1, string arg2, address arg3), 0, 0, ceil32(arg2.length) + 128, address(arg4), arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(ceil32(arg2.length)) + arg3.length + 129 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, code.data[3667 len floor32(ceil32(arg2.length) + ceil32(arg3.length) + 195) + -ceil32(arg2.length) + -ceil32(arg3.length) - 164]
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xb00e17ee: address(create.new_address), Array(len=arg3.length, data=arg3[all]), sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256), address(arg4)
        else:
            if floor32(ceil32(arg2.length) + ceil32(arg3.length) + 195) > ceil32(arg2.length) + ceil32(arg3.length) + 164:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + (2 * ceil32(arg2.length)) + (2 * ceil32(arg3.length)) + 4711] = 0
            create contract with 0 wei
                            code: code.data[3667 len 4157], address(arg1), 64, ceil32(arg2.length) + ceil32(arg3.length) + 164, initialize(string arg1, string arg2, address arg3), 0, 0, ceil32(arg2.length) + 128, address(arg4), arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(ceil32(arg2.length)) + arg3.length + 129 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, Mask(8 * floor32(ceil32(arg2.length) + ceil32(arg3.length) + 195) + -ceil32(arg2.length) + -ceil32(arg3.length) - 164, -(8 * floor32(ceil32(arg2.length) + ceil32(arg3.length) + 195) + -ceil32(arg2.length) + -arg3.length - 164) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + ceil32(arg3.length) + 195) + -ceil32(arg2.length) + -arg3.length - 164) + 256
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 294 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
            if ceil32(arg2.length) > arg2.length:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 294] = 0
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 294] = address(create.new_address)
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 326] = 64
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 358] = arg3.length
            emit 0xb00e17ee: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + arg3.length + 326 len (2 * ceil32(arg3.length)) + -arg3.length + 64], sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256), address(arg4)
    else:
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + 262] = arg3.length
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + 294 len ceil32(arg3.length)] = arg3[all], mem[ceil32(ceil32(arg2.length)) + arg3.length + 129 len ceil32(arg3.length) - arg3.length]
        if ceil32(arg3.length) <= arg3.length:
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 294 len 4157] = code.data[3667 len 4157]
            create contract with 0 wei
                            code: code.data[3667 len 4157], address(arg1), 64, ceil32(arg2.length) + ceil32(arg3.length) + 164, initialize(string arg1, string arg2, address arg3), 0, 0, ceil32(arg2.length) + 128, address(arg4), arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + arg2.length + 294 len floor32(ceil32(arg2.length) + ceil32(arg3.length) + 195) + -arg2.length - 164]
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xb00e17ee: address(create.new_address), Array(len=arg3.length, data=arg3[all]), sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256), address(arg4)
        else:
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + arg3.length + 294] = 0
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 294 len 4157] = code.data[3667 len 4157]
            if floor32(ceil32(arg2.length) + ceil32(arg3.length) + 195) > ceil32(arg2.length) + ceil32(arg3.length) + 164:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + (2 * ceil32(arg2.length)) + (2 * ceil32(arg3.length)) + 4711] = 0
            create contract with 0 wei
                            code: code.data[3667 len 4157], address(arg1), 64, ceil32(arg2.length) + ceil32(arg3.length) + 164, initialize(string arg1, string arg2, address arg3), 0, 0, ceil32(arg2.length) + 128, address(arg4), arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + arg2.length + 294 len floor32(ceil32(arg2.length) + ceil32(arg3.length) + 195) + -arg2.length - 164]
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 294 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
            if ceil32(arg2.length) > arg2.length:
                mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 294] = 0
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 294] = address(create.new_address)
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 326] = 64
            mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 358] = arg3.length
            emit 0xb00e17ee: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(arg2.length) + arg3.length + 326 len (2 * ceil32(arg3.length)) + -arg3.length + 64], sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256), address(arg4)
}



}
