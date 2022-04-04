contract main {




// =====================  Runtime code  =====================


const balanceOf = eth.balance(this.address)


address stor1;
address stor2;
address _GetOwnerAddress;
address _routerAddress;
uint256 stor6;
address pcsRouterAddress;
uint256 _GetSlippageAmount;
mapping of uint8 stor11;
uint256 stor14;
address _GetToAddress;

function _GetOwnerAddress() {
    return _GetOwnerAddress
}

function _GetToAddress() {
    return _GetToAddress
}

function admins(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function pcsRouter() {
    return pcsRouterAddress
}

function _GetSlippageAmount() {
    return _GetSlippageAmount
}

function _routerAddress() {
    return _routerAddress
}

function _fallback() payable {
  stop
}

function _SetToAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not stor11[address(msg.sender)]:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    _GetToAddress = arg1
}

function _SetSlippage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor11[address(msg.sender)]:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    _GetSlippageAmount = arg1
}

function _AddAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not stor11[address(msg.sender)]:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor11[address(arg1)] = 1
}

function _RemoveAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not stor11[address(msg.sender)]:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg1 != msg.sender
    stor11[address(arg1)] = 0
}

function _GetTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _WithdrawAllBNBs() {
    if not stor11[address(msg.sender)]:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _WithdrawBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor11[address(msg.sender)]:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _ApproveToken(address arg1) {
    require calldata.size - 4 >= 32
    if not stor11[address(msg.sender)]:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args _routerAddress, stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _bnbDistribution(address[] arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor11[address(msg.sender)]:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        call this.address with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function _TokensDistribution(address arg1, address[] arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if not stor11[address(msg.sender)]:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 164] = arg3
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function SellingWithMaxLimit(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    mem[0] = msg.sender
    mem[32] = 11
    if stor11[address(msg.sender)]:
        mem[96] = 2
        mem[64] = 192
        mem[160] = stor2
        mem[128] = arg2
        idx = 1
        while idx <= arg3:
            mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[196] = arg1
            mem[228] = _GetSlippageAmount
            mem[292] = _GetToAddress
            mem[324] = stor14
            mem[260] = 160
            mem[356] = 2
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(pcsRouterAddress)
            call pcsRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + -mem[64] + 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[96] = 2
        mem[64] = 192
        mem[160] = stor2
        mem[128] = arg2
        idx = 1
        while idx <= arg3:
            _23 = mem[64]
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = _GetSlippageAmount
            mem[mem[64] + 100] = _GetToAddress
            mem[mem[64] + 132] = stor14
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(pcsRouterAddress)
            call pcsRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _23 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function bnbBuyWithSpecifiedAmount(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    mem[0] = msg.sender
    mem[32] = 11
    if stor11[address(msg.sender)]:
        mem[96] = 2
        mem[64] = 192
        mem[128] = stor2
        mem[160] = arg2
        idx = 1
        while idx <= arg3:
            mem[192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[196] = _GetSlippageAmount
            mem[260] = _GetToAddress
            mem[292] = stor14
            mem[228] = 128
            mem[324] = 2
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 164] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(pcsRouterAddress)
            call pcsRouterAddress.mem[mem[64] len 4] with:
               value arg1 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + -mem[64] + 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[96] = 2
        mem[64] = 192
        mem[128] = stor2
        mem[160] = arg2
        idx = 1
        while idx <= arg3:
            _23 = mem[64]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _GetSlippageAmount
            mem[mem[64] + 68] = _GetToAddress
            mem[mem[64] + 100] = stor14
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 164] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(pcsRouterAddress)
            call pcsRouterAddress.mem[mem[64] len 4] with:
               value arg1 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _23 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function busdBuyWithSpecifiedAmount(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    mem[0] = msg.sender
    mem[32] = 11
    if stor11[address(msg.sender)]:
        mem[96] = 2
        mem[64] = 192
        mem[128] = stor1
        mem[160] = arg2
        idx = 1
        while idx <= arg3:
            mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[196] = arg1
            mem[228] = _GetSlippageAmount
            mem[292] = _GetToAddress
            mem[324] = stor14
            mem[260] = 160
            mem[356] = 2
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(pcsRouterAddress)
            call pcsRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + -mem[64] + 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[96] = 2
        mem[64] = 192
        mem[128] = stor1
        mem[160] = arg2
        idx = 1
        while idx <= arg3:
            _23 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = _GetSlippageAmount
            mem[mem[64] + 100] = _GetToAddress
            mem[mem[64] + 132] = stor14
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 196] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(pcsRouterAddress)
            call pcsRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _23 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function bnbBuyCustomRoute(uint256 arg1, address arg2, uint256 arg3, address[] arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[0] = msg.sender
    if stor11[address(msg.sender)]:
        mem[(32 * arg4.length) + 128] = 2
        mem[64] = (32 * arg4.length) + 224
        mem[(32 * arg4.length) + 160] = stor2
        mem[(32 * arg4.length) + 192] = arg2
        idx = 0
        while idx < arg4.length:
            s = 1
            while s <= arg3:
                require idx < mem[96]
                _45 = mem[(32 * idx) + 128]
                _46 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _GetSlippageAmount
                mem[mem[64] + 68] = address(_45)
                mem[mem[64] + 100] = stor14
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[(32 * arg4.length) + 128]
                _48 = mem[(32 * arg4.length) + 128]
                idx = 0
                while idx < 32 * _48:
                    mem[mem[64] + idx + 164] = mem[(32 * arg4.length) + idx + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(pcsRouterAddress)
                call pcsRouterAddress.mem[mem[64] len 4] with:
                   value arg1 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _48) + _46 + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    else:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[(32 * arg4.length) + 128] = 2
        mem[(32 * arg4.length) + 160] = stor2
        mem[(32 * arg4.length) + 192] = arg2
        idx = 0
        while idx < arg4.length:
            s = 1
            while s <= arg3:
                require idx < arg4.length
                _49 = mem[(32 * idx) + 128]
                mem[(32 * arg4.length) + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg4.length) + 228] = _GetSlippageAmount
                mem[(32 * arg4.length) + 292] = address(_49)
                mem[(32 * arg4.length) + 324] = stor14
                mem[(32 * arg4.length) + 260] = 128
                mem[(32 * arg4.length) + 356] = 2
                idx = 0
                while idx < 64:
                    mem[(32 * arg4.length) + idx + 388] = mem[(32 * arg4.length) + idx + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(pcsRouterAddress)
                call pcsRouterAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value arg1 wei
                     gas gas_remaining wei
                    args _GetSlippageAmount, Array(len=2, data=mem[(32 * arg4.length) + 388 len 64]), address(_49), stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
}

function busdBuyCustomRoute(uint256 arg1, address arg2, uint256 arg3, address[] arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[0] = msg.sender
    if stor11[address(msg.sender)]:
        mem[(32 * arg4.length) + 128] = 2
        mem[64] = (32 * arg4.length) + 224
        mem[(32 * arg4.length) + 160] = stor1
        mem[(32 * arg4.length) + 192] = arg2
        idx = 0
        while idx < arg4.length:
            s = 1
            while s <= arg3:
                require idx < mem[96]
                _45 = mem[(32 * idx) + 128]
                _46 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _GetSlippageAmount
                mem[mem[64] + 100] = address(_45)
                mem[mem[64] + 132] = stor14
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[(32 * arg4.length) + 128]
                _48 = mem[(32 * arg4.length) + 128]
                idx = 0
                while idx < 32 * _48:
                    mem[mem[64] + idx + 196] = mem[(32 * arg4.length) + idx + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(pcsRouterAddress)
                call pcsRouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _48) + _46 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    else:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[(32 * arg4.length) + 128] = 2
        mem[(32 * arg4.length) + 160] = stor1
        mem[(32 * arg4.length) + 192] = arg2
        idx = 0
        while idx < arg4.length:
            s = 1
            while s <= arg3:
                require idx < arg4.length
                _49 = mem[(32 * idx) + 128]
                mem[(32 * arg4.length) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(32 * arg4.length) + 228] = arg1
                mem[(32 * arg4.length) + 260] = _GetSlippageAmount
                mem[(32 * arg4.length) + 324] = address(_49)
                mem[(32 * arg4.length) + 356] = stor14
                mem[(32 * arg4.length) + 292] = 160
                mem[(32 * arg4.length) + 388] = 2
                idx = 0
                while idx < 64:
                    mem[(32 * arg4.length) + idx + 420] = mem[(32 * arg4.length) + idx + 160]
                    idx = idx + 32
                    continue 
                require ext_code.size(pcsRouterAddress)
                call pcsRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg1, _GetSlippageAmount, Array(len=2, data=mem[(32 * arg4.length) + 420 len 64]), address(_49), stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
}

function buyingWithMaxLimit(uint256 arg1, uint256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    mem[0] = msg.sender
    mem[32] = 11
    if stor11[address(msg.sender)]:
        mem[96] = 2
        mem[64] = 192
        mem[128] = stor2
        mem[160] = arg3
        idx = 1
        while idx <= arg4:
            _32 = mem[64]
            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 68] = _GetToAddress
            mem[mem[64] + 100] = stor14
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 164] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(pcsRouterAddress)
            call pcsRouterAddress.mem[mem[64] len 4] with:
               value arg1 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _32 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _60 = mem[_58]
            require mem[_58] <= 4294967296
            require mem[_58] + 32 <= return_data.size
            require mem[mem[_58] + _58] <= 4294967296 and mem[_58] + (32 * mem[mem[_58] + _58]) + 32 <= return_data.size
            mem[_58 + ceil32(return_data.size)] = mem[mem[_58] + _58]
            _66 = mem[_60 + _58]
            s = 0
            while s < 32 * _66:
                mem[_58 + ceil32(return_data.size) + s + 32] = mem[_60 + _58 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _66) + _58 + ceil32(return_data.size) + 32
            idx = idx + 1
            continue 
    else:
        if _GetOwnerAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[96] = 2
        mem[64] = 192
        mem[128] = stor2
        mem[160] = arg3
        idx = 1
        while idx <= arg4:
            _35 = mem[64]
            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 68] = _GetToAddress
            mem[mem[64] + 100] = stor14
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[mem[64] + s + 164] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(pcsRouterAddress)
            call pcsRouterAddress.mem[mem[64] len 4] with:
               value arg1 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _35 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _62 = mem[_59]
            require mem[_59] <= 4294967296
            require mem[_59] + 32 <= return_data.size
            require mem[mem[_59] + _59] <= 4294967296 and mem[_59] + (32 * mem[mem[_59] + _59]) + 32 <= return_data.size
            mem[_59 + ceil32(return_data.size)] = mem[mem[_59] + _59]
            _67 = mem[_62 + _59]
            s = 0
            while s < 32 * _67:
                mem[_59 + ceil32(return_data.size) + s + 32] = mem[_62 + _59 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _67) + _59 + ceil32(return_data.size) + 32
            idx = idx + 1
            continue 
}



}
