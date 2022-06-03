contract main {




// =====================  Runtime code  =====================


#
#  - sub_c37bd6bb(?)
#
address stor0;
address stor1;
address stor2;
address stor3;

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

function sub_a6bafdcf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor1 != msg.sender:
        revert with 0, 'Caller is not moderator'
    stor2 = address(arg1)
    stor3 = address(arg2)
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
    return ext_call.return_data[0]
}

function sub_6118e8dc(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Not enough Memo balance to wrap'
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_03b4d187(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg6 == bool(arg6)
    require arg7 == bool(arg7)
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    if not arg7:
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg5 > ext_call.return_data[0]:
            revert with 0, 'Not enough Memo balance'
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        call 0x136acd46c134e8269052c62a67042d6bdedde3c9.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args arg5, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg5 <= 0:
            revert with 0, 'Not enough Memo balance to wrap'
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Caller is not moderator'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Not enough balance'
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg2
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
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, stor1, arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdraw(address(arg1), arg2);
}



}
