contract main {




// =====================  Runtime code  =====================


const degenBox = 0x1fc83f75499b7620d53757f0b01e2ae626aae530


address stor0;

function _fallback() payable {
    revert
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(0x1fc83f75499b7620d53757f0b01e2ae626aae530)
    call 0x1fc83f75499b7620d53757f0b01e2ae626aae530.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, stor0, arg3 + arg4, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    emit 0xa4de2edb: 1, address(arg1), address(arg2), arg3, arg4, Array(len=arg5.length, data=arg5[all])
}



}
