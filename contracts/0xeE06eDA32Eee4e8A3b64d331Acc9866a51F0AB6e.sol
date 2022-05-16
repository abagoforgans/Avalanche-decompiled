contract main {




// =====================  Runtime code  =====================


const BASE_RATE = 10^18

const END = 2031622407


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
address owner; offset 8
mapping of uint8 stor6;
array of uint256 sub_845df193;
uint256 START;
mapping of uint256 lastUpdate;
address stor11;

function lastUpdate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastUpdate[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_845df193(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_845df193.length
    return sub_845df193[arg1]
}

function owner() payable {
    return owner
}

function START() payable {
    return START
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function whitelistUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function removeWhitelistUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function sub_39abfd4e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 85 < arg2:
        revert with 'NH{q', 17
    if -arg2 + 85 and 3 > -1 / -arg2 + 85:
        revert with 'NH{q', 17
    return (Mask(256, (3 * arg2) - 255, arg1) << (3 * arg2) - 255 % 8)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor6[address(msg.sender)]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 != msg.sender:
        require stor6[address(msg.sender)]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    if balanceOf[address(arg1)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_31348187(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 10000:
        return 0
    if arg1 <= 9944:
        if arg1 / 85 >= sub_845df193.length:
            revert with 'NH{q', 50
        if 85 < arg1 % 85:
            revert with 'NH{q', 17
        if -(arg1 % 85) + 85 and 3 > -1 / -(arg1 % 85) + 85:
            revert with 'NH{q', 17
        if Mask(256, (3 * arg1 % 85) - 255, sub_845df193[arg1 / 85]) << (3 * arg1 % 85) - 255 % 8 > -2:
            revert with 'NH{q', 17
        return ((Mask(256, (3 * arg1 % 85) - 255, sub_845df193[arg1 / 85]) << (3 * arg1 % 85) - 255 % 8) + 1)
    if arg1 > -31:
        revert with 'NH{q', 17
    if arg1 + 30 / 85 >= sub_845df193.length:
        revert with 'NH{q', 50
    if 85 < arg1 + 30 % 85:
        revert with 'NH{q', 17
    if -(arg1 + 30 % 85) + 85 and 3 > -1 / -(arg1 + 30 % 85) + 85:
        revert with 'NH{q', 17
    if Mask(256, (3 * arg1 + 30 % 85) - 255, sub_845df193[arg1 + 30 / 85]) << (3 * arg1 + 30 % 85) - 255 % 8 > -2:
        revert with 'NH{q', 17
    return ((Mask(256, (3 * arg1 + 30 % 85) - 255, sub_845df193[arg1 + 30 / 85]) << (3 * arg1 + 30 % 85) - 255 % 8) + 1)
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
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function getTotalClaimable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor11)
    staticcall stor11.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if block.timestamp < 2031622407:
        idx = 0
        while idx < _5:
            if idx >= _5:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = 10
            if lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] < START:
                if START > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp < START:
                    revert with 'NH{q', 17
                if block.timestamp - START > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if (10^18 * block.timestamp) - (10^18 * START) / 10^18 != block.timestamp - START:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx >= _5:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(return_data.size) + 128] != 10000:
                    if mem[(32 * idx) + ceil32(return_data.size) + 128] <= 9944:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 and (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 != (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] > -31:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 and (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 != (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
            else:
                if lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp < lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
                    revert with 'NH{q', 17
                if block.timestamp - lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 10^18 != block.timestamp - lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx >= _5:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(return_data.size) + 128] != 10000:
                    if mem[(32 * idx) + ceil32(return_data.size) + 128] <= 9944:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 and (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 != (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] > -31:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 and (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 != (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < _5:
            if idx >= _5:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = 10
            if lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] < START:
                if START > 2031622407:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 2031622407 < START:
                    revert with 'NH{q', 17
                if -START + 2031622407 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 10^18 != -START + 2031622407:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx >= _5:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(return_data.size) + 128] != 10000:
                    if mem[(32 * idx) + ceil32(return_data.size) + 128] <= 9944:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 and (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 != (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] > -31:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 and (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 != (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
            else:
                if lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] > 2031622407:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 2031622407 < lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
                    revert with 'NH{q', 17
                if -lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] + 2031622407 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 10^18 != -lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] + 2031622407:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx >= _5:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(return_data.size) + 128] != 10000:
                    if mem[(32 * idx) + ceil32(return_data.size) + 128] <= 9944:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 and (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 != (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] > -31:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 and (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 != (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    return 0
}

function getReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor11)
    staticcall stor11.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if block.timestamp < 2031622407:
        idx = 0
        while idx < _5:
            if idx >= _5:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = 10
            if lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] < START:
                if START > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp < START:
                    revert with 'NH{q', 17
                if block.timestamp - START > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if (10^18 * block.timestamp) - (10^18 * START) / 10^18 != block.timestamp - START:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx >= _5:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(return_data.size) + 128] != 10000:
                    if mem[(32 * idx) + ceil32(return_data.size) + 128] <= 9944:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 and (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 != (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] > -31:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 and (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 != (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * START) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
            else:
                if lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp < lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
                    revert with 'NH{q', 17
                if block.timestamp - lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 10^18 != block.timestamp - lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx >= _5:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(return_data.size) + 128] != 10000:
                    if mem[(32 * idx) + ceil32(return_data.size) + 128] <= 9944:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 and (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 != (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] > -31:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 and (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 != (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (10^18 * block.timestamp) - (10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x438b630000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor11)
        staticcall stor11.walletOfOwner(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _277 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _279 = mem[_277]
        require mem[_277] <= test266151307()
        require _277 + mem[_277] + 31 < _277 + return_data.size
        _285 = mem[_277 + mem[_277]]
        if mem[_277 + mem[_277]] > test266151307():
            revert with 'NH{q', 65
        if _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1 > test266151307() or floor32(mem[_277 + mem[_277]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _277 + ceil32(return_data.size) + floor32(mem[_277 + mem[_277]]) + 1
        mem[_277 + ceil32(return_data.size)] = _285
        require _279 + (32 * _285) + 32 <= return_data.size
        idx = 0
        s = _277 + _279 + 32
        t = _277 + ceil32(return_data.size) + 32
        while idx < _285:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if block.timestamp < 2031622407:
            idx = 0
            while idx < _285:
                if idx >= mem[_277 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + _277 + ceil32(return_data.size) + 32]
                mem[32] = 10
                lastUpdate[mem[0]] = block.timestamp
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < _285:
                if idx >= mem[_277 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + _277 + ceil32(return_data.size) + 32]
                mem[32] = 10
                lastUpdate[mem[0]] = 2031622407
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        idx = 0
        while idx < _5:
            if idx >= _5:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = 10
            if lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] < START:
                if START > 2031622407:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 2031622407 < START:
                    revert with 'NH{q', 17
                if -START + 2031622407 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 10^18 != -START + 2031622407:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx >= _5:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(return_data.size) + 128] != 10000:
                    if mem[(32 * idx) + ceil32(return_data.size) + 128] <= 9944:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 and (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 != (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] > -31:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 and (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 != (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (-1 * 10^18 * START) + (5643395575 * 10^14 * 3600) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
            else:
                if lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] > 2031622407:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 2031622407 < lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
                    revert with 'NH{q', 17
                if -lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] + 2031622407 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 10^18 != -lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]] + 2031622407:
                    revert with 0, 'SafeMath: multiplication overflow'
                if idx >= _5:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + ceil32(return_data.size) + 128] != 10000:
                    if mem[(32 * idx) + ceil32(return_data.size) + 128] <= 9944:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 and (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8) + 1 != (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] % 85) - 255 % 8 * (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
                    else:
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] > -31:
                            revert with 'NH{q', 17
                        if mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85 >= sub_845df193.length:
                            revert with 'NH{q', 50
                        mem[0] = 7
                        if 85 < mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85:
                            revert with 'NH{q', 17
                        if -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85 and 3 > -1 / -(mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) + 85:
                            revert with 'NH{q', 17
                        if Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 > -2:
                            revert with 'NH{q', 17
                        if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                            if (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 and (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600 > -1 / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 17
                            if not (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1:
                                revert with 'NH{q', 18
                            if ((-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) / (Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8) + 1 != (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > -((-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) + (-1 * Mask(256, (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255, sub_845df193[mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 / 85]) << (3 * mem[(32 * idx) + ceil32(return_data.size) + 128] + 30 % 85) - 255 % 8 * (-1 * 10^18 * lastUpdate[mem[(32 * idx) + ceil32(return_data.size) + 128]]) + (5643395575 * 10^14 * 3600) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x438b630000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor11)
        staticcall stor11.walletOfOwner(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _278 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _280 = mem[_278]
        require mem[_278] <= test266151307()
        require _278 + mem[_278] + 31 < _278 + return_data.size
        _286 = mem[_278 + mem[_278]]
        if mem[_278 + mem[_278]] > test266151307():
            revert with 'NH{q', 65
        if _278 + ceil32(return_data.size) + floor32(mem[_278 + mem[_278]]) + 1 > test266151307() or floor32(mem[_278 + mem[_278]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _278 + ceil32(return_data.size) + floor32(mem[_278 + mem[_278]]) + 1
        mem[_278 + ceil32(return_data.size)] = _286
        require _280 + (32 * _286) + 32 <= return_data.size
        idx = 0
        s = _278 + _280 + 32
        t = _278 + ceil32(return_data.size) + 32
        while idx < _286:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if block.timestamp < 2031622407:
            idx = 0
            while idx < _286:
                if idx >= mem[_278 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + _278 + ceil32(return_data.size) + 32]
                mem[32] = 10
                lastUpdate[mem[0]] = block.timestamp
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < _286:
                if idx >= mem[_278 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + _278 + ceil32(return_data.size) + 32]
                mem[32] = 10
                lastUpdate[mem[0]] = 2031622407
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -1:
        revert with 'NH{q', 17
    if totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if balanceOf[address(arg1)] > -1:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    emit Transfer(0, 0, arg1);
}



}
