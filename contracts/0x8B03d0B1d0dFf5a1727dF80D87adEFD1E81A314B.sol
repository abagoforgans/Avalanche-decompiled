contract main {




// =====================  Runtime code  =====================


#
#  - swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#  - sub_7eac043a(?)
#
const decimals = 18


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
address WAVAXAddress;
address token0Address;
address token1Address;

function token0() {
    return token0Address
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function WAVAX() {
    return WAVAXAddress
}

function owner() {
    return owner
}

function token1() {
    return token1Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function removeLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg5 == arg5
    return arg2, eth.balance(msg.sender)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    if arg3.length > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    mem[64] = (32 * arg3.length) + 128
    if not arg3.length:
        if arg3.length < 1:
            revert with 0, 17
        if var34002 < arg3.length - 1:
            if 1 > !var38002:
                revert with 0, 17
            idx = var40003 + 1
            s = var40007
            while idx < arg3.length:
                mem[(32 * idx) + 128] = arg1
                if s == -1:
                    revert with 0, 17
                if arg3.length < 1:
                    revert with 0, 17
                if s + 1 < arg3.length - 1:
                    if 1 > !(s + 1):
                        revert with 0, 17
                    idx = s + 2
                    s = s + 1
                    continue 
                mem[(32 * arg3.length) + 128] = 32
                mem[(32 * arg3.length) + 160] = arg3.length
                idx = 0
                s = mem[64] + 64
                t = 128
                while idx < arg3.length:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * arg3.length) + -mem[64] + 192
            revert with 0, 50
        mem[(32 * arg3.length) + 128] = 32
        mem[(32 * arg3.length) + 160] = arg3.length
        mem[(32 * arg3.length) + 192 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    else:
        mem[128 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        if arg3.length < 1:
            revert with 0, 17
        if var35002 < arg3.length - 1:
            if 1 > !var39002:
                revert with 0, 17
            idx = var41003 + 1
            s = var41007
            while idx < arg3.length:
                mem[(32 * idx) + 128] = arg1
                if s == -1:
                    revert with 0, 17
                if arg3.length < 1:
                    revert with 0, 17
                if s + 1 < arg3.length - 1:
                    if 1 > !(s + 1):
                        revert with 0, 17
                    idx = s + 2
                    s = s + 1
                    continue 
                mem[(32 * arg3.length) + 128] = 32
                mem[(32 * arg3.length) + 160] = arg3.length
                idx = 0
                s = mem[64] + 64
                t = 128
                while idx < arg3.length:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * arg3.length) + -mem[64] + 192
            revert with 0, 50
        mem[(32 * arg3.length) + 128] = 32
        mem[(32 * arg3.length) + 160] = arg3.length
        mem[(32 * arg3.length) + 192 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
    return memory
      from (32 * arg3.length) + 128
       len (96 * arg3.length) + 64
}

function name() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x70a08231(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x95d89b41(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if bool(stor5.length):
                    if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor5.length):
                        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor5.length):
                            if 31 < uint255(stor5.length) * 0.5:
                                mem[160] = uint256(stor5.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor5.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor5[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                            mem[160] = 256 * stor5.length.field_8
                    else:
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 0, 34
                        if stor5.length.field_1:
                            if 31 < stor5.length.field_1:
                                mem[160] = uint256(stor5.field_0)
                                idx = 160
                                s = 0
                                while stor5.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor5[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                            mem[160] = 256 * stor5.length.field_8
                    mem[ceil32(uint255(stor5.length) * 0.5) + 224 len ceil32(uint255(stor5.length) * 0.5)] = mem[160 len ceil32(uint255(stor5.length) * 0.5)]
                    if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
                        mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
                if bool(stor5.length) == stor5.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor5.length):
                    if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor5.length):
                        if 31 < uint255(stor5.length) * 0.5:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor5.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                        mem[160] = 256 * stor5.length.field_8
                else:
                    if bool(stor5.length) == stor5.length.field_1 < 32:
                        revert with 0, 34
                    if stor5.length.field_1:
                        if 31 < stor5.length.field_1:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while stor5.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                        mem[160] = 256 * stor5.length.field_8
                mem[ceil32(stor5.length.field_1) + 224 len ceil32(stor5.length.field_1)] = mem[160 len ceil32(stor5.length.field_1)]
                if ceil32(stor5.length.field_1) > stor5.length.field_1:
                    mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 224] = 0
                return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 224 len 2 * ceil32(stor5.length.field_1)]), 
            if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if allowance[msg.sender][address(cd[4])] < cd[36]:
                    revert with 0, 'ERC20: decreased allowance below zero'
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(cd[4]):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] - cd[36]
                emit Approval((allowance[msg.sender][address(cd[4])] - cd[36]), msg.sender, address(cd[4]));
                return 1
            if unknown_0xa9059cbb(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < cd[36]:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= cd[36]
                if balanceOf[address(cd[4])] > !cd[36]:
                    revert with 0, 17
                balanceOf[address(cd[4])] += cd[36]
                emit Transfer(cd[36], msg.sender, address(cd[4]));
                return 1
            if unknown_0xd21220a7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return token1Address
            if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                return allowance[address(cd[4])][address(cd[36])]
            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(cd[4]):
                revert with 0, 'Ownable: new owner is the zero address'
            owner = address(cd[4])
            emit OwnershipTransferred(owner, address(cd[4]));
        else:
            if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return balanceOf[address(cd[4])]
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                if unknown_0x73b295c2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return WAVAXAddress
                if uint32(call.func_hash) >> 224 != unknown_0x7eac043a(?????):
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[68] == address(cd[68])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[164] = address(cd[68])
                mem[196] = msg.sender
                mem[228] = cd[36]
                mem[128] = 100
                mem[164 len 28] = address(cd[68]) << 64
                mem[160 len 4] = unknown_0x23b872dd(?????)
                mem[260] = 32
                mem[292] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 128] = unknown_0x23b872dd(?????), address(cd[68]) << 64, 0, msg.sender, cd[36], 0
                mem[424] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), address(cd[68]) << 64, 0, msg.sender, cd[36], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), address(cd[68]) << 64, 0, msg.sender, cd[36], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    require not mem[96]
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[356] == bool(mem[356])
                    if not mem[356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if unknown_0x313ce567(?????) > uint32(call.func_hash) >> 224:
        if uint32(call.func_hash) >> 224 != name():
            if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(cd[4]):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(cd[4])] = cd[36]
                emit Approval(cd[36], msg.sender, address(cd[4]));
            else:
                if token0() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return token0Address
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalSupply
                require unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
            return 1
        require not msg.value
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4.length):
                    if 31 < uint255(stor4.length) * 0.5:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor4.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                    mem[160] = 256 * stor4.length.field_8
            else:
                if bool(stor4.length) == stor4.length.field_1 < 32:
                    revert with 0, 34
                if stor4.length.field_1:
                    if 31 < stor4.length.field_1:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while stor4.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                    mem[160] = 256 * stor4.length.field_8
            mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
            if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[160] = uint256(stor4.field_0)
                    idx = 160
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                mem[160] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[160] = uint256(stor4.field_0)
                    idx = 160
                    s = 0
                    while stor4.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                mem[160] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 224] = 0
        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
    if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return 18
    if unknown_0x33c6b725(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 192
        require cd[4] == address(cd[4])
        require cd[132] == address(cd[132])
        return cd[36], eth.balance(msg.sender)
    if uint32(call.func_hash) >> 224 != unknown_0x38ed1739(?????):
        if unknown_0x39509351(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if allowance[msg.sender][address(cd[4])] > !cd[36]:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] + cd[36]
            emit Approval((allowance[msg.sender][address(cd[4])] + cd[36]), msg.sender, address(cd[4]));
            return 1
        require unknown_0x676528d1(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 160
        require cd[68] <= test266151307()
        require cd[68] + 35 < calldata.size
        require ('cd', 68).length <= test266151307()
        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
        require cd[100] == address(cd[100])
        if ('cd', 68).length > test266151307():
            revert with 0, 65
        mem[128] = ('cd', 68).length
        mem[64] = (32 * ('cd', 68).length) + 160
        if not ('cd', 68).length:
            if ('cd', 68).length < 1:
                revert with 0, 17
            if var42002 < ('cd', 68).length - 1:
                if 1 > !var46002:
                    revert with 0, 17
                idx = var48003 + 1
                s = var48007
                while idx < ('cd', 68).length:
                    mem[(32 * idx) + 160] = cd[4]
                    if s == -1:
                        revert with 0, 17
                    if ('cd', 68).length < 1:
                        revert with 0, 17
                    if s + 1 < ('cd', 68).length - 1:
                        if 1 > !(s + 1):
                            revert with 0, 17
                        idx = s + 2
                        s = s + 1
                        continue 
                    mem[(32 * ('cd', 68).length) + 160] = 32
                    mem[(32 * ('cd', 68).length) + 192] = ('cd', 68).length
                    idx = 0
                    s = mem[64] + 64
                    t = 160
                    while idx < ('cd', 68).length:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (64 * ('cd', 68).length) + -mem[64] + 224
                revert with 0, 50
            mem[(32 * ('cd', 68).length) + 160] = 32
            mem[(32 * ('cd', 68).length) + 192] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + 224 len 32 * ('cd', 68).length] = mem[160 len 32 * ('cd', 68).length]
        else:
            mem[160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
            if ('cd', 68).length < 1:
                revert with 0, 17
            if var43002 < ('cd', 68).length - 1:
                if 1 > !var47002:
                    revert with 0, 17
                idx = var49003 + 1
                s = var49007
                while idx < ('cd', 68).length:
                    mem[(32 * idx) + 160] = cd[4]
                    if s == -1:
                        revert with 0, 17
                    if ('cd', 68).length < 1:
                        revert with 0, 17
                    if s + 1 < ('cd', 68).length - 1:
                        if 1 > !(s + 1):
                            revert with 0, 17
                        idx = s + 2
                        s = s + 1
                        continue 
                    mem[(32 * ('cd', 68).length) + 160] = 32
                    mem[(32 * ('cd', 68).length) + 192] = ('cd', 68).length
                    idx = 0
                    s = mem[64] + 64
                    t = 160
                    while idx < ('cd', 68).length:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (64 * ('cd', 68).length) + -mem[64] + 224
                revert with 0, 50
            mem[(32 * ('cd', 68).length) + 160] = 32
            mem[(32 * ('cd', 68).length) + 192] = ('cd', 68).length
            mem[(32 * ('cd', 68).length) + 224 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        return memory
          from (32 * ('cd', 68).length) + 160
           len (96 * ('cd', 68).length) + 64
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    if 0 < ('cd', 68).length:
        require ('cd', 68)[0] == address(('cd', 68)[0])
        mem[164] = msg.sender
        mem[196] = address(cd[100])
        mem[228] = cd[4]
        mem[128] = 100
        mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[160 len 4] = unknown_0x23b872dd(?????)
        mem[260] = 32
        mem[292] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(('cd', 68)[0])):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 128] = unknown_0x23b872dd(?????), msg.sender, address(cd[100]), cd[4], 0
        mem[424] = 0
        call address(('cd', 68)[0]) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(cd[100]), cd[4], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(cd[100]), cd[4], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            require not mem[96]
            if ('cd', 68).length > test266151307():
                revert with 0, 65
            mem[324] = ('cd', 68).length
            mem[64] = (32 * ('cd', 68).length) + 356
            if not ('cd', 68).length:
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if var72002 >= ('cd', 68).length - 1:
                    return Array(len=('cd', 68).length, data=mem[356 len 32 * ('cd', 68).length])
                if 1 > !var76002:
                    revert with 0, 17
                idx = var78003 + 1
                s = var78007
                while idx < ('cd', 68).length:
                    mem[(32 * idx) + 356] = cd[4]
                    if s == -1:
                        revert with 0, 17
                    if ('cd', 68).length < 1:
                        revert with 0, 17
                    if s + 1 < ('cd', 68).length - 1:
                        if 1 > !(s + 1):
                            revert with 0, 17
                        idx = s + 2
                        s = s + 1
                        continue 
                    mem[(32 * ('cd', 68).length) + 356] = 32
                    mem[(32 * ('cd', 68).length) + 388] = ('cd', 68).length
                    idx = 0
                    s = mem[64] + 64
                    t = 356
                    while idx < ('cd', 68).length:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (64 * ('cd', 68).length) + -mem[64] + 420
            else:
                mem[356 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                if ('cd', 68).length < 1:
                    revert with 0, 17
                if var73002 >= ('cd', 68).length - 1:
                    return Array(len=('cd', 68).length, data=call.data[calldata.size len 32 * ('cd', 68).length])
                if 1 > !var77002:
                    revert with 0, 17
                idx = var79003 + 1
                s = var79007
                while idx < ('cd', 68).length:
                    mem[(32 * idx) + 356] = cd[4]
                    if s == -1:
                        revert with 0, 17
                    if ('cd', 68).length < 1:
                        revert with 0, 17
                    if s + 1 < ('cd', 68).length - 1:
                        if 1 > !(s + 1):
                            revert with 0, 17
                        idx = s + 2
                        s = s + 1
                        continue 
                    mem[(32 * ('cd', 68).length) + 356] = 32
                    mem[(32 * ('cd', 68).length) + 388] = ('cd', 68).length
                    idx = 0
                    s = mem[64] + 64
                    t = 356
                    while idx < ('cd', 68).length:
                        mem[s] = mem[t]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (64 * ('cd', 68).length) + -mem[64] + 420
        else:
            mem[324] = return_data.size
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if ('cd', 68).length > test266151307():
                    revert with 0, 65
                mem[ceil32(return_data.size) + 325] = ('cd', 68).length
                mem[64] = ceil32(return_data.size) + (32 * ('cd', 68).length) + 357
                if not ('cd', 68).length:
                    if ('cd', 68).length < 1:
                        revert with 0, 17
                    if var72002 >= ('cd', 68).length - 1:
                        return Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 357 len 32 * ('cd', 68).length])
                    if 1 > !var76002:
                        revert with 0, 17
                    idx = var78003 + 1
                    s = var78007
                    while idx < ('cd', 68).length:
                        mem[(32 * idx) + ceil32(return_data.size) + 357] = cd[4]
                        if s == -1:
                            revert with 0, 17
                        if ('cd', 68).length < 1:
                            revert with 0, 17
                        if s + 1 < ('cd', 68).length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 357] = 32
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 389] = ('cd', 68).length
                        idx = 0
                        s = mem[64] + 64
                        t = ceil32(return_data.size) + 357
                        while idx < ('cd', 68).length:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len ceil32(return_data.size) + (64 * ('cd', 68).length) + -mem[64] + 421
                else:
                    mem[ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                    if ('cd', 68).length < 1:
                        revert with 0, 17
                    if var73002 >= ('cd', 68).length - 1:
                        return Array(len=('cd', 68).length, data=call.data[calldata.size len 32 * ('cd', 68).length])
                    if 1 > !var77002:
                        revert with 0, 17
                    idx = var79003 + 1
                    s = var79007
                    while idx < ('cd', 68).length:
                        mem[(32 * idx) + ceil32(return_data.size) + 357] = cd[4]
                        if s == -1:
                            revert with 0, 17
                        if ('cd', 68).length < 1:
                            revert with 0, 17
                        if s + 1 < ('cd', 68).length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 357] = 32
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 389] = ('cd', 68).length
                        idx = 0
                        s = mem[64] + 64
                        t = ceil32(return_data.size) + 357
                        while idx < ('cd', 68).length:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len ceil32(return_data.size) + (64 * ('cd', 68).length) + -mem[64] + 421
            else:
                require return_data.size >= 32
                require mem[356] == bool(mem[356])
                if not mem[356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ('cd', 68).length > test266151307():
                    revert with 0, 65
                mem[ceil32(return_data.size) + 325] = ('cd', 68).length
                mem[64] = ceil32(return_data.size) + (32 * ('cd', 68).length) + 357
                if not ('cd', 68).length:
                    if ('cd', 68).length < 1:
                        revert with 0, 17
                    if var77002 >= ('cd', 68).length - 1:
                        return Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 357 len 32 * ('cd', 68).length])
                    if 1 > !var81002:
                        revert with 0, 17
                    idx = var83003 + 1
                    s = var83007
                    while idx < ('cd', 68).length:
                        mem[(32 * idx) + ceil32(return_data.size) + 357] = cd[4]
                        if s == -1:
                            revert with 0, 17
                        if ('cd', 68).length < 1:
                            revert with 0, 17
                        if s + 1 < ('cd', 68).length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 357] = 32
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 389] = ('cd', 68).length
                        idx = 0
                        s = mem[64] + 64
                        t = ceil32(return_data.size) + 357
                        while idx < ('cd', 68).length:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len ceil32(return_data.size) + (64 * ('cd', 68).length) + -mem[64] + 421
                else:
                    mem[ceil32(return_data.size) + 357 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                    if ('cd', 68).length < 1:
                        revert with 0, 17
                    if var78002 >= ('cd', 68).length - 1:
                        return Array(len=('cd', 68).length, data=call.data[calldata.size len 32 * ('cd', 68).length])
                    if 1 > !var82002:
                        revert with 0, 17
                    idx = var84003 + 1
                    s = var84007
                    while idx < ('cd', 68).length:
                        mem[(32 * idx) + ceil32(return_data.size) + 357] = cd[4]
                        if s == -1:
                            revert with 0, 17
                        if ('cd', 68).length < 1:
                            revert with 0, 17
                        if s + 1 < ('cd', 68).length - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 357] = 32
                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 389] = ('cd', 68).length
                        idx = 0
                        s = mem[64] + 64
                        t = ceil32(return_data.size) + 357
                        while idx < ('cd', 68).length:
                            mem[s] = mem[t]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len ceil32(return_data.size) + (64 * ('cd', 68).length) + -mem[64] + 421
    revert with 0, 50
}



}
