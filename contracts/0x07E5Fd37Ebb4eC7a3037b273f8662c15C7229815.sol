contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function sub_dcfa9c98(?) {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x6431bf5a(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x150b7a02(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 128
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg4 <= test266151307()
                require arg4 + 35 < calldata.size
                require arg4.length <= test266151307()
                require arg4 + arg4.length + 36 <= calldata.size
                return 0x150b7a0200000000000000000000000000000000000000000000000000000000
            if unknown_0x1ec8c9e3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require msg.sender == stor0
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg1))
                call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args this.address, msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require unknown_0x5e9219ab(?????) == uint32(call.func_hash) >> 224
                require calldata.size - 4 >= 96
                if stor0 != msg.sender:
                    revert with 0, 'Only owner can use this function peucher!'
                require ext_code.size(stor1)
                call stor1.0xb33c690c with:
                   value arg1 wei
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, arg3
                require return_data.size >= 32
                staticcall stor1.getType(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != 2:
                    revert with 0, 'execution reverted'
        else:
            if unknown_0x6431bf5a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                staticcall stor1.getType(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != 2:
                    return 0
                return 1
            if uint32(call.func_hash) >> 224 != unknown_0x85fb708a(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xc6dab7de(?????):
                    require unknown_0xdcfa9c98(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require msg.sender == stor0
                    selfdestruct(msg.sender)
                require calldata.size - 4 >= 128
                require arg4 == address(arg4)
                if stor0 != msg.sender:
                    revert with 0, 'Only owner can use this function peucher!'
                call address(arg4).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
            else:
                require calldata.size - 4 >= 128
                require arg4 == address(arg4)
                if stor0 != msg.sender:
                    revert with 0, 'Only owner can use this function peucher!'
                call address(arg4).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call address(arg4).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x975a1a706f49c465ba4b55ecf859c6c04f2263a0, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor1)
            call stor1.0x3136fb54 with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args this.address, arg3
            require return_data.size >= 32
            staticcall stor1.getType(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != 2:
                revert with 0, 'execution reverted'
}

function sub_6431bf5a(?) {
    require calldata.size - 4 >= 32
    staticcall stor1.getType(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 2:
        return 0
    return 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_1ec8c9e3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require msg.sender == stor0
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5e9219ab(?) payable {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can use this function peucher!'
    require ext_code.size(stor1)
    call stor1.0xb33c690c with:
       value arg1 wei
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args this.address, arg3
    require return_data.size >= 32
    staticcall stor1.getType(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 2:
        revert with 0, 'execution reverted'
}

function sub_c6dab7de(?) payable {
    require calldata.size - 4 >= 128
    require arg4 == address(arg4)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can use this function peucher!'
    call address(arg4).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x975a1a706f49c465ba4b55ecf859c6c04f2263a0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.0x3136fb54 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args this.address, arg3
    require return_data.size >= 32
    staticcall stor1.getType(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 2:
        revert with 0, 'execution reverted'
}

function sub_85fb708a(?) payable {
    require calldata.size - 4 >= 128
    require arg4 == address(arg4)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can use this function peucher!'
    call address(arg4).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x975a1a706f49c465ba4b55ecf859c6c04f2263a0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.0x3136fb54 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args this.address, arg3
    require return_data.size >= 32
    staticcall stor1.getType(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 2:
        revert with 0, 'execution reverted'
}



}
