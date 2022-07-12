contract main {




// =====================  Runtime code  =====================


#
#  - revokeAllowance(address arg1, address arg2)
#  - recoverERC20(address arg1, uint256 arg2)
#
const ID = 0xcddda4de2b4616ba0bc1ddcf67991c07f22a33c85007e5aba0c5edd35481f364


address owner;
uint256 swapGasEstimate;
array of struct stor2;
array of address sub_22e3dec0;
mapping of struct stor4;

function sub_22e3dec0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_22e3dec0.length
    return sub_22e3dec0[arg1]
}

function swapGasEstimate() {
    return swapGasEstimate
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwapGasEstimate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    swapGasEstimate = arg1
    emit 0xf43f23b7: arg1, this.address
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: New owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Coin98Adapter: Nothing to recover'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address arg1, uint256 arg2):
                   arg1,
    emit 0x0: arg1
}

function setAllowances() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    staticcall 0x5545153ccfca01fbd7dd11c0b23ba694d9509a6f.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0x5545153ccfca01fbd7dd11c0b23ba694d9509a6f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 196 len 96] = approve(address arg1, uint256 arg2), 0x5545153ccfca01fbd7dd11c0, 0, -1, mem[ceil32(return_data.size) + 196 len 28]
    call 0x5545153ccfca01fbd7dd11c0b23ba694d9509a6f.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, 0x5545153ccfca01fbd7dd11c0b23ba694 == bool(0, 0x5545153ccfca01fbd7dd11c0b23ba694)
            if not 0, 0x5545153ccfca01fbd7dd11c0b23ba694:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_5adbbfa7(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not stor4[address(arg2)].field_0:
        sub_22e3dec0.length++
        sub_22e3dec0[sub_22e3dec0.length] = address(arg2)
    stor4[address(arg2)].field_0 = address(arg2)
    if stor4[address(arg2)].field_256:
        if not stor4[address(arg2)].field_256 - (stor4[address(arg2)].field_257 < 32):
            revert with 'NH{q', 34
        if arg1.length:
            stor4[address(arg2)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4[address(arg2)].field_256 = 0
            idx = 0
            while stor4[address(arg2)].field_257 + 31 / 32 > idx:
                stor4[address(arg2)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor4[address(arg2)].field_256 - (stor4[address(arg2)].field_257 < 32):
            revert with 'NH{q', 34
        if arg1.length:
            stor4[address(arg2)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4[address(arg2)].field_256 = 0
            idx = 0
            while stor4[address(arg2)].field_257 + 31 / 32 > idx:
                stor4[address(arg2)][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    if 1000 < arg3:
        revert with 'NH{q', 17
    if -arg3 + 1000 > 1000:
        revert with 0, 'SafeMath: ds-math-sub-underflow'
    stor4[address(arg2)].field_512 = -arg3 + 1000
    stor4[address(arg2)].field_768 = arg4
}

function sub_a07314ca(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor4[arg1].field_256:
        if not stor4[arg1].field_256 - (stor4[arg1].field_257 < 32):
            revert with 'NH{q', 34
        if stor4[arg1].field_256:
            if not stor4[arg1].field_256 - (stor4[arg1].field_257 < 32):
                revert with 'NH{q', 34
            if stor4[arg1].field_257:
                if 31 >= stor4[arg1].field_257:
                    mem[128] = 256 * stor4[arg1].field_264
                else:
                    mem[128] = stor4[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if not stor4[arg1].field_256 - (stor4[arg1].field_257 < 32):
                revert with 'NH{q', 34
            if stor4[arg1].field_257:
                if 31 >= stor4[arg1].field_257:
                    mem[128] = 256 * stor4[arg1].field_264
                else:
                    mem[128] = stor4[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor4[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor4[arg1].field_257), data=mem[128 len ceil32(stor4[arg1].field_257)]),
               stor4[arg1].field_512,
               stor4[arg1].field_768
    if not stor4[arg1].field_256 - (stor4[arg1].field_257 < 32):
        revert with 'NH{q', 34
    if stor4[arg1].field_256:
        if not stor4[arg1].field_256 - (stor4[arg1].field_257 < 32):
            revert with 'NH{q', 34
        if stor4[arg1].field_257:
            if 31 >= stor4[arg1].field_257:
                mem[128] = 256 * stor4[arg1].field_264
            else:
                mem[128] = stor4[arg1][1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if not stor4[arg1].field_256 - (stor4[arg1].field_257 < 32):
            revert with 'NH{q', 34
        if stor4[arg1].field_257:
            if 31 >= stor4[arg1].field_257:
                mem[128] = 256 * stor4[arg1].field_264
            else:
                mem[128] = stor4[arg1][1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor4[arg1].field_0, 
           Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)]),
           stor4[arg1].field_512,
           stor4[arg1].field_768
}

function name() {
    if bool(stor2.length):
        if not bool(stor2.length) - (stor2.length.field_1 < 32):
            revert with 'NH{q', 34
        if bool(stor2.length):
            if not bool(stor2.length) - (stor2.length.field_1 < 32):
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if not bool(stor2.length) - (stor2.length.field_1 < 32):
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if not bool(stor2.length) - (stor2.length.field_1 < 32):
        revert with 'NH{q', 34
    if bool(stor2.length):
        if not bool(stor2.length) - (stor2.length.field_1 < 32):
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if not bool(stor2.length) - (stor2.length.field_1 < 32):
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function swap(address arg1, uint256 arg2, uint256 arg3, address arg4, address arg5, address arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196 len 96] = 0, ext_call.return_data[12 len 20], arg2, mem[ceil32(return_data.size) + 196 len 28]
    mem[ceil32(return_data.size) + 264] = 0
    call arg4.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if arg4 < arg5:
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, address(arg5) << 64 == bool(0, address(arg5) << 64)
                if not 0, address(arg5) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 232] = 0
            mem[ceil32(return_data.size) + 264] = arg3
            mem[ceil32(return_data.size) + 296] = arg6
            mem[ceil32(return_data.size) + 328] = 128
            mem[ceil32(return_data.size) + 360] = mem[ceil32(return_data.size) + 196]
            mem[ceil32(return_data.size) + 392 len ceil32(mem[ceil32(return_data.size) + 196])] = mem[ceil32(return_data.size) + 228 len ceil32(mem[ceil32(return_data.size) + 196])]
            if ceil32(mem[ceil32(return_data.size) + 196]) > mem[ceil32(return_data.size) + 196]:
                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 196] + 392] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg3, address(arg6), 128, mem[ceil32(return_data.size) + 196], mem[ceil32(return_data.size) + 392 len ceil32(mem[ceil32(return_data.size) + 196])]
        else:
            mem[ceil32(return_data.size) + 196] = return_data.size
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 233] = 0
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = arg3
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = arg6
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 128
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 197]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 197])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 197])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 197]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 197]:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 197] + 393] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg3, address(arg6), 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 197], mem[ceil32(return_data.size) + ceil32(return_data.size) + 393 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 197])]
    else:
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, address(arg5) << 64 == bool(0, address(arg5) << 64)
                if not 0, address(arg5) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 232] = arg3
            mem[ceil32(return_data.size) + 264] = 0
            mem[ceil32(return_data.size) + 296] = arg6
            mem[ceil32(return_data.size) + 328] = 128
            mem[ceil32(return_data.size) + 360] = mem[ceil32(return_data.size) + 196]
            mem[ceil32(return_data.size) + 392 len ceil32(mem[ceil32(return_data.size) + 196])] = mem[ceil32(return_data.size) + 228 len ceil32(mem[ceil32(return_data.size) + 196])]
            if ceil32(mem[ceil32(return_data.size) + 196]) > mem[ceil32(return_data.size) + 196]:
                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 196] + 392] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg3, 0, address(arg6), 128, mem[ceil32(return_data.size) + 196], mem[ceil32(return_data.size) + 392 len ceil32(mem[ceil32(return_data.size) + 196])]
        else:
            mem[ceil32(return_data.size) + 196] = return_data.size
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 233] = arg3
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 0
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = arg6
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 128
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 197]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 197])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 229 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 197])]
            if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 197]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 197]:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 197] + 393] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg3, 0, address(arg6), 128, mem[ceil32(return_data.size) + ceil32(return_data.size) + 197], mem[ceil32(return_data.size) + ceil32(return_data.size) + 393 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 197])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x14677886: arg2, arg3, arg4, arg5
}

function sub_fe74523e(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if address(arg3) == address(arg4):
        return 0
    if not arg1:
        return 0
    staticcall address(arg2).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if stor4[address(arg2)].field_256:
        if not stor4[address(arg2)].field_256 - (stor4[address(arg2)].field_257 < 32):
            revert with 'NH{q', 34
    else:
        if not stor4[address(arg2)].field_256 - (stor4[address(arg2)].field_257 < 32):
            revert with 'NH{q', 34
    if stor4[address(arg2)].field_256:
        if not stor4[address(arg2)].field_256 - (stor4[address(arg2)].field_257 < 32):
            revert with 'NH{q', 34
        if stor4[address(arg2)].field_257:
            if 31 < stor4[address(arg2)].field_257:
                idx = (2 * ceil32(return_data.size)) + 384
                s = 0
                while (2 * ceil32(return_data.size)) + stor4[address(arg2)].field_257 + 352 > idx:
                    mem[idx + 32] = stor4[address(arg2)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if not stor4[address(arg2)].field_256 - (stor4[address(arg2)].field_257 < 32):
            revert with 'NH{q', 34
        if stor4[address(arg2)].field_257:
            if 31 < stor4[address(arg2)].field_257:
                idx = (2 * ceil32(return_data.size)) + 384
                s = 0
                while (2 * ceil32(return_data.size)) + stor4[address(arg2)].field_257 + 352 > idx:
                    mem[idx + 32] = stor4[address(arg2)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if address(arg3) < address(arg4):
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            return 0
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            return 0
        if not stor4[address(arg2)].field_512:
            if Mask(112, 0, ext_call.return_data[32]):
                if False and Mask(112, 0, ext_call.return_data[32]) > 0:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: ds-math-add-overflow'
            if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if not 0 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            if not 0 / 0 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if 1 < Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / 0 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            return 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), 
                   -(Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 0 / 0 / 1000 * Mask(112, 0, ext_call.return_data[0])) + 1
        if arg1 and stor4[address(arg2)].field_512 > -1 / arg1:
            revert with 'NH{q', 17
        if not stor4[address(arg2)].field_512:
            revert with 'NH{q', 18
        if arg1 * stor4[address(arg2)].field_512 / stor4[address(arg2)].field_512 != arg1:
            revert with 0, 'SafeMath: ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-1 * arg1 * stor4[address(arg2)].field_512) - 1:
                revert with 'NH{q', 17
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: ds-math-add-overflow'
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512):
                revert with 'NH{q', 18
            if not 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512):
                revert with 'NH{q', 18
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            if not arg1 * stor4[address(arg2)].field_512 / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512):
                revert with 'NH{q', 18
            if 1 < Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / arg1 * stor4[address(arg2)].field_512 / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512):
                revert with 'NH{q', 17
            return 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512), 
                   -(Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / arg1 * stor4[address(arg2)].field_512 / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512)) + 1
        if arg1 * stor4[address(arg2)].field_512 and Mask(112, 0, ext_call.return_data[32]) > -1 / arg1 * stor4[address(arg2)].field_512:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        if arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != arg1 * stor4[address(arg2)].field_512:
            revert with 0, 'SafeMath: ds-math-mul-overflow'
        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: ds-math-mul-overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-1 * arg1 * stor4[address(arg2)].field_512) - 1:
            revert with 'NH{q', 17
        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512) < 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: ds-math-add-overflow'
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512):
            revert with 'NH{q', 18
        if not arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512):
            revert with 'NH{q', 18
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        if not arg1 * stor4[address(arg2)].field_512 / arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512):
            revert with 'NH{q', 18
        if 1 < Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / arg1 * stor4[address(arg2)].field_512 / arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512):
            revert with 'NH{q', 17
        return arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512), 
               -(Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / arg1 * stor4[address(arg2)].field_512 / arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (arg1 * stor4[address(arg2)].field_512)) + 1
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        return 0
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        return 0
    if not stor4[address(arg2)].field_512:
        if Mask(112, 0, ext_call.return_data[0]):
            if False and Mask(112, 0, ext_call.return_data[0]) > 0:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: ds-math-mul-overflow'
        if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: ds-math-mul-overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > -1:
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: ds-math-add-overflow'
        if not 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if not 0 / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        if 1 < Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        return 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 
               -(Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 0 / 0 / 1000 * Mask(112, 0, ext_call.return_data[32])) + 1
    if arg1 and stor4[address(arg2)].field_512 > -1 / arg1:
        revert with 'NH{q', 17
    if not stor4[address(arg2)].field_512:
        revert with 'NH{q', 18
    if arg1 * stor4[address(arg2)].field_512 / stor4[address(arg2)].field_512 != arg1:
        revert with 0, 'SafeMath: ds-math-mul-overflow'
    if not Mask(112, 0, ext_call.return_data[0]):
        if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: ds-math-mul-overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-1 * arg1 * stor4[address(arg2)].field_512) - 1:
            revert with 'NH{q', 17
        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512) < 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: ds-math-add-overflow'
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512):
            revert with 'NH{q', 18
        if not 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512):
            revert with 'NH{q', 18
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if not arg1 * stor4[address(arg2)].field_512 / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512):
            revert with 'NH{q', 18
        if 1 < Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / arg1 * stor4[address(arg2)].field_512 / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512):
            revert with 'NH{q', 17
        return 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512), 
               -(Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / arg1 * stor4[address(arg2)].field_512 / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512)) + 1
    if arg1 * stor4[address(arg2)].field_512 and Mask(112, 0, ext_call.return_data[0]) > -1 / arg1 * stor4[address(arg2)].field_512:
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    if arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != arg1 * stor4[address(arg2)].field_512:
        revert with 0, 'SafeMath: ds-math-mul-overflow'
    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: ds-math-mul-overflow'
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-1 * arg1 * stor4[address(arg2)].field_512) - 1:
        revert with 'NH{q', 17
    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512) < 1000 * Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: ds-math-add-overflow'
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512):
        revert with 'NH{q', 18
    if not arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512):
        revert with 'NH{q', 18
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    if not arg1 * stor4[address(arg2)].field_512 / arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512):
        revert with 'NH{q', 18
    if 1 < Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / arg1 * stor4[address(arg2)].field_512 / arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512):
        revert with 'NH{q', 17
    return arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512), 
           -(Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / arg1 * stor4[address(arg2)].field_512 / arg1 * stor4[address(arg2)].field_512 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (arg1 * stor4[address(arg2)].field_512)) + 1
}



}
