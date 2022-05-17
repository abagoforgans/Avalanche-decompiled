contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of uint8 stor6;
address sub_4c1a0012Address;
address sub_a66aa40dAddress;
uint256 sub_00d73b95;
uint256 sub_e05c9956;

function sub_00d73b95(?) payable {
    return sub_00d73b95
}

function totalSupply() payable {
    return totalSupply
}

function sub_4c1a0012(?) payable {
    return sub_4c1a0012Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_a66aa40d(?) payable {
    return sub_a66aa40dAddress
}

function authorized(address arg1) payable {
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

function sub_e05c9956(?) payable {
    return sub_e05c9956
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

function sub_1f6dc8ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e05c9956 = arg1
}

function sub_e4e4a679(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_00d73b95 = arg1
}

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor6[address(arg1)] = 1
}

function removeAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg1 != msg.sender
    stor6[address(arg1)] = 0
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

function sub_75752291(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor6[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
    emit Minted(address(arg1), arg2);
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

function sub_1e54ad00(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor6[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, address(arg1), 0);
    emit Burned(address(arg1), arg2);
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

function sub_2061c7bf(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg1
    while idx <= arg2:
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _13 = mem[_12]
        require mem[_12] == mem[_12 + 12 len 20]
        if mem[_12 + 12 len 20]:
            if totalSupply > 0xfffffffffffffffffffffffffffffffffffffffffffffffa9438a1d29cefffff:
                revert with 'NH{q', 17
            totalSupply += 100 * 10^18
            mem[0] = mem[_12 + 12 len 20]
            mem[32] = 0
            if balanceOf[mem[0]] > 0xfffffffffffffffffffffffffffffffffffffffffffffffa9438a1d29cefffff:
                revert with 'NH{q', 17
            balanceOf[mem[0]] += 100 * 10^18
            mem[mem[64]] = 100 * 10^18
            emit Transfer(100 * 10^18, 0, address(_13));
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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

function sub_40f964dd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0xacad41a4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    if not ext_call.return_data[0]:
        revert with 0, 'NOT STAKED'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x5973b1d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[64]:
        revert with 'NH{q', 17
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, block.timestamp - ext_call.return_data[64], 22, 'Claimable block differ', 0
    if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
        revert with 'NH{q', 17
    if block.timestamp < ext_call.return_data[64]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if (block.timestamp * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[32]) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[32]):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[96] > -((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[96] + ((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]))
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

function claimEggs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0xacad41a4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    if not ext_call.return_data[0]:
        revert with 0, 'NOT STAKED'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x5973b1d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[64]:
        revert with 'NH{q', 17
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, block.timestamp - ext_call.return_data[64], 22, 'Claimable block differ', 0
    if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
        revert with 'NH{q', 17
    if block.timestamp < ext_call.return_data[64]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if (block.timestamp * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[32]) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[32]):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[96] > -((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[96] + ((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]) <= 0:
        revert with 0, 'NO EGG'
    require ext_code.size(sub_a66aa40dAddress)
    call sub_a66aa40dAddress.0x921fb252 with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -ext_call.return_data[96] + -((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    totalSupply = totalSupply + ext_call.return_data[96] + ((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0])
    if balanceOf[address(msg.sender)] > -ext_call.return_data[96] + -((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + ext_call.return_data[96] + ((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0])
    emit Transfer((ext_call.return_data[96] + ((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0])), 0, msg.sender);
    emit Minted(msg.sender, ext_call.return_data[96] + ((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]));
}

function sub_4791284b(?) payable {
    mem[100] = msg.sender
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'NO CHIKN'
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _46 = mem[_45]
        require mem[_45] == mem[_45]
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xacad41a4 with:
                gas gas_remaining wei
               args mem[_45]
        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 224
        require mem[_49] == mem[_49]
        require mem[_49 + 32] == mem[_49 + 32]
        require mem[_49 + 64] == mem[_49 + 64]
        require mem[_49 + 96] == mem[_49 + 96]
        require mem[_49 + 128] == mem[_49 + 128]
        require mem[_49 + 160] == mem[_49 + 160]
        require mem[_49 + 192] == mem[_49 + 192]
        if mem[_49]:
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args _46
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_59] == mem[_59]
            _61 = mem[_59 + 32]
            require mem[_59 + 32] == mem[_59 + 32]
            _62 = mem[_59 + 64]
            require mem[_59 + 64] == mem[_59 + 64]
            _63 = mem[_59 + 96]
            require mem[_59 + 96] == mem[_59 + 96]
            require mem[_59 + 128] == mem[_59 + 128]
            require mem[_59 + 160] == mem[_59 + 160]
            require mem[_59 + 192] == mem[_59 + 192]
            if not mem[_59]:
                revert with 0, 'NOT STAKED'
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x5973b1d with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _71 = mem[_70]
            require mem[_70] == mem[_70]
            _73 = mem[64]
            mem[64] = mem[64] + 64
            mem[_73] = 22
            mem[_73 + 32] = 'Claimable block differ'
            if block.timestamp < _62:
                revert with 'NH{q', 17
            mem[mem[64] + 36] = 64
            mem[mem[64] + 100] = 22
            s = 0
            while s < 22:
                mem[mem[64] + s + 132] = mem[_73 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 154] = 0
            mem[mem[64] + 68] = block.timestamp - _62
            _87 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_87 + 32] = mem[_87 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_87 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_87 + 36 len mem[_87] - 4]
            if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                revert with 'NH{q', 17
            if block.timestamp < _62:
                revert with 'NH{q', 17
            if _61 and block.timestamp - _62 > -1 / _61:
                revert with 'NH{q', 17
            if (block.timestamp * _61) - (_62 * _61) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _61) - (_62 * _61):
                revert with 'NH{q', 17
            if not _71:
                revert with 'NH{q', 18
            if _63 > -((block.timestamp * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_62 * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _71) - 1:
                revert with 'NH{q', 17
            if _63 + ((block.timestamp * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_62 * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _71) > 0:
                if 0 > -_63 + -((block.timestamp * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_62 * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _71) - 1:
                    revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_fd1688b6(?) payable {
    mem[100] = msg.sender
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'NO CHIKN'
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(sub_4c1a0012Address)
        staticcall sub_4c1a0012Address.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _46 = mem[_45]
        require mem[_45] == mem[_45]
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xacad41a4 with:
                gas gas_remaining wei
               args mem[_45]
        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 224
        require mem[_49] == mem[_49]
        require mem[_49 + 32] == mem[_49 + 32]
        require mem[_49 + 64] == mem[_49 + 64]
        require mem[_49 + 96] == mem[_49 + 96]
        require mem[_49 + 128] == mem[_49 + 128]
        require mem[_49 + 160] == mem[_49 + 160]
        require mem[_49 + 192] == mem[_49 + 192]
        if mem[_49]:
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args _46
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_59] == mem[_59]
            _61 = mem[_59 + 32]
            require mem[_59 + 32] == mem[_59 + 32]
            _62 = mem[_59 + 64]
            require mem[_59 + 64] == mem[_59 + 64]
            _63 = mem[_59 + 96]
            require mem[_59 + 96] == mem[_59 + 96]
            require mem[_59 + 128] == mem[_59 + 128]
            require mem[_59 + 160] == mem[_59 + 160]
            require mem[_59 + 192] == mem[_59 + 192]
            if not mem[_59]:
                revert with 0, 'NOT STAKED'
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x5973b1d with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _71 = mem[_70]
            require mem[_70] == mem[_70]
            _73 = mem[64]
            mem[64] = mem[64] + 64
            mem[_73] = 22
            mem[_73 + 32] = 'Claimable block differ'
            if block.timestamp < _62:
                revert with 'NH{q', 17
            _74 = mem[64]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 100] = 22
            s = 0
            while s < 22:
                mem[mem[64] + s + 132] = mem[_73 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 154] = 0
            mem[mem[64] + 68] = block.timestamp - _62
            _87 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_87 + 32] = mem[_87 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_87 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_87 + 36 len mem[_87] - 4]
            if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                revert with 'NH{q', 17
            if block.timestamp < _62:
                revert with 'NH{q', 17
            if _61 and block.timestamp - _62 > -1 / _61:
                revert with 'NH{q', 17
            if (block.timestamp * _61) - (_62 * _61) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _61) - (_62 * _61):
                revert with 'NH{q', 17
            if not _71:
                revert with 'NH{q', 18
            if _63 > -((block.timestamp * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_62 * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _71) - 1:
                revert with 'NH{q', 17
            if _63 + ((block.timestamp * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_62 * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _71) > 0:
                if 0 > -_63 + -((block.timestamp * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_62 * _61 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _71) - 1:
                    revert with 'NH{q', 17
                mem[_74 + 164] = 0x921fb25200000000000000000000000000000000000000000000000000000000
                mem[_74 + 168] = _46
                mem[_74 + 200] = 0
                require ext_code.size(sub_a66aa40dAddress)
                call sub_a66aa40dAddress.0x921fb252 with:
                     gas gas_remaining wei
                    args _46, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    revert with 0, 'NO EGG'
}

function withdrawStaking(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0xadc8140f with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _82 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _83 = mem[_82]
        require mem[_82] == mem[_82]
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xacad41a4 with:
                gas gas_remaining wei
               args mem[_82]
        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _86 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 224
        require mem[_86] == mem[_86]
        _88 = mem[_86 + 32]
        require mem[_86 + 32] == mem[_86 + 32]
        _89 = mem[_86 + 64]
        require mem[_86 + 64] == mem[_86 + 64]
        _90 = mem[_86 + 96]
        require mem[_86 + 96] == mem[_86 + 96]
        require mem[_86 + 128] == mem[_86 + 128]
        require mem[_86 + 160] == mem[_86 + 160]
        require mem[_86 + 192] == mem[_86 + 192]
        if not mem[_86]:
            revert with 0, 'NOT STAKED'
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0x5973b1d with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _98 = mem[_97]
        require mem[_97] == mem[_97]
        _100 = mem[64]
        mem[64] = mem[64] + 64
        mem[_100] = 22
        mem[_100 + 32] = 'Claimable block differ'
        if block.timestamp < _89:
            revert with 'NH{q', 17
        _101 = mem[64]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 100] = 22
        s = 0
        while s < 22:
            mem[mem[64] + s + 132] = mem[_100 + s + 32]
            s = s + 32
            continue 
        mem[mem[64] + 154] = 0
        mem[mem[64] + 68] = block.timestamp - _89
        _133 = mem[64]
        mem[mem[64]] = 132
        mem[64] = mem[64] + 164
        mem[_133 + 32] = mem[_133 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
        staticcall 'console.log'.mem[_133 + 32 len 4] with:
                gas gas_remaining wei
               args mem[_133 + 36 len mem[_133] - 4]
        if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
            revert with 'NH{q', 17
        if block.timestamp < _89:
            revert with 'NH{q', 17
        if _88 and block.timestamp - _89 > -1 / _88:
            revert with 'NH{q', 17
        if (block.timestamp * _88) - (_89 * _88) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _88) - (_89 * _88):
            revert with 'NH{q', 17
        if not _98:
            revert with 'NH{q', 18
        if _90 > -((block.timestamp * _88 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_89 * _88 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _98) - 1:
            revert with 'NH{q', 17
        mem[_101 + 164] = 16
        mem[_101 + 196] = 'pendingClaim-++ '
        mem[_101 + 264] = 96
        mem[_101 + 360] = 16
        s = 0
        while s < 16:
            mem[_101 + s + 392] = mem[_101 + s + 196]
            s = s + 32
            continue 
        mem[_101 + 408] = 0
        mem[_101 + 296] = _83
        mem[_101 + 328] = _90 + ((block.timestamp * _88 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_89 * _88 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _98)
        mem[_101 + 228] = 164
        mem[64] = _101 + 424
        mem[_101 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
        staticcall 'console.log'.0x969cdd03 with:
                gas gas_remaining wei
               args 0, 0, _83, _90 + ((block.timestamp * _88 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_89 * _88 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _98), 16, mem[_101 + 392 len 16], 0
        mem[_101 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
        mem[_101 + 428] = _83
        mem[_101 + 460] = _90 + ((block.timestamp * _88 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_89 * _88 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _98)
        require ext_code.size(sub_a66aa40dAddress)
        call sub_a66aa40dAddress.0x921fb252 with:
             gas gas_remaining wei
            args _83, _90 + ((block.timestamp * _88 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_89 * _88 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _98)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(sub_a66aa40dAddress)
    call sub_a66aa40dAddress.0x2e17de78 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function staking(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0xacad41a4 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96 len 224] = ext_call.return_data[0 len 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    if ext_call.return_data[0]:
        revert with 0, 'ALREADY STAKED'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0xadc8140f with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _88 = mem[_87]
        require mem[_87] == mem[_87]
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xacad41a4 with:
                gas gas_remaining wei
               args mem[_87]
        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 224
        require mem[_91] == mem[_91]
        _93 = mem[_91 + 32]
        require mem[_91 + 32] == mem[_91 + 32]
        _94 = mem[_91 + 64]
        require mem[_91 + 64] == mem[_91 + 64]
        _95 = mem[_91 + 96]
        require mem[_91 + 96] == mem[_91 + 96]
        require mem[_91 + 128] == mem[_91 + 128]
        require mem[_91 + 160] == mem[_91 + 160]
        require mem[_91 + 192] == mem[_91 + 192]
        if not mem[_91]:
            revert with 0, 'NOT STAKED'
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0x5973b1d with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _103 = mem[_102]
        require mem[_102] == mem[_102]
        _105 = mem[64]
        mem[64] = mem[64] + 64
        mem[_105] = 22
        mem[_105 + 32] = 'Claimable block differ'
        if block.timestamp < _94:
            revert with 'NH{q', 17
        _106 = mem[64]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 100] = 22
        s = 0
        while s < 22:
            mem[mem[64] + s + 132] = mem[_105 + s + 32]
            s = s + 32
            continue 
        mem[mem[64] + 154] = 0
        mem[mem[64] + 68] = block.timestamp - _94
        _138 = mem[64]
        mem[mem[64]] = 132
        mem[64] = mem[64] + 164
        mem[_138 + 32] = mem[_138 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
        staticcall 'console.log'.mem[_138 + 32 len 4] with:
                gas gas_remaining wei
               args mem[_138 + 36 len mem[_138] - 4]
        if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
            revert with 'NH{q', 17
        if block.timestamp < _94:
            revert with 'NH{q', 17
        if _93 and block.timestamp - _94 > -1 / _93:
            revert with 'NH{q', 17
        if (block.timestamp * _93) - (_94 * _93) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _93) - (_94 * _93):
            revert with 'NH{q', 17
        if not _103:
            revert with 'NH{q', 18
        if _95 > -((block.timestamp * _93 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_94 * _93 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _103) - 1:
            revert with 'NH{q', 17
        mem[_106 + 164] = 16
        mem[_106 + 196] = 'pendingClaim-++ '
        mem[_106 + 264] = 96
        mem[_106 + 360] = 16
        s = 0
        while s < 16:
            mem[_106 + s + 392] = mem[_106 + s + 196]
            s = s + 32
            continue 
        mem[_106 + 408] = 0
        mem[_106 + 296] = _88
        mem[_106 + 328] = _95 + ((block.timestamp * _93 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_94 * _93 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _103)
        mem[_106 + 228] = 164
        mem[64] = _106 + 424
        mem[_106 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
        staticcall 'console.log'.0x969cdd03 with:
                gas gas_remaining wei
               args 0, 0, _88, _95 + ((block.timestamp * _93 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_94 * _93 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _103), 16, mem[_106 + 392 len 16], 0
        mem[_106 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
        mem[_106 + 428] = _88
        mem[_106 + 460] = _95 + ((block.timestamp * _93 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_94 * _93 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _103)
        require ext_code.size(sub_a66aa40dAddress)
        call sub_a66aa40dAddress.0x921fb252 with:
             gas gas_remaining wei
            args _88, _95 + ((block.timestamp * _93 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_94 * _93 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _103)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(sub_a66aa40dAddress)
    call sub_a66aa40dAddress.0x1dbb2a22 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6d8f35c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0xacad41a4 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96 len 224] = ext_call.return_data[0 len 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    if not ext_call.return_data[0]:
        revert with 0, 'NOT STAKED'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x5973b1d with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 22
    mem[(4 * ceil32(return_data.size)) + 128] = 'Claimable block differ'
    if block.timestamp < ext_call.return_data[64]:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 196] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 22
    mem[(4 * ceil32(return_data.size)) + 292] = 'Claimable block differ'
    mem[(4 * ceil32(return_data.size)) + 314] = 0
    mem[(4 * ceil32(return_data.size)) + 228] = block.timestamp - ext_call.return_data[64]
    mem[(4 * ceil32(return_data.size)) + 160] = 132
    mem[(4 * ceil32(return_data.size)) + 196 len 28] = 0
    mem[(4 * ceil32(return_data.size)) + 192 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 0, block.timestamp - ext_call.return_data[64], 22, 'Claimable block differ', 0
    if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
        revert with 'NH{q', 17
    if block.timestamp < ext_call.return_data[64]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if (block.timestamp * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[32]) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * ext_call.return_data[32]) - (ext_call.return_data[64] * ext_call.return_data[32]):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[96] > -((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[96] + ((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]) <= 0:
        revert with 0, 'NO EGG'
    mem[(4 * ceil32(return_data.size)) + 328] = arg1
    mem[(4 * ceil32(return_data.size)) + 360] = 0
    require ext_code.size(sub_a66aa40dAddress)
    call sub_a66aa40dAddress.0x921fb252 with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0xadc8140f with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 324
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _206 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _210 = mem[_206]
        require mem[_206] == mem[_206]
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xacad41a4 with:
                gas gas_remaining wei
               args mem[_206]
        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _222 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 224
        require mem[_222] == mem[_222]
        _230 = mem[_222 + 32]
        require mem[_222 + 32] == mem[_222 + 32]
        _232 = mem[_222 + 64]
        require mem[_222 + 64] == mem[_222 + 64]
        _236 = mem[_222 + 96]
        require mem[_222 + 96] == mem[_222 + 96]
        require mem[_222 + 128] == mem[_222 + 128]
        require mem[_222 + 160] == mem[_222 + 160]
        require mem[_222 + 192] == mem[_222 + 192]
        if not mem[_222]:
            revert with 0, 'NOT STAKED'
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0x5973b1d with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _250 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _252 = mem[_250]
        require mem[_250] == mem[_250]
        _256 = mem[64]
        mem[64] = mem[64] + 64
        mem[_256] = 22
        mem[_256 + 32] = 'Claimable block differ'
        if block.timestamp < _232:
            revert with 'NH{q', 17
        _258 = mem[64]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 100] = 22
        s = 0
        while s < 22:
            mem[mem[64] + s + 132] = mem[_256 + s + 32]
            s = s + 32
            continue 
        mem[mem[64] + 154] = 0
        mem[mem[64] + 68] = block.timestamp - _232
        _323 = mem[64]
        mem[mem[64]] = 132
        mem[64] = mem[64] + 164
        mem[_323 + 32] = mem[_323 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
        staticcall 'console.log'.mem[_323 + 32 len 4] with:
                gas gas_remaining wei
               args mem[_323 + 36 len mem[_323] - 4]
        if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
            revert with 'NH{q', 17
        if block.timestamp < _232:
            revert with 'NH{q', 17
        if _230 and block.timestamp - _232 > -1 / _230:
            revert with 'NH{q', 17
        if (block.timestamp * _230) - (_232 * _230) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _230) - (_232 * _230):
            revert with 'NH{q', 17
        if not _252:
            revert with 'NH{q', 18
        if _236 > -((block.timestamp * _230 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_232 * _230 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _252) - 1:
            revert with 'NH{q', 17
        mem[_258 + 164] = 16
        mem[_258 + 196] = 'pendingClaim-++ '
        mem[_258 + 264] = 96
        mem[_258 + 360] = 16
        s = 0
        while s < 16:
            mem[_258 + s + 392] = mem[_258 + s + 196]
            s = s + 32
            continue 
        mem[_258 + 408] = 0
        mem[_258 + 296] = _210
        mem[_258 + 328] = _236 + ((block.timestamp * _230 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_232 * _230 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _252)
        mem[_258 + 228] = 164
        mem[64] = _258 + 424
        mem[_258 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
        staticcall 'console.log'.0x969cdd03 with:
                gas gas_remaining wei
               args 0, 0, _210, _236 + ((block.timestamp * _230 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_232 * _230 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _252), 16, mem[_258 + 392 len 16], 0
        mem[_258 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
        mem[_258 + 428] = _210
        mem[_258 + 460] = _236 + ((block.timestamp * _230 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_232 * _230 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _252)
        require ext_code.size(sub_a66aa40dAddress)
        call sub_a66aa40dAddress.0x921fb252 with:
             gas gas_remaining wei
            args _210, _236 + ((block.timestamp * _230 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_232 * _230 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _252)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(sub_a66aa40dAddress)
    call sub_a66aa40dAddress.0x2e17de78 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -ext_call.return_data[96] + -((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    totalSupply = totalSupply + ext_call.return_data[96] + ((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0])
    if balanceOf[address(msg.sender)] > -ext_call.return_data[96] + -((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + ext_call.return_data[96] + ((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0])
    emit Transfer((ext_call.return_data[96] + ((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0])), 0, msg.sender);
    emit Minted(msg.sender, ext_call.return_data[96] + ((block.timestamp * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / ext_call.return_data[0]));
}

function sub_0b2a873f(?) payable {
    mem[0] = msg.sender
    mem[32] = 6
    if stor6[address(msg.sender)]:
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xadc8140f with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _160 = mem[_158]
            require mem[_158] == mem[_158]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_158]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _166 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_166] == mem[_166]
            _170 = mem[_166 + 32]
            require mem[_166 + 32] == mem[_166 + 32]
            _172 = mem[_166 + 64]
            require mem[_166 + 64] == mem[_166 + 64]
            _174 = mem[_166 + 96]
            require mem[_166 + 96] == mem[_166 + 96]
            require mem[_166 + 128] == mem[_166 + 128]
            require mem[_166 + 160] == mem[_166 + 160]
            require mem[_166 + 192] == mem[_166 + 192]
            if not mem[_166]:
                revert with 0, 'NOT STAKED'
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x5973b1d with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _190 = mem[_188]
            require mem[_188] == mem[_188]
            _194 = mem[64]
            mem[64] = mem[64] + 64
            mem[_194] = 22
            mem[_194 + 32] = 'Claimable block differ'
            if block.timestamp < _172:
                revert with 'NH{q', 17
            _196 = mem[64]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 100] = 22
            s = 0
            while s < 22:
                mem[mem[64] + s + 132] = mem[_194 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 154] = 0
            mem[mem[64] + 68] = block.timestamp - _172
            _259 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_259 + 32] = mem[_259 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_259 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_259 + 36 len mem[_259] - 4]
            if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                revert with 'NH{q', 17
            if block.timestamp < _172:
                revert with 'NH{q', 17
            if _170 and block.timestamp - _172 > -1 / _170:
                revert with 'NH{q', 17
            if (block.timestamp * _170) - (_172 * _170) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _170) - (_172 * _170):
                revert with 'NH{q', 17
            if not _190:
                revert with 'NH{q', 18
            if _174 > -((block.timestamp * _170 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_172 * _170 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _190) - 1:
                revert with 'NH{q', 17
            mem[_196 + 164] = 16
            mem[_196 + 196] = 'pendingClaim-++ '
            mem[_196 + 264] = 96
            mem[_196 + 360] = 16
            s = 0
            while s < 16:
                mem[_196 + s + 392] = mem[_196 + s + 196]
                s = s + 32
                continue 
            mem[_196 + 408] = 0
            mem[_196 + 296] = _160
            mem[_196 + 328] = _174 + ((block.timestamp * _170 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_172 * _170 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _190)
            mem[_196 + 228] = 164
            mem[64] = _196 + 424
            mem[_196 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.0x969cdd03 with:
                    gas gas_remaining wei
                   args 0, 0, _160, _174 + ((block.timestamp * _170 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_172 * _170 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _190), 16, mem[_196 + 392 len 16], 0
            mem[_196 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
            mem[_196 + 428] = _160
            mem[_196 + 460] = _174 + ((block.timestamp * _170 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_172 * _170 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _190)
            require ext_code.size(sub_a66aa40dAddress)
            call sub_a66aa40dAddress.0x921fb252 with:
                 gas gas_remaining wei
                args _160, _174 + ((block.timestamp * _170 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_172 * _170 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _190)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'Not authorized'
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xadc8140f with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _161 = mem[_159]
            require mem[_159] == mem[_159]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_159]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_167] == mem[_167]
            _171 = mem[_167 + 32]
            require mem[_167 + 32] == mem[_167 + 32]
            _173 = mem[_167 + 64]
            require mem[_167 + 64] == mem[_167 + 64]
            _175 = mem[_167 + 96]
            require mem[_167 + 96] == mem[_167 + 96]
            require mem[_167 + 128] == mem[_167 + 128]
            require mem[_167 + 160] == mem[_167 + 160]
            require mem[_167 + 192] == mem[_167 + 192]
            if not mem[_167]:
                revert with 0, 'NOT STAKED'
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x5973b1d with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _191 = mem[_189]
            require mem[_189] == mem[_189]
            _195 = mem[64]
            mem[64] = mem[64] + 64
            mem[_195] = 22
            mem[_195 + 32] = 'Claimable block differ'
            if block.timestamp < _173:
                revert with 'NH{q', 17
            _197 = mem[64]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 100] = 22
            s = 0
            while s < 22:
                mem[mem[64] + s + 132] = mem[_195 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 154] = 0
            mem[mem[64] + 68] = block.timestamp - _173
            _262 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_262 + 32] = mem[_262 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_262 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_262 + 36 len mem[_262] - 4]
            if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                revert with 'NH{q', 17
            if block.timestamp < _173:
                revert with 'NH{q', 17
            if _171 and block.timestamp - _173 > -1 / _171:
                revert with 'NH{q', 17
            if (block.timestamp * _171) - (_173 * _171) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _171) - (_173 * _171):
                revert with 'NH{q', 17
            if not _191:
                revert with 'NH{q', 18
            if _175 > -((block.timestamp * _171 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_173 * _171 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _191) - 1:
                revert with 'NH{q', 17
            mem[_197 + 164] = 16
            mem[_197 + 196] = 'pendingClaim-++ '
            mem[_197 + 264] = 96
            mem[_197 + 360] = 16
            s = 0
            while s < 16:
                mem[_197 + s + 392] = mem[_197 + s + 196]
                s = s + 32
                continue 
            mem[_197 + 408] = 0
            mem[_197 + 296] = _161
            mem[_197 + 328] = _175 + ((block.timestamp * _171 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_173 * _171 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _191)
            mem[_197 + 228] = 164
            mem[64] = _197 + 424
            mem[_197 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.0x969cdd03 with:
                    gas gas_remaining wei
                   args 0, 0, _161, _175 + ((block.timestamp * _171 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_173 * _171 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _191), 16, mem[_197 + 392 len 16], 0
            mem[_197 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
            mem[_197 + 428] = _161
            mem[_197 + 460] = _175 + ((block.timestamp * _171 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_173 * _171 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _191)
            require ext_code.size(sub_a66aa40dAddress)
            call sub_a66aa40dAddress.0x921fb252 with:
                 gas gas_remaining wei
                args _161, _175 + ((block.timestamp * _171 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_173 * _171 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _191)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function stakeAll() payable {
    mem[100] = msg.sender
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'NO CHIKN'
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xadc8140f with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _228 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _230 = mem[_228]
            require mem[_228] == mem[_228]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_228]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _243 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_243] == mem[_243]
            _252 = mem[_243 + 32]
            require mem[_243 + 32] == mem[_243 + 32]
            _256 = mem[_243 + 64]
            require mem[_243 + 64] == mem[_243 + 64]
            _260 = mem[_243 + 96]
            require mem[_243 + 96] == mem[_243 + 96]
            require mem[_243 + 128] == mem[_243 + 128]
            require mem[_243 + 160] == mem[_243 + 160]
            require mem[_243 + 192] == mem[_243 + 192]
            if not mem[_243]:
                revert with 0, 'NOT STAKED'
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x5973b1d with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _286 = mem[_284]
            require mem[_284] == mem[_284]
            _294 = mem[64]
            mem[64] = mem[64] + 64
            mem[_294] = 22
            mem[_294 + 32] = 'Claimable block differ'
            if block.timestamp < _256:
                revert with 'NH{q', 17
            _298 = mem[64]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 100] = 22
            s = 0
            while s < 22:
                mem[mem[64] + s + 132] = mem[_294 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 154] = 0
            mem[mem[64] + 68] = block.timestamp - _256
            _367 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_367 + 32] = mem[_367 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_367 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_367 + 36 len mem[_367] - 4]
            if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                revert with 'NH{q', 17
            if block.timestamp < _256:
                revert with 'NH{q', 17
            if _252 and block.timestamp - _256 > -1 / _252:
                revert with 'NH{q', 17
            if (block.timestamp * _252) - (_256 * _252) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _252) - (_256 * _252):
                revert with 'NH{q', 17
            if not _286:
                revert with 'NH{q', 18
            if _260 > -((block.timestamp * _252 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_256 * _252 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _286) - 1:
                revert with 'NH{q', 17
            mem[_298 + 164] = 16
            mem[_298 + 196] = 'pendingClaim-++ '
            mem[_298 + 264] = 96
            mem[_298 + 360] = 16
            s = 0
            while s < 16:
                mem[_298 + s + 392] = mem[_298 + s + 196]
                s = s + 32
                continue 
            mem[_298 + 408] = 0
            mem[_298 + 296] = _230
            mem[_298 + 328] = _260 + ((block.timestamp * _252 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_256 * _252 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _286)
            mem[_298 + 228] = 164
            mem[64] = _298 + 424
            mem[_298 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.0x969cdd03 with:
                    gas gas_remaining wei
                   args 0, 0, _230, _260 + ((block.timestamp * _252 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_256 * _252 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _286), 16, mem[_298 + 392 len 16], 0
            mem[_298 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
            mem[_298 + 428] = _230
            mem[_298 + 460] = _260 + ((block.timestamp * _252 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_256 * _252 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _286)
            require ext_code.size(sub_a66aa40dAddress)
            call sub_a66aa40dAddress.0x921fb252 with:
                 gas gas_remaining wei
                args _230, _260 + ((block.timestamp * _252 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_256 * _252 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _286)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(sub_4c1a0012Address)
            staticcall sub_4c1a0012Address.0x2f745c59 with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _376 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _379 = mem[_376]
            require mem[_376] == mem[_376]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_376]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _388 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_388] == mem[_388]
            require mem[_388 + 32] == mem[_388 + 32]
            require mem[_388 + 64] == mem[_388 + 64]
            require mem[_388 + 96] == mem[_388 + 96]
            require mem[_388 + 128] == mem[_388 + 128]
            require mem[_388 + 160] == mem[_388 + 160]
            require mem[_388 + 192] == mem[_388 + 192]
            if mem[_388]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * s) + ceil32(return_data.size) + 128] = _379
            if s == -1:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x1dbb2a2200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _379
            require ext_code.size(sub_a66aa40dAddress)
            call sub_a66aa40dAddress.0x1dbb2a22 with:
                 gas gas_remaining wei
                args _379
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > 0:
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = 64
            _360 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96 len 32 * _360] = mem[ceil32(return_data.size) + 128 len 32 * _360]
            emit 0x1e059d2c: msg.sender, 64, mem[mem[64] + 64 len (32 * _360) + 32]
    else:
        mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xadc8140f with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _229 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _231 = mem[_229]
            require mem[_229] == mem[_229]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_229]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_245] == mem[_245]
            _253 = mem[_245 + 32]
            require mem[_245 + 32] == mem[_245 + 32]
            _257 = mem[_245 + 64]
            require mem[_245 + 64] == mem[_245 + 64]
            _261 = mem[_245 + 96]
            require mem[_245 + 96] == mem[_245 + 96]
            require mem[_245 + 128] == mem[_245 + 128]
            require mem[_245 + 160] == mem[_245 + 160]
            require mem[_245 + 192] == mem[_245 + 192]
            if not mem[_245]:
                revert with 0, 'NOT STAKED'
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x5973b1d with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _287 = mem[_285]
            require mem[_285] == mem[_285]
            _295 = mem[64]
            mem[64] = mem[64] + 64
            mem[_295] = 22
            mem[_295 + 32] = 'Claimable block differ'
            if block.timestamp < _257:
                revert with 'NH{q', 17
            _299 = mem[64]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 100] = 22
            s = 0
            while s < 22:
                mem[mem[64] + s + 132] = mem[_295 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 154] = 0
            mem[mem[64] + 68] = block.timestamp - _257
            _370 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_370 + 32] = mem[_370 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_370 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_370 + 36 len mem[_370] - 4]
            if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                revert with 'NH{q', 17
            if block.timestamp < _257:
                revert with 'NH{q', 17
            if _253 and block.timestamp - _257 > -1 / _253:
                revert with 'NH{q', 17
            if (block.timestamp * _253) - (_257 * _253) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _253) - (_257 * _253):
                revert with 'NH{q', 17
            if not _287:
                revert with 'NH{q', 18
            if _261 > -((block.timestamp * _253 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_257 * _253 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _287) - 1:
                revert with 'NH{q', 17
            mem[_299 + 164] = 16
            mem[_299 + 196] = 'pendingClaim-++ '
            mem[_299 + 264] = 96
            mem[_299 + 360] = 16
            s = 0
            while s < 16:
                mem[_299 + s + 392] = mem[_299 + s + 196]
                s = s + 32
                continue 
            mem[_299 + 408] = 0
            mem[_299 + 296] = _231
            mem[_299 + 328] = _261 + ((block.timestamp * _253 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_257 * _253 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _287)
            mem[_299 + 228] = 164
            mem[64] = _299 + 424
            mem[_299 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.0x969cdd03 with:
                    gas gas_remaining wei
                   args 0, 0, _231, _261 + ((block.timestamp * _253 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_257 * _253 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _287), 16, mem[_299 + 392 len 16], 0
            mem[_299 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
            mem[_299 + 428] = _231
            mem[_299 + 460] = _261 + ((block.timestamp * _253 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_257 * _253 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _287)
            require ext_code.size(sub_a66aa40dAddress)
            call sub_a66aa40dAddress.0x921fb252 with:
                 gas gas_remaining wei
                args _231, _261 + ((block.timestamp * _253 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_257 * _253 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _287)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(sub_4c1a0012Address)
            staticcall sub_4c1a0012Address.0x2f745c59 with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _377 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _381 = mem[_377]
            require mem[_377] == mem[_377]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_377]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _389 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_389] == mem[_389]
            require mem[_389 + 32] == mem[_389 + 32]
            require mem[_389 + 64] == mem[_389 + 64]
            require mem[_389 + 96] == mem[_389 + 96]
            require mem[_389 + 128] == mem[_389 + 128]
            require mem[_389 + 160] == mem[_389 + 160]
            require mem[_389 + 192] == mem[_389 + 192]
            if mem[_389]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * s) + ceil32(return_data.size) + 128] = _381
            if s == -1:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x1dbb2a2200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _381
            require ext_code.size(sub_a66aa40dAddress)
            call sub_a66aa40dAddress.0x1dbb2a22 with:
                 gas gas_remaining wei
                args _381
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > 0:
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = 64
            _363 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96 len 32 * _363] = mem[ceil32(return_data.size) + 128 len 32 * _363]
            emit 0x1e059d2c: msg.sender, 64, mem[mem[64] + 64 len (32 * _363) + 32]
}

function sub_8bcf6b51(?) payable {
    mem[100] = msg.sender
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'NO CHIKN'
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xadc8140f with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _294 = mem[_292]
            require mem[_292] == mem[_292]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_292]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_307] == mem[_307]
            _316 = mem[_307 + 32]
            require mem[_307 + 32] == mem[_307 + 32]
            _320 = mem[_307 + 64]
            require mem[_307 + 64] == mem[_307 + 64]
            _324 = mem[_307 + 96]
            require mem[_307 + 96] == mem[_307 + 96]
            require mem[_307 + 128] == mem[_307 + 128]
            require mem[_307 + 160] == mem[_307 + 160]
            require mem[_307 + 192] == mem[_307 + 192]
            if not mem[_307]:
                revert with 0, 'NOT STAKED'
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x5973b1d with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _348 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _350 = mem[_348]
            require mem[_348] == mem[_348]
            _360 = mem[64]
            mem[64] = mem[64] + 64
            mem[_360] = 22
            mem[_360 + 32] = 'Claimable block differ'
            if block.timestamp < _320:
                revert with 'NH{q', 17
            _365 = mem[64]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 100] = 22
            s = 0
            while s < 22:
                mem[mem[64] + s + 132] = mem[_360 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 154] = 0
            mem[mem[64] + 68] = block.timestamp - _320
            _473 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_473 + 32] = mem[_473 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_473 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_473 + 36 len mem[_473] - 4]
            if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                revert with 'NH{q', 17
            if block.timestamp < _320:
                revert with 'NH{q', 17
            if _316 and block.timestamp - _320 > -1 / _316:
                revert with 'NH{q', 17
            if (block.timestamp * _316) - (_320 * _316) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _316) - (_320 * _316):
                revert with 'NH{q', 17
            if not _350:
                revert with 'NH{q', 18
            if _324 > -((block.timestamp * _316 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_320 * _316 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _350) - 1:
                revert with 'NH{q', 17
            mem[_365 + 164] = 16
            mem[_365 + 196] = 'pendingClaim-++ '
            mem[_365 + 264] = 96
            mem[_365 + 360] = 16
            s = 0
            while s < 16:
                mem[_365 + s + 392] = mem[_365 + s + 196]
                s = s + 32
                continue 
            mem[_365 + 408] = 0
            mem[_365 + 296] = _294
            mem[_365 + 328] = _324 + ((block.timestamp * _316 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_320 * _316 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _350)
            mem[_365 + 228] = 164
            mem[64] = _365 + 424
            mem[_365 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.0x969cdd03 with:
                    gas gas_remaining wei
                   args 0, 0, _294, _324 + ((block.timestamp * _316 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_320 * _316 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _350), 16, mem[_365 + 392 len 16], 0
            mem[_365 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
            mem[_365 + 428] = _294
            mem[_365 + 460] = _324 + ((block.timestamp * _316 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_320 * _316 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _350)
            require ext_code.size(sub_a66aa40dAddress)
            call sub_a66aa40dAddress.0x921fb252 with:
                 gas gas_remaining wei
                args _294, _324 + ((block.timestamp * _316 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_320 * _316 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _350)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(sub_4c1a0012Address)
            staticcall sub_4c1a0012Address.0x2f745c59 with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _482 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _484 = mem[_482]
            require mem[_482] == mem[_482]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_482]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _490 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_490] == mem[_490]
            require mem[_490 + 32] == mem[_490 + 32]
            require mem[_490 + 64] == mem[_490 + 64]
            require mem[_490 + 96] == mem[_490 + 96]
            require mem[_490 + 128] == mem[_490 + 128]
            require mem[_490 + 160] == mem[_490 + 160]
            require mem[_490 + 192] == mem[_490 + 192]
            if mem[_490]:
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0xacad41a4 with:
                        gas gas_remaining wei
                       args _484
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _560 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                require mem[_560] == mem[_560]
                _570 = mem[_560 + 32]
                require mem[_560 + 32] == mem[_560 + 32]
                _572 = mem[_560 + 64]
                require mem[_560 + 64] == mem[_560 + 64]
                _574 = mem[_560 + 96]
                require mem[_560 + 96] == mem[_560 + 96]
                require mem[_560 + 128] == mem[_560 + 128]
                require mem[_560 + 160] == mem[_560 + 160]
                require mem[_560 + 192] == mem[_560 + 192]
                if not mem[_560]:
                    revert with 0, 'NOT STAKED'
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0x5973b1d with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _588 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _590 = mem[_588]
                require mem[_588] == mem[_588]
                _594 = mem[64]
                mem[64] = mem[64] + 64
                mem[_594] = 22
                mem[_594 + 32] = 'Claimable block differ'
                if block.timestamp < _572:
                    revert with 'NH{q', 17
                _596 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 22
                s = 0
                while s < 22:
                    mem[mem[64] + s + 132] = mem[_594 + s + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 154] = 0
                mem[mem[64] + 68] = block.timestamp - _572
                _625 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_625 + 32] = mem[_625 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.mem[_625 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_625 + 36 len mem[_625] - 4]
                if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                    revert with 'NH{q', 17
                if block.timestamp < _572:
                    revert with 'NH{q', 17
                if _570 and block.timestamp - _572 > -1 / _570:
                    revert with 'NH{q', 17
                if (block.timestamp * _570) - (_572 * _570) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _570) - (_572 * _570):
                    revert with 'NH{q', 17
                if not _590:
                    revert with 'NH{q', 18
                if _574 > -((block.timestamp * _570 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_572 * _570 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _590) - 1:
                    revert with 'NH{q', 17
                if _574 + ((block.timestamp * _570 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_572 * _570 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _590) > 0:
                    if 0 > -_574 + -((block.timestamp * _570 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_572 * _570 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _590) - 1:
                        revert with 'NH{q', 17
                if 0 >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + 128] = _484
                mem[_596 + 164] = 0x2e17de7800000000000000000000000000000000000000000000000000000000
                mem[_596 + 168] = _484
                require ext_code.size(sub_a66aa40dAddress)
                call sub_a66aa40dAddress.0x2e17de78 with:
                     gas gas_remaining wei
                    args _484
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xadc8140f with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _293 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _295 = mem[_293]
            require mem[_293] == mem[_293]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_293]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _309 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_309] == mem[_309]
            _317 = mem[_309 + 32]
            require mem[_309 + 32] == mem[_309 + 32]
            _321 = mem[_309 + 64]
            require mem[_309 + 64] == mem[_309 + 64]
            _325 = mem[_309 + 96]
            require mem[_309 + 96] == mem[_309 + 96]
            require mem[_309 + 128] == mem[_309 + 128]
            require mem[_309 + 160] == mem[_309 + 160]
            require mem[_309 + 192] == mem[_309 + 192]
            if not mem[_309]:
                revert with 0, 'NOT STAKED'
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0x5973b1d with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _351 = mem[_349]
            require mem[_349] == mem[_349]
            _361 = mem[64]
            mem[64] = mem[64] + 64
            mem[_361] = 22
            mem[_361 + 32] = 'Claimable block differ'
            if block.timestamp < _321:
                revert with 'NH{q', 17
            _367 = mem[64]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 100] = 22
            s = 0
            while s < 22:
                mem[mem[64] + s + 132] = mem[_361 + s + 32]
                s = s + 32
                continue 
            mem[mem[64] + 154] = 0
            mem[mem[64] + 68] = block.timestamp - _321
            _476 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_476 + 32] = mem[_476 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_476 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_476 + 36 len mem[_476] - 4]
            if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                revert with 'NH{q', 17
            if block.timestamp < _321:
                revert with 'NH{q', 17
            if _317 and block.timestamp - _321 > -1 / _317:
                revert with 'NH{q', 17
            if (block.timestamp * _317) - (_321 * _317) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _317) - (_321 * _317):
                revert with 'NH{q', 17
            if not _351:
                revert with 'NH{q', 18
            if _325 > -((block.timestamp * _317 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_321 * _317 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _351) - 1:
                revert with 'NH{q', 17
            mem[_367 + 164] = 16
            mem[_367 + 196] = 'pendingClaim-++ '
            mem[_367 + 264] = 96
            mem[_367 + 360] = 16
            s = 0
            while s < 16:
                mem[_367 + s + 392] = mem[_367 + s + 196]
                s = s + 32
                continue 
            mem[_367 + 408] = 0
            mem[_367 + 296] = _295
            mem[_367 + 328] = _325 + ((block.timestamp * _317 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_321 * _317 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _351)
            mem[_367 + 228] = 164
            mem[64] = _367 + 424
            mem[_367 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.0x969cdd03 with:
                    gas gas_remaining wei
                   args 0, 0, _295, _325 + ((block.timestamp * _317 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_321 * _317 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _351), 16, mem[_367 + 392 len 16], 0
            mem[_367 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
            mem[_367 + 428] = _295
            mem[_367 + 460] = _325 + ((block.timestamp * _317 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_321 * _317 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _351)
            require ext_code.size(sub_a66aa40dAddress)
            call sub_a66aa40dAddress.0x921fb252 with:
                 gas gas_remaining wei
                args _295, _325 + ((block.timestamp * _317 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_321 * _317 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _351)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(sub_4c1a0012Address)
            staticcall sub_4c1a0012Address.0x2f745c59 with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _483 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _485 = mem[_483]
            require mem[_483] == mem[_483]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_483]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _491 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_491] == mem[_491]
            require mem[_491 + 32] == mem[_491 + 32]
            require mem[_491 + 64] == mem[_491 + 64]
            require mem[_491 + 96] == mem[_491 + 96]
            require mem[_491 + 128] == mem[_491 + 128]
            require mem[_491 + 160] == mem[_491 + 160]
            require mem[_491 + 192] == mem[_491 + 192]
            if mem[_491]:
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0xacad41a4 with:
                        gas gas_remaining wei
                       args _485
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _563 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                require mem[_563] == mem[_563]
                _571 = mem[_563 + 32]
                require mem[_563 + 32] == mem[_563 + 32]
                _573 = mem[_563 + 64]
                require mem[_563 + 64] == mem[_563 + 64]
                _575 = mem[_563 + 96]
                require mem[_563 + 96] == mem[_563 + 96]
                require mem[_563 + 128] == mem[_563 + 128]
                require mem[_563 + 160] == mem[_563 + 160]
                require mem[_563 + 192] == mem[_563 + 192]
                if not mem[_563]:
                    revert with 0, 'NOT STAKED'
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0x5973b1d with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _589 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _591 = mem[_589]
                require mem[_589] == mem[_589]
                _595 = mem[64]
                mem[64] = mem[64] + 64
                mem[_595] = 22
                mem[_595 + 32] = 'Claimable block differ'
                if block.timestamp < _573:
                    revert with 'NH{q', 17
                _597 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 22
                s = 0
                while s < 22:
                    mem[mem[64] + s + 132] = mem[_595 + s + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 154] = 0
                mem[mem[64] + 68] = block.timestamp - _573
                _628 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_628 + 32] = mem[_628 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.mem[_628 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_628 + 36 len mem[_628] - 4]
                if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                    revert with 'NH{q', 17
                if block.timestamp < _573:
                    revert with 'NH{q', 17
                if _571 and block.timestamp - _573 > -1 / _571:
                    revert with 'NH{q', 17
                if (block.timestamp * _571) - (_573 * _571) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _571) - (_573 * _571):
                    revert with 'NH{q', 17
                if not _591:
                    revert with 'NH{q', 18
                if _575 > -((block.timestamp * _571 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_573 * _571 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _591) - 1:
                    revert with 'NH{q', 17
                if _575 + ((block.timestamp * _571 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_573 * _571 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _591) > 0:
                    if 0 > -_575 + -((block.timestamp * _571 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_573 * _571 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _591) - 1:
                        revert with 'NH{q', 17
                if 0 >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + 128] = _485
                mem[_597 + 164] = 0x2e17de7800000000000000000000000000000000000000000000000000000000
                mem[_597 + 168] = _485
                require ext_code.size(sub_a66aa40dAddress)
                call sub_a66aa40dAddress.0x2e17de78 with:
                     gas gas_remaining wei
                    args _485
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
