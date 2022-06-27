contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;
address stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor6;
array of struct stor7;
uint8 decimals;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function getCirculatingSupply() {
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor2]:
        revert with 0, 17
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor2] < balanceOf[stor3]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Insufficient Balance', 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][msg.sender] != -1:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 'Insufficient Allowance', 0
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 17
        allowance[address(arg1)][msg.sender] -= arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Insufficient Balance', 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function name() {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7.length):
                if 31 < uint255(stor7.length) * 0.5:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor7.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(uint255(stor7.length) * 0.5) + 192 len ceil32(uint255(stor7.length) * 0.5)] = mem[128 len ceil32(uint255(stor7.length) * 0.5)]
        if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
            mem[ceil32(uint255(stor7.length) * 0.5) + (uint255(stor7.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor7.length) * 0.5)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7.length):
            if 31 < uint255(stor7.length) * 0.5:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while (uint255(stor7.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x70a08231(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x95d89b41(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return balanceOf[address(arg1)]
            if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return owner
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            emit OwnershipTransferred(owner, 0);
            owner = 0
        if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if bool(stor7.length):
                if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor7.length):
                    if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor7.length):
                        if 31 < uint255(stor7.length) * 0.5:
                            mem[160] = uint256(stor7.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor7.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor7.length), data=mem[160 len ceil32(uint255(stor7.length) * 0.5)])
                        mem[160] = 256 * stor7.length.field_8
                else:
                    if bool(stor7.length) == stor7.length.field_1 < 32:
                        revert with 0, 34
                    if stor7.length.field_1:
                        if 31 < stor7.length.field_1:
                            mem[160] = uint256(stor7.field_0)
                            idx = 160
                            s = 0
                            while stor7.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor7[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor7.length), data=mem[160 len ceil32(uint255(stor7.length) * 0.5)])
                        mem[160] = 256 * stor7.length.field_8
                mem[ceil32(uint255(stor7.length) * 0.5) + 224 len ceil32(uint255(stor7.length) * 0.5)] = mem[160 len ceil32(uint255(stor7.length) * 0.5)]
                if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
                    mem[ceil32(uint255(stor7.length) * 0.5) + (uint255(stor7.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor7.length), data=mem[160 len ceil32(uint255(stor7.length) * 0.5)], mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor7.length) * 0.5)]), 
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if bool(stor7.length):
                if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor7.length):
                    if 31 < uint255(stor7.length) * 0.5:
                        mem[160] = uint256(stor7.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor7.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor7.length % 128, data=mem[160 len ceil32(stor7.length.field_1)])
                    mem[160] = 256 * stor7.length.field_8
            else:
                if bool(stor7.length) == stor7.length.field_1 < 32:
                    revert with 0, 34
                if stor7.length.field_1:
                    if 31 < stor7.length.field_1:
                        mem[160] = uint256(stor7.field_0)
                        idx = 160
                        s = 0
                        while stor7.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor7.length % 128, data=mem[160 len ceil32(stor7.length.field_1)])
                    mem[160] = 256 * stor7.length.field_8
            mem[ceil32(stor7.length.field_1) + 224 len ceil32(stor7.length.field_1)] = mem[160 len ceil32(stor7.length.field_1)]
            if ceil32(stor7.length.field_1) > stor7.length.field_1:
                mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 224] = 0
            return Array(len=stor7.length % 128, data=mem[160 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 224 len 2 * ceil32(stor7.length.field_1)]), 
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                return allowance[address(arg1)][address(arg2)]
            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(arg1):
                revert with 0, 'Ownable: new owner is the zero address'
            emit OwnershipTransferred(owner, address(arg1));
            owner = address(arg1)
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, address(arg1));
    else:
        if name() == uint32(call.func_hash) >> 224:
            require not msg.value
            if bool(stor6.length):
                if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor6.length):
                    if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6.length):
                        if 31 < uint255(stor6.length) * 0.5:
                            mem[160] = uint256(stor6.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor6.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor6.length), data=mem[160 len ceil32(uint255(stor6.length) * 0.5)])
                        mem[160] = 256 * stor6.length.field_8
                else:
                    if bool(stor6.length) == stor6.length.field_1 < 32:
                        revert with 0, 34
                    if stor6.length.field_1:
                        if 31 < stor6.length.field_1:
                            mem[160] = uint256(stor6.field_0)
                            idx = 160
                            s = 0
                            while stor6.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor6.length), data=mem[160 len ceil32(uint255(stor6.length) * 0.5)])
                        mem[160] = 256 * stor6.length.field_8
                mem[ceil32(uint255(stor6.length) * 0.5) + 224 len ceil32(uint255(stor6.length) * 0.5)] = mem[160 len ceil32(uint255(stor6.length) * 0.5)]
                if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
                    mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor6.length), data=mem[160 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if bool(stor6.length):
                if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor6.length):
                    if 31 < uint255(stor6.length) * 0.5:
                        mem[160] = uint256(stor6.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor6.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor6.length % 128, data=mem[160 len ceil32(stor6.length.field_1)])
                    mem[160] = 256 * stor6.length.field_8
            else:
                if bool(stor6.length) == stor6.length.field_1 < 32:
                    revert with 0, 34
                if stor6.length.field_1:
                    if 31 < stor6.length.field_1:
                        mem[160] = uint256(stor6.field_0)
                        idx = 160
                        s = 0
                        while stor6.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor6.length % 128, data=mem[160 len ceil32(stor6.length.field_1)])
                    mem[160] = 256 * stor6.length.field_8
            mem[ceil32(stor6.length.field_1) + 224 len ceil32(stor6.length.field_1)] = mem[160 len ceil32(stor6.length.field_1)]
            if ceil32(stor6.length.field_1) > stor6.length.field_1:
                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 224] = 0
            return Array(len=stor6.length % 128, data=mem[160 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 224 len 2 * ceil32(stor6.length.field_1)]), 
        if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            allowance[msg.sender][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, address(arg1));
        else:
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSupply
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x2b112e49(?????):
                    require unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return decimals
                require not msg.value
                if balanceOf[stor2] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if totalSupply < balanceOf[stor2]:
                    revert with 0, 17
                if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if totalSupply - balanceOf[stor2] < balanceOf[stor3]:
                    revert with 0, 17
                return (totalSupply - balanceOf[stor2] - balanceOf[stor3])
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if allowance[address(arg1)][msg.sender] != -1:
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'Insufficient Allowance', 0
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 17
                allowance[address(arg1)][msg.sender] -= arg3
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'Insufficient Balance', 0
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, address(arg1), address(arg2));
    return 1
}



}
