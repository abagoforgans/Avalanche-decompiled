contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#  - sub_f542033f(?)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
address owner;
uint8 paused;
uint256 stor201;
uint32 stor251;
address strategyAddress;
uint256 stor251;
address stor252;
uint256 stor253;
uint256 sub_9194c574;

function totalSupply() payable {
    return totalSupply
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_9194c574(?) payable {
    return sub_9194c574
}

function strategy() payable {
    return address(strategyAddress)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function stratCandidate() payable {
    return stor252, stor253
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function farmingToken() payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function proposeStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.vault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Invalid new strategy'
    stor252 = arg1
    stor253 = block.number
    emit NewStratCandidate(arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_1a275577(?) payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_fdf0e7d9(?) payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_02a6a751(?) payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function sub_7591b80d(?) payable {
    if not totalSupply:
        return 10^18
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if uint255(ext_call.return_data[0]) and 10^18 > -1 / 2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    return (2 * 10^18 * ext_call.return_data[0] / totalSupply)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_31e61c8e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg1) == ext_call.return_data[12 len 20]:
        revert with 0, 'can not rescue the farming token'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x57f1ccf1: ext_call.return_data[0], address(arg1)
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor54.length):
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
        if ceil32(stor54.length.field_1) > stor54.length.field_1:
            mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor55.length):
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
        if ceil32(stor55.length.field_1) > stor55.length.field_1:
            mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length.field_1), data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor55.length):
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function sub_782cc19b(?) payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 132] = address(strategyAddress)
    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 68
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor251)
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 196] = 32
    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(ext_call.return_data[0])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor251), uint32(stor251), ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + 328] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor251), uint32(stor251), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor251), uint32(stor251), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
            if not mem[(4 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).deposit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function upgradeStrategy() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor252:
        revert with 0, 'No proposal exists'
    if stor253 > -sub_9194c574 - 1:
        revert with 'NH{q', 17
    if block.number <= stor253 + sub_9194c574:
        revert with 0, 'Strategy cannot be replaced yet'
    emit 0x6a8bdf11: stor252
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).retireStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    address(strategyAddress) = stor252
    stor252 = 0
    stor253 = 0
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 132] = address(strategyAddress)
    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 68
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor251)
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 196] = 32
    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(ext_call.return_data[0])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor251), uint32(stor251), ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + 328] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor251), uint32(stor251), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor251), uint32(stor251), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
            if not mem[(4 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).deposit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor201 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 2
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if uint255(ext_call.return_data[0]) and arg1 > -1 / 2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xad24dce7 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 164] = (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply
        mem[(8 * ceil32(return_data.size)) + 96] = 68
        mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(8 * ceil32(return_data.size)) + 196] = 32
        mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0
        mem[(8 * ceil32(return_data.size)) + 328] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                if not mem[(8 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdraw(arg1, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, msg.sender);
    else:
        if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 100] = ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0]
        require ext_code.size(address(strategyAddress))
        call address(strategyAddress).0x2e1a7d4d with:
             gas gas_remaining wei
            args (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xad24dce7 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xad24dce7 with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(11 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + 96] = 68
        mem[(11 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(11 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(11 * ceil32(return_data.size)) + 196] = 32
        mem[(11 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(11 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
        mem[(11 * ceil32(return_data.size)) + 328] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(11 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(11 * ceil32(return_data.size)) + 292] == bool(mem[(11 * ceil32(return_data.size)) + 292])
                if not mem[(11 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdraw(arg1, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, ext_call.return_data[0], msg.sender);
    stor201 = 1
}

function withdrawAll() payable {
    if stor201 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 2
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if uint255(ext_call.return_data[0]) and balanceOf[address(msg.sender)] > -1 / 2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] = 0
    if totalSupply < balanceOf[address(msg.sender)]:
        revert with 'NH{q', 17
    totalSupply -= balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xad24dce7 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 164] = (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply
        mem[(8 * ceil32(return_data.size)) + 96] = 68
        mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(8 * ceil32(return_data.size)) + 196] = 32
        mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 0
        mem[(8 * ceil32(return_data.size)) + 328] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                if not mem[(8 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdraw(balanceOf[address(msg.sender)], (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, msg.sender);
    else:
        if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 100] = ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]
        require ext_code.size(address(strategyAddress))
        call address(strategyAddress).0x2e1a7d4d with:
             gas gas_remaining wei
            args (((ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xad24dce7 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xad24dce7 with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(11 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(11 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + 96] = 68
        mem[(11 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(11 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(11 * ceil32(return_data.size)) + 196] = 32
        mem[(11 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(11 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
        mem[(11 * ceil32(return_data.size)) + 328] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(11 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(11 * ceil32(return_data.size)) + 292] == bool(mem[(11 * ceil32(return_data.size)) + 292])
                if not mem[(11 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdraw(balanceOf[address(msg.sender)], (ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply, ext_call.return_data[0], msg.sender);
    stor201 = 1
    emit WithdrawAll(balanceOf[address(msg.sender)], msg.sender);
}

function depositAll() payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if paused:
        revert with 0, 'Pausable: paused'
    if stor201 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor201 = 2
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).beforeDeposit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).balanceOf() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xad24dce7 with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(8 * ceil32(return_data.size)) + 164] = this.address
    mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 96] = 100
    mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(8 * ceil32(return_data.size)) + 228] = 32
    mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(ext_call.return_data[0])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(8 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[(8 * ceil32(return_data.size)) + 392] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xad24dce7 with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + 296] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xad24dce7 with:
                gas gas_remaining wei
        mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(12 * ceil32(return_data.size)) + 328] = address(strategyAddress)
        mem[(12 * ceil32(return_data.size)) + 360] = ext_call.return_data[0]
        mem[(12 * ceil32(return_data.size)) + 292] = 68
        mem[(12 * ceil32(return_data.size)) + 324 len 4] = unknown_0xa9059cbb(?????)
        mem[(12 * ceil32(return_data.size)) + 392] = 32
        mem[(12 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(12 * ceil32(return_data.size)) + 456 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
        mem[(12 * ceil32(return_data.size)) + 524] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).deposit() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).balanceOf() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).0xad24dce7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if 2 * ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 0 >= ext_call.return_data[0]:
                if not totalSupply:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'small IOU amount', mem[(17 * ceil32(return_data.size)) + 556 len 9 * ceil32(return_data.size)]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address', mem[(17 * ceil32(return_data.size)) + 556 len 9 * ceil32(return_data.size)]
                    if totalSupply > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    totalSupply += ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] += ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], 0, msg.sender);
                    emit Deposit(ext_call.return_data[0], ext_call.return_data[0], msg.sender);
                else:
                    if ext_call.return_data[0] and totalSupply > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'small IOU amount', mem[(17 * ceil32(return_data.size)) + 556 len 9 * ceil32(return_data.size)]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address', mem[(17 * ceil32(return_data.size)) + 556 len 9 * ceil32(return_data.size)]
                    if totalSupply > -(ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    totalSupply += ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] > -(ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] += ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]
                    emit Transfer((ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]), 0, msg.sender);
                    emit Deposit(ext_call.return_data[0], ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0], msg.sender);
            else:
                if not totalSupply:
                    revert with 0, 'small IOU amount', mem[(17 * ceil32(return_data.size)) + 556 len 9 * ceil32(return_data.size)]
                if 0 and totalSupply > -1 / 0:
                    revert with 'NH{q', 17
                if not 2 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'small IOU amount', mem[(17 * ceil32(return_data.size)) + 556 len 9 * ceil32(return_data.size)]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address', mem[(17 * ceil32(return_data.size)) + 556 len 9 * ceil32(return_data.size)]
                if totalSupply > -((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                totalSupply += (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]
                if balanceOf[address(msg.sender)] > -((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] += (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]
                emit Transfer(((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]), 0, msg.sender);
                emit Deposit(0, (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0], msg.sender);
        else:
            mem[(12 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(12 * ceil32(return_data.size)) + 488] == bool(mem[(12 * ceil32(return_data.size)) + 488])
                if not mem[(12 * ceil32(return_data.size)) + 488]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).deposit() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).balanceOf() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).0xad24dce7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if 2 * ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 0 >= ext_call.return_data[0]:
                if not totalSupply:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 
                                    'small IOU amount',
                                    mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                    if not msg.sender:
                        revert with 0, 
                                    'ERC20: mint to the zero address',
                                    mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                    if totalSupply > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    totalSupply += ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] += ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], 0, msg.sender);
                    emit Deposit(ext_call.return_data[0], ext_call.return_data[0], msg.sender);
                else:
                    if ext_call.return_data[0] and totalSupply > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 
                                    'small IOU amount',
                                    mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                    if not msg.sender:
                        revert with 0, 
                                    'ERC20: mint to the zero address',
                                    mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                    if totalSupply > -(ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    totalSupply += ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] > -(ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] += ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]
                    emit Transfer((ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]), 0, msg.sender);
                    emit Deposit(ext_call.return_data[0], ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0], msg.sender);
            else:
                if not totalSupply:
                    revert with 0, 
                                'small IOU amount',
                                mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                if 0 and totalSupply > -1 / 0:
                    revert with 'NH{q', 17
                if not 2 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 
                                'small IOU amount',
                                mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                if not msg.sender:
                    revert with 0, 
                                'ERC20: mint to the zero address',
                                mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                if totalSupply > -((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                totalSupply += (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]
                if balanceOf[address(msg.sender)] > -((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] += (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]
                emit Transfer(((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]), 0, msg.sender);
                emit Deposit(0, (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0], msg.sender);
    else:
        mem[(8 * ceil32(return_data.size)) + 292] = return_data.size
        mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
            if not mem[(8 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xad24dce7 with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xad24dce7 with:
                gas gas_remaining wei
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(strategyAddress)
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0]
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(strategyAddress), ext_call.return_data[0], 0
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, address(strategyAddress), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(strategyAddress), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).deposit() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).balanceOf() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).0xad24dce7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if 2 * ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 0 >= ext_call.return_data[0]:
                if not totalSupply:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 
                                    'small IOU amount',
                                    mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                    if not msg.sender:
                        revert with 0, 
                                    'ERC20: mint to the zero address',
                                    mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                    if totalSupply > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    totalSupply += ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] += ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], 0, msg.sender);
                    emit Deposit(ext_call.return_data[0], ext_call.return_data[0], msg.sender);
                else:
                    if ext_call.return_data[0] and totalSupply > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 
                                    'small IOU amount',
                                    mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                    if not msg.sender:
                        revert with 0, 
                                    'ERC20: mint to the zero address',
                                    mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                    if totalSupply > -(ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    totalSupply += ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] > -(ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] += ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]
                    emit Transfer((ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]), 0, msg.sender);
                    emit Deposit(ext_call.return_data[0], ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0], msg.sender);
            else:
                if not totalSupply:
                    revert with 0, 
                                'small IOU amount',
                                mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                if 0 and totalSupply > -1 / 0:
                    revert with 'NH{q', 17
                if not 2 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 
                                'small IOU amount',
                                mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                if not msg.sender:
                    revert with 0, 
                                'ERC20: mint to the zero address',
                                mem[(17 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 9 * ceil32(return_data.size)]
                if totalSupply > -((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                totalSupply += (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]
                if balanceOf[address(msg.sender)] > -((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] += (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]
                emit Transfer(((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]), 0, msg.sender);
                emit Deposit(0, (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0], msg.sender);
        else:
            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(15 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                if not mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[(15 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).deposit() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).balanceOf() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).0xad24dce7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if 2 * ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 0 >= ext_call.return_data[0]:
                if not totalSupply:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 
                                    'small IOU amount',
                                    mem[(20 * ceil32(return_data.size)) + 558 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not msg.sender:
                        revert with 0, 
                                    'ERC20: mint to the zero address',
                                    mem[(20 * ceil32(return_data.size)) + 558 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if totalSupply > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    totalSupply += ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] += ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], 0, msg.sender);
                    emit Deposit(ext_call.return_data[0], ext_call.return_data[0], msg.sender);
                else:
                    if ext_call.return_data[0] and totalSupply > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 
                                    'small IOU amount',
                                    mem[(20 * ceil32(return_data.size)) + 558 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not msg.sender:
                        revert with 0, 
                                    'ERC20: mint to the zero address',
                                    mem[(20 * ceil32(return_data.size)) + 558 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if totalSupply > -(ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    totalSupply += ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] > -(ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] += ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]
                    emit Transfer((ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0]), 0, msg.sender);
                    emit Deposit(ext_call.return_data[0], ext_call.return_data[0] * totalSupply / 2 * ext_call.return_data[0], msg.sender);
            else:
                if not totalSupply:
                    revert with 0, 
                                'small IOU amount',
                                mem[(20 * ceil32(return_data.size)) + 558 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if 0 and totalSupply > -1 / 0:
                    revert with 'NH{q', 17
                if not 2 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 
                                'small IOU amount',
                                mem[(20 * ceil32(return_data.size)) + 558 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not msg.sender:
                    revert with 0, 
                                'ERC20: mint to the zero address',
                                mem[(20 * ceil32(return_data.size)) + 558 len (11 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if totalSupply > -((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                totalSupply += (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]
                if balanceOf[address(msg.sender)] > -((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] += (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]
                emit Transfer(((ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0]), 0, msg.sender);
                emit Deposit(0, (ext_call.return_data[0] * totalSupply) + (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) - (ext_call.return_data[0] * totalSupply) / 2 * ext_call.return_data[0], msg.sender);
    stor201 = 1
    emit 0x8eb83d7c: ext_call.return_data[0], msg.sender
}



}
