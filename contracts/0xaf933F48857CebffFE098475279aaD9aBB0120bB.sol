contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address sub_8a14c2fdAddress;
uint256 ONE_DAY;
mapping of uint256 sub_22f68f75;

function sub_22f68f75(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_22f68f75[arg1]
}

function ONE_DAY() payable {
    return ONE_DAY
}

function sub_8a14c2fd(?) payable {
    return sub_8a14c2fdAddress
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

function sub_3675d39c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
    emit 0x387a5a83: msg.sender, address(arg1)
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

function sub_a1731eca(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= 10:
        revert with 0, 'Percent dosen't allowed.'
    if sub_22f68f75[msg.sender] > !ONE_DAY:
        revert with 0, 17
    if sub_22f68f75[msg.sender] + ONE_DAY >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User can't claim several time per one day.'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg1 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg1 / 100
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0] * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 128] = stor1
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.WAVAX() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 192] = stor2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_8a14c2fdAddress, 0
    mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(9 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(9 * ceil32(return_data.size)) + 228] = 0
    idx = 0
    s = (9 * ceil32(return_data.size)) + 420
    t = (6 * ceil32(return_data.size)) + 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    call sub_8a14c2fdAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, 160, msg.sender, block.timestamp, 3, mem[(9 * ceil32(return_data.size)) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_22f68f75[msg.sender] = block.timestamp
    emit 0x96cefb06: msg.sender, ext_call.return_data[0] * arg1 / 100
}



}
