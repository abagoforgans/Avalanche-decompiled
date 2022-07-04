contract main {




// =====================  Runtime code  =====================


#
#  - sub_16b9aeaf(?)
#  - sub_23ea8a57(?)
#  - getConfig(address arg1)
#  - sub_ea8b8ccf(?)
#
address owner;
mapping of struct stor1;
uint256 sub_117993fa;
mapping of uint256 stor3;

function sub_117993fa(?) payable {
    return sub_117993fa
}

function owner() payable {
    return owner
}

function sub_b5845988(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[address(arg1)])
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

function setToken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 'Invalid token address'
    if arg1 > sub_117993fa:
        revert with 0, 'Approve config not found'
    if 1 > !arg1:
        revert with 0, 17
    stor3[address(arg2)] = arg1 + 1
}

function sub_7317cc2d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor3[address(arg1)]:
        revert with 0, 'Approve config not found'
    if stor3[address(arg1)] < 1:
        revert with 0, 17
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length < 4:
        revert with 0, 'Data to short'
    if Mask(32, 224, mem[128]) != Mask(32, 224, stor1[stor3[address(arg1)] - 1]):
        revert with 0, 'Wrong permit method'
    mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg2.length) + 128] = 0
    call address(arg1) with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg2.length) + 128] = bool(ext_call.success)
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 192] = arg2.length
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[arg2.length + 160 len (2 * ceil32(arg2.length)) + -arg2.length + 64]
}



}
