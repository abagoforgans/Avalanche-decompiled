contract main {




// =====================  Runtime code  =====================


const UNIT = 10^18


address owner;
address routerAddress;
address tradingAddress;
address oracleAddress;

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function trading() {
    return tradingAddress
}

function router() {
    return routerAddress
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = arg1
}

function fundOracle(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if oracleAddress != msg.sender:
        revert with 0, '!oracle'
    if arg2 <= eth.balance(this.address):
        if eth.balance(this.address) < arg2:
            revert with 0, 'Address: insufficient balance'
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        ('bool', 'ext_call.success')
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    routerAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x7dc0d1d0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    oracleAddress = ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.0xec44acf2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tradingAddress = ext_call.return_data[12 len 20]
}

function sendFunds(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!owner'
    if arg3:
        if arg2:
            mem[100] = arg1
            require ext_code.size(routerAddress)
            staticcall routerAddress.0xcf54aaa0 with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg3 and 1 > -1 / arg3:
                    revert with 0, 17
                if not arg1:
                    if eth.balance(this.address) < arg3 / 10^18:
                        revert with 0, 'Address: insufficient balance'
                    call arg2 with:
                       value arg3 / 10^18 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                else:
                    mem[ceil32(return_data.size) + 132] = arg2
                    mem[ceil32(return_data.size) + 164] = arg3 / 10^18
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / 10^18, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call arg1 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / 10^18, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / 10^18, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
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
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                        revert with 0, 17
                    if not arg1:
                        if eth.balance(this.address) < arg3 * 10^ext_call.return_data[31 len 1] / 10^18:
                            revert with 0, 'Address: insufficient balance'
                        call arg2 with:
                           value arg3 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                    else:
                        mem[ceil32(return_data.size) + 132] = arg2
                        mem[ceil32(return_data.size) + 164] = arg3 * 10^ext_call.return_data[31 len 1] / 10^18
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
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
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
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
                    if arg3 and s * t > -1 / arg3:
                        revert with 0, 17
                    if not arg1:
                        if eth.balance(this.address) < arg3 * s * t / 10^18:
                            revert with 0, 'Address: insufficient balance'
                        call arg2 with:
                           value arg3 * s * t / 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                    else:
                        mem[ceil32(return_data.size) + 132] = arg2
                        mem[ceil32(return_data.size) + 164] = arg3 * s * t / 10^18
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * s * t / 10^18, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * s * t / 10^18, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * s * t / 10^18, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
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

function sub_e0062d79(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if tradingAddress != msg.sender:
        revert with 0, '!trading'
    mem[100] = address(arg1)
    require ext_code.size(routerAddress)
    staticcall routerAddress.0xadd1739a with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(arg1)
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x4d1cc0d3 with:
            gas gas_remaining wei
           args address(arg1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
    require ext_code.size(routerAddress)
    staticcall routerAddress.0xaf4f1796 with:
            gas gas_remaining wei
           args address(arg1)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0] * arg2 / 10000:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xe38a195b with:
             gas gas_remaining wei
            args (ext_call.return_data[0] * arg2 / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
        require ext_code.size(routerAddress)
        staticcall routerAddress.0x39b8dfd3 with:
                gas gas_remaining wei
               args address(arg1)
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * arg2 / 10000:
            if address(ext_call.return_data[0]):
                mem[(6 * ceil32(return_data.size)) + 100] = address(arg1)
                require ext_code.size(routerAddress)
                staticcall routerAddress.0xcf54aaa0 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                        revert with 0, 17
                    if not address(arg1):
                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                            revert with 0, 'Address: insufficient balance'
                        call address(ext_call.return_data[0]) with:
                           value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                        mem[(7 * ceil32(return_data.size)) + 96] = 68
                        mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                        mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(7 * ceil32(return_data.size)) + 196] = 32
                        mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                        mem[(7 * ceil32(return_data.size)) + 328] = 0
                        call address(arg1) with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
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
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                            revert with 0, 17
                        if not address(arg1):
                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                revert with 0, 'Address: insufficient balance'
                            call address(ext_call.return_data[0]) with:
                               value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                            mem[(7 * ceil32(return_data.size)) + 96] = 68
                            mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                            mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[(7 * ceil32(return_data.size)) + 196] = 32
                            mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(arg1)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                            mem[(7 * ceil32(return_data.size)) + 328] = 0
                            call address(arg1) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
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
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
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
                        if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                            revert with 0, 17
                        if not address(arg1):
                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                revert with 0, 'Address: insufficient balance'
                            call address(ext_call.return_data[0]) with:
                               value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                            mem[(7 * ceil32(return_data.size)) + 96] = 68
                            mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                            mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[(7 * ceil32(return_data.size)) + 196] = 32
                            mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(arg1)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                            mem[(7 * ceil32(return_data.size)) + 328] = 0
                            call address(arg1) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
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
    else:
        if not address(ext_call.return_data[0]):
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xe38a195b with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * arg2 / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
            require ext_code.size(routerAddress)
            staticcall routerAddress.0x39b8dfd3 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * arg2 / 10000:
                if address(ext_call.return_data[0]):
                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg1)
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.0xcf54aaa0 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                            revert with 0, 17
                        if not address(arg1):
                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                revert with 0, 'Address: insufficient balance'
                            call address(ext_call.return_data[0]) with:
                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                            mem[(7 * ceil32(return_data.size)) + 96] = 68
                            mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                            mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[(7 * ceil32(return_data.size)) + 196] = 32
                            mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(arg1)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                            mem[(7 * ceil32(return_data.size)) + 328] = 0
                            call address(arg1) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
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
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                revert with 0, 17
                            if not address(arg1):
                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                    revert with 0, 'Address: insufficient balance'
                                call address(ext_call.return_data[0]) with:
                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                            else:
                                mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                mem[(7 * ceil32(return_data.size)) + 96] = 68
                                mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[(7 * ceil32(return_data.size)) + 196] = 32
                                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(arg1)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                mem[(7 * ceil32(return_data.size)) + 328] = 0
                                call address(arg1) with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
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
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
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
                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                revert with 0, 17
                            if not address(arg1):
                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                    revert with 0, 'Address: insufficient balance'
                                call address(ext_call.return_data[0]) with:
                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                            else:
                                mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                mem[(7 * ceil32(return_data.size)) + 96] = 68
                                mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[(7 * ceil32(return_data.size)) + 196] = 32
                                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(arg1)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                mem[(7 * ceil32(return_data.size)) + 328] = 0
                                call address(arg1) with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
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
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
            require ext_code.size(routerAddress)
            staticcall routerAddress.0xcf54aaa0 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                    revert with 0, 17
                if not address(arg1):
                    if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                        revert with 0, 'Address: insufficient balance'
                    call address(ext_call.return_data[0]) with:
                       value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xe38a195b with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg2 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 100] = address(arg1)
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.0x39b8dfd3 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * arg2 / 10000:
                            if address(ext_call.return_data[0]):
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg1)
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.0xcf54aaa0 with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                if not ext_call.return_data[31 len 1]:
                                    if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                        revert with 0, 17
                                    if not address(arg1):
                                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call address(ext_call.return_data[0]) with:
                                           value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                                        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                        mem[(8 * ceil32(return_data.size)) + 96] = 68
                                        mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                                        mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                        mem[(8 * ceil32(return_data.size)) + 196] = 32
                                        mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(arg1)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                        mem[(8 * ceil32(return_data.size)) + 328] = 0
                                        call address(arg1) with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                if not 0, mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                                if not mem[(8 * ceil32(return_data.size)) + 292]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                        if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                            mem[(8 * ceil32(return_data.size)) + 96] = 68
                                            mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                                            mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + 196] = 32
                                            mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + 328] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                                    if not mem[(8 * ceil32(return_data.size)) + 292]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        s = 10
                                        t = 1
                                        idx = ext_call.return_data[31 len 1]
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
                                        if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                            mem[(8 * ceil32(return_data.size)) + 96] = 68
                                            mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                                            mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + 196] = 32
                                            mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + 328] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                                    if not mem[(8 * ceil32(return_data.size)) + 292]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 96] = return_data.size
                        mem[(6 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xe38a195b with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg2 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 101] = address(arg1)
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.0x39b8dfd3 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * arg2 / 10000:
                            if address(ext_call.return_data[0]):
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 101] = address(arg1)
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.0xcf54aaa0 with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                if not ext_call.return_data[31 len 1]:
                                    if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                        revert with 0, 17
                                    if not address(arg1):
                                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call address(ext_call.return_data[0]) with:
                                           value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(ext_call.return_data[0])
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 68
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133 len 28] = address(ext_call.return_data[0]) << 64
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 32
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(arg1)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
                                        call address(arg1) with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                if not 0, mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293])
                                                if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                        if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 68
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133 len 28] = address(ext_call.return_data[0]) << 64
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 32
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293])
                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        s = 10
                                        t = 1
                                        idx = ext_call.return_data[31 len 1]
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
                                        if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 68
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133 len 28] = address(ext_call.return_data[0]) << 64
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 32
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293])
                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                    mem[(6 * ceil32(return_data.size)) + 96] = 68
                    mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + 196] = 32
                    mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                    mem[(6 * ceil32(return_data.size)) + 328] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xe38a195b with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg2 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 264] = address(arg1)
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.0x39b8dfd3 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * arg2 / 10000:
                            if address(ext_call.return_data[0]):
                                mem[(7 * ceil32(return_data.size)) + 264] = address(arg1)
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.0xcf54aaa0 with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                if not ext_call.return_data[31 len 1]:
                                    if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                        revert with 0, 17
                                    if not address(arg1):
                                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call address(ext_call.return_data[0]) with:
                                           value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                        mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                        mem[(8 * ceil32(return_data.size)) + 260] = 68
                                        mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                                        mem[(8 * ceil32(return_data.size)) + 360] = 32
                                        mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(arg1)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                        mem[(8 * ceil32(return_data.size)) + 492] = 0
                                        call address(arg1) with:
                                           funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                if not 0, mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                                                if not mem[(8 * ceil32(return_data.size)) + 456]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                        if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                            mem[(8 * ceil32(return_data.size)) + 260] = 68
                                            mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + 360] = 32
                                            mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + 492] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                                                    if not mem[(8 * ceil32(return_data.size)) + 456]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        s = 10
                                        t = 1
                                        idx = ext_call.return_data[31 len 1]
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
                                        if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                            mem[(8 * ceil32(return_data.size)) + 260] = 68
                                            mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + 360] = 32
                                            mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + 492] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                                                    if not mem[(8 * ceil32(return_data.size)) + 456]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 260] = return_data.size
                        mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                            if not mem[(6 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xe38a195b with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg2 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg1)
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.0x39b8dfd3 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * arg2 / 10000:
                            if address(ext_call.return_data[0]):
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg1)
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.0xcf54aaa0 with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                if not ext_call.return_data[31 len 1]:
                                    if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                        revert with 0, 17
                                    if not address(arg1):
                                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call address(ext_call.return_data[0]) with:
                                           value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    else:
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(arg1)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                                        call address(arg1) with:
                                           funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                if not 0, mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                    revert with 0, 
                                                                'SafeERC20: ERC20 operation did not succeed',
                                                                mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                else:
                                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                        if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                        revert with 0, 
                                                                    'SafeERC20: ERC20 operation did not succeed',
                                                                    mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    else:
                                        s = 10
                                        t = 1
                                        idx = ext_call.return_data[31 len 1]
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
                                        if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                        revert with 0, 
                                                                    'SafeERC20: ERC20 operation did not succeed',
                                                                    mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                        revert with 0, 17
                    if not address(arg1):
                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                            revert with 0, 'Address: insufficient balance'
                        call address(ext_call.return_data[0]) with:
                           value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xe38a195b with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg1)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x39b8dfd3 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * arg2 / 10000:
                                if address(ext_call.return_data[0]):
                                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg1)
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0xcf54aaa0 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                    if not ext_call.return_data[31 len 1]:
                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                            mem[(8 * ceil32(return_data.size)) + 96] = 68
                                            mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                                            mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + 196] = 32
                                            mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + 328] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                                    if not mem[(8 * ceil32(return_data.size)) + 292]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                mem[(8 * ceil32(return_data.size)) + 96] = 68
                                                mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                                                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + 196] = 32
                                                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + 328] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            s = 10
                                            t = 1
                                            idx = ext_call.return_data[31 len 1]
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
                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                mem[(8 * ceil32(return_data.size)) + 96] = 68
                                                mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                                                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + 196] = 32
                                                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + 328] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 96] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xe38a195b with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 101] = address(arg1)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x39b8dfd3 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * arg2 / 10000:
                                if address(ext_call.return_data[0]):
                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 101] = address(arg1)
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0xcf54aaa0 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                    if not ext_call.return_data[31 len 1]:
                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 68
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133 len 28] = address(ext_call.return_data[0]) << 64
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 32
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293])
                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 68
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133 len 28] = address(ext_call.return_data[0]) << 64
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 32
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293])
                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            s = 10
                                            t = 1
                                            idx = ext_call.return_data[31 len 1]
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
                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 68
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133 len 28] = address(ext_call.return_data[0]) << 64
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 32
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293])
                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                        mem[(6 * ceil32(return_data.size)) + 96] = 68
                        mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                        mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 196] = 32
                        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                        mem[(6 * ceil32(return_data.size)) + 328] = 0
                        call address(arg1) with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xe38a195b with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 264] = address(arg1)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x39b8dfd3 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * arg2 / 10000:
                                if address(ext_call.return_data[0]):
                                    mem[(7 * ceil32(return_data.size)) + 264] = address(arg1)
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0xcf54aaa0 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                    if not ext_call.return_data[31 len 1]:
                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                            mem[(8 * ceil32(return_data.size)) + 260] = 68
                                            mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + 360] = 32
                                            mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + 492] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                                                    if not mem[(8 * ceil32(return_data.size)) + 456]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                mem[(8 * ceil32(return_data.size)) + 260] = 68
                                                mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + 360] = 32
                                                mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + 492] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                                                        if not mem[(8 * ceil32(return_data.size)) + 456]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            s = 10
                                            t = 1
                                            idx = ext_call.return_data[31 len 1]
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
                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                mem[(8 * ceil32(return_data.size)) + 260] = 68
                                                mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + 360] = 32
                                                mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + 492] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                                                        if not mem[(8 * ceil32(return_data.size)) + 456]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 260] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                                if not mem[(6 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xe38a195b with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg1)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x39b8dfd3 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * arg2 / 10000:
                                if address(ext_call.return_data[0]):
                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg1)
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0xcf54aaa0 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                    if not ext_call.return_data[31 len 1]:
                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                        revert with 0, 
                                                                    'SafeERC20: ERC20 operation did not succeed',
                                                                    mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    else:
                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                            revert with 0, 
                                                                        'SafeERC20: ERC20 operation did not succeed',
                                                                        mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        else:
                                            s = 10
                                            t = 1
                                            idx = ext_call.return_data[31 len 1]
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
                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                            revert with 0, 
                                                                        'SafeERC20: ERC20 operation did not succeed',
                                                                        mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
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
                    if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                        revert with 0, 17
                    if not address(arg1):
                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                            revert with 0, 'Address: insufficient balance'
                        call address(ext_call.return_data[0]) with:
                           value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xe38a195b with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg1)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x39b8dfd3 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * arg2 / 10000:
                                if address(ext_call.return_data[0]):
                                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg1)
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0xcf54aaa0 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                    if not ext_call.return_data[31 len 1]:
                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                            mem[(8 * ceil32(return_data.size)) + 96] = 68
                                            mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                                            mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + 196] = 32
                                            mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + 328] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                                    if not mem[(8 * ceil32(return_data.size)) + 292]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                mem[(8 * ceil32(return_data.size)) + 96] = 68
                                                mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                                                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + 196] = 32
                                                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + 328] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            s = 10
                                            t = 1
                                            idx = ext_call.return_data[31 len 1]
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
                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                mem[(8 * ceil32(return_data.size)) + 96] = 68
                                                mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                                                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + 196] = 32
                                                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + 328] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 96] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xe38a195b with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 101] = address(arg1)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x39b8dfd3 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * arg2 / 10000:
                                if address(ext_call.return_data[0]):
                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 101] = address(arg1)
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0xcf54aaa0 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                    if not ext_call.return_data[31 len 1]:
                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 68
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133 len 28] = address(ext_call.return_data[0]) << 64
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 32
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293])
                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 68
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133 len 28] = address(ext_call.return_data[0]) << 64
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 32
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293])
                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            s = 10
                                            t = 1
                                            idx = ext_call.return_data[31 len 1]
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
                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 68
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 133 len 28] = address(ext_call.return_data[0]) << 64
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 32
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293])
                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                        mem[(6 * ceil32(return_data.size)) + 96] = 68
                        mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
                        mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(6 * ceil32(return_data.size)) + 196] = 32
                        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                        mem[(6 * ceil32(return_data.size)) + 328] = 0
                        call address(arg1) with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xe38a195b with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 264] = address(arg1)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x39b8dfd3 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * arg2 / 10000:
                                if address(ext_call.return_data[0]):
                                    mem[(7 * ceil32(return_data.size)) + 264] = address(arg1)
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0xcf54aaa0 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                    if not ext_call.return_data[31 len 1]:
                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                            mem[(8 * ceil32(return_data.size)) + 260] = 68
                                            mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + 360] = 32
                                            mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + 492] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                                                    if not mem[(8 * ceil32(return_data.size)) + 456]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                mem[(8 * ceil32(return_data.size)) + 260] = 68
                                                mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + 360] = 32
                                                mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + 492] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                                                        if not mem[(8 * ceil32(return_data.size)) + 456]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            s = 10
                                            t = 1
                                            idx = ext_call.return_data[31 len 1]
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
                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                mem[(8 * ceil32(return_data.size)) + 260] = 68
                                                mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + 360] = 32
                                                mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + 492] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                                                        if not mem[(8 * ceil32(return_data.size)) + 456]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 260] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                                if not mem[(6 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xe38a195b with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg1)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x39b8dfd3 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * arg2 / 10000:
                                if address(ext_call.return_data[0]):
                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg1)
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0xcf54aaa0 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                    if not ext_call.return_data[31 len 1]:
                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        revert with memory
                                                          from 128
                                                           len ext_call.return_data[0]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if ext_call.return_data[0]:
                                                    require ext_call.return_data[0] >= 32
                                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                    if not 0, mem[132 len 28]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                        revert with 0, 
                                                                    'SafeERC20: ERC20 operation did not succeed',
                                                                    mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    else:
                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                            revert with 0, 
                                                                        'SafeERC20: ERC20 operation did not succeed',
                                                                        mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        else:
                                            s = 10
                                            t = 1
                                            idx = ext_call.return_data[31 len 1]
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
                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            revert with memory
                                                              from 128
                                                               len ext_call.return_data[0]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0] >= 32
                                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                                        if not 0, mem[132 len 28]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                                            revert with 0, 
                                                                        'SafeERC20: ERC20 operation did not succeed',
                                                                        mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe38a195b with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * arg2 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0xc0d78655(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, '!owner'
                owner = address(arg1)
            else:
                if unknown_0x7dc0d1d0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return oracleAddress
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x9d8e2177(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 10^18
                if unknown_0xa5a01c5d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if oracleAddress != msg.sender:
                        revert with 0, '!oracle'
                    if arg2 <= eth.balance(this.address):
                        if eth.balance(this.address) < arg2:
                            revert with 0, 'Address: insufficient balance'
                        call address(arg1) with:
                           value arg2 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
        else:
            if unknown_0xc0d78655(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, '!owner'
                routerAddress = address(arg1)
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x7dc0d1d0 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                oracleAddress = ext_call.return_data[12 len 20]
                require ext_code.size(routerAddress)
                staticcall routerAddress.0xec44acf2 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                tradingAddress = ext_call.return_data[12 len 20]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xe0062d79(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xe0ca1474(?????):
                        if unknown_0xec44acf2(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return tradingAddress
                        if uint32(call.func_hash) >> 224 != unknown_0xf887ea40(?????):
                        require not msg.value
                        return routerAddress
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if owner != msg.sender:
                        revert with 0, '!owner'
                    if arg3:
                        if address(arg2):
                            mem[132] = address(arg1)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0xcf54aaa0 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if not ext_call.return_data[31 len 1]:
                                if arg3 and 1 > -1 / arg3:
                                    revert with 0, 17
                                if not address(arg1):
                                    if eth.balance(this.address) < arg3 / 10^18:
                                        revert with 0, 'Address: insufficient balance'
                                    call address(arg2) with:
                                       value arg3 / 10^18 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                else:
                                    mem[ceil32(return_data.size) + 164] = address(arg2)
                                    mem[ceil32(return_data.size) + 196] = arg3 / 10^18
                                    mem[ceil32(return_data.size) + 128] = 68
                                    mem[ceil32(return_data.size) + 164 len 28] = address(arg2) << 64
                                    mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(return_data.size) + 228] = 32
                                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / 10^18, 0
                                    mem[ceil32(return_data.size) + 360] = 0
                                    call address(arg1) with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / 10^18, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 / 10^18, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                            if not mem[ceil32(return_data.size) + 324]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                                        revert with 0, 17
                                    if not address(arg1):
                                        if eth.balance(this.address) < arg3 * 10^ext_call.return_data[31 len 1] / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call address(arg2) with:
                                           value arg3 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    else:
                                        mem[ceil32(return_data.size) + 164] = address(arg2)
                                        mem[ceil32(return_data.size) + 196] = arg3 * 10^ext_call.return_data[31 len 1] / 10^18
                                        mem[ceil32(return_data.size) + 128] = 68
                                        mem[ceil32(return_data.size) + 164 len 28] = address(arg2) << 64
                                        mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(return_data.size) + 228] = 32
                                        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(arg1)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                        mem[ceil32(return_data.size) + 360] = 0
                                        call address(arg1) with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                                if not mem[ceil32(return_data.size) + 324]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    s = 10
                                    t = 1
                                    idx = ext_call.return_data[31 len 1]
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
                                    if arg3 and s * t > -1 / arg3:
                                        revert with 0, 17
                                    if not address(arg1):
                                        if eth.balance(this.address) < arg3 * s * t / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call address(arg2) with:
                                           value arg3 * s * t / 10^18 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    else:
                                        mem[ceil32(return_data.size) + 164] = address(arg2)
                                        mem[ceil32(return_data.size) + 196] = arg3 * s * t / 10^18
                                        mem[ceil32(return_data.size) + 128] = 68
                                        mem[ceil32(return_data.size) + 164 len 28] = address(arg2) << 64
                                        mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(return_data.size) + 228] = 32
                                        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(arg1)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * s * t / 10^18, 0
                                        mem[ceil32(return_data.size) + 360] = 0
                                        call address(arg1) with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * s * t / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3 * s * t / 10^18, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                                if not mem[ceil32(return_data.size) + 324]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if tradingAddress != msg.sender:
                        revert with 0, '!trading'
                    mem[132] = address(arg1)
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.0xadd1739a with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 132] = address(arg1)
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.0x4d1cc0d3 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.0xaf4f1796 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0] * arg2 / 10000:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xe38a195b with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * arg2 / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.0x39b8dfd3 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] * arg2 / 10000:
                            if address(ext_call.return_data[0]):
                                mem[(6 * ceil32(return_data.size)) + 132] = address(arg1)
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.0xcf54aaa0 with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                if not ext_call.return_data[31 len 1]:
                                    if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                        revert with 0, 17
                                    if not address(arg1):
                                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call address(ext_call.return_data[0]) with:
                                           value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    else:
                                        mem[(7 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                        mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                        mem[(7 * ceil32(return_data.size)) + 128] = 68
                                        mem[(7 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                        mem[(7 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                        mem[(7 * ceil32(return_data.size)) + 228] = 32
                                        mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(arg1)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(7 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                        mem[(7 * ceil32(return_data.size)) + 360] = 0
                                        call address(arg1) with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                                                if not mem[(7 * ceil32(return_data.size)) + 324]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                        if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                            mem[(7 * ceil32(return_data.size)) + 128] = 68
                                            mem[(7 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                            mem[(7 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(7 * ceil32(return_data.size)) + 228] = 32
                                            mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(7 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                            mem[(7 * ceil32(return_data.size)) + 360] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                                                    if not mem[(7 * ceil32(return_data.size)) + 324]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        s = 10
                                        t = 1
                                        idx = ext_call.return_data[31 len 1]
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
                                        if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                            mem[(7 * ceil32(return_data.size)) + 128] = 68
                                            mem[(7 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                            mem[(7 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(7 * ceil32(return_data.size)) + 228] = 32
                                            mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(7 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                            mem[(7 * ceil32(return_data.size)) + 360] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                                                    if not mem[(7 * ceil32(return_data.size)) + 324]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if not address(ext_call.return_data[0]):
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xe38a195b with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * arg2 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x39b8dfd3 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * arg2 / 10000:
                                if address(ext_call.return_data[0]):
                                    mem[(6 * ceil32(return_data.size)) + 132] = address(arg1)
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0xcf54aaa0 with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                    if not ext_call.return_data[31 len 1]:
                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call address(ext_call.return_data[0]) with:
                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                            mem[(7 * ceil32(return_data.size)) + 128] = 68
                                            mem[(7 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                            mem[(7 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(7 * ceil32(return_data.size)) + 228] = 32
                                            mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(arg1)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(7 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                            mem[(7 * ceil32(return_data.size)) + 360] = 0
                                            call address(arg1) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            else:
                                                mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                                                    if not mem[(7 * ceil32(return_data.size)) + 324]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(7 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                                mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                mem[(7 * ceil32(return_data.size)) + 128] = 68
                                                mem[(7 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                                mem[(7 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(7 * ceil32(return_data.size)) + 228] = 32
                                                mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(7 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                mem[(7 * ceil32(return_data.size)) + 360] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if mem[96]:
                                                            revert with memory
                                                              from 128
                                                               len mem[96]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if mem[96]:
                                                        require mem[96] >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                                                        if not mem[(7 * ceil32(return_data.size)) + 324]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            s = 10
                                            t = 1
                                            idx = ext_call.return_data[31 len 1]
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
                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                    revert with 0, 'Address: insufficient balance'
                                                call address(ext_call.return_data[0]) with:
                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            else:
                                                mem[(7 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                                mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                mem[(7 * ceil32(return_data.size)) + 128] = 68
                                                mem[(7 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                                mem[(7 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                                mem[(7 * ceil32(return_data.size)) + 228] = 32
                                                mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[(7 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                mem[(7 * ceil32(return_data.size)) + 360] = 0
                                                call address(arg1) with:
                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if mem[96]:
                                                            revert with memory
                                                              from 128
                                                               len mem[96]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if mem[96]:
                                                        require mem[96] >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                                                        if not mem[(7 * ceil32(return_data.size)) + 324]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0xcf54aaa0 with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if not ext_call.return_data[31 len 1]:
                                if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                    revert with 0, 17
                                if not address(arg1):
                                    if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                        revert with 0, 'Address: insufficient balance'
                                    call address(ext_call.return_data[0]) with:
                                       value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xe38a195b with:
                                             gas gas_remaining wei
                                            args (ext_call.return_data[0] * arg2 / 10000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(6 * ceil32(return_data.size)) + 132] = address(arg1)
                                        require ext_code.size(routerAddress)
                                        staticcall routerAddress.0x39b8dfd3 with:
                                                gas gas_remaining wei
                                               args address(arg1)
                                        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] * arg2 / 10000:
                                            if address(ext_call.return_data[0]):
                                                mem[(7 * ceil32(return_data.size)) + 132] = address(arg1)
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.0xcf54aaa0 with:
                                                        gas gas_remaining wei
                                                       args address(arg1)
                                                mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                if not ext_call.return_data[31 len 1]:
                                                    if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                        revert with 0, 17
                                                    if not address(arg1):
                                                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                            revert with 0, 'Address: insufficient balance'
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                    else:
                                                        mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                                        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                        mem[(8 * ceil32(return_data.size)) + 128] = 68
                                                        mem[(8 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                                        mem[(8 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                                        mem[(8 * ceil32(return_data.size)) + 228] = 32
                                                        mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 'Address: insufficient balance for call'
                                                        if not ext_code.size(address(arg1)):
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[(8 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                        mem[(8 * ceil32(return_data.size)) + 360] = 0
                                                        call address(arg1) with:
                                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                             gas gas_remaining wei
                                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                if mem[96]:
                                                                    revert with memory
                                                                      from 128
                                                                       len mem[96]
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                            if mem[96]:
                                                                require mem[96] >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                if not ext_call.return_data[0]:
                                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                                                                if not mem[(8 * ceil32(return_data.size)) + 324]:
                                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                        if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + 128] = 68
                                                            mem[(8 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                                            mem[(8 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + 228] = 32
                                                            mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + 360] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                                                                    if not mem[(8 * ceil32(return_data.size)) + 324]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                    else:
                                                        s = 10
                                                        t = 1
                                                        idx = ext_call.return_data[31 len 1]
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
                                                        if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + 128] = 68
                                                            mem[(8 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                                            mem[(8 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + 228] = 32
                                                            mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + 360] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                                                                    if not mem[(8 * ceil32(return_data.size)) + 324]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 128] = return_data.size
                                        mem[(6 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xe38a195b with:
                                             gas gas_remaining wei
                                            args (ext_call.return_data[0] * arg2 / 10000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(arg1)
                                        require ext_code.size(routerAddress)
                                        staticcall routerAddress.0x39b8dfd3 with:
                                                gas gas_remaining wei
                                               args address(arg1)
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] * arg2 / 10000:
                                            if address(ext_call.return_data[0]):
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(arg1)
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.0xcf54aaa0 with:
                                                        gas gas_remaining wei
                                                       args address(arg1)
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                if not ext_call.return_data[31 len 1]:
                                                    if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                        revert with 0, 17
                                                    if not address(arg1):
                                                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                            revert with 0, 'Address: insufficient balance'
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                    else:
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = 68
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 28] = address(ext_call.return_data[0]) << 64
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 32
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 'SafeERC20: low-level call failed'
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 'Address: insufficient balance for call'
                                                        if not ext_code.size(address(arg1)):
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                                                        call address(arg1) with:
                                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                             gas gas_remaining wei
                                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                if mem[96]:
                                                                    revert with memory
                                                                      from 128
                                                                       len mem[96]
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                            if mem[96]:
                                                                require mem[96] >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                if not ext_call.return_data[0]:
                                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325])
                                                                if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]:
                                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                        if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = 68
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 28] = address(ext_call.return_data[0]) << 64
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 32
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325])
                                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                    else:
                                                        s = 10
                                                        t = 1
                                                        idx = ext_call.return_data[31 len 1]
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
                                                        if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = 68
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 28] = address(ext_call.return_data[0]) << 64
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 32
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325])
                                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                    mem[(6 * ceil32(return_data.size)) + 128] = 68
                                    mem[(6 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                    mem[(6 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                    mem[(6 * ceil32(return_data.size)) + 228] = 32
                                    mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg1)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(6 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                    mem[(6 * ceil32(return_data.size)) + 360] = 0
                                    call address(arg1) with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xe38a195b with:
                                             gas gas_remaining wei
                                            args (ext_call.return_data[0] * arg2 / 10000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(6 * ceil32(return_data.size)) + 296] = address(arg1)
                                        require ext_code.size(routerAddress)
                                        staticcall routerAddress.0x39b8dfd3 with:
                                                gas gas_remaining wei
                                               args address(arg1)
                                        mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] * arg2 / 10000:
                                            if address(ext_call.return_data[0]):
                                                mem[(7 * ceil32(return_data.size)) + 296] = address(arg1)
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.0xcf54aaa0 with:
                                                        gas gas_remaining wei
                                                       args address(arg1)
                                                mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                if not ext_call.return_data[31 len 1]:
                                                    if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                        revert with 0, 17
                                                    if not address(arg1):
                                                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                            revert with 0, 'Address: insufficient balance'
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                    else:
                                                        mem[(8 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                                                        mem[(8 * ceil32(return_data.size)) + 360] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                        mem[(8 * ceil32(return_data.size)) + 292] = 68
                                                        mem[(8 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
                                                        mem[(8 * ceil32(return_data.size)) + 392] = 32
                                                        mem[(8 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 'Address: insufficient balance for call'
                                                        if not ext_code.size(address(arg1)):
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[(8 * ceil32(return_data.size)) + 456 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                        mem[(8 * ceil32(return_data.size)) + 524] = 0
                                                        call address(arg1) with:
                                                           funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                             gas gas_remaining wei
                                                            args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                if mem[96]:
                                                                    revert with memory
                                                                      from 128
                                                                       len mem[96]
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                            if mem[96]:
                                                                require mem[96] >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                if not ext_call.return_data[0]:
                                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                require mem[(8 * ceil32(return_data.size)) + 488] == bool(mem[(8 * ceil32(return_data.size)) + 488])
                                                                if not mem[(8 * ceil32(return_data.size)) + 488]:
                                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                        if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + 360] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + 292] = 68
                                                            mem[(8 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + 392] = 32
                                                            mem[(8 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + 456 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + 524] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + 488] == bool(mem[(8 * ceil32(return_data.size)) + 488])
                                                                    if not mem[(8 * ceil32(return_data.size)) + 488]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                    else:
                                                        s = 10
                                                        t = 1
                                                        idx = ext_call.return_data[31 len 1]
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
                                                        if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + 360] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + 292] = 68
                                                            mem[(8 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + 392] = 32
                                                            mem[(8 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + 456 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + 524] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + 488] == bool(mem[(8 * ceil32(return_data.size)) + 488])
                                                                    if not mem[(8 * ceil32(return_data.size)) + 488]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 292] = return_data.size
                                        mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                                            if not mem[(6 * ceil32(return_data.size)) + 324]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xe38a195b with:
                                             gas gas_remaining wei
                                            args (ext_call.return_data[0] * arg2 / 10000)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
                                        require ext_code.size(routerAddress)
                                        staticcall routerAddress.0x39b8dfd3 with:
                                                gas gas_remaining wei
                                               args address(arg1)
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if ext_call.return_data[0] * arg2 / 10000:
                                            if address(ext_call.return_data[0]):
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.0xcf54aaa0 with:
                                                        gas gas_remaining wei
                                                       args address(arg1)
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                if not ext_call.return_data[31 len 1]:
                                                    if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                        revert with 0, 17
                                                    if not address(arg1):
                                                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                            revert with 0, 'Address: insufficient balance'
                                                        call address(ext_call.return_data[0]) with:
                                                           value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                    else:
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 'Address: insufficient balance for call'
                                                        if not ext_code.size(address(arg1)):
                                                            revert with 0, 'Address: call to non-contract'
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                                                        call address(arg1) with:
                                                           funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                             gas gas_remaining wei
                                                            args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                if mem[96]:
                                                                    revert with memory
                                                                      from 128
                                                                       len mem[96]
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                            if mem[96]:
                                                                require mem[96] >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                if not ext_call.return_data[0]:
                                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                revert with 0, 
                                                                            'SafeERC20: low-level call failed',
                                                                            mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                            if return_data.size:
                                                                require return_data.size >= 32
                                                                require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                                                                if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                                                    revert with 0, 
                                                                                'SafeERC20: ERC20 operation did not succeed',
                                                                                mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                else:
                                                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                        if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 
                                                                                'SafeERC20: low-level call failed',
                                                                                mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                                                        revert with 0, 
                                                                                    'SafeERC20: ERC20 operation did not succeed',
                                                                                    mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    else:
                                                        s = 10
                                                        t = 1
                                                        idx = ext_call.return_data[31 len 1]
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
                                                        if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 
                                                                                'SafeERC20: low-level call failed',
                                                                                mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                                                        revert with 0, 
                                                                                    'SafeERC20: ERC20 operation did not succeed',
                                                                                    mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                        revert with 0, 17
                                    if not address(arg1):
                                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call address(ext_call.return_data[0]) with:
                                           value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xe38a195b with:
                                                 gas gas_remaining wei
                                                args (ext_call.return_data[0] * arg2 / 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + 132] = address(arg1)
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.0x39b8dfd3 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * arg2 / 10000:
                                                if address(ext_call.return_data[0]):
                                                    mem[(7 * ceil32(return_data.size)) + 132] = address(arg1)
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.0xcf54aaa0 with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                    if not ext_call.return_data[31 len 1]:
                                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + 128] = 68
                                                            mem[(8 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                                            mem[(8 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + 228] = 32
                                                            mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + 360] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                                                                    if not mem[(8 * ceil32(return_data.size)) + 324]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                    else:
                                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + 128] = 68
                                                                mem[(8 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                                                mem[(8 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + 228] = 32
                                                                mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + 360] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                                                                        if not mem[(8 * ceil32(return_data.size)) + 324]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                                                            s = 10
                                                            t = 1
                                                            idx = ext_call.return_data[31 len 1]
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
                                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + 128] = 68
                                                                mem[(8 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                                                mem[(8 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + 228] = 32
                                                                mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + 360] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                                                                        if not mem[(8 * ceil32(return_data.size)) + 324]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 128] = return_data.size
                                            mem[(6 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xe38a195b with:
                                                 gas gas_remaining wei
                                                args (ext_call.return_data[0] * arg2 / 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(arg1)
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.0x39b8dfd3 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * arg2 / 10000:
                                                if address(ext_call.return_data[0]):
                                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(arg1)
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.0xcf54aaa0 with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                    if not ext_call.return_data[31 len 1]:
                                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = 68
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 28] = address(ext_call.return_data[0]) << 64
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 32
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325])
                                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                    else:
                                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = 68
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 28] = address(ext_call.return_data[0]) << 64
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 32
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325])
                                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                                                            s = 10
                                                            t = 1
                                                            idx = ext_call.return_data[31 len 1]
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
                                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = 68
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 28] = address(ext_call.return_data[0]) << 64
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 32
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325])
                                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                        mem[(6 * ceil32(return_data.size)) + 128] = 68
                                        mem[(6 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                        mem[(6 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                        mem[(6 * ceil32(return_data.size)) + 228] = 32
                                        mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(arg1)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(6 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                        mem[(6 * ceil32(return_data.size)) + 360] = 0
                                        call address(arg1) with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xe38a195b with:
                                                 gas gas_remaining wei
                                                args (ext_call.return_data[0] * arg2 / 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + 296] = address(arg1)
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.0x39b8dfd3 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * arg2 / 10000:
                                                if address(ext_call.return_data[0]):
                                                    mem[(7 * ceil32(return_data.size)) + 296] = address(arg1)
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.0xcf54aaa0 with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                    if not ext_call.return_data[31 len 1]:
                                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + 360] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + 292] = 68
                                                            mem[(8 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + 392] = 32
                                                            mem[(8 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + 456 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + 524] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + 488] == bool(mem[(8 * ceil32(return_data.size)) + 488])
                                                                    if not mem[(8 * ceil32(return_data.size)) + 488]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                    else:
                                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + 360] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + 292] = 68
                                                                mem[(8 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + 392] = 32
                                                                mem[(8 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + 456 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + 524] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + 488] == bool(mem[(8 * ceil32(return_data.size)) + 488])
                                                                        if not mem[(8 * ceil32(return_data.size)) + 488]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                                                            s = 10
                                                            t = 1
                                                            idx = ext_call.return_data[31 len 1]
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
                                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + 360] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + 292] = 68
                                                                mem[(8 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + 392] = 32
                                                                mem[(8 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + 456 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + 524] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + 488] == bool(mem[(8 * ceil32(return_data.size)) + 488])
                                                                        if not mem[(8 * ceil32(return_data.size)) + 488]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 292] = return_data.size
                                            mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                                                if not mem[(6 * ceil32(return_data.size)) + 324]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xe38a195b with:
                                                 gas gas_remaining wei
                                                args (ext_call.return_data[0] * arg2 / 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.0x39b8dfd3 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * arg2 / 10000:
                                                if address(ext_call.return_data[0]):
                                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.0xcf54aaa0 with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                    if not ext_call.return_data[31 len 1]:
                                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 
                                                                                'SafeERC20: low-level call failed',
                                                                                mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                                                        revert with 0, 
                                                                                    'SafeERC20: ERC20 operation did not succeed',
                                                                                    mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    else:
                                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 
                                                                                    'SafeERC20: low-level call failed',
                                                                                    mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                                                            revert with 0, 
                                                                                        'SafeERC20: ERC20 operation did not succeed',
                                                                                        mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        else:
                                                            s = 10
                                                            t = 1
                                                            idx = ext_call.return_data[31 len 1]
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
                                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 
                                                                                    'SafeERC20: low-level call failed',
                                                                                    mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                                                            revert with 0, 
                                                                                        'SafeERC20: ERC20 operation did not succeed',
                                                                                        mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                else:
                                    s = 10
                                    t = 1
                                    idx = ext_call.return_data[31 len 1]
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
                                    if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                        revert with 0, 17
                                    if not address(arg1):
                                        if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call address(ext_call.return_data[0]) with:
                                           value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xe38a195b with:
                                                 gas gas_remaining wei
                                                args (ext_call.return_data[0] * arg2 / 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + 132] = address(arg1)
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.0x39b8dfd3 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * arg2 / 10000:
                                                if address(ext_call.return_data[0]):
                                                    mem[(7 * ceil32(return_data.size)) + 132] = address(arg1)
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.0xcf54aaa0 with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                    if not ext_call.return_data[31 len 1]:
                                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + 128] = 68
                                                            mem[(8 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                                            mem[(8 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + 228] = 32
                                                            mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + 360] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                                                                    if not mem[(8 * ceil32(return_data.size)) + 324]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                    else:
                                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + 128] = 68
                                                                mem[(8 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                                                mem[(8 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + 228] = 32
                                                                mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + 360] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                                                                        if not mem[(8 * ceil32(return_data.size)) + 324]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                                                            s = 10
                                                            t = 1
                                                            idx = ext_call.return_data[31 len 1]
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
                                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + 128] = 68
                                                                mem[(8 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                                                mem[(8 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + 228] = 32
                                                                mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + 360] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                                                                        if not mem[(8 * ceil32(return_data.size)) + 324]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 128] = return_data.size
                                            mem[(6 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xe38a195b with:
                                                 gas gas_remaining wei
                                                args (ext_call.return_data[0] * arg2 / 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(arg1)
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.0x39b8dfd3 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * arg2 / 10000:
                                                if address(ext_call.return_data[0]):
                                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = address(arg1)
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.0xcf54aaa0 with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                    if not ext_call.return_data[31 len 1]:
                                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = 68
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 28] = address(ext_call.return_data[0]) << 64
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 32
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325])
                                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                    else:
                                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = 68
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 28] = address(ext_call.return_data[0]) << 64
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 32
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325])
                                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                                                            s = 10
                                                            t = 1
                                                            idx = ext_call.return_data[31 len 1]
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
                                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = 68
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len 28] = address(ext_call.return_data[0]) << 64
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 32
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325])
                                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
                                        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                        mem[(6 * ceil32(return_data.size)) + 128] = 68
                                        mem[(6 * ceil32(return_data.size)) + 164 len 28] = address(ext_call.return_data[0]) << 64
                                        mem[(6 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                        mem[(6 * ceil32(return_data.size)) + 228] = 32
                                        mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(arg1)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(6 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                        mem[(6 * ceil32(return_data.size)) + 360] = 0
                                        call address(arg1) with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xe38a195b with:
                                                 gas gas_remaining wei
                                                args (ext_call.return_data[0] * arg2 / 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + 296] = address(arg1)
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.0x39b8dfd3 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * arg2 / 10000:
                                                if address(ext_call.return_data[0]):
                                                    mem[(7 * ceil32(return_data.size)) + 296] = address(arg1)
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.0xcf54aaa0 with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                    if not ext_call.return_data[31 len 1]:
                                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + 360] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + 292] = 68
                                                            mem[(8 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + 392] = 32
                                                            mem[(8 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + 456 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + 524] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + 488] == bool(mem[(8 * ceil32(return_data.size)) + 488])
                                                                    if not mem[(8 * ceil32(return_data.size)) + 488]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                    else:
                                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + 360] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + 292] = 68
                                                                mem[(8 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + 392] = 32
                                                                mem[(8 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + 456 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + 524] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + 488] == bool(mem[(8 * ceil32(return_data.size)) + 488])
                                                                        if not mem[(8 * ceil32(return_data.size)) + 488]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                                                            s = 10
                                                            t = 1
                                                            idx = ext_call.return_data[31 len 1]
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
                                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + 360] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + 292] = 68
                                                                mem[(8 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + 392] = 32
                                                                mem[(8 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + 456 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + 524] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + 488] == bool(mem[(8 * ceil32(return_data.size)) + 488])
                                                                        if not mem[(8 * ceil32(return_data.size)) + 488]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 292] = return_data.size
                                            mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                                                if not mem[(6 * ceil32(return_data.size)) + 324]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xe38a195b with:
                                                 gas gas_remaining wei
                                                args (ext_call.return_data[0] * arg2 / 10000)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.0x39b8dfd3 with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if ext_call.return_data[0] * arg2 / 10000:
                                                if address(ext_call.return_data[0]):
                                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.0xcf54aaa0 with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                    if not ext_call.return_data[31 len 1]:
                                                        if ext_call.return_data[0] * arg2 / 10000 and 1 > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                            revert with 0, 17
                                                        if not address(arg1):
                                                            if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 / 10^18:
                                                                revert with 0, 'Address: insufficient balance'
                                                            call address(ext_call.return_data[0]) with:
                                                               value ext_call.return_data[0] * arg2 / 10000 / 10^18 wei
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0] * arg2 / 10000 / 10^18
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            if not ext_code.size(address(arg1)):
                                                                revert with 0, 'Address: call to non-contract'
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0
                                                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                                                            call address(arg1) with:
                                                               funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) >> 224
                                                                 gas gas_remaining wei
                                                                args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 / 10^18, 0) << 288)
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    if mem[96]:
                                                                        revert with memory
                                                                          from 128
                                                                           len mem[96]
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                if mem[96]:
                                                                    require mem[96] >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                if not ext_call.success:
                                                                    if return_data.size:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    revert with 0, 
                                                                                'SafeERC20: low-level call failed',
                                                                                mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                if return_data.size:
                                                                    require return_data.size >= 32
                                                                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                                                                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                                                        revert with 0, 
                                                                                    'SafeERC20: ERC20 operation did not succeed',
                                                                                    mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    else:
                                                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                                            if ext_call.return_data[0] * arg2 / 10000 and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 
                                                                                    'SafeERC20: low-level call failed',
                                                                                    mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                                                            revert with 0, 
                                                                                        'SafeERC20: ERC20 operation did not succeed',
                                                                                        mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        else:
                                                            s = 10
                                                            t = 1
                                                            idx = ext_call.return_data[31 len 1]
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
                                                            if ext_call.return_data[0] * arg2 / 10000 and s * t > -1 / ext_call.return_data[0] * arg2 / 10000:
                                                                revert with 0, 17
                                                            if not address(arg1):
                                                                if eth.balance(this.address) < ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18:
                                                                    revert with 0, 'Address: insufficient balance'
                                                                call address(ext_call.return_data[0]) with:
                                                                   value ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18 wei
                                                                     gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                if not ext_code.size(address(arg1)):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0
                                                                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                                                                call address(arg1) with:
                                                                   funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(512, -288, 0, address(ext_call.return_data[0]), ext_call.return_data[0] * arg2 / 10000 * s * t / 10^18, 0) << 288)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                    if mem[96]:
                                                                        require mem[96] >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        revert with 0, 
                                                                                    'SafeERC20: low-level call failed',
                                                                                    mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                    if return_data.size:
                                                                        require return_data.size >= 32
                                                                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                                                                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                                                            revert with 0, 
                                                                                        'SafeERC20: ERC20 operation did not succeed',
                                                                                        mem[(12 * ceil32(return_data.size)) + 590 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xe38a195b with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * arg2 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
