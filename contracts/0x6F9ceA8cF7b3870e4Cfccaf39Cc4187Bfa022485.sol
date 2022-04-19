contract main {




// =====================  Runtime code  =====================


#
#  - executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5)
#  - _fallback()
#
address owner;
address stor1;
uint16 stor2;
uint16 referralCode; offset 160
address sub_0834899eAddress;

function sub_0834899e(?) {
    return sub_0834899eAddress
}

function owner() {
    return owner
}

function referralCode() {
    return referralCode
}

function renounceOwnership() {
    revert with 0, 'can't renounceOwnership'
}

function withdrawMatic(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'MATIC_TRANSFER_FAILED'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
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
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_5860ee3c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'not enough balance'
    mem[ceil32(return_data.size) + 132] = address(arg2)
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
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
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_05c3786d(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(stor1)
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUserAccountData(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[ceil32(return_data.size) + 96 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[160] >= 10^18:
        revert with 0, 'no'
    mem[(2 * ceil32(return_data.size)) + 96] = 1
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 160] = 1
    mem[(2 * ceil32(return_data.size)) + 192] = arg4
    mem[(2 * ceil32(return_data.size)) + 224] = 1
    mem[(2 * ceil32(return_data.size)) + 256] = 0
    require ext_code.size(stor1)
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 320] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 352] = address(arg2)
    mem[(4 * ceil32(return_data.size)) + 384] = address(arg3)
    mem[(4 * ceil32(return_data.size)) + 416] = arg4
    mem[(4 * ceil32(return_data.size)) + 288] = (5 * ceil32(return_data.size)) + 128
    mem[(4 * ceil32(return_data.size)) + 448] = 0xab9c4b5d00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 452] = this.address
    mem[(4 * ceil32(return_data.size)) + 484] = 224
    mem[(4 * ceil32(return_data.size)) + 676] = 1
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 708
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 516] = 288
    mem[(4 * ceil32(return_data.size)) + 740] = mem[(2 * ceil32(return_data.size)) + 160]
    mem[(4 * ceil32(return_data.size)) + 772 len 32 * mem[(2 * ceil32(return_data.size)) + 160]] = mem[(2 * ceil32(return_data.size)) + 192 len 32 * mem[(2 * ceil32(return_data.size)) + 160]]
    mem[(4 * ceil32(return_data.size)) + 548] = (32 * mem[(2 * ceil32(return_data.size)) + 160]) + 320
    _317 = mem[(2 * ceil32(return_data.size)) + 224]
    mem[(4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 160]) + 772] = mem[(2 * ceil32(return_data.size)) + 224]
    mem[(4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 160]) + 804 len 32 * _317] = mem[(2 * ceil32(return_data.size)) + 256 len 32 * _317]
    mem[(4 * ceil32(return_data.size)) + 580] = this.address
    mem[(4 * ceil32(return_data.size)) + 612] = (32 * mem[(2 * ceil32(return_data.size)) + 160]) + (32 * _317) + 352
    mem[(4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 160]) + (32 * _317) + 804] = (5 * ceil32(return_data.size)) + 128
    mem[(4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 160]) + (32 * _317) + 836 len ceil32(5 * ceil32(return_data.size)) + 4] = mem[(4 * ceil32(return_data.size)) + 320 len ceil32(5 * ceil32(return_data.size)) + 4]
    if ceil32(5 * ceil32(return_data.size)) + 4 > (5 * ceil32(return_data.size)) + 128:
        mem[(10 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 160]) + (32 * _317) + 964] = 0
    mem[(4 * ceil32(return_data.size)) + 644] = referralCode
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).flashLoan(address rg1, address[] rg2, uint256[] rg3, uint256[] rg4, address rg5, bytes rg6, uint16 rg7) with:
         gas gas_remaining wei
        args address(this.address), 224, 288, mem[(4 * ceil32(return_data.size)) + 548], address(this.address), mem[(4 * ceil32(return_data.size)) + 612], stor2, 1, mem[(4 * ceil32(return_data.size)) + 708 len (32 * mem[(2 * ceil32(return_data.size)) + 160]) + (32 * _317) + 96], (5 * ceil32(return_data.size)) + 128, mem[(4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 160]) + (32 * _317) + 836 len ceil32(5 * ceil32(return_data.size)) + 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 452] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 484] = owner
    mem[(6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 448] = 68
    mem[(6 * ceil32(return_data.size)) + 480 len 4] = unknown_0xa9059cbb(?????)
    mem[(6 * ceil32(return_data.size)) + 548] = 32
    mem[(6 * ceil32(return_data.size)) + 580] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg3)):
        revert with 0, 'Address: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 612 len 96] = 0, owner, ext_call.return_data[0], 0
    mem[(6 * ceil32(return_data.size)) + 680] = 0
    call address(arg3) with:
       funct Mask(32, 224, 0, owner, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, owner, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(6 * ceil32(return_data.size)) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 644] == bool(mem[(6 * ceil32(return_data.size)) + 644])
            if not mem[(6 * ceil32(return_data.size)) + 644]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
