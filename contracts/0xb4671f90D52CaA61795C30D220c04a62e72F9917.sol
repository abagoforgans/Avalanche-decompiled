contract main {




// =====================  Runtime code  =====================


#
#  - execute(uint256 arg1, uint256 arg2)
#
address owner;
address sub_49bfcca1Address;
address lpAddress;
uint32 stor3;
address swapRouterAddress;
uint256 stor3;
array of address sub_93243509;
uint256 sub_1aedeabe;

function sub_1aedeabe(?) payable {
    return sub_1aedeabe
}

function lp() payable {
    return lpAddress
}

function sub_49bfcca1(?) payable {
    return sub_49bfcca1Address
}

function owner() payable {
    return owner
}

function sub_93243509(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_93243509.length
    return address(sub_93243509[arg1])
}

function swapRouter() payable {
    return address(swapRouterAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function lpBalance() payable {
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_39e324f0(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 > test266151307() or ceil32(32 * ('cd', 68).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(swapRouterAddress) = address(cd[4])
    sub_1aedeabe = cd[36]
    sub_93243509.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while sub_93243509.length > idx:
            uint256(sub_93243509[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 68).length) + 128 > idx:
            address(sub_93243509[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while sub_93243509.length > idx:
            uint256(sub_93243509[idx]) = 0
            idx = idx + 1
            continue 
    mem[ceil32(32 * ('cd', 68).length) + 97] = cd[36]
    mem[ceil32(32 * ('cd', 68).length) + 129] = 64
    idx = 0
    s = ceil32(32 * ('cd', 68).length) + 193
    t = 128
    while idx < ('cd', 68).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x47cae178: cd[36], Array(len=('cd', 68).length, data=mem[ceil32(32 * ('cd', 68).length) + 193 len 32 * ('cd', 68).length]), address(cd[4])
}

function sub_3282b76c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'SwapStrategyPOL::reduceLiquditiy:Invalid amount'
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(swapRouterAddress)
    require ext_code.size(lpAddress)
    staticcall lpAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(swapRouterAddress)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg1:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 132] = address(swapRouterAddress)
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] + arg1
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor3)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(lpAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] + arg1, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call lpAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] + arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] + arg1, 0) << 288)
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
        if block.timestamp > -601:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 296] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[(2 * ceil32(return_data.size)) + 328] = arg1
        mem[(2 * ceil32(return_data.size)) + 360] = 0
        mem[(2 * ceil32(return_data.size)) + 392] = 0
        mem[(2 * ceil32(return_data.size)) + 424] = this.address
        mem[(2 * ceil32(return_data.size)) + 456] = block.timestamp + 600
        require ext_code.size(address(swapRouterAddress))
        call address(swapRouterAddress).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args sub_49bfcca1Address, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1, 0, 0, address(this.address), block.timestamp + 600
        mem[(2 * ceil32(return_data.size)) + 260 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(4 * ceil32(return_data.size)) + 264] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 264] = this.address
        mem[(6 * ceil32(return_data.size)) + 296] = address(swapRouterAddress)
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(swapRouterAddress)
        mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        mem[(7 * ceil32(return_data.size)) + 296] = address(swapRouterAddress)
        mem[(7 * ceil32(return_data.size)) + 328] = 2 * ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 260] = 68
        mem[(7 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
        mem[(7 * ceil32(return_data.size)) + 360] = 32
        mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, address(swapRouterAddress), 2 * ext_call.return_data[0], 0
        mem[(7 * ceil32(return_data.size)) + 492] = 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
           funct Mask(32, 224, 0, address(swapRouterAddress), 2 * ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(swapRouterAddress), 2 * ext_call.return_data[0], 0) << 288)
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
            if block.timestamp > -601:
                revert with 0, 17
            idx = 0
            s = (7 * ceil32(return_data.size)) + 620
            t = 0
            while idx < sub_93243509.length:
                mem[s] = address(sub_93243509[t])
                idx = idx + 1
                s = s + 32
                t = t + 1
                continue 
            require ext_code.size(address(swapRouterAddress))
            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_93243509.length, mem[(7 * ceil32(return_data.size)) + 620 len 32 * sub_93243509.length]
        else:
            mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                if not mem[(7 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if block.timestamp > -601:
                revert with 0, 17
            idx = 0
            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621
            t = 0
            while idx < sub_93243509.length:
                mem[s] = address(sub_93243509[t])
                idx = idx + 1
                s = s + 32
                t = t + 1
                continue 
            require ext_code.size(address(swapRouterAddress))
            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_93243509.length, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621 len 32 * sub_93243509.length]
    else:
        mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if block.timestamp > -601:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg1
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = this.address
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = block.timestamp + 600
        require ext_code.size(address(swapRouterAddress))
        call address(swapRouterAddress).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args sub_49bfcca1Address, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, arg1, 0, 0, address(this.address), block.timestamp + 600
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(swapRouterAddress)
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(swapRouterAddress)
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(swapRouterAddress)
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 2 * ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(swapRouterAddress), 2 * ext_call.return_data[0], 0
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
           funct Mask(32, 224, 0, address(swapRouterAddress), 2 * ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(swapRouterAddress), 2 * ext_call.return_data[0], 0) << 288)
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
            if block.timestamp > -601:
                revert with 0, 17
            idx = 0
            s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621
            t = 0
            while idx < sub_93243509.length:
                mem[s] = address(sub_93243509[t])
                idx = idx + 1
                s = s + 32
                t = t + 1
                continue 
            require ext_code.size(address(swapRouterAddress))
            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_93243509.length, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621 len 32 * sub_93243509.length]
        else:
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if block.timestamp > -601:
                revert with 0, 17
            idx = 0
            s = (10 * ceil32(return_data.size)) + 622
            t = 0
            while idx < sub_93243509.length:
                mem[s] = address(sub_93243509[t])
                idx = idx + 1
                s = s + 32
                t = t + 1
                continue 
            require ext_code.size(address(swapRouterAddress))
            call address(swapRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_93243509.length, mem[(10 * ceil32(return_data.size)) + 622 len 32 * sub_93243509.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_49bfcca1Address)
    staticcall sub_49bfcca1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_49bfcca1Address)
    call sub_49bfcca1Address.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
