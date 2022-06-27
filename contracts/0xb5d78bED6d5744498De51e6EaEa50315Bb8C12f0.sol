contract main {




// =====================  Runtime code  =====================


#
#  - close(uint256 arg1)
#  - buy(uint256 arg1, uint256 arg2)
#  - _fallback()
#
address wethAddress;
uint256 d;
address sub_8ba08646Address;
mapping of struct deals;

function deals(uint256 arg1) {
    require calldata.size - 4 >= 32
    return deals[arg1].field_0, 
           deals[arg1].field_256,
           deals[arg1].field_512,
           deals[arg1].field_768,
           deals[arg1].field_1024,
           deals[arg1].field_1280,
           deals[arg1].field_1536,
           deals[arg1].field_1792,
           bool(deals[arg1].field_2048),
           deals[arg1].field_2056
}

function weth() {
    return wethAddress
}

function d() {
    return d
}

function sub_8ba08646(?) {
    return sub_8ba08646Address
}

function sub_8eca84dd(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg8 == address(arg8)
    require arg6 > block.timestamp
    if arg3 < arg4:
        revert with 0, 'min error'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 <= 0:
            revert with 0, 'minimum too small'
    else:
        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if not 10^ext_call.return_data[0]:
                revert with 0, 18
            if arg4 * arg5 / 10^ext_call.return_data[0] <= 0:
                revert with 0, 'minimum too small'
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[0]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if arg4 * arg5 / s * t <= 0:
                revert with 0, 'minimum too small'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if wethAddress == address(arg1):
        if arg3 != msg.value:
            revert with 0, 'wrong msg.value'
        require ext_code.size(wethAddress)
        call wethAddress.deposit() with:
           value arg3 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wethAddress)
        call wethAddress.0xa9059cbb with:
             gas gas_remaining wei
            args this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 1
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg3
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 164] = this.address
        mem[(4 * ceil32(return_data.size)) + 196] = arg3
        mem[(4 * ceil32(return_data.size)) + 96] = 100
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(4 * ceil32(return_data.size)) + 228] = 32
        mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0
        mem[(4 * ceil32(return_data.size)) + 392] = 0
        call address(arg1) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0) << 544)
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
            mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                if not mem[(4 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if arg3 != 0:
        revert with 0, 1
    if d == -1:
        revert with 0, 17
    d++
    deals[stor2].field_0 = msg.sender
    deals[stor2].field_256 = address(arg1)
    deals[stor2].field_512 = address(arg2)
    deals[stor2].field_768 = arg3
    deals[stor2].field_1024 = arg4
    deals[stor2].field_1280 = arg5
    deals[stor2].field_1536 = arg6
    deals[stor2].field_1792 = arg7
    deals[stor2].field_2048 = 1
    deals[stor2].field_2056 = address(arg8)
    deals[stor2].field_2216 = 0
    if d < 1:
        revert with 0, 17
    emit 0xee53dbf9: d - 1, msg.sender, address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7, 1, address(arg8)
}



}
