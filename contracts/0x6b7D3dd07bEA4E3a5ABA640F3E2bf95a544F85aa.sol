contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address sub_8a14c2fdAddress;

function sub_8a14c2fd(?) {
    return sub_8a14c2fdAddress
}

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function claimTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient token amount'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg1
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = stor1
    mem[(2 * ceil32(return_data.size)) + 160] = stor2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_8a14c2fdAddress, arg1
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 360 > !block.timestamp:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = arg1
    idx = 0
    s = (4 * ceil32(return_data.size)) + 388
    t = (2 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    call sub_8a14c2fdAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, msg.sender, block.timestamp + 360, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ClaimTokens(msg.sender, arg1);
}

function _fallback() payable {
    if calldata.size >= 4:
        if uint32(call.func_hash) >> 224 != unknown_0x46e04a2f(?????):
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                if unknown_0x8a14c2fd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_8a14c2fdAddress
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
        else:
            require not msg.value
            require calldata.size - 4 >= 32
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                revert with 0, 'Insufficient token amount'
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = arg1
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 160] = stor1
            mem[(2 * ceil32(return_data.size)) + 192] = stor2
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_8a14c2fdAddress, arg1
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 360 > !block.timestamp:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 228] = arg1
            idx = 0
            s = (4 * ceil32(return_data.size)) + 420
            t = (2 * ceil32(return_data.size)) + 160
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_8a14c2fdAddress)
            call sub_8a14c2fdAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, msg.sender, block.timestamp + 360, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit ClaimTokens(msg.sender, arg1);
}



}
