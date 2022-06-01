contract main {




// =====================  Runtime code  =====================


#
#  - impermaxBorrow(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - impermaxRedeem(address arg1, uint256 arg2, bytes arg3)
#  - sub_f74e2b3b(?)
#  - _fallback()
#
uint32 stor0;
address owner;
uint256 stor0;

function owner() {
    return address(owner)
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function skim(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(owner) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
    else:
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
        call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    return ext_call.return_data[0]
}



}
