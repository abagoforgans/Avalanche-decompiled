contract main {




// =====================  Runtime code  =====================


address stor0;
address stor3;
address stor4;

function sub_dcfa9c98(?) {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x869991b8(?????) > uint32(call.func_hash) >> 224:
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
                call address(arg1).0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x4f1646cd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    staticcall stor3.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if -ext_call.return_data[0] + 1:
                        return 0
                    return 1
                require unknown_0x654a79c1(?????) == uint32(call.func_hash) >> 224
                require calldata.size - 4 >= 96
                if stor0 != msg.sender:
                    revert with 0, 'Only owner can use this function peucher!'
                require ext_code.size(stor3)
                call stor3.publicSaleMint(uint256 arg1) with:
                   value arg1 wei
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall stor3.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(this.address), arg3
                require return_data.size >= 32
                staticcall stor3.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if -ext_call.return_data[0] + 1:
                    revert with 0, 'execution reverted'
        else:
            if unknown_0x869991b8(?????) == uint32(call.func_hash) >> 224:
                require calldata.size - 4 >= 96
                require arg3 == address(arg3)
                if stor0 != msg.sender:
                    revert with 0, 'Only owner can use this function peucher!'
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x9cd2102eed7d3133608a01aebc5f0a2016272fa7, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor4)
                call stor4.0xa0712d68 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall stor3.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                require return_data.size >= 32
                staticcall stor3.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if -ext_call.return_data[0] + 1:
                    revert with 0, 'execution reverted'
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x8760dc5c(?????):
                    if unknown_0xdcfa9c98(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require msg.sender == stor0
                        selfdestruct(msg.sender)
                    require unknown_0xec9f4bab(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require msg.sender == stor0
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require calldata.size - 4 >= 96
                    require arg3 == address(arg3)
                    if stor0 != msg.sender:
                        revert with 0, 'Only owner can use this function peucher!'
                    call address(arg3).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x9cd2102eed7d3133608a01aebc5f0a2016272fa7, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call address(arg3).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call address(arg3).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.0xa0712d68 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    staticcall stor3.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Fail'
                    staticcall stor3.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if -ext_call.return_data[0] + 1:
                        revert with 0, 'execution reverted'
}

function sub_4f1646cd(?) {
    require calldata.size - 4 >= 32
    staticcall stor3.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -ext_call.return_data[0] + 1:
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

function sub_ec9f4bab(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require msg.sender == stor0
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    call address(arg1).0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_654a79c1(?) payable {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can use this function peucher!'
    require ext_code.size(stor3)
    call stor3.publicSaleMint(uint256 arg1) with:
       value arg1 wei
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall stor3.0x2f745c59 with:
            gas gas_remaining wei
           args address(this.address), arg3
    require return_data.size >= 32
    staticcall stor3.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -ext_call.return_data[0] + 1:
        revert with 0, 'execution reverted'
}

function sub_869991b8(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can use this function peucher!'
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x9cd2102eed7d3133608a01aebc5f0a2016272fa7, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.0xa0712d68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall stor3.0x2f745c59 with:
            gas gas_remaining wei
           args address(this.address), arg2
    require return_data.size >= 32
    staticcall stor3.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -ext_call.return_data[0] + 1:
        revert with 0, 'execution reverted'
}

function sub_8760dc5c(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can use this function peucher!'
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x9cd2102eed7d3133608a01aebc5f0a2016272fa7, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.0xa0712d68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall stor3.0x2f745c59 with:
            gas gas_remaining wei
           args address(this.address), arg2
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Fail'
    staticcall stor3.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -ext_call.return_data[0] + 1:
        revert with 0, 'execution reverted'
}



}
