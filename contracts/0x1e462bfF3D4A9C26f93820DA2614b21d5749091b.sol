contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function destory() {
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(this.address)
}

function _fallback() payable {
  stop
}

function sub_97ce24ff(?) {
    require calldata.size - 4 >= 64
    if 10000 * arg1 / 10000 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    require -arg2 + 10000
    if (10000 * arg1 / -arg2 + 10000) + 1 < 10000 * arg1 / -arg2 + 10000:
        revert with 0, 'ds-math-add-overflow'
    return arg1, (10000 * arg1 / -arg2 + 10000) + 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    stor0 = arg1
}

function sub_701e4aa4(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args arg2, arg3, address(this.address), Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a13f86c0(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.borrowIndex() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.exchangeRateStored() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_d38ab34a(?) {
    require calldata.size - 4 >= 128
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    if not arg3:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg4:
        else:
            require return_data.size >= 32
    else:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg4:
        else:
            require return_data.size >= 32
}

function sub_b8e7f485(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.borrowBalanceStored(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0], 0, 0
    require ext_code.size(arg1)
    call arg1.borrowIndex() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_05f72f39(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].accrueInterest() with:
             gas gas_remaining wei
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function sub_6cb93f7c(?) {
    require calldata.size - 4 >= 64
    mem[96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getAssetsIn(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg2) << 64
    require mem[96 len 4], address(arg2) << 64 <= 4294967296
    require mem[96 len 4], address(arg2) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg2) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg2) << 64 + (32 * mem[mem[96 len 4], address(arg2) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg2) << 64 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    idx = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        call mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].accrueInterest() with:
             gas gas_remaining wei
        mem[(32 * _7) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function sub_9c6abbff(?) {
    require calldata.size - 4 >= 160
    if arg1:
        if 10000 * arg4 / 10000 != arg4:
            revert with 0, 'ds-math-mul-overflow'
        if arg3 - arg1 > arg3:
            revert with 0, 'ds-math-sub-underflow'
        if not arg4:
            require arg3 - arg1
            if (0 / arg3 - arg1) - (10000 * arg4) > 0 / arg3 - arg1:
                revert with 0, 'ds-math-sub-underflow'
            require -arg5 + 10000
            if ((0 / arg3 - arg1) - (10000 * arg4) / -arg5 + 10000) + 1 < (0 / arg3 - arg1) - (10000 * arg4) / -arg5 + 10000:
                revert with 0, 'ds-math-add-overflow'
            return (((0 / arg3 - arg1) - (10000 * arg4) / -arg5 + 10000) + 1)
        require arg4
        if arg3 * arg4 / arg4 != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if 10000 * arg3 * arg4 / 10000 != arg3 * arg4:
            revert with 0, 'ds-math-mul-overflow'
        require arg3 - arg1
        if (10000 * arg3 * arg4 / arg3 - arg1) - (10000 * arg4) > 10000 * arg3 * arg4 / arg3 - arg1:
            revert with 0, 'ds-math-sub-underflow'
        require -arg5 + 10000
        if ((10000 * arg3 * arg4 / arg3 - arg1) - (10000 * arg4) / -arg5 + 10000) + 1 < (10000 * arg3 * arg4 / arg3 - arg1) - (10000 * arg4) / -arg5 + 10000:
            revert with 0, 'ds-math-add-overflow'
        return (((10000 * arg3 * arg4 / arg3 - arg1) - (10000 * arg4) / -arg5 + 10000) + 1)
    if 10000 * arg3 / 10000 != arg3:
        revert with 0, 'ds-math-mul-overflow'
    if arg4 - arg2 > arg4:
        revert with 0, 'ds-math-sub-underflow'
    if not arg4:
        require arg4 - arg2
        if (0 / arg4 - arg2) - (10000 * arg3) > 0 / arg4 - arg2:
            revert with 0, 'ds-math-sub-underflow'
        require -arg5 + 10000
        if ((0 / arg4 - arg2) - (10000 * arg3) / -arg5 + 10000) + 1 < (0 / arg4 - arg2) - (10000 * arg3) / -arg5 + 10000:
            revert with 0, 'ds-math-add-overflow'
        return (((0 / arg4 - arg2) - (10000 * arg3) / -arg5 + 10000) + 1)
    require arg4
    if arg3 * arg4 / arg4 != arg3:
        revert with 0, 'ds-math-mul-overflow'
    if 10000 * arg3 * arg4 / 10000 != arg3 * arg4:
        revert with 0, 'ds-math-mul-overflow'
    require arg4 - arg2
    if (10000 * arg3 * arg4 / arg4 - arg2) - (10000 * arg3) > 10000 * arg3 * arg4 / arg4 - arg2:
        revert with 0, 'ds-math-sub-underflow'
    require -arg5 + 10000
    if ((10000 * arg3 * arg4 / arg4 - arg2) - (10000 * arg3) / -arg5 + 10000) + 1 < (10000 * arg3 * arg4 / arg4 - arg2) - (10000 * arg3) / -arg5 + 10000:
        revert with 0, 'ds-math-add-overflow'
    return (((10000 * arg3 * arg4 / arg4 - arg2) - (10000 * arg3) / -arg5 + 10000) + 1)
}

function sub_66283794(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg3.length) + 160] = 0
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg4:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _48 = mem[(32 * idx) + 128]
            require idx < arg1.length
            require idx < arg3.length
            if mem[(32 * idx) + 140 len 20] == stor1:
                _61 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg3.length) + 160] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg3.length) + 164] = _61
                require ext_code.size(address(_48))
                call address(_48).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _61
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call arg2 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            else:
                _58 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg3.length) + 164] = arg2
                mem[(32 * arg1.length) + (32 * arg3.length) + 196] = _58
                require ext_code.size(address(_48))
                call address(_48).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), _58
                mem[(32 * arg1.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        require arg3.length - 1 < arg3.length
        call arg2 with:
           value mem[(32 * arg3.length - 1) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _50 = mem[(32 * idx) + 128]
            require idx < arg1.length
            require idx < arg3.length
            if mem[(32 * idx) + 140 len 20] == stor1:
                _67 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg3.length) + 160] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + (32 * arg3.length) + 164] = _67
                require ext_code.size(address(_50))
                call address(_50).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args _67
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call arg2 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            else:
                _64 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg3.length) + 164] = arg2
                mem[(32 * arg1.length) + (32 * arg3.length) + 196] = _64
                require ext_code.size(address(_50))
                call address(_50).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), _64
                mem[(32 * arg1.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            idx = idx + 1
            continue 
}

function sub_1750699e(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_b9103bf3(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_d053452f(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_df94108d(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_e2c2fa31(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function babyCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function complusV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 234 len 26]
    require arg4.length >= 416
    if mem[512]:
        require arg4.length >= 384
        _30 = mem[160]
        require ext_code.size(mem[300 len 20])
        call mem[300 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[160]), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + 160] = mem[140 len 20]
        require 0, 416 >= 32
        mem[ceil32(arg4.length) + 740 len ceil32(0, 416)] = mem[ceil32(arg4.length) + 160 len ceil32(0, 416)]
        require ext_code.size(address(_30))
        call address(_30).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + 580 len 0, 416 + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg4.length >= 288
        if not arg2:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg3, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg3 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if mem[300 len 20] != stor1:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[224]), arg2, mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0x734552433230207472616e7366657220616d6f756e7420657863656564732062616c616e6365,
                                mem[ceil32(arg4.length) + 234 len 26]
            else:
                require ext_code.size(mem[300 len 20])
                call mem[300 len 20].0x2e1a7d4d with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, address arg2) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(mem[224]), mem[268 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(mem[268 len 20])
        staticcall mem[268 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[268 len 20])
        call mem[268 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[332 len 20])
        if mem[332 len 20] == stor1:
            call mem[332 len 20].0xd0e30db0 with:
               value mem[384] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call mem[332 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[128]), mem[384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    require arg5.length >= 416
    _8 = mem[288]
    _9 = mem[320]
    _10 = mem[352]
    _11 = mem[384]
    _13 = mem[448]
    _14 = mem[480]
    _15 = mem[512]
    mem[ceil32(arg5.length) + 128] = 2
    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    mem[ceil32(arg5.length) + 160] = address(_9)
    require 1 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    mem[ceil32(arg5.length) + 192] = address(_8)
    if not _15:
        mem[ceil32(arg5.length) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        if not arg3:
            mem[ceil32(arg5.length) + 228] = arg4
            mem[ceil32(arg5.length) + 260] = 64
            mem[ceil32(arg5.length) + 292] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
            mem[ceil32(arg5.length) + 324 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
            require ext_code.size(arg2)
            staticcall arg2.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[ceil32(arg5.length) + 228 len (32 * Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg5.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg5.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _287 = mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg4) >> 32
            require mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg4) >> 32 + ceil32(arg5.length) + 224] <= 4294967296 and mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg4) >> 32 + ceil32(arg5.length) + 224]) + 32 <= return_data.size
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg4) >> 32 + ceil32(arg5.length) + 224]
            _296 = mem[_287 + ceil32(arg5.length) + 224]
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 256 len floor32(mem[_287 + ceil32(arg5.length) + 224])] = mem[_287 + ceil32(arg5.length) + 256 len floor32(mem[_287 + ceil32(arg5.length) + 224])]
            require 0 < mem[ceil32(arg5.length) + ceil32(return_data.size) + 224]
            require arg5.length >= 416
            _546 = mem[288]
            _547 = mem[320]
            _548 = mem[352]
            _549 = mem[384]
            _550 = mem[416]
            _551 = mem[448]
            _552 = mem[480]
            _553 = mem[512]
            mem[(32 * _296) + ceil32(arg5.length) + ceil32(return_data.size) + 288] = mem[140 len 20]
            mem[(32 * _296) + ceil32(arg5.length) + ceil32(return_data.size) + 320] = mem[172 len 20]
            mem[(32 * _296) + ceil32(arg5.length) + ceil32(return_data.size) + 352] = mem[204 len 20]
            mem[(32 * _296) + ceil32(arg5.length) + ceil32(return_data.size) + 384] = mem[236 len 20]
            mem[(32 * _296) + ceil32(arg5.length) + ceil32(return_data.size) + 416] = mem[268 len 20]
            require ext_code.size(arg1)
            if not mem[512]:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg3, arg4, address(this.address), 128, 416, mem[(32 * _296) + ceil32(arg5.length) + ceil32(return_data.size) + 288 len 160], address(_546), address(_547), address(_548), mem[ceil32(arg5.length) + ceil32(return_data.size) + 256], _550, _551, _552, bool(_553)
            else:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg3, arg4, address(this.address), 128, 416, mem[(32 * _296) + ceil32(arg5.length) + ceil32(return_data.size) + 288 len 160], address(_546), address(_547), address(_548), _549, mem[ceil32(arg5.length) + ceil32(return_data.size) + 256], _551, _552, bool(_553)
        else:
            mem[ceil32(arg5.length) + 228] = arg3
            mem[ceil32(arg5.length) + 260] = 64
            mem[ceil32(arg5.length) + 292] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
            mem[ceil32(arg5.length) + 324 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
            require ext_code.size(arg2)
            staticcall arg2.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[ceil32(arg5.length) + 228 len (32 * Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg5.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg5.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _289 = mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg5.length) + 224] <= 4294967296 and mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg5.length) + 224]) + 32 <= return_data.size
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg5.length) + 224]
            _297 = mem[_289 + ceil32(arg5.length) + 224]
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 256 len floor32(mem[_289 + ceil32(arg5.length) + 224])] = mem[_289 + ceil32(arg5.length) + 256 len floor32(mem[_289 + ceil32(arg5.length) + 224])]
            require 0 < mem[ceil32(arg5.length) + ceil32(return_data.size) + 224]
            require arg5.length >= 416
            _559 = mem[288]
            _560 = mem[320]
            _561 = mem[352]
            _562 = mem[384]
            _563 = mem[416]
            _564 = mem[448]
            _565 = mem[480]
            _566 = mem[512]
            mem[(32 * _297) + ceil32(arg5.length) + ceil32(return_data.size) + 288] = mem[140 len 20]
            mem[(32 * _297) + ceil32(arg5.length) + ceil32(return_data.size) + 320] = mem[172 len 20]
            mem[(32 * _297) + ceil32(arg5.length) + ceil32(return_data.size) + 352] = mem[204 len 20]
            mem[(32 * _297) + ceil32(arg5.length) + ceil32(return_data.size) + 384] = mem[236 len 20]
            mem[(32 * _297) + ceil32(arg5.length) + ceil32(return_data.size) + 416] = mem[268 len 20]
            require ext_code.size(arg1)
            if not mem[512]:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg3, arg4, address(this.address), 128, 416, mem[(32 * _297) + ceil32(arg5.length) + ceil32(return_data.size) + 288 len 160], address(_559), address(_560), address(_561), mem[ceil32(arg5.length) + ceil32(return_data.size) + 256], _563, _564, _565, bool(_566)
            else:
                call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg3, arg4, address(this.address), 128, 416, mem[(32 * _297) + ceil32(arg5.length) + ceil32(return_data.size) + 288 len 160], address(_559), address(_560), address(_561), _562, mem[ceil32(arg5.length) + ceil32(return_data.size) + 256], _564, _565, bool(_566)
    else:
        mem[ceil32(arg5.length) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg5.length) + 228] = _11
        mem[ceil32(arg5.length) + 260] = 64
        mem[ceil32(arg5.length) + 292] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        mem[ceil32(arg5.length) + 324 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
        require ext_code.size(arg2)
        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(arg5.length) + 228 len (32 * Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg5.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg5.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        _291 = mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, _11) >> 32
        require mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, _11) >> 32 <= 4294967296
        require mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, _11) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, _11) >> 32 + ceil32(arg5.length) + 224] <= 4294967296 and mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, _11) >> 32 + (32 * mem[mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, _11) >> 32 + ceil32(arg5.length) + 224]) + 32 <= return_data.size
        mem[ceil32(arg5.length) + ceil32(return_data.size) + 224] = mem[mem[ceil32(arg5.length) + 224 len 4], Mask(224, 32, _11) >> 32 + ceil32(arg5.length) + 224]
        _298 = mem[_291 + ceil32(arg5.length) + 224]
        mem[ceil32(arg5.length) + ceil32(return_data.size) + 256 len floor32(mem[_291 + ceil32(arg5.length) + 224])] = mem[_291 + ceil32(arg5.length) + 256 len floor32(mem[_291 + ceil32(arg5.length) + 224])]
        require 1 < mem[ceil32(arg5.length) + ceil32(return_data.size) + 224]
        _536 = mem[ceil32(arg5.length) + ceil32(return_data.size) + 288]
        require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        mem[ceil32(arg5.length) + 160] = address(_8)
        require 1 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        mem[ceil32(arg5.length) + 192] = address(_10)
        mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        if not _13:
            mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 260] = _14
            mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 324] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
            mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 356 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
            require ext_code.size(arg2)
            staticcall arg2.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 260 len (32 * Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _779 = mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _14) >> 32
            require mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _14) >> 32 <= 4294967296
            require mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _14) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _14) >> 32 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _14) >> 32 + (32 * mem[mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _14) >> 32 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
            mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _14) >> 32 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256]
            _785 = mem[_779 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256]
            mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_779 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256])] = mem[_779 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 288 len floor32(mem[_779 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256])]
            require 0 < mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 256]
            require arg5.length >= 416
            if arg3:
                _937 = mem[320]
                _938 = mem[352]
                _939 = mem[384]
                _940 = mem[416]
                _941 = mem[448]
                _942 = mem[480]
                _943 = mem[512]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320] = mem[140 len 20]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 352] = mem[172 len 20]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 384] = mem[204 len 20]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 416] = mem[236 len 20]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 448] = mem[268 len 20]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 480] = mem[300 len 20]
                require ext_code.size(arg1)
                if not mem[512]:
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _536, arg4, address(this.address), 128, 416, mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320 len 192], address(_937), address(_938), mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 288], _940, _941, _942, bool(_943)
                else:
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _536, arg4, address(this.address), 128, 416, mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320 len 192], address(_937), address(_938), _939, mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 288], _941, _942, bool(_943)
            else:
                _950 = mem[320]
                _951 = mem[352]
                _952 = mem[384]
                _953 = mem[416]
                _954 = mem[448]
                _955 = mem[480]
                _956 = mem[512]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320] = mem[140 len 20]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 352] = mem[172 len 20]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 384] = mem[204 len 20]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 416] = mem[236 len 20]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 448] = mem[268 len 20]
                mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 480] = mem[300 len 20]
                require ext_code.size(arg1)
                if not mem[512]:
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg3, _536, address(this.address), 128, 416, mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320 len 192], address(_950), address(_951), mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 288], _953, _954, _955, bool(_956)
                else:
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg3, _536, address(this.address), 128, 416, mem[(32 * _785) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320 len 192], address(_950), address(_951), _952, mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 288], _954, _955, bool(_956)
        else:
            mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 260] = _13
            mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 324] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
            mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 356 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
            require ext_code.size(arg2)
            staticcall arg2.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 260 len (32 * Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _781 = mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _13) >> 32
            require mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _13) >> 32 <= 4294967296
            require mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _13) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _13) >> 32 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _13) >> 32 + (32 * mem[mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _13) >> 32 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
            mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, _13) >> 32 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256]
            _786 = mem[_781 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256]
            mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_781 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256])] = mem[_781 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 288 len floor32(mem[_781 + (32 * _298) + ceil32(arg5.length) + ceil32(return_data.size) + 256])]
            require 0 < mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 256]
            require arg5.length >= 416
            if arg3:
                _963 = mem[320]
                _964 = mem[352]
                _965 = mem[384]
                _966 = mem[416]
                _967 = mem[448]
                _968 = mem[480]
                _969 = mem[512]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320] = mem[140 len 20]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 352] = mem[172 len 20]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 384] = mem[204 len 20]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 416] = mem[236 len 20]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 448] = mem[268 len 20]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 480] = mem[300 len 20]
                require ext_code.size(arg1)
                if not mem[512]:
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _536, arg4, address(this.address), 128, 416, mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320 len 192], address(_963), address(_964), mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 288], _966, _967, _968, bool(_969)
                else:
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _536, arg4, address(this.address), 128, 416, mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320 len 192], address(_963), address(_964), _965, mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 288], _967, _968, bool(_969)
            else:
                _976 = mem[320]
                _977 = mem[352]
                _978 = mem[384]
                _979 = mem[416]
                _980 = mem[448]
                _981 = mem[480]
                _982 = mem[512]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320] = mem[140 len 20]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 352] = mem[172 len 20]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 384] = mem[204 len 20]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 416] = mem[236 len 20]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 448] = mem[268 len 20]
                mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 480] = mem[300 len 20]
                require ext_code.size(arg1)
                if not mem[512]:
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg3, _536, address(this.address), 128, 416, mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320 len 192], address(_976), address(_977), mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 288], _979, _980, _981, bool(_982)
                else:
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg3, _536, address(this.address), 128, 416, mem[(32 * _786) + (32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320 len 192], address(_976), address(_977), _978, mem[(32 * _298) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 288], _980, _981, bool(_982)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
