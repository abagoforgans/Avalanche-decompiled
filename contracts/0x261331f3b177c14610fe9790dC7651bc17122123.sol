contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_b9cb72c7(?) payable {
    staticcall stor0.getContractAddress(string arg1) with:
            gas gas_remaining wei
           args 'LIFEToken'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = 32
    mem[132] = 13
    mem[164] = 0x436f6e66696775726174696f6e00000000000000000000000000000000000000
    staticcall stor0.getContractAddress(string arg1) with:
            gas gas_remaining wei
           args 'Configuration'
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall address(ext_call.return_data[0]).getOperator(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AccessibleRegistry: caller must be operator'
    mem[(2 * ceil32(return_data.size)) + 100] = 32
    mem[(2 * ceil32(return_data.size)) + 132] = 9
    mem[(2 * ceil32(return_data.size)) + 164] = 0x4c494645546f6b656e0000000000000000000000000000000000000000000000
    staticcall stor0.getContractAddress(string arg1) with:
            gas gas_remaining wei
           args 'LIFEToken'
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'GeneFriendNetWorkWallet: Wallet has not enough amount to transfer'
    mem[(6 * ceil32(return_data.size)) + 100] = 32
    mem[(6 * ceil32(return_data.size)) + 132] = 9
    mem[(6 * ceil32(return_data.size)) + 164] = 0x4c494645546f6b656e0000000000000000000000000000000000000000000000
    staticcall stor0.getContractAddress(string arg1) with:
            gas gas_remaining wei
           args 'LIFEToken'
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 132] = arg1
    mem[(7 * ceil32(return_data.size)) + 164] = arg2
    mem[(7 * ceil32(return_data.size)) + 96] = 68
    mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(7 * ceil32(return_data.size)) + 196] = 32
    mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
    mem[(7 * ceil32(return_data.size)) + 328] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if not ext_call.return_data[0]:
            emit Transfer(arg2, arg1);
        require ext_call.return_data[0] >= 32
        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
        if not mem[(7 * ceil32(return_data.size)) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Transfer(arg2, arg1);
}

function sub_b0a95c25(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = 32
    mem[132] = 13
    mem[164] = 0x436f6e66696775726174696f6e00000000000000000000000000000000000000
    staticcall stor0.getContractAddress(string arg1) with:
            gas gas_remaining wei
           args 'Configuration'
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall address(ext_call.return_data[0]).getOperator(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AccessibleRegistry: caller must be operator'
    mem[(2 * ceil32(return_data.size)) + 100] = 32
    mem[(2 * ceil32(return_data.size)) + 132] = 9
    mem[(2 * ceil32(return_data.size)) + 164] = 0x4c494645546f6b656e0000000000000000000000000000000000000000000000
    staticcall stor0.getContractAddress(string arg1) with:
            gas gas_remaining wei
           args 'LIFEToken'
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'GeneFriendNetWorkWallet: Wallet has not enough amount to transfer'
    mem[(6 * ceil32(return_data.size)) + 100] = 32
    mem[(6 * ceil32(return_data.size)) + 132] = 9
    mem[(6 * ceil32(return_data.size)) + 164] = 0x4c494645546f6b656e0000000000000000000000000000000000000000000000
    staticcall stor0.getContractAddress(string arg1) with:
            gas gas_remaining wei
           args 'LIFEToken'
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 132] = address(arg1)
    mem[(7 * ceil32(return_data.size)) + 164] = arg3
    mem[(7 * ceil32(return_data.size)) + 96] = 68
    mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(7 * ceil32(return_data.size)) + 196] = 32
    mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0
    mem[(7 * ceil32(return_data.size)) + 328] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
            if not mem[(7 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(arg1))
    call address(arg1).0x1a58e6a0 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x4184d657: address(arg1), address(arg2), arg3
}



}
