contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 unlockTime;
address stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor7;
address stor8;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
address stor12;

function unlockTime() {
    return unlockTime
}

function _fallback() payable {
    revert
}

function lockPool(uint256 arg1) {
    require calldata.size - 4 >= 32
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if msg.sender == stor4:
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args 0, 'transfer to B in callback'
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor10
    else:
        if stor0 != tx.origin:
            revert with 0, '!owner'
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args 0, 'start swap in callback'
        require ext_code.size(stor4)
        call stor4.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor5, stor6, address(this.address), '1'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args 0, 'transfer to B in callback'
        require ext_code.size(stor11)
        call stor11.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if msg.sender == stor4:
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args 0, 'transfer to B in callback'
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor10
    else:
        if stor0 != tx.origin:
            revert with 0, '!owner'
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args 0, 'start swap in callback'
        require ext_code.size(stor4)
        call stor4.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor5, stor6, address(this.address), '1'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args 0, 'transfer to B in callback'
        require ext_code.size(stor11)
        call stor11.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_d3406ae3(?) {
    require calldata.size - 4 >= 256
    stor4 = arg2
    stor5 = arg5
    stor6 = arg6
    stor9 = arg7
    stor10 = arg8
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
    if arg3 > 0:
        stor11 = address(stor7)
        stor12 = address(stor8)
    else:
        stor11 = address(stor8)
        stor12 = address(stor7)
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args 0, 'start swap'
    require ext_code.size(arg1)
    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), '1'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args 0, 'end swap'
    stor5 = 0
    stor6 = 0
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    call stor11.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    call stor12.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
