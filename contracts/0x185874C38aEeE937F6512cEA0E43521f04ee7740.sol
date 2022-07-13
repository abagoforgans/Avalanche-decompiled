contract main {




// =====================  Runtime code  =====================


const UNIT = 10^18


address owner;
address routerAddress;
address tradingAddress;
address treasuryAddress;
address poolAddress;
uint32 stor5;
address currencyAddress;
uint256 sub_835c2840;
uint256 pendingReward;
mapping of uint256 stor8;
mapping of uint256 stor9;

function pendingReward() {
    return pendingReward
}

function pool() {
    return poolAddress
}

function treasury() {
    return treasuryAddress
}

function sub_835c2840(?) {
    return sub_835c2840
}

function owner() {
    return owner
}

function currency() {
    return address(currencyAddress)
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

function sub_e38a195b(?) {
    require calldata.size - 4 >= 32
    if treasuryAddress != msg.sender:
        if poolAddress != msg.sender:
            revert with 0, '!treasury|pool'
    if pendingReward > !arg1:
        revert with 0, 17
    pendingReward += arg1
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
    staticcall routerAddress.0x61d027b3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    treasuryAddress = ext_call.return_data[12 len 20]
}

function updateRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1:
        require ext_code.size(tradingAddress)
        call tradingAddress.0x9413f25c with:
             gas gas_remaining wei
            args address(currencyAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(poolAddress)
        staticcall poolAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if pendingReward and 10^18 > -1 / pendingReward:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_835c2840 > !(10^18 * pendingReward / ext_call.return_data[0]):
                revert with 0, 17
            sub_835c2840 += 10^18 * pendingReward / ext_call.return_data[0]
            pendingReward = 0
        if sub_835c2840:
            require ext_code.size(poolAddress)
            staticcall poolAddress.0xf8b2cb4f with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_835c2840 < stor9[address(arg1)]:
                revert with 0, 17
            if ext_call.return_data[0] and sub_835c2840 - stor9[address(arg1)] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if stor8[address(arg1)] > !((sub_835c2840 * ext_call.return_data[0]) - (stor9[address(arg1)] * ext_call.return_data[0]) / 10^18):
                revert with 0, 17
            stor8[address(arg1)] += (sub_835c2840 * ext_call.return_data[0]) - (stor9[address(arg1)] * ext_call.return_data[0]) / 10^18
            stor9[address(arg1)] = sub_835c2840
}

function getClaimableReward() {
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return stor8[msg.sender]
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x8161fcba with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    if ext_call.return_data[12 len 20] != poolAddress:
        staticcall routerAddress.0xaf4f1796 with:
                gas gas_remaining wei
               args address(currencyAddress)
    else:
        staticcall routerAddress.0x327d9bee with:
                gas gas_remaining wei
               args address(currencyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tradingAddress)
    staticcall tradingAddress.0xc972701a with:
            gas gas_remaining wei
           args address(currencyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if pendingReward > !(ext_call.return_data[0] * ext_call.return_data[0] / 10000):
        revert with 0, 17
    if pendingReward + (ext_call.return_data[0] * ext_call.return_data[0] / 10000) and 10^18 > -1 / pendingReward + (ext_call.return_data[0] * ext_call.return_data[0] / 10000):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if sub_835c2840 > !((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0]):
        revert with 0, 17
    if not sub_835c2840 + ((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0]):
        return stor8[msg.sender]
    require ext_code.size(poolAddress)
    staticcall poolAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_835c2840 + ((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0]) < stor9[msg.sender]:
        revert with 0, 17
    if ext_call.return_data[0] and sub_835c2840 + ((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0]) - stor9[msg.sender] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if stor8[msg.sender] > !((sub_835c2840 * ext_call.return_data[0]) + ((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0] * ext_call.return_data[0]) - (stor9[msg.sender] * ext_call.return_data[0]) / 10^18):
        revert with 0, 17
    return (stor8[msg.sender] + ((sub_835c2840 * ext_call.return_data[0]) + ((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0] * ext_call.return_data[0]) - (stor9[msg.sender] * ext_call.return_data[0]) / 10^18))
}

function collectReward() {
    if not msg.sender:
        stor8[msg.sender] = 0
        if stor8[msg.sender]:
            if msg.sender:
                mem[100] = address(currencyAddress)
                require ext_code.size(routerAddress)
                staticcall routerAddress.0xcf54aaa0 with:
                        gas gas_remaining wei
                       args address(currencyAddress)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if stor8[msg.sender] and 1 > -1 / stor8[msg.sender]:
                        revert with 0, 17
                    if not address(currencyAddress):
                        if eth.balance(this.address) < stor8[msg.sender] / 10^18:
                            revert with 0, 'Address: insufficient balance'
                        call msg.sender with:
                           value stor8[msg.sender] / 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                    else:
                        mem[ceil32(return_data.size) + 132] = msg.sender
                        mem[ceil32(return_data.size) + 164] = stor8[msg.sender] / 10^18
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(currencyAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call address(currencyAddress) with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require uint32(stor5), mem[132 len 28] == bool(uint32(stor5), mem[132 len 28])
                                if not uint32(stor5), mem[132 len 28]:
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
                        if stor8[msg.sender] and 10^ext_call.return_data[31 len 1] > -1 / stor8[msg.sender]:
                            revert with 0, 17
                        if not address(currencyAddress):
                            if eth.balance(this.address) < stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18:
                                revert with 0, 'Address: insufficient balance'
                            call msg.sender with:
                               value stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                        else:
                            mem[ceil32(return_data.size) + 132] = msg.sender
                            mem[ceil32(return_data.size) + 164] = stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(currencyAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call address(currencyAddress) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require uint32(stor5), mem[132 len 28] == bool(uint32(stor5), mem[132 len 28])
                                    if not uint32(stor5), mem[132 len 28]:
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
                        if stor8[msg.sender] and s * t > -1 / stor8[msg.sender]:
                            revert with 0, 17
                        if not address(currencyAddress):
                            if eth.balance(this.address) < stor8[msg.sender] * s * t / 10^18:
                                revert with 0, 'Address: insufficient balance'
                            call msg.sender with:
                               value stor8[msg.sender] * s * t / 10^18 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                        else:
                            mem[ceil32(return_data.size) + 132] = msg.sender
                            mem[ceil32(return_data.size) + 164] = stor8[msg.sender] * s * t / 10^18
                            mem[ceil32(return_data.size) + 96] = 68
                            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 196] = 32
                            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(currencyAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0
                            mem[ceil32(return_data.size) + 328] = 0
                            call address(currencyAddress) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require uint32(stor5), mem[132 len 28] == bool(uint32(stor5), mem[132 len 28])
                                    if not uint32(stor5), mem[132 len 28]:
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
            emit 0x410fbfee: msg.sender, poolAddress, address(currencyAddress), stor8[msg.sender]
    else:
        mem[100] = address(currencyAddress)
        require ext_code.size(tradingAddress)
        call tradingAddress.0x9413f25c with:
             gas gas_remaining wei
            args address(currencyAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(poolAddress)
        staticcall poolAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if pendingReward and 10^18 > -1 / pendingReward:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_835c2840 > !(10^18 * pendingReward / ext_call.return_data[0]):
                revert with 0, 17
            sub_835c2840 += 10^18 * pendingReward / ext_call.return_data[0]
            pendingReward = 0
        if not sub_835c2840:
            stor8[msg.sender] = 0
            if stor8[msg.sender]:
                if msg.sender:
                    mem[ceil32(return_data.size) + 100] = address(currencyAddress)
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.0xcf54aaa0 with:
                            gas gas_remaining wei
                           args address(currencyAddress)
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if stor8[msg.sender] and 1 > -1 / stor8[msg.sender]:
                            revert with 0, 17
                        if not address(currencyAddress):
                            if eth.balance(this.address) < stor8[msg.sender] / 10^18:
                                revert with 0, 'Address: insufficient balance'
                            call msg.sender with:
                               value stor8[msg.sender] / 10^18 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 164] = stor8[msg.sender] / 10^18
                            mem[(2 * ceil32(return_data.size)) + 96] = 68
                            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(currencyAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0
                            mem[(2 * ceil32(return_data.size)) + 328] = 0
                            call address(currencyAddress) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require uint32(stor5), mem[132 len 28] == bool(uint32(stor5), mem[132 len 28])
                                    if not uint32(stor5), mem[132 len 28]:
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
                            if stor8[msg.sender] and 10^ext_call.return_data[31 len 1] > -1 / stor8[msg.sender]:
                                revert with 0, 17
                            if not address(currencyAddress):
                                if eth.balance(this.address) < stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18:
                                    revert with 0, 'Address: insufficient balance'
                                call msg.sender with:
                                   value stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 164] = stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18
                                mem[(2 * ceil32(return_data.size)) + 96] = 68
                                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[(2 * ceil32(return_data.size)) + 196] = 32
                                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(currencyAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                mem[(2 * ceil32(return_data.size)) + 328] = 0
                                call address(currencyAddress) with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require uint32(stor5), mem[132 len 28] == bool(uint32(stor5), mem[132 len 28])
                                        if not uint32(stor5), mem[132 len 28]:
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
                            if stor8[msg.sender] and s * t > -1 / stor8[msg.sender]:
                                revert with 0, 17
                            if not address(currencyAddress):
                                if eth.balance(this.address) < stor8[msg.sender] * s * t / 10^18:
                                    revert with 0, 'Address: insufficient balance'
                                call msg.sender with:
                                   value stor8[msg.sender] * s * t / 10^18 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 164] = stor8[msg.sender] * s * t / 10^18
                                mem[(2 * ceil32(return_data.size)) + 96] = 68
                                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[(2 * ceil32(return_data.size)) + 196] = 32
                                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(currencyAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0
                                mem[(2 * ceil32(return_data.size)) + 328] = 0
                                call address(currencyAddress) with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require uint32(stor5), mem[132 len 28] == bool(uint32(stor5), mem[132 len 28])
                                        if not uint32(stor5), mem[132 len 28]:
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
                emit 0x410fbfee: msg.sender, poolAddress, address(currencyAddress), stor8[msg.sender]
        else:
            mem[ceil32(return_data.size) + 100] = msg.sender
            require ext_code.size(poolAddress)
            staticcall poolAddress.0xf8b2cb4f with:
                    gas gas_remaining wei
                   args msg.sender
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_835c2840 < stor9[address(msg.sender)]:
                revert with 0, 17
            if ext_call.return_data[0] and sub_835c2840 - stor9[address(msg.sender)] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if stor8[address(msg.sender)] > !((sub_835c2840 * ext_call.return_data[0]) - (stor9[address(msg.sender)] * ext_call.return_data[0]) / 10^18):
                revert with 0, 17
            stor8[address(msg.sender)] += (sub_835c2840 * ext_call.return_data[0]) - (stor9[address(msg.sender)] * ext_call.return_data[0]) / 10^18
            stor9[address(msg.sender)] = sub_835c2840
            stor8[msg.sender] = 0
            if stor8[msg.sender]:
                if msg.sender:
                    mem[(2 * ceil32(return_data.size)) + 100] = address(currencyAddress)
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.0xcf54aaa0 with:
                            gas gas_remaining wei
                           args address(currencyAddress)
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if stor8[msg.sender] and 1 > -1 / stor8[msg.sender]:
                            revert with 0, 17
                        if not address(currencyAddress):
                            if eth.balance(this.address) < stor8[msg.sender] / 10^18:
                                revert with 0, 'Address: insufficient balance'
                            call msg.sender with:
                               value stor8[msg.sender] / 10^18 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                            mem[(4 * ceil32(return_data.size)) + 164] = stor8[msg.sender] / 10^18
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(currencyAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0
                            mem[(4 * ceil32(return_data.size)) + 328] = 0
                            call address(currencyAddress) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require uint32(stor5), mem[132 len 28] == bool(uint32(stor5), mem[132 len 28])
                                    if not uint32(stor5), mem[132 len 28]:
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
                            if stor8[msg.sender] and 10^ext_call.return_data[31 len 1] > -1 / stor8[msg.sender]:
                                revert with 0, 17
                            if not address(currencyAddress):
                                if eth.balance(this.address) < stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18:
                                    revert with 0, 'Address: insufficient balance'
                                call msg.sender with:
                                   value stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                                mem[(4 * ceil32(return_data.size)) + 164] = stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18
                                mem[(4 * ceil32(return_data.size)) + 96] = 68
                                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[(4 * ceil32(return_data.size)) + 196] = 32
                                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(currencyAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                mem[(4 * ceil32(return_data.size)) + 328] = 0
                                call address(currencyAddress) with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require uint32(stor5), mem[132 len 28] == bool(uint32(stor5), mem[132 len 28])
                                        if not uint32(stor5), mem[132 len 28]:
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
                            if stor8[msg.sender] and s * t > -1 / stor8[msg.sender]:
                                revert with 0, 17
                            if not address(currencyAddress):
                                if eth.balance(this.address) < stor8[msg.sender] * s * t / 10^18:
                                    revert with 0, 'Address: insufficient balance'
                                call msg.sender with:
                                   value stor8[msg.sender] * s * t / 10^18 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                                mem[(4 * ceil32(return_data.size)) + 164] = stor8[msg.sender] * s * t / 10^18
                                mem[(4 * ceil32(return_data.size)) + 96] = 68
                                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                mem[(4 * ceil32(return_data.size)) + 196] = 32
                                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(currencyAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0
                                mem[(4 * ceil32(return_data.size)) + 328] = 0
                                call address(currencyAddress) with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require uint32(stor5), mem[132 len 28] == bool(uint32(stor5), mem[132 len 28])
                                        if not uint32(stor5), mem[132 len 28]:
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
                emit 0x410fbfee: msg.sender, poolAddress, address(currencyAddress), stor8[msg.sender]
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x835c2840(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe38a195b(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xe38a195b(?????):
                    if unknown_0xe5a6b10f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return address(currencyAddress)
                    if unknown_0xec44acf2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return tradingAddress
                    if uint32(call.func_hash) >> 224 != unknown_0xf887ea40(?????):
                    require not msg.value
                    return routerAddress
                require not msg.value
                require calldata.size - 4 >= 32
                if treasuryAddress != msg.sender:
                    if poolAddress != msg.sender:
                        revert with 0, '!treasury|pool'
                if pendingReward > !arg1:
                    revert with 0, 17
                pendingReward += arg1
            else:
                if unknown_0x835c2840(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_835c2840
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x9d8e2177(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 10^18
                if unknown_0xc0d78655(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, '!owner'
                    routerAddress = address(arg1)
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xec44acf2 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    tradingAddress = ext_call.return_data[12 len 20]
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.0x61d027b3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    treasuryAddress = ext_call.return_data[12 len 20]
        else:
            if unknown_0x54c5aee1(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x137ee36e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return pendingReward
                if uint32(call.func_hash) >> 224 != unknown_0x13af4035(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x16f0115b(?????):
                    require not msg.value
                    return poolAddress
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, '!owner'
                owner = address(arg1)
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x54c5aee1(?????):
                    if unknown_0x5fd61965(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if address(arg1):
                            require ext_code.size(tradingAddress)
                            call tradingAddress.0x9413f25c with:
                                 gas gas_remaining wei
                                args address(currencyAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(poolAddress)
                            staticcall poolAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                if pendingReward and 10^18 > -1 / pendingReward:
                                    revert with 0, 17
                                if not ext_call.return_data[0]:
                                    revert with 0, 18
                                if sub_835c2840 > !(10^18 * pendingReward / ext_call.return_data[0]):
                                    revert with 0, 17
                                sub_835c2840 += 10^18 * pendingReward / ext_call.return_data[0]
                                pendingReward = 0
                            if sub_835c2840:
                                require ext_code.size(poolAddress)
                                staticcall poolAddress.0xf8b2cb4f with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_835c2840 < stor9[address(arg1)]:
                                    revert with 0, 17
                                if ext_call.return_data[0] and sub_835c2840 - stor9[address(arg1)] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if stor8[address(arg1)] > !((sub_835c2840 * ext_call.return_data[0]) - (stor9[address(arg1)] * ext_call.return_data[0]) / 10^18):
                                    revert with 0, 17
                                stor8[address(arg1)] += (sub_835c2840 * ext_call.return_data[0]) - (stor9[address(arg1)] * ext_call.return_data[0]) / 10^18
                                stor9[address(arg1)] = sub_835c2840
                    if unknown_0x61d027b3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return treasuryAddress
                    if uint32(call.func_hash) >> 224 != unknown_0x706b3f5e(?????):
                    require not msg.value
                    require ext_code.size(poolAddress)
                    staticcall poolAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        return stor8[msg.sender]
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.0x8161fcba with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(routerAddress)
                    if ext_call.return_data[12 len 20] != poolAddress:
                        staticcall routerAddress.0xaf4f1796 with:
                                gas gas_remaining wei
                               args address(currencyAddress)
                    else:
                        staticcall routerAddress.0x327d9bee with:
                                gas gas_remaining wei
                               args address(currencyAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tradingAddress)
                    staticcall tradingAddress.0xc972701a with:
                            gas gas_remaining wei
                           args address(currencyAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if pendingReward > !(ext_call.return_data[0] * ext_call.return_data[0] / 10000):
                        revert with 0, 17
                    if pendingReward + (ext_call.return_data[0] * ext_call.return_data[0] / 10000) and 10^18 > -1 / pendingReward + (ext_call.return_data[0] * ext_call.return_data[0] / 10000):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if sub_835c2840 > !((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0]):
                        revert with 0, 17
                    if not sub_835c2840 + ((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0]):
                        return stor8[msg.sender]
                    require ext_code.size(poolAddress)
                    staticcall poolAddress.0xf8b2cb4f with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_835c2840 + ((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0]) < stor9[msg.sender]:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_835c2840 + ((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0]) - stor9[msg.sender] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if stor8[msg.sender] > !((sub_835c2840 * ext_call.return_data[0]) + ((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0] * ext_call.return_data[0]) - (stor9[msg.sender] * ext_call.return_data[0]) / 10^18):
                        revert with 0, 17
                    return (stor8[msg.sender] + ((sub_835c2840 * ext_call.return_data[0]) + ((10^18 * pendingReward) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10000) / ext_call.return_data[0] * ext_call.return_data[0]) - (stor9[msg.sender] * ext_call.return_data[0]) / 10^18))
                require not msg.value
                if not msg.sender:
                    stor8[msg.sender] = 0
                    if stor8[msg.sender]:
                        if msg.sender:
                            mem[132] = address(currencyAddress)
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0xcf54aaa0 with:
                                    gas gas_remaining wei
                                   args address(currencyAddress)
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if not ext_call.return_data[31 len 1]:
                                if stor8[msg.sender] and 1 > -1 / stor8[msg.sender]:
                                    revert with 0, 17
                                if not address(currencyAddress):
                                    if eth.balance(this.address) < stor8[msg.sender] / 10^18:
                                        revert with 0, 'Address: insufficient balance'
                                    call msg.sender with:
                                       value stor8[msg.sender] / 10^18 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                else:
                                    mem[ceil32(return_data.size) + 164] = msg.sender
                                    mem[ceil32(return_data.size) + 196] = stor8[msg.sender] / 10^18
                                    mem[ceil32(return_data.size) + 128] = 68
                                    mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(return_data.size) + 228] = 32
                                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(currencyAddress)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0
                                    mem[ceil32(return_data.size) + 360] = 0
                                    call address(currencyAddress) with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) << 288)
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
                                    if stor8[msg.sender] and 10^ext_call.return_data[31 len 1] > -1 / stor8[msg.sender]:
                                        revert with 0, 17
                                    if not address(currencyAddress):
                                        if eth.balance(this.address) < stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call msg.sender with:
                                           value stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    else:
                                        mem[ceil32(return_data.size) + 164] = msg.sender
                                        mem[ceil32(return_data.size) + 196] = stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18
                                        mem[ceil32(return_data.size) + 128] = 68
                                        mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(return_data.size) + 228] = 32
                                        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(currencyAddress)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                        mem[ceil32(return_data.size) + 360] = 0
                                        call address(currencyAddress) with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
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
                                    if stor8[msg.sender] and s * t > -1 / stor8[msg.sender]:
                                        revert with 0, 17
                                    if not address(currencyAddress):
                                        if eth.balance(this.address) < stor8[msg.sender] * s * t / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call msg.sender with:
                                           value stor8[msg.sender] * s * t / 10^18 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    else:
                                        mem[ceil32(return_data.size) + 164] = msg.sender
                                        mem[ceil32(return_data.size) + 196] = stor8[msg.sender] * s * t / 10^18
                                        mem[ceil32(return_data.size) + 128] = 68
                                        mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(return_data.size) + 228] = 32
                                        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(currencyAddress)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0
                                        mem[ceil32(return_data.size) + 360] = 0
                                        call address(currencyAddress) with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) << 288)
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
                        emit 0x410fbfee: msg.sender, poolAddress, address(currencyAddress), stor8[msg.sender]
                else:
                    mem[132] = address(currencyAddress)
                    require ext_code.size(tradingAddress)
                    call tradingAddress.0x9413f25c with:
                         gas gas_remaining wei
                        args address(currencyAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    staticcall poolAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if pendingReward and 10^18 > -1 / pendingReward:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if sub_835c2840 > !(10^18 * pendingReward / ext_call.return_data[0]):
                            revert with 0, 17
                        sub_835c2840 += 10^18 * pendingReward / ext_call.return_data[0]
                        pendingReward = 0
                    if not sub_835c2840:
                        stor8[msg.sender] = 0
                        if stor8[msg.sender]:
                            if msg.sender:
                                mem[ceil32(return_data.size) + 132] = address(currencyAddress)
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.0xcf54aaa0 with:
                                        gas gas_remaining wei
                                       args address(currencyAddress)
                                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                if not ext_call.return_data[31 len 1]:
                                    if stor8[msg.sender] and 1 > -1 / stor8[msg.sender]:
                                        revert with 0, 17
                                    if not address(currencyAddress):
                                        if eth.balance(this.address) < stor8[msg.sender] / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call msg.sender with:
                                           value stor8[msg.sender] / 10^18 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 196] = stor8[msg.sender] / 10^18
                                        mem[(2 * ceil32(return_data.size)) + 128] = 68
                                        mem[(2 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[(2 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                        mem[(2 * ceil32(return_data.size)) + 228] = 32
                                        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(currencyAddress)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(2 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0
                                        mem[(2 * ceil32(return_data.size)) + 360] = 0
                                        call address(currencyAddress) with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) << 288)
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
                                else:
                                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                        if stor8[msg.sender] and 10^ext_call.return_data[31 len 1] > -1 / stor8[msg.sender]:
                                            revert with 0, 17
                                        if not address(currencyAddress):
                                            if eth.balance(this.address) < stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call msg.sender with:
                                               value stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 196] = stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18
                                            mem[(2 * ceil32(return_data.size)) + 128] = 68
                                            mem[(2 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                            mem[(2 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(2 * ceil32(return_data.size)) + 228] = 32
                                            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(currencyAddress)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(2 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                            mem[(2 * ceil32(return_data.size)) + 360] = 0
                                            call address(currencyAddress) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
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
                                        if stor8[msg.sender] and s * t > -1 / stor8[msg.sender]:
                                            revert with 0, 17
                                        if not address(currencyAddress):
                                            if eth.balance(this.address) < stor8[msg.sender] * s * t / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call msg.sender with:
                                               value stor8[msg.sender] * s * t / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                            mem[(2 * ceil32(return_data.size)) + 196] = stor8[msg.sender] * s * t / 10^18
                                            mem[(2 * ceil32(return_data.size)) + 128] = 68
                                            mem[(2 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                            mem[(2 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(2 * ceil32(return_data.size)) + 228] = 32
                                            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(currencyAddress)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(2 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0
                                            mem[(2 * ceil32(return_data.size)) + 360] = 0
                                            call address(currencyAddress) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) << 288)
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
                            emit 0x410fbfee: msg.sender, poolAddress, address(currencyAddress), stor8[msg.sender]
                    else:
                        mem[ceil32(return_data.size) + 132] = msg.sender
                        require ext_code.size(poolAddress)
                        staticcall poolAddress.0xf8b2cb4f with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_835c2840 < stor9[address(msg.sender)]:
                            revert with 0, 17
                        if ext_call.return_data[0] and sub_835c2840 - stor9[address(msg.sender)] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if stor8[address(msg.sender)] > !((sub_835c2840 * ext_call.return_data[0]) - (stor9[address(msg.sender)] * ext_call.return_data[0]) / 10^18):
                            revert with 0, 17
                        stor8[address(msg.sender)] += (sub_835c2840 * ext_call.return_data[0]) - (stor9[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                        stor9[address(msg.sender)] = sub_835c2840
                        stor8[msg.sender] = 0
                        if stor8[msg.sender]:
                            if msg.sender:
                                mem[(2 * ceil32(return_data.size)) + 132] = address(currencyAddress)
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.0xcf54aaa0 with:
                                        gas gas_remaining wei
                                       args address(currencyAddress)
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                if not ext_call.return_data[31 len 1]:
                                    if stor8[msg.sender] and 1 > -1 / stor8[msg.sender]:
                                        revert with 0, 17
                                    if not address(currencyAddress):
                                        if eth.balance(this.address) < stor8[msg.sender] / 10^18:
                                            revert with 0, 'Address: insufficient balance'
                                        call msg.sender with:
                                           value stor8[msg.sender] / 10^18 wei
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                                        mem[(4 * ceil32(return_data.size)) + 196] = stor8[msg.sender] / 10^18
                                        mem[(4 * ceil32(return_data.size)) + 128] = 68
                                        mem[(4 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[(4 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                        mem[(4 * ceil32(return_data.size)) + 228] = 32
                                        mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(currencyAddress)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[(4 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0
                                        mem[(4 * ceil32(return_data.size)) + 360] = 0
                                        call address(currencyAddress) with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] / 10^18, 0) << 288)
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
                                else:
                                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                        if stor8[msg.sender] and 10^ext_call.return_data[31 len 1] > -1 / stor8[msg.sender]:
                                            revert with 0, 17
                                        if not address(currencyAddress):
                                            if eth.balance(this.address) < stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call msg.sender with:
                                               value stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                                            mem[(4 * ceil32(return_data.size)) + 196] = stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18
                                            mem[(4 * ceil32(return_data.size)) + 128] = 68
                                            mem[(4 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                            mem[(4 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(4 * ceil32(return_data.size)) + 228] = 32
                                            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(currencyAddress)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(4 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0
                                            mem[(4 * ceil32(return_data.size)) + 360] = 0
                                            call address(currencyAddress) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * 10^ext_call.return_data[31 len 1] / 10^18, 0) << 288)
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
                                        if stor8[msg.sender] and s * t > -1 / stor8[msg.sender]:
                                            revert with 0, 17
                                        if not address(currencyAddress):
                                            if eth.balance(this.address) < stor8[msg.sender] * s * t / 10^18:
                                                revert with 0, 'Address: insufficient balance'
                                            call msg.sender with:
                                               value stor8[msg.sender] * s * t / 10^18 wei
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                        else:
                                            mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                                            mem[(4 * ceil32(return_data.size)) + 196] = stor8[msg.sender] * s * t / 10^18
                                            mem[(4 * ceil32(return_data.size)) + 128] = 68
                                            mem[(4 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                            mem[(4 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                                            mem[(4 * ceil32(return_data.size)) + 228] = 32
                                            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            if not ext_code.size(address(currencyAddress)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[(4 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0
                                            mem[(4 * ceil32(return_data.size)) + 360] = 0
                                            call address(currencyAddress) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor8[msg.sender] * s * t / 10^18, 0) << 288)
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
                            emit 0x410fbfee: msg.sender, poolAddress, address(currencyAddress), stor8[msg.sender]
}



}
