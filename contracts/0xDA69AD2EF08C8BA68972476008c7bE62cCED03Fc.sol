contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Caller is not moderator'
    stor0 = arg1
    emit OwnerSet(stor0, arg1);
}

function getTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Not enough balance'
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = stor1
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(this.address) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdraw(address(arg1), arg2);
}

function bond(address arg1, uint256 arg2, uint256 arg3, address arg4, bytes arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg6 == arg6
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Not enough Memo balance'
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] == arg2
    require ext_code.size(arg1)
    staticcall arg1.pendingPayoutFor(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.redeem(address arg1, bool arg2) with:
             gas gas_remaining wei
            args address(this.address), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xc669dc61af974fdf50758d95306e4083d36f1430)
    call 0xc669dc61af974fdf50758d95306e4083d36f1430.ZapIn(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, bytes arg6, uint256 arg7, address arg8) with:
         gas gas_remaining wei
        args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, address(arg1), arg2, arg3, address(arg4), Array(len=arg5.length, data=arg5[all]), arg6, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function bondLp(address arg1, uint256 arg2, uint256 arg3, address arg4, bytes arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg6 == arg6
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Not enough Memo balance'
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] == arg2
    require ext_code.size(arg1)
    staticcall arg1.pendingPayoutFor(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        mem[(6 * ceil32(return_data.size)) + 420 len arg5.length] = arg5[all]
        mem[(6 * ceil32(return_data.size)) + arg5.length + 420] = 0
        require ext_code.size(0xc669dc61af974fdf50758d95306e4083d36f1430)
        call 0xc669dc61af974fdf50758d95306e4083d36f1430.ZapInLp(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, bytes arg6, bool arg7, uint256 arg8, address arg9) with:
             gas gas_remaining wei
            args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, address(arg1), arg2, arg3, address(arg4), 288, 0, arg6, this.address, arg5.length, arg5[all], mem[(6 * ceil32(return_data.size)) + arg5.length + 420 len ceil32(arg5.length) - arg5.length]
    else:
        require ext_code.size(arg1)
        call arg1.redeem(address arg1, bool arg2) with:
             gas gas_remaining wei
            args address(this.address), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 420 len arg5.length] = arg5[all]
        mem[(7 * ceil32(return_data.size)) + arg5.length + 420] = 0
        require ext_code.size(0xc669dc61af974fdf50758d95306e4083d36f1430)
        call 0xc669dc61af974fdf50758d95306e4083d36f1430.ZapInLp(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, bytes arg6, bool arg7, uint256 arg8, address arg9) with:
             gas gas_remaining wei
            args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, address(arg1), arg2, arg3, address(arg4), 288, 0, arg6, this.address, arg5.length, arg5[all], mem[(7 * ceil32(return_data.size)) + arg5.length + 420 len ceil32(arg5.length) - arg5.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}



}
