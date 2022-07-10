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
            if unknown_0x08c20aee(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
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
                    return ext_call.return_data[0], 0
                return ext_call.return_data[0], 1
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
                require msg.sender == stor0
                staticcall stor1.getType(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != 2:
                    return 0
                return 1
            if uint32(call.func_hash) >> 224 != unknown_0xad61b282(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xc0336fc1(?????):
                    require unknown_0xdcfa9c98(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require msg.sender == stor0
                    selfdestruct(msg.sender)
                require not msg.value
                require calldata.size - 4 >= 96
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
                    revert with 0, 'you can't mint that bruh'
                return ext_call.return_data[0], 1
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
            require ext_code.size(0x975a1a706f49c465ba4b55ecf859c6c04f2263a0)
            call 0x975a1a706f49c465ba4b55ecf859c6c04f2263a0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x975a1a706f49c465ba4b55ecf859c6c04f2263a0)
            call 0x975a1a706f49c465ba4b55ecf859c6c04f2263a0.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args this.address, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_6431bf5a(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
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

function sub_08c20aee(?) {
    require calldata.size - 4 >= 96
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
        return ext_call.return_data[0], 0
    return ext_call.return_data[0], 1
}

function sub_c0336fc1(?) {
    require calldata.size - 4 >= 96
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
        revert with 0, 'you can't mint that bruh'
    return ext_call.return_data[0], 1
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

function sub_ad61b282(?) payable {
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
    require ext_code.size(0x975a1a706f49c465ba4b55ecf859c6c04f2263a0)
    call 0x975a1a706f49c465ba4b55ecf859c6c04f2263a0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x975a1a706f49c465ba4b55ecf859c6c04f2263a0)
    call 0x975a1a706f49c465ba4b55ecf859c6c04f2263a0.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
