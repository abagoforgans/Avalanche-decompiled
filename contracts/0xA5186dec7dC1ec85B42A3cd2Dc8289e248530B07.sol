contract main {




// =====================  Runtime code  =====================


address owner;
address paymentProxyAddress;
address chainlinkConversionPathAddress;

function paymentProxy() payable {
    return paymentProxyAddress
}

function owner() payable {
    return owner
}

function chainlinkConversionPath() payable {
    return chainlinkConversionPathAddress
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

function sub_5536bcde(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paymentProxyAddress = address(arg1)
}

function sub_7a38d1cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    chainlinkConversionPathAddress = address(arg1)
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

function transferFromWithReferenceAndFee(address arg1, uint256 arg2, address[] arg3, bytes arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0x97edd4fa00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + 132] = 32
    mem[(32 * arg3.length) + 164] = arg3.length
    idx = 0
    s = 128
    t = (32 * arg3.length) + 196
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(chainlinkConversionPathAddress)
    staticcall chainlinkConversionPathAddress.0x97edd4fa with:
            gas gas_remaining wei
           args mem[(32 * arg3.length) + 132 len (96 * arg3.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if arg8:
        if block.timestamp < ext_call.return_data[32]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[32] > arg8:
            revert with 0, 'aggregator rate is outdated'
    if arg2 and ext_call.return_data[0] > -1 / arg2:
        revert with 'NH{q', 17
    if not ext_call.return_data[64]:
        revert with 'NH{q', 18
    if arg5 and ext_call.return_data[0] > -1 / arg5:
        revert with 'NH{q', 17
    if not ext_call.return_data[64]:
        revert with 'NH{q', 18
    if arg2 * ext_call.return_data[0] / ext_call.return_data[64] > -(arg5 * ext_call.return_data[0] / ext_call.return_data[64]) - 1:
        revert with 'NH{q', 17
    if (arg2 * ext_call.return_data[0] / ext_call.return_data[64]) + (arg5 * ext_call.return_data[0] / ext_call.return_data[64]) > arg7:
        revert with 0, 'Amount to pay is over the user limit'
    if arg3.length < 1:
        revert with 'NH{q', 17
    if arg3.length - 1 >= arg3.length:
        revert with 'NH{q', 50
    require cd[((32 * arg3.length - 1) + arg3 + 36)] == address(cd[((32 * arg3.length - 1) + arg3 + 36)])
    mem[(32 * arg3.length) + ceil32(return_data.size) + ceil32(arg4.length) + 388 len floor32(ceil32(arg4.length) + 259)] = 0, address(cd[((32 * arg3.length - 1) + arg3 + 36)]), address(arg1), arg2 * ext_call.return_data[0] / ext_call.return_data[64], 192, arg5 * ext_call.return_data[0] / ext_call.return_data[64], arg6, arg4.length, arg4[all], Mask(8 * floor32(ceil32(arg4.length) + 259) + -arg4.length - 228, -(8 * floor32(ceil32(arg4.length) + 259) + -arg4.length - 228) + 256, 0) >> -(8 * floor32(ceil32(arg4.length) + 259) + -arg4.length - 228) + 256
    delegate paymentProxyAddress with:
       funct (Mask(32, -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256, 0) >> -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256)
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg4.length) + arg4.length + 28, 0, 0), mem[(32 * arg3.length) + ceil32(return_data.size) + arg4.length + 420 len (2 * ceil32(arg4.length)) + -arg4.length + 196]
    if not delegate.return_code:
        revert with 0, 'transferFromWithReferenceAndFee failed'
    if return_data.size:
        if 0 >= arg3.length:
            revert with 'NH{q', 50
        require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
        emit TransferWithConversionAndReference(arg2, address(cd[(arg3 + 36)]), arg5, arg8, sha3(arg4[all]));
    else:
        mem[(32 * arg3.length) + ceil32(return_data.size) + ceil32(arg4.length) + 388 len arg4.length] = arg4[all]
        mem[(32 * arg3.length) + ceil32(return_data.size) + ceil32(arg4.length) + arg4.length + 388] = 0
        if 0 >= arg3.length:
            revert with 'NH{q', 50
        require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
        mem[(32 * arg3.length) + ceil32(return_data.size) + ceil32(arg4.length) + 388] = arg2
        mem[(32 * arg3.length) + ceil32(return_data.size) + ceil32(arg4.length) + 420] = address(cd[(arg3 + 36)])
        emit TransferWithConversionAndReference(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg3.length) + ceil32(return_data.size) + arg4.length + 420 len ceil32(arg4.length) + -arg4.length + 32], arg5, arg8, sha3(arg4[all]));
}



}
