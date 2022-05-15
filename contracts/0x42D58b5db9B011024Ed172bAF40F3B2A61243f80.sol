contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#  - _fallback()
#
const UNIT = 10^18


address owner;
address routerAddress;
address tradingAddress;
uint256 withdrawFee;
uint32 stor4;
address currencyAddress;
address rewardsAddress;
uint256 sub_5b382989;
uint256 sub_5d20750b;
mapping of uint256 balance;
uint256 totalSupply;
uint256 sub_934472f5;
uint256 sub_fa5a2e62;

function totalSupply() {
    return totalSupply
}

function sub_5b382989(?) {
    return sub_5b382989
}

function sub_5d20750b(?) {
    return sub_5d20750b
}

function owner() {
    return owner
}

function sub_934472f5(?) {
    return sub_934472f5
}

function rewards() {
    return rewardsAddress
}

function currency() {
    return address(currencyAddress)
}

function withdrawFee() {
    return withdrawFee
}

function trading() {
    return tradingAddress
}

function router() {
    return routerAddress
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balance[address(arg1)]
}

function sub_fa5a2e62(?) {
    return sub_fa5a2e62
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = arg1
}

function setParams(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_934472f5 = arg1
    sub_5b382989 = arg2
    sub_5d20750b = arg3
    withdrawFee = arg4
}

function sub_532f6690(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if tradingAddress != msg.sender:
        revert with 0, '!trading'
    if not arg2:
        if sub_fa5a2e62 > !arg1:
            revert with 0, 17
        sub_fa5a2e62 += arg1
    else:
        if sub_fa5a2e62 <= arg1:
            sub_fa5a2e62 = 0
        else:
            if sub_fa5a2e62 < arg1:
                revert with 0, 17
            sub_fa5a2e62 -= arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    routerAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xec44acf2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tradingAddress = ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.getPoolRewards(address arg1) with:
            gas gas_remaining wei
           args address(currencyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    rewardsAddress = ext_call.return_data[12 len 20]
}

function sub_ed683504(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0 == totalSupply:
        return 0
    if not address(currencyAddress):
        require ext_code.size(routerAddress)
        staticcall routerAddress.getDecimals(address arg1) with:
                gas gas_remaining wei
               args address(currencyAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if balance[address(arg1)] and 10^18 * eth.balance(this.address) > -1 / balance[address(arg1)]:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            return (10^18 * balance[address(arg1)] * eth.balance(this.address) / totalSupply)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if balance[address(arg1)] and 10^18 * eth.balance(this.address) / 10^ext_call.return_data[31 len 1] > -1 / balance[address(arg1)]:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            return (balance[address(arg1)] * 10^18 * eth.balance(this.address) / 10^ext_call.return_data[31 len 1] / totalSupply)
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
        if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        if balance[address(arg1)] and 10^18 * eth.balance(this.address) / s * t > -1 / balance[address(arg1)]:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        return (balance[address(arg1)] * 10^18 * eth.balance(this.address) / s * t / totalSupply)
    require ext_code.size(address(currencyAddress))
    staticcall address(currencyAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    staticcall routerAddress.getDecimals(address arg1) with:
            gas gas_remaining wei
           args address(currencyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if balance[address(arg1)] and 10^18 * ext_call.return_data[0] > -1 / balance[address(arg1)]:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        return (10^18 * balance[address(arg1)] * ext_call.return_data[0] / totalSupply)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        if balance[address(arg1)] and 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1] > -1 / balance[address(arg1)]:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        return (balance[address(arg1)] * 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1] / totalSupply)
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
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if balance[address(arg1)] and 10^18 * ext_call.return_data[0] / s * t > -1 / balance[address(arg1)]:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return (balance[address(arg1)] * 10^18 * ext_call.return_data[0] / s * t / totalSupply)
}

function sub_7eb71131(?) {
    if not address(currencyAddress):
        require ext_code.size(routerAddress)
        staticcall routerAddress.getDecimals(address arg1) with:
                gas gas_remaining wei
               args address(currencyAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not 10^18 * eth.balance(this.address):
                return 0
            if sub_fa5a2e62 and sub_5b382989 > -1 / sub_fa5a2e62:
                revert with 0, 17
            if not 10^18 * eth.balance(this.address):
                revert with 0, 18
            return (sub_fa5a2e62 * sub_5b382989 / 10^18 * eth.balance(this.address))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if not 10^18 * eth.balance(this.address) / 10^ext_call.return_data[31 len 1]:
                return 0
            if sub_fa5a2e62 and sub_5b382989 > -1 / sub_fa5a2e62:
                revert with 0, 17
            if not 10^18 * eth.balance(this.address) / 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (sub_fa5a2e62 * sub_5b382989 / 10^18 * eth.balance(this.address) / 10^ext_call.return_data[31 len 1])
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
        if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        if not 10^18 * eth.balance(this.address) / s * t:
            return 0
        if sub_fa5a2e62 and sub_5b382989 > -1 / sub_fa5a2e62:
            revert with 0, 17
        if not 10^18 * eth.balance(this.address) / s * t:
            revert with 0, 18
        return (sub_fa5a2e62 * sub_5b382989 / 10^18 * eth.balance(this.address) / s * t)
    require ext_code.size(address(currencyAddress))
    staticcall address(currencyAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    staticcall routerAddress.getDecimals(address arg1) with:
            gas gas_remaining wei
           args address(currencyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^18 * ext_call.return_data[0]:
            return 0
        if sub_fa5a2e62 and sub_5b382989 > -1 / sub_fa5a2e62:
            revert with 0, 17
        if not 10^18 * ext_call.return_data[0]:
            revert with 0, 18
        return (sub_fa5a2e62 * sub_5b382989 / 10^18 * ext_call.return_data[0])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        if not 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
            return 0
        if sub_fa5a2e62 and sub_5b382989 > -1 / sub_fa5a2e62:
            revert with 0, 17
        if not 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return (sub_fa5a2e62 * sub_5b382989 / 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
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
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if not 10^18 * ext_call.return_data[0] / s * t:
        return 0
    if sub_fa5a2e62 and sub_5b382989 > -1 / sub_fa5a2e62:
        revert with 0, 17
    if not 10^18 * ext_call.return_data[0] / s * t:
        revert with 0, 18
    return (sub_fa5a2e62 * sub_5b382989 / 10^18 * ext_call.return_data[0] / s * t)
}

function sub_fbbc7d7f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if tradingAddress != msg.sender:
        revert with 0, '!trading'
    if arg2:
        if not address(currencyAddress):
            mem[100] = address(currencyAddress)
            require ext_code.size(routerAddress)
            staticcall routerAddress.getDecimals(address arg1) with:
                    gas gas_remaining wei
                   args address(currencyAddress)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                    revert with 0, 17
                if arg2 >= 10^18 * eth.balance(this.address):
                    revert with 0, '!balance'
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    if arg2 >= 10^18 * eth.balance(this.address) / 10^ext_call.return_data[31 len 1]:
                        revert with 0, '!balance'
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
                    if eth.balance(this.address) and 10^18 > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if arg2 >= 10^18 * eth.balance(this.address) / s * t:
                        revert with 0, '!balance'
            if arg2:
                if address(arg1):
                    mem[ceil32(return_data.size) + 100] = address(currencyAddress)
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getDecimals(address arg1) with:
                            gas gas_remaining wei
                           args address(currencyAddress)
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if arg2 and 1 > -1 / arg2:
                            revert with 0, 17
                        if not address(currencyAddress):
                            if eth.balance(this.address) < arg2 / 10^18:
                                revert with 0, 'Address: insufficient balance'
                            call address(arg1) with:
                               value arg2 / 10^18 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
                            mem[(2 * ceil32(return_data.size)) + 164] = arg2 / 10^18
                            mem[(2 * ceil32(return_data.size)) + 96] = 68
                            mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
                            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(currencyAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 / 10^18, 0
                            mem[(2 * ceil32(return_data.size)) + 328] = 0
                            call address(currencyAddress) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 / 10^18, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 / 10^18, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require uint32(stor4), mem[132 len 28] == bool(uint32(stor4), mem[132 len 28])
                                    if not uint32(stor4), mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
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
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                revert with 0, 17
                            if not address(currencyAddress):
                                if eth.balance(this.address) < arg2 * 10^ext_call.return_data[31 len 1] / 10^18:
                                    revert with 0, 'Address: insufficient balance'
                                call address(arg1) with:
                                   value arg2 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(2 * ceil32(return_data.size)) + 164] = arg2 * 10^ext_call.return_data[31 len 1] / 10^18
                                mem[(2 * ceil32(return_data.size)) + 96] = 68
                                mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
                                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[(2 * ceil32(return_data.size)) + 196] = 32
                                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(currencyAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                mem[(2 * ceil32(return_data.size)) + 328] = 0
                                call address(currencyAddress) with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require uint32(stor4), mem[132 len 28] == bool(uint32(stor4), mem[132 len 28])
                                        if not uint32(stor4), mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
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
                            if arg2 and s * t > -1 / arg2:
                                revert with 0, 17
                            if not address(currencyAddress):
                                if eth.balance(this.address) < arg2 * s * t / 10^18:
                                    revert with 0, 'Address: insufficient balance'
                                call address(arg1) with:
                                   value arg2 * s * t / 10^18 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(2 * ceil32(return_data.size)) + 164] = arg2 * s * t / 10^18
                                mem[(2 * ceil32(return_data.size)) + 96] = 68
                                mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
                                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[(2 * ceil32(return_data.size)) + 196] = 32
                                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(currencyAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * s * t / 10^18, 0
                                mem[(2 * ceil32(return_data.size)) + 328] = 0
                                call address(currencyAddress) with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * s * t / 10^18, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * s * t / 10^18, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require uint32(stor4), mem[132 len 28] == bool(uint32(stor4), mem[132 len 28])
                                        if not uint32(stor4), mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
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
        else:
            mem[100] = this.address
            require ext_code.size(address(currencyAddress))
            staticcall address(currencyAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 100] = address(currencyAddress)
            require ext_code.size(routerAddress)
            staticcall routerAddress.getDecimals(address arg1) with:
                    gas gas_remaining wei
                   args address(currencyAddress)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if arg2 >= 10^18 * ext_call.return_data[0]:
                    revert with 0, '!balance'
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    if arg2 >= 10^18 * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                        revert with 0, '!balance'
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
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if arg2 >= 10^18 * ext_call.return_data[0] / s * t:
                        revert with 0, '!balance'
            if arg2:
                if address(arg1):
                    mem[(2 * ceil32(return_data.size)) + 100] = address(currencyAddress)
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getDecimals(address arg1) with:
                            gas gas_remaining wei
                           args address(currencyAddress)
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if arg2 and 1 > -1 / arg2:
                            revert with 0, 17
                        if not address(currencyAddress):
                            if eth.balance(this.address) < arg2 / 10^18:
                                revert with 0, 'Address: insufficient balance'
                            call address(arg1) with:
                               value arg2 / 10^18 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 164] = arg2 / 10^18
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(currencyAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 / 10^18, 0
                            mem[(4 * ceil32(return_data.size)) + 328] = 0
                            call address(currencyAddress) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 / 10^18, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 / 10^18, 0) << 288)
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
                                mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                                    if not mem[(4 * ceil32(return_data.size)) + 292]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                revert with 0, 17
                            if not address(currencyAddress):
                                if eth.balance(this.address) < arg2 * 10^ext_call.return_data[31 len 1] / 10^18:
                                    revert with 0, 'Address: insufficient balance'
                                call address(arg1) with:
                                   value arg2 * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(4 * ceil32(return_data.size)) + 164] = arg2 * 10^ext_call.return_data[31 len 1] / 10^18
                                mem[(4 * ceil32(return_data.size)) + 96] = 68
                                mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
                                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[(4 * ceil32(return_data.size)) + 196] = 32
                                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(currencyAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                mem[(4 * ceil32(return_data.size)) + 328] = 0
                                call address(currencyAddress) with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
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
                                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                                        if not mem[(4 * ceil32(return_data.size)) + 292]:
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
                            if arg2 and s * t > -1 / arg2:
                                revert with 0, 17
                            if not address(currencyAddress):
                                if eth.balance(this.address) < arg2 * s * t / 10^18:
                                    revert with 0, 'Address: insufficient balance'
                                call address(arg1) with:
                                   value arg2 * s * t / 10^18 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(4 * ceil32(return_data.size)) + 164] = arg2 * s * t / 10^18
                                mem[(4 * ceil32(return_data.size)) + 96] = 68
                                mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
                                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[(4 * ceil32(return_data.size)) + 196] = 32
                                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(currencyAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * s * t / 10^18, 0
                                mem[(4 * ceil32(return_data.size)) + 328] = 0
                                call address(currencyAddress) with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * s * t / 10^18, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * s * t / 10^18, 0) << 288)
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
                                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
