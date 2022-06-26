contract main {




// =====================  Runtime code  =====================


const sub_54db86bf(?) = 'ciao'


address owner;
address stor2;
address stor3;
address stor6;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6b4dccdd(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_167adff5(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function returnTokens() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_c659fd3b(?) payable {
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe6e6f6e20736920c3a8206461746f20696c207065726d6573736f2064692074726173666572697265206920746f6b65,
                    mem[212 len 16]
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x536e6f6e20c3a82073746174612064617461206c20616c6c6f77616e636520636f7272657474,
                    mem[202 len 26]
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getAmountIn(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7350616e676f6c696e4c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[200 len 28]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7350616e676f6c696e4c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[200 len 28]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor2, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor2, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg2:
                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor2, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor2, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(stor3)
        if arg1 == arg1:
            staticcall stor3.getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall stor3.getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    else:
        if not arg2:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7350616e676f6c696e4c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[200 len 28]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor2, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor2, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg2:
                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor2, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor2, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(stor3)
        if arg1 == arg2:
            staticcall stor3.getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall stor3.getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAmountOut(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7350616e676f6c696e4c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[200 len 28]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7350616e676f6c696e4c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[200 len 28]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor2, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor2, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg2:
                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor2, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor2, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(stor3)
        if arg1 == arg1:
            staticcall stor3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall stor3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    else:
        if not arg2:
            revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
        if arg1 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7350616e676f6c696e4c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[200 len 28]
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor2, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor2, sha3(arg1, arg2), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg2:
                revert with 0, 'PangolinLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, stor2, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, stor2, sha3(arg2, arg1), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(stor3)
        if arg1 == arg2:
            staticcall stor3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall stor3.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
