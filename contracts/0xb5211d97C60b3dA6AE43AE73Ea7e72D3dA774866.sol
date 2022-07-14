contract main {




// =====================  Runtime code  =====================


#
#  - sub_4f6b068d(?)
#
address owner;
mapping of uint8 stor1;

function claimed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[arg1][arg2])
}

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

function sub_df751012(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor1[address(msg.sender)][arg2]:
        revert with 0, 'Address already claimed'
    mem[ceil32(ceil32(arg3.length)) + arg3.length + 357 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg3.length + arg4.length + 357] = 0
    if arg4.length == 65:
        if mem[ceil32(ceil32(arg3.length)) + arg3.length + 389] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg4.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if bool(mem[ceil32(ceil32(arg3.length)) + arg3.length + 389]) >> 255 > -28:
        revert with 'NH{q', 17
    if uint255(mem[ceil32(ceil32(arg3.length)) + arg3.length + 389]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[ceil32(ceil32(arg3.length)) + arg3.length + 389]) >> 255) + 27) != 27:
        if uint8((bool(mem[ceil32(ceil32(arg3.length)) + arg3.length + 389]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(chainid, this.address, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, msg.sender))), (bool(mem[ceil32(ceil32(arg3.length)) + arg3.length + 389]) >> 255) + 27 << 248, mem[ceil32(ceil32(arg3.length)) + arg3.length + 357], uint255(mem[ceil32(ceil32(arg3.length)) + arg3.length + 389])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != owner:
        revert with 0, 'Invalid signature'
    stor1[address(msg.sender)][arg2] = 1
    require ext_code.size(address(arg1))
    call address(arg1).0xcb72220a with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
