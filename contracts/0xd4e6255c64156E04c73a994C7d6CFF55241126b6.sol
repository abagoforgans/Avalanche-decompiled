contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of struct sub_27c3f8ea;
array of address stor7;
array of address winners;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor15;
uint256 duration;
uint256 end;
uint256 stor18;

function duration() payable {
    return duration
}

function totalSupply() payable {
    return totalSupply
}

function sub_27c3f8ea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_27c3f8ea[arg1].field_0, sub_27c3f8ea[arg1].field_256
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function winners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < winners.length
    return address(winners[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function end() payable {
    return end
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_20336b4c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    duration = arg1
    if block.timestamp > -duration - 1:
        revert with 'NH{q', 17
    end = block.timestamp + duration
}

function withdraw() payable {
    require ext_code.size(stor9)
    call stor9.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_27c3f8ea[address(msg.sender)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function sub_adc0c96a(?) payable {
    require ext_code.size(stor9)
    call stor9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 0xdd15fe86affad91249ef0eb713f39ebeaa987b6e6fd2a0000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
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

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to deposit atleast 1 token!'
    require ext_code.size(stor9)
    call stor9.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor15 == -1:
        revert with 'NH{q', 17
    stor15++
    sub_27c3f8ea[address(msg.sender)].field_0 = stor15
    sub_27c3f8ea[address(msg.sender)].field_256 = arg1
    stor7.length++
    stor7[stor7.length] = msg.sender
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
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

function Timer() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    s = 0
    while end:
        if s >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[s]
        mem[32] = 6
        if not sub_27c3f8ea[stor7[s]].field_256:
            mem[32] = 6
            sub_27c3f8ea[stor7[s]].field_0 = 0
            sub_27c3f8ea[stor7[s]].field_256 = 0
            if s >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            stor7[s] = 0
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        continue 
    stor18 = 0
    if block.timestamp > -duration - 1:
        revert with 'NH{q', 17
    end = block.timestamp + duration
    require not stor18
    if not stor7.length:
        revert with 'NH{q', 18
    winners.length = 0
    idx = 0
    while winners.length > idx:
        uint256(winners[idx]) = 0
        idx = idx + 1
        continue 
    if sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length >= stor7.length:
        revert with 'NH{q', 50
    if not stor7.length:
        revert with 'NH{q', 18
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 6
        if sub_27c3f8ea[stor7[idx]].field_256 >= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            winners.length++
            mem[0] = 8
            address(winners[winners.length]) = stor7[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not winners.length:
        revert with 'NH{q', 18
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
    if totalSupply < sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length:
        revert with 'NH{q', 17
    totalSupply -= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
    emit Transfer((sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length), msg.sender, 0);
    idx = 0
    while idx < winners.length:
        mem[0] = address(winners[idx])
        mem[32] = 6
        if sub_27c3f8ea[address(stor8[idx])].field_256 > -(sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length) - 1:
            revert with 'NH{q', 17
        sub_27c3f8ea[address(stor8[idx])].field_256 += sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_0 = 0
    sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 = 0
    if sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length >= stor7.length:
        revert with 'NH{q', 50
    stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length] = 0
    if stor10 == -1:
        revert with 'NH{q', 17
    stor10++
    if stor11 == -1:
        revert with 'NH{q', 17
    stor11++
    if stor12 == -1:
        revert with 'NH{q', 17
    stor12++
    if stor13 == -1:
        revert with 'NH{q', 17
    stor13++
    stor18 = 1
    s = 0
    while end:
        if s >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[s]
        mem[32] = 6
        if not sub_27c3f8ea[stor7[s]].field_256:
            mem[32] = 6
            sub_27c3f8ea[stor7[s]].field_0 = 0
            sub_27c3f8ea[stor7[s]].field_256 = 0
            if s >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            stor7[s] = 0
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        continue 
    stor18 = 0
    if block.timestamp > -duration - 1:
        revert with 'NH{q', 17
    end = block.timestamp + duration
    require not stor18
    if not stor7.length:
        revert with 'NH{q', 18
    winners.length = 0
    idx = 0
    while winners.length > idx:
        uint256(winners[idx]) = 0
        idx = idx + 1
        continue 
    if sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length >= stor7.length:
        revert with 'NH{q', 50
    if not stor7.length:
        revert with 'NH{q', 18
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 6
        if sub_27c3f8ea[stor7[idx]].field_256 >= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            winners.length++
            mem[0] = 8
            address(winners[winners.length]) = stor7[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not winners.length:
        revert with 'NH{q', 18
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
    if totalSupply < sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length:
        revert with 'NH{q', 17
    totalSupply -= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
    emit Transfer((sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length), msg.sender, 0);
    idx = 0
    while idx < winners.length:
        mem[0] = address(winners[idx])
        mem[32] = 6
        if sub_27c3f8ea[address(stor8[idx])].field_256 > -(sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length) - 1:
            revert with 'NH{q', 17
        sub_27c3f8ea[address(stor8[idx])].field_256 += sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_0 = 0
    sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 = 0
    if sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length >= stor7.length:
        revert with 'NH{q', 50
    stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length] = 0
    if stor10 == -1:
        revert with 'NH{q', 17
    stor10++
    if stor11 == -1:
        revert with 'NH{q', 17
    stor11++
    if stor12 == -1:
        revert with 'NH{q', 17
    stor12++
    if stor13 == -1:
        revert with 'NH{q', 17
    stor13++
    stor18 = 1
    s = 0
    while end:
        if s >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[s]
        mem[32] = 6
        if not sub_27c3f8ea[stor7[s]].field_256:
            mem[32] = 6
            sub_27c3f8ea[stor7[s]].field_0 = 0
            sub_27c3f8ea[stor7[s]].field_256 = 0
            if s >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            stor7[s] = 0
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        continue 
    stor18 = 0
    if block.timestamp > -duration - 1:
        revert with 'NH{q', 17
    end = block.timestamp + duration
    require not stor18
    if not stor7.length:
        revert with 'NH{q', 18
    winners.length = 0
    idx = 0
    while winners.length > idx:
        uint256(winners[idx]) = 0
        idx = idx + 1
        continue 
    if sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length >= stor7.length:
        revert with 'NH{q', 50
    if not stor7.length:
        revert with 'NH{q', 18
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 6
        if sub_27c3f8ea[stor7[idx]].field_256 >= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            winners.length++
            mem[0] = 8
            address(winners[winners.length]) = stor7[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not winners.length:
        revert with 'NH{q', 18
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
    if totalSupply < sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length:
        revert with 'NH{q', 17
    totalSupply -= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
    emit Transfer((sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length), msg.sender, 0);
    idx = 0
    while idx < winners.length:
        mem[0] = address(winners[idx])
        mem[32] = 6
        if sub_27c3f8ea[address(stor8[idx])].field_256 > -(sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length) - 1:
            revert with 'NH{q', 17
        sub_27c3f8ea[address(stor8[idx])].field_256 += sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_0 = 0
    sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 = 0
    if sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length >= stor7.length:
        revert with 'NH{q', 50
    stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length] = 0
    if stor10 == -1:
        revert with 'NH{q', 17
    stor10++
    if stor11 == -1:
        revert with 'NH{q', 17
    stor11++
    if stor12 == -1:
        revert with 'NH{q', 17
    stor12++
    if stor13 == -1:
        revert with 'NH{q', 17
    stor13++
    stor18 = 1
    s = 0
    while end:
        if s >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[s]
        mem[32] = 6
        if not sub_27c3f8ea[stor7[s]].field_256:
            mem[32] = 6
            sub_27c3f8ea[stor7[s]].field_0 = 0
            sub_27c3f8ea[stor7[s]].field_256 = 0
            if s >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            stor7[s] = 0
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        continue 
    stor18 = 0
    if block.timestamp > -duration - 1:
        revert with 'NH{q', 17
    end = block.timestamp + duration
    require not stor18
    if not stor7.length:
        revert with 'NH{q', 18
    winners.length = 0
    idx = 0
    while winners.length > idx:
        uint256(winners[idx]) = 0
        idx = idx + 1
        continue 
    if sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length >= stor7.length:
        revert with 'NH{q', 50
    if not stor7.length:
        revert with 'NH{q', 18
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 6
        if sub_27c3f8ea[stor7[idx]].field_256 >= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            winners.length++
            mem[0] = 8
            address(winners[winners.length]) = stor7[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not winners.length:
        revert with 'NH{q', 18
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
    if totalSupply < sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length:
        revert with 'NH{q', 17
    totalSupply -= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
    emit Transfer((sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length), msg.sender, 0);
    idx = 0
    while idx < winners.length:
        mem[0] = address(winners[idx])
        mem[32] = 6
        if sub_27c3f8ea[address(stor8[idx])].field_256 > -(sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length) - 1:
            revert with 'NH{q', 17
        sub_27c3f8ea[address(stor8[idx])].field_256 += sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_0 = 0
    sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 = 0
    if sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length >= stor7.length:
        revert with 'NH{q', 50
    stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length] = 0
    if stor10 == -1:
        revert with 'NH{q', 17
    stor10++
    if stor11 == -1:
        revert with 'NH{q', 17
    stor11++
    if stor12 == -1:
        revert with 'NH{q', 17
    stor12++
    if stor13 == -1:
        revert with 'NH{q', 17
    stor13++
    stor18 = 1
    s = 0
    while end:
        if s >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[s]
        mem[32] = 6
        if not sub_27c3f8ea[stor7[s]].field_256:
            mem[32] = 6
            sub_27c3f8ea[stor7[s]].field_0 = 0
            sub_27c3f8ea[stor7[s]].field_256 = 0
            if s >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            stor7[s] = 0
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        continue 
    stor18 = 0
    if block.timestamp > -duration - 1:
        revert with 'NH{q', 17
    end = block.timestamp + duration
    require not stor18
    if not stor7.length:
        revert with 'NH{q', 18
    winners.length = 0
    idx = 0
    while winners.length > idx:
        uint256(winners[idx]) = 0
        idx = idx + 1
        continue 
    if sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length >= stor7.length:
        revert with 'NH{q', 50
    if not stor7.length:
        revert with 'NH{q', 18
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 6
        if sub_27c3f8ea[stor7[idx]].field_256 >= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / stor7.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            winners.length++
            mem[0] = 8
            address(winners[winners.length]) = stor7[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not winners.length:
        revert with 'NH{q', 18
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
    if totalSupply < sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length:
        revert with 'NH{q', 17
    totalSupply -= sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length
    emit Transfer((sub_27c3f8ea[stor7[sha3(stor10, stor11, stor12, stor13, sha3(stor10, stor11, stor12, stor13)) % stor7.length]].field_256 / winners.length), msg.sender, 0);
    # nil
}



}
