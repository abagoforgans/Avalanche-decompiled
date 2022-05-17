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
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
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
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _89 = mem[_86]
            require mem[_86] == mem[_86]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_86]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _98 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_98] == mem[_98]
            require mem[_98 + 32] == mem[_98 + 32]
            require mem[_98 + 64] == mem[_98 + 64]
            require mem[_98 + 96] == mem[_98 + 96]
            require mem[_98 + 128] == mem[_98 + 128]
            require mem[_98 + 160] == mem[_98 + 160]
            require mem[_98 + 192] == mem[_98 + 192]
            if mem[_98]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xadc8140f with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _120 = mem[_118]
            require mem[_118] == mem[_118]
            t = 0
            while t < _120:
                mem[mem[64] + 4] = t
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                        gas gas_remaining wei
                       args t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _258 = mem[_256]
                require mem[_256] == mem[_256]
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0xacad41a4 with:
                        gas gas_remaining wei
                       args mem[_256]
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                require mem[_266] == mem[_266]
                _270 = mem[_266 + 32]
                require mem[_266 + 32] == mem[_266 + 32]
                _272 = mem[_266 + 64]
                require mem[_266 + 64] == mem[_266 + 64]
                _274 = mem[_266 + 96]
                require mem[_266 + 96] == mem[_266 + 96]
                require mem[_266 + 128] == mem[_266 + 128]
                require mem[_266 + 160] == mem[_266 + 160]
                require mem[_266 + 192] == mem[_266 + 192]
                if not mem[_266]:
                    revert with 0, 'NOT STAKED'
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0x5973b1d with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _288 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _290 = mem[_288]
                require mem[_288] == mem[_288]
                _294 = mem[64]
                mem[64] = mem[64] + 64
                mem[_294] = 22
                mem[_294 + 32] = 'Claimable block differ'
                if block.timestamp < _272:
                    revert with 'NH{q', 17
                _296 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 22
                idx = 0
                while idx < 22:
                    mem[mem[64] + idx + 132] = mem[_294 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[mem[64] + 154] = 0
                mem[mem[64] + 68] = block.timestamp - _272
                _359 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_359 + 32] = mem[_359 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.mem[_359 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_359 + 36 len mem[_359] - 4]
                if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                    revert with 'NH{q', 17
                if block.timestamp < _272:
                    revert with 'NH{q', 17
                if _270 and block.timestamp - _272 > -1 / _270:
                    revert with 'NH{q', 17
                if (block.timestamp * _270) - (_272 * _270) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _270) - (_272 * _270):
                    revert with 'NH{q', 17
                if not _290:
                    revert with 'NH{q', 18
                if _274 > -((block.timestamp * _270 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_272 * _270 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _290) - 1:
                    revert with 'NH{q', 17
                mem[_296 + 164] = 16
                mem[_296 + 196] = 'pendingClaim-++ '
                mem[_296 + 264] = 96
                mem[_296 + 360] = 16
                idx = 0
                while idx < 16:
                    mem[_296 + idx + 392] = mem[_296 + idx + 196]
                    idx = idx + 32
                    continue 
                mem[_296 + 408] = 0
                mem[_296 + 296] = _258
                mem[_296 + 328] = _274 + ((block.timestamp * _270 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_272 * _270 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _290)
                mem[_296 + 228] = 164
                mem[64] = _296 + 424
                mem[_296 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x969cdd03 with:
                        gas gas_remaining wei
                       args 0, 0, _258, _274 + ((block.timestamp * _270 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_272 * _270 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _290), 16, mem[_296 + 392 len 16], 0
                mem[_296 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
                mem[_296 + 428] = _258
                mem[_296 + 460] = _274 + ((block.timestamp * _270 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_272 * _270 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _290)
                require ext_code.size(sub_a66aa40dAddress)
                call sub_a66aa40dAddress.0x921fb252 with:
                     gas gas_remaining wei
                    args _258, _274 + ((block.timestamp * _270 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_272 * _270 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _290)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                continue 
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * s) + ceil32(return_data.size) + 128] = _89
            if s == -1:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x1dbb2a2200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _89
            require ext_code.size(sub_a66aa40dAddress)
            call sub_a66aa40dAddress.0x1dbb2a22 with:
                 gas gas_remaining wei
                args _89
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
            _82 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96 len 32 * _82] = mem[ceil32(return_data.size) + 128 len 32 * _82]
            emit 0x1e059d2c: msg.sender, 64, mem[mem[64] + 64 len (32 * _82) + 32]
    else:
        mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
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
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _91 = mem[_87]
            require mem[_87] == mem[_87]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_87]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _99 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_99] == mem[_99]
            require mem[_99 + 32] == mem[_99 + 32]
            require mem[_99 + 64] == mem[_99 + 64]
            require mem[_99 + 96] == mem[_99 + 96]
            require mem[_99 + 128] == mem[_99 + 128]
            require mem[_99 + 160] == mem[_99 + 160]
            require mem[_99 + 192] == mem[_99 + 192]
            if mem[_99]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xadc8140f with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _121 = mem[_119]
            require mem[_119] == mem[_119]
            t = 0
            while t < _121:
                mem[mem[64] + 4] = t
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                        gas gas_remaining wei
                       args t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _259 = mem[_257]
                require mem[_257] == mem[_257]
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0xacad41a4 with:
                        gas gas_remaining wei
                       args mem[_257]
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                require mem[_267] == mem[_267]
                _271 = mem[_267 + 32]
                require mem[_267 + 32] == mem[_267 + 32]
                _273 = mem[_267 + 64]
                require mem[_267 + 64] == mem[_267 + 64]
                _275 = mem[_267 + 96]
                require mem[_267 + 96] == mem[_267 + 96]
                require mem[_267 + 128] == mem[_267 + 128]
                require mem[_267 + 160] == mem[_267 + 160]
                require mem[_267 + 192] == mem[_267 + 192]
                if not mem[_267]:
                    revert with 0, 'NOT STAKED'
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0x5973b1d with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _291 = mem[_289]
                require mem[_289] == mem[_289]
                _295 = mem[64]
                mem[64] = mem[64] + 64
                mem[_295] = 22
                mem[_295 + 32] = 'Claimable block differ'
                if block.timestamp < _273:
                    revert with 'NH{q', 17
                _297 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 22
                idx = 0
                while idx < 22:
                    mem[mem[64] + idx + 132] = mem[_295 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[mem[64] + 154] = 0
                mem[mem[64] + 68] = block.timestamp - _273
                _362 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_362 + 32] = mem[_362 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.mem[_362 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_362 + 36 len mem[_362] - 4]
                if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                    revert with 'NH{q', 17
                if block.timestamp < _273:
                    revert with 'NH{q', 17
                if _271 and block.timestamp - _273 > -1 / _271:
                    revert with 'NH{q', 17
                if (block.timestamp * _271) - (_273 * _271) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _271) - (_273 * _271):
                    revert with 'NH{q', 17
                if not _291:
                    revert with 'NH{q', 18
                if _275 > -((block.timestamp * _271 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_273 * _271 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _291) - 1:
                    revert with 'NH{q', 17
                mem[_297 + 164] = 16
                mem[_297 + 196] = 'pendingClaim-++ '
                mem[_297 + 264] = 96
                mem[_297 + 360] = 16
                idx = 0
                while idx < 16:
                    mem[_297 + idx + 392] = mem[_297 + idx + 196]
                    idx = idx + 32
                    continue 
                mem[_297 + 408] = 0
                mem[_297 + 296] = _259
                mem[_297 + 328] = _275 + ((block.timestamp * _271 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_273 * _271 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _291)
                mem[_297 + 228] = 164
                mem[64] = _297 + 424
                mem[_297 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x969cdd03 with:
                        gas gas_remaining wei
                       args 0, 0, _259, _275 + ((block.timestamp * _271 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_273 * _271 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _291), 16, mem[_297 + 392 len 16], 0
                mem[_297 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
                mem[_297 + 428] = _259
                mem[_297 + 460] = _275 + ((block.timestamp * _271 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_273 * _271 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _291)
                require ext_code.size(sub_a66aa40dAddress)
                call sub_a66aa40dAddress.0x921fb252 with:
                     gas gas_remaining wei
                    args _259, _275 + ((block.timestamp * _271 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_273 * _271 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _291)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                continue 
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * s) + ceil32(return_data.size) + 128] = _91
            if s == -1:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x1dbb2a2200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _91
            require ext_code.size(sub_a66aa40dAddress)
            call sub_a66aa40dAddress.0x1dbb2a22 with:
                 gas gas_remaining wei
                args _91
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
            _83 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96 len 32 * _83] = mem[ceil32(return_data.size) + 128 len 32 * _83]
            emit 0x1e059d2c: msg.sender, 64, mem[mem[64] + 64 len (32 * _83) + 32]
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
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
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
            _74 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _76 = mem[_74]
            require mem[_74] == mem[_74]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_74]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_82] == mem[_82]
            require mem[_82 + 32] == mem[_82 + 32]
            require mem[_82 + 64] == mem[_82 + 64]
            require mem[_82 + 96] == mem[_82 + 96]
            require mem[_82 + 128] == mem[_82 + 128]
            require mem[_82 + 160] == mem[_82 + 160]
            require mem[_82 + 192] == mem[_82 + 192]
            if mem[_82]:
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0xacad41a4 with:
                        gas gas_remaining wei
                       args _76
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _102 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                require mem[_102] == mem[_102]
                _106 = mem[_102 + 32]
                require mem[_102 + 32] == mem[_102 + 32]
                _108 = mem[_102 + 64]
                require mem[_102 + 64] == mem[_102 + 64]
                _110 = mem[_102 + 96]
                require mem[_102 + 96] == mem[_102 + 96]
                require mem[_102 + 128] == mem[_102 + 128]
                require mem[_102 + 160] == mem[_102 + 160]
                require mem[_102 + 192] == mem[_102 + 192]
                if not mem[_102]:
                    revert with 0, 'NOT STAKED'
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0x5973b1d with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _126 = mem[_124]
                require mem[_124] == mem[_124]
                _130 = mem[64]
                mem[64] = mem[64] + 64
                mem[_130] = 22
                mem[_130 + 32] = 'Claimable block differ'
                if block.timestamp < _108:
                    revert with 'NH{q', 17
                _132 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 22
                s = 0
                while s < 22:
                    mem[mem[64] + s + 132] = mem[_130 + s + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 154] = 0
                mem[mem[64] + 68] = block.timestamp - _108
                _157 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_157 + 32] = mem[_157 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.mem[_157 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_157 + 36 len mem[_157] - 4]
                if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                    revert with 'NH{q', 17
                if block.timestamp < _108:
                    revert with 'NH{q', 17
                if _106 and block.timestamp - _108 > -1 / _106:
                    revert with 'NH{q', 17
                if (block.timestamp * _106) - (_108 * _106) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _106) - (_108 * _106):
                    revert with 'NH{q', 17
                if not _126:
                    revert with 'NH{q', 18
                if _110 > -((block.timestamp * _106 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_108 * _106 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _126) - 1:
                    revert with 'NH{q', 17
                if _110 + ((block.timestamp * _106 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_108 * _106 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _126) <= 0:
                    require ext_code.size(sub_a66aa40dAddress)
                    staticcall sub_a66aa40dAddress.0xadc8140f with:
                            gas gas_remaining wei
                    mem[_132 + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _132 + ceil32(return_data.size) + 164
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    s = 0
                    while s < ext_call.return_data[0]:
                        mem[mem[64] + 4] = s
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _730 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _738 = mem[_730]
                        require mem[_730] == mem[_730]
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0xacad41a4 with:
                                gas gas_remaining wei
                               args mem[_730]
                        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _770 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 224
                        require mem[_770] == mem[_770]
                        _786 = mem[_770 + 32]
                        require mem[_770 + 32] == mem[_770 + 32]
                        _794 = mem[_770 + 64]
                        require mem[_770 + 64] == mem[_770 + 64]
                        _802 = mem[_770 + 96]
                        require mem[_770 + 96] == mem[_770 + 96]
                        require mem[_770 + 128] == mem[_770 + 128]
                        require mem[_770 + 160] == mem[_770 + 160]
                        require mem[_770 + 192] == mem[_770 + 192]
                        if not mem[_770]:
                            revert with 0, 'NOT STAKED'
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0x5973b1d with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _858 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _866 = mem[_858]
                        require mem[_858] == mem[_858]
                        _882 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_882] = 22
                        mem[_882 + 32] = 'Claimable block differ'
                        if block.timestamp < _794:
                            revert with 'NH{q', 17
                        _890 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 22
                        idx = 0
                        while idx < 22:
                            mem[mem[64] + idx + 132] = mem[_882 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[mem[64] + 154] = 0
                        mem[mem[64] + 68] = block.timestamp - _794
                        _1143 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1143 + 32] = mem[_1143 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.mem[_1143 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1143 + 36 len mem[_1143] - 4]
                        if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                            revert with 'NH{q', 17
                        if block.timestamp < _794:
                            revert with 'NH{q', 17
                        if _786 and block.timestamp - _794 > -1 / _786:
                            revert with 'NH{q', 17
                        if (block.timestamp * _786) - (_794 * _786) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _786) - (_794 * _786):
                            revert with 'NH{q', 17
                        if not _866:
                            revert with 'NH{q', 18
                        if _802 > -((block.timestamp * _786 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_794 * _786 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _866) - 1:
                            revert with 'NH{q', 17
                        mem[_890 + 164] = 16
                        mem[_890 + 196] = 'pendingClaim-++ '
                        mem[_890 + 264] = 96
                        mem[_890 + 360] = 16
                        idx = 0
                        while idx < 16:
                            mem[_890 + idx + 392] = mem[_890 + idx + 196]
                            idx = idx + 32
                            continue 
                        mem[_890 + 408] = 0
                        mem[_890 + 296] = _738
                        mem[_890 + 328] = _802 + ((block.timestamp * _786 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_794 * _786 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _866)
                        mem[_890 + 228] = 164
                        mem[64] = _890 + 424
                        mem[_890 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x969cdd03 with:
                                gas gas_remaining wei
                               args 0, 0, _738, _802 + ((block.timestamp * _786 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_794 * _786 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _866), 16, mem[_890 + 392 len 16], 0
                        mem[_890 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
                        mem[_890 + 428] = _738
                        mem[_890 + 460] = _802 + ((block.timestamp * _786 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_794 * _786 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _866)
                        require ext_code.size(sub_a66aa40dAddress)
                        call sub_a66aa40dAddress.0x921fb252 with:
                             gas gas_remaining wei
                            args _738, _802 + ((block.timestamp * _786 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_794 * _786 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _866)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                else:
                    if 0 > -_110 + -((block.timestamp * _106 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_108 * _106 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _126) - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(sub_a66aa40dAddress)
                    staticcall sub_a66aa40dAddress.0xadc8140f with:
                            gas gas_remaining wei
                    mem[_132 + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _132 + ceil32(return_data.size) + 164
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    s = 0
                    while s < ext_call.return_data[0]:
                        mem[mem[64] + 4] = s
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _739 = mem[_731]
                        require mem[_731] == mem[_731]
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0xacad41a4 with:
                                gas gas_remaining wei
                               args mem[_731]
                        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _771 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 224
                        require mem[_771] == mem[_771]
                        _787 = mem[_771 + 32]
                        require mem[_771 + 32] == mem[_771 + 32]
                        _795 = mem[_771 + 64]
                        require mem[_771 + 64] == mem[_771 + 64]
                        _803 = mem[_771 + 96]
                        require mem[_771 + 96] == mem[_771 + 96]
                        require mem[_771 + 128] == mem[_771 + 128]
                        require mem[_771 + 160] == mem[_771 + 160]
                        require mem[_771 + 192] == mem[_771 + 192]
                        if not mem[_771]:
                            revert with 0, 'NOT STAKED'
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0x5973b1d with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _859 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _867 = mem[_859]
                        require mem[_859] == mem[_859]
                        _883 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_883] = 22
                        mem[_883 + 32] = 'Claimable block differ'
                        if block.timestamp < _795:
                            revert with 'NH{q', 17
                        _891 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 22
                        idx = 0
                        while idx < 22:
                            mem[mem[64] + idx + 132] = mem[_883 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[mem[64] + 154] = 0
                        mem[mem[64] + 68] = block.timestamp - _795
                        _1146 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1146 + 32] = mem[_1146 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.mem[_1146 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1146 + 36 len mem[_1146] - 4]
                        if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                            revert with 'NH{q', 17
                        if block.timestamp < _795:
                            revert with 'NH{q', 17
                        if _787 and block.timestamp - _795 > -1 / _787:
                            revert with 'NH{q', 17
                        if (block.timestamp * _787) - (_795 * _787) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _787) - (_795 * _787):
                            revert with 'NH{q', 17
                        if not _867:
                            revert with 'NH{q', 18
                        if _803 > -((block.timestamp * _787 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_795 * _787 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _867) - 1:
                            revert with 'NH{q', 17
                        mem[_891 + 164] = 16
                        mem[_891 + 196] = 'pendingClaim-++ '
                        mem[_891 + 264] = 96
                        mem[_891 + 360] = 16
                        idx = 0
                        while idx < 16:
                            mem[_891 + idx + 392] = mem[_891 + idx + 196]
                            idx = idx + 32
                            continue 
                        mem[_891 + 408] = 0
                        mem[_891 + 296] = _739
                        mem[_891 + 328] = _803 + ((block.timestamp * _787 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_795 * _787 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _867)
                        mem[_891 + 228] = 164
                        mem[64] = _891 + 424
                        mem[_891 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x969cdd03 with:
                                gas gas_remaining wei
                               args 0, 0, _739, _803 + ((block.timestamp * _787 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_795 * _787 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _867), 16, mem[_891 + 392 len 16], 0
                        mem[_891 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
                        mem[_891 + 428] = _739
                        mem[_891 + 460] = _803 + ((block.timestamp * _787 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_795 * _787 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _867)
                        require ext_code.size(sub_a66aa40dAddress)
                        call sub_a66aa40dAddress.0x921fb252 with:
                             gas gas_remaining wei
                            args _739, _803 + ((block.timestamp * _787 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_795 * _787 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _867)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                if 0 >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + 128] = _76
                mem[mem[64]] = 0x2e17de7800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _76
                require ext_code.size(sub_a66aa40dAddress)
                call sub_a66aa40dAddress.0x2e17de78 with:
                     gas gas_remaining wei
                    args _76
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
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
            _75 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _77 = mem[_75]
            require mem[_75] == mem[_75]
            require ext_code.size(sub_a66aa40dAddress)
            staticcall sub_a66aa40dAddress.0xacad41a4 with:
                    gas gas_remaining wei
                   args mem[_75]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_83] == mem[_83]
            require mem[_83 + 32] == mem[_83 + 32]
            require mem[_83 + 64] == mem[_83 + 64]
            require mem[_83 + 96] == mem[_83 + 96]
            require mem[_83 + 128] == mem[_83 + 128]
            require mem[_83 + 160] == mem[_83 + 160]
            require mem[_83 + 192] == mem[_83 + 192]
            if mem[_83]:
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0xacad41a4 with:
                        gas gas_remaining wei
                       args _77
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _103 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                require mem[_103] == mem[_103]
                _107 = mem[_103 + 32]
                require mem[_103 + 32] == mem[_103 + 32]
                _109 = mem[_103 + 64]
                require mem[_103 + 64] == mem[_103 + 64]
                _111 = mem[_103 + 96]
                require mem[_103 + 96] == mem[_103 + 96]
                require mem[_103 + 128] == mem[_103 + 128]
                require mem[_103 + 160] == mem[_103 + 160]
                require mem[_103 + 192] == mem[_103 + 192]
                if not mem[_103]:
                    revert with 0, 'NOT STAKED'
                require ext_code.size(sub_a66aa40dAddress)
                staticcall sub_a66aa40dAddress.0x5973b1d with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _127 = mem[_125]
                require mem[_125] == mem[_125]
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 22
                mem[_131 + 32] = 'Claimable block differ'
                if block.timestamp < _109:
                    revert with 'NH{q', 17
                _133 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 22
                s = 0
                while s < 22:
                    mem[mem[64] + s + 132] = mem[_131 + s + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 154] = 0
                mem[mem[64] + 68] = block.timestamp - _109
                _160 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_160 + 32] = mem[_160 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.mem[_160 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_160 + 36 len mem[_160] - 4]
                if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                    revert with 'NH{q', 17
                if block.timestamp < _109:
                    revert with 'NH{q', 17
                if _107 and block.timestamp - _109 > -1 / _107:
                    revert with 'NH{q', 17
                if (block.timestamp * _107) - (_109 * _107) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _107) - (_109 * _107):
                    revert with 'NH{q', 17
                if not _127:
                    revert with 'NH{q', 18
                if _111 > -((block.timestamp * _107 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_109 * _107 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _127) - 1:
                    revert with 'NH{q', 17
                if _111 + ((block.timestamp * _107 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_109 * _107 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _127) <= 0:
                    require ext_code.size(sub_a66aa40dAddress)
                    staticcall sub_a66aa40dAddress.0xadc8140f with:
                            gas gas_remaining wei
                    mem[_133 + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _133 + ceil32(return_data.size) + 164
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    s = 0
                    while s < ext_call.return_data[0]:
                        mem[mem[64] + 4] = s
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _734 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _742 = mem[_734]
                        require mem[_734] == mem[_734]
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0xacad41a4 with:
                                gas gas_remaining wei
                               args mem[_734]
                        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _774 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 224
                        require mem[_774] == mem[_774]
                        _790 = mem[_774 + 32]
                        require mem[_774 + 32] == mem[_774 + 32]
                        _798 = mem[_774 + 64]
                        require mem[_774 + 64] == mem[_774 + 64]
                        _806 = mem[_774 + 96]
                        require mem[_774 + 96] == mem[_774 + 96]
                        require mem[_774 + 128] == mem[_774 + 128]
                        require mem[_774 + 160] == mem[_774 + 160]
                        require mem[_774 + 192] == mem[_774 + 192]
                        if not mem[_774]:
                            revert with 0, 'NOT STAKED'
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0x5973b1d with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _862 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _870 = mem[_862]
                        require mem[_862] == mem[_862]
                        _886 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_886] = 22
                        mem[_886 + 32] = 'Claimable block differ'
                        if block.timestamp < _798:
                            revert with 'NH{q', 17
                        _894 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 22
                        idx = 0
                        while idx < 22:
                            mem[mem[64] + idx + 132] = mem[_886 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[mem[64] + 154] = 0
                        mem[mem[64] + 68] = block.timestamp - _798
                        _1155 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1155 + 32] = mem[_1155 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.mem[_1155 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1155 + 36 len mem[_1155] - 4]
                        if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                            revert with 'NH{q', 17
                        if block.timestamp < _798:
                            revert with 'NH{q', 17
                        if _790 and block.timestamp - _798 > -1 / _790:
                            revert with 'NH{q', 17
                        if (block.timestamp * _790) - (_798 * _790) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _790) - (_798 * _790):
                            revert with 'NH{q', 17
                        if not _870:
                            revert with 'NH{q', 18
                        if _806 > -((block.timestamp * _790 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_798 * _790 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _870) - 1:
                            revert with 'NH{q', 17
                        mem[_894 + 164] = 16
                        mem[_894 + 196] = 'pendingClaim-++ '
                        mem[_894 + 264] = 96
                        mem[_894 + 360] = 16
                        idx = 0
                        while idx < 16:
                            mem[_894 + idx + 392] = mem[_894 + idx + 196]
                            idx = idx + 32
                            continue 
                        mem[_894 + 408] = 0
                        mem[_894 + 296] = _742
                        mem[_894 + 328] = _806 + ((block.timestamp * _790 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_798 * _790 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _870)
                        mem[_894 + 228] = 164
                        mem[64] = _894 + 424
                        mem[_894 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x969cdd03 with:
                                gas gas_remaining wei
                               args 0, 0, _742, _806 + ((block.timestamp * _790 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_798 * _790 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _870), 16, mem[_894 + 392 len 16], 0
                        mem[_894 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
                        mem[_894 + 428] = _742
                        mem[_894 + 460] = _806 + ((block.timestamp * _790 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_798 * _790 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _870)
                        require ext_code.size(sub_a66aa40dAddress)
                        call sub_a66aa40dAddress.0x921fb252 with:
                             gas gas_remaining wei
                            args _742, _806 + ((block.timestamp * _790 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_798 * _790 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _870)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                else:
                    if 0 > -_111 + -((block.timestamp * _107 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_109 * _107 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _127) - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(sub_a66aa40dAddress)
                    staticcall sub_a66aa40dAddress.0xadc8140f with:
                            gas gas_remaining wei
                    mem[_133 + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _133 + ceil32(return_data.size) + 164
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    s = 0
                    while s < ext_call.return_data[0]:
                        mem[mem[64] + 4] = s
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0x7ca4fa11 with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _735 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _743 = mem[_735]
                        require mem[_735] == mem[_735]
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0xacad41a4 with:
                                gas gas_remaining wei
                               args mem[_735]
                        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _775 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 224
                        require mem[_775] == mem[_775]
                        _791 = mem[_775 + 32]
                        require mem[_775 + 32] == mem[_775 + 32]
                        _799 = mem[_775 + 64]
                        require mem[_775 + 64] == mem[_775 + 64]
                        _807 = mem[_775 + 96]
                        require mem[_775 + 96] == mem[_775 + 96]
                        require mem[_775 + 128] == mem[_775 + 128]
                        require mem[_775 + 160] == mem[_775 + 160]
                        require mem[_775 + 192] == mem[_775 + 192]
                        if not mem[_775]:
                            revert with 0, 'NOT STAKED'
                        require ext_code.size(sub_a66aa40dAddress)
                        staticcall sub_a66aa40dAddress.0x5973b1d with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _863 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _871 = mem[_863]
                        require mem[_863] == mem[_863]
                        _887 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_887] = 22
                        mem[_887 + 32] = 'Claimable block differ'
                        if block.timestamp < _799:
                            revert with 'NH{q', 17
                        _895 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 22
                        idx = 0
                        while idx < 22:
                            mem[mem[64] + idx + 132] = mem[_887 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[mem[64] + 154] = 0
                        mem[mem[64] + 68] = block.timestamp - _799
                        _1158 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1158 + 32] = mem[_1158 + 36 len 28] or 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.mem[_1158 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1158 + 36 len mem[_1158] - 4]
                        if sub_00d73b95 / 24 * 3600 and sub_e05c9956 > -1 / sub_00d73b95 / 24 * 3600:
                            revert with 'NH{q', 17
                        if block.timestamp < _799:
                            revert with 'NH{q', 17
                        if _791 and block.timestamp - _799 > -1 / _791:
                            revert with 'NH{q', 17
                        if (block.timestamp * _791) - (_799 * _791) and sub_00d73b95 / 24 * 3600 * sub_e05c9956 > -1 / (block.timestamp * _791) - (_799 * _791):
                            revert with 'NH{q', 17
                        if not _871:
                            revert with 'NH{q', 18
                        if _807 > -((block.timestamp * _791 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_799 * _791 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _871) - 1:
                            revert with 'NH{q', 17
                        mem[_895 + 164] = 16
                        mem[_895 + 196] = 'pendingClaim-++ '
                        mem[_895 + 264] = 96
                        mem[_895 + 360] = 16
                        idx = 0
                        while idx < 16:
                            mem[_895 + idx + 392] = mem[_895 + idx + 196]
                            idx = idx + 32
                            continue 
                        mem[_895 + 408] = 0
                        mem[_895 + 296] = _743
                        mem[_895 + 328] = _807 + ((block.timestamp * _791 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_799 * _791 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _871)
                        mem[_895 + 228] = 164
                        mem[64] = _895 + 424
                        mem[_895 + 260] = 0 or 0x969cdd0300000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x969cdd03 with:
                                gas gas_remaining wei
                               args 0, 0, _743, _807 + ((block.timestamp * _791 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_799 * _791 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _871), 16, mem[_895 + 392 len 16], 0
                        mem[_895 + 424] = 0x921fb25200000000000000000000000000000000000000000000000000000000
                        mem[_895 + 428] = _743
                        mem[_895 + 460] = _807 + ((block.timestamp * _791 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_799 * _791 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _871)
                        require ext_code.size(sub_a66aa40dAddress)
                        call sub_a66aa40dAddress.0x921fb252 with:
                             gas gas_remaining wei
                            args _743, _807 + ((block.timestamp * _791 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) - (_799 * _791 * sub_00d73b95 / 24 * 3600 * sub_e05c9956) / _871)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                if 0 >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[ceil32(return_data.size) + 128] = _77
                mem[mem[64]] = 0x2e17de7800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _77
                require ext_code.size(sub_a66aa40dAddress)
                call sub_a66aa40dAddress.0x2e17de78 with:
                     gas gas_remaining wei
                    args _77
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
