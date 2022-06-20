contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address sub_ad0b4364Address;
uint256 sub_75233e32;
mapping of struct sub_bde99400;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_75233e32(?) payable {
    return sub_75233e32
}

function owner() payable {
    return owner
}

function sub_ad0b4364(?) payable {
    return sub_ad0b4364Address
}

function sub_bde99400(?) payable {
    require calldata.size - 4 >= 32
    return sub_bde99400[arg1].field_0, sub_bde99400[arg1].field_256, sub_bde99400[arg1].field_512, sub_bde99400[arg1].field_768
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
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_bfba2853(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ad0b4364Address = address(arg1)
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
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function increaseAllowance(address arg1, uint256 arg2) payable {
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

function sub_697e295b(?) payable {
    require calldata.size - 4 >= 32
    staticcall sub_ad0b4364Address.0x8b50306b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if not bool(ceil32(return_data.size) + 544 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[204 len 20]
}

function transfer(address arg1, uint256 arg2) payable {
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
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

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    staticcall sub_ad0b4364Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    if sub_75233e32 > -2:
        revert with 0, 17
    sub_75233e32++
    sub_bde99400[arg1].field_0 = arg1
    sub_bde99400[arg1].field_256 = uint32(block.timestamp)
    sub_bde99400[arg1].field_512 = 0
    sub_bde99400[arg1].field_768 = msg.sender
    require ext_code.size(sub_ad0b4364Address)
    call sub_ad0b4364Address.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1186a0fd: msg.sender, arg1, uint32(block.timestamp)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function getClaimableReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_bde99400[arg1].field_0:
        revert with 0, 'Doesn't staking'
    staticcall sub_ad0b4364Address.0x8b50306b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if not bool(ceil32(return_data.size) + 544 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
    if ext_call.return_data[32] < 10:
        revert with 0, 17
    if ext_call.return_data[32] - 10 / 100 and 50 > -1 / ext_call.return_data[32] - 10 / 100:
        revert with 0, 17
    if 10 > !(50 * ext_call.return_data[32] - 10 / 100):
        revert with 0, 17
    if (50 * ext_call.return_data[32] - 10 / 100) + 10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10 > !ext_call.return_data[64]:
        revert with 0, 17
    if (50 * 10^18 * ext_call.return_data[32] - 10 / 100) + 10 * 10^18 and ext_call.return_data[64] + 10 > -1 / (50 * 10^18 * ext_call.return_data[32] - 10 / 100) + 10 * 10^18:
        revert with 0, 17
    if uint32(block.timestamp) < sub_bde99400[arg1].field_256:
        revert with 0, 17
    if uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) and (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 > -1 / uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256):
        revert with 0, 17
    return (uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) * (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 / 24 * 3600)
}

function claimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_bde99400[arg1].field_0:
        revert with 0, 'Doesn't staking'
    if sub_bde99400[arg1].field_768 != msg.sender:
        revert with 0, 'NOT OWNER'
    if not sub_bde99400[arg1].field_0:
        revert with 0, 'Doesn't staking'
    staticcall sub_ad0b4364Address.0x8b50306b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if not bool(ceil32(return_data.size) + 544 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
    if ext_call.return_data[32] < 10:
        revert with 0, 17
    if ext_call.return_data[32] - 10 / 100 and 50 > -1 / ext_call.return_data[32] - 10 / 100:
        revert with 0, 17
    if 10 > !(50 * ext_call.return_data[32] - 10 / 100):
        revert with 0, 17
    if (50 * ext_call.return_data[32] - 10 / 100) + 10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10 > !ext_call.return_data[64]:
        revert with 0, 17
    if (50 * 10^18 * ext_call.return_data[32] - 10 / 100) + 10 * 10^18 and ext_call.return_data[64] + 10 > -1 / (50 * 10^18 * ext_call.return_data[32] - 10 / 100) + 10 * 10^18:
        revert with 0, 17
    if uint32(block.timestamp) < sub_bde99400[arg1].field_256:
        revert with 0, 17
    if uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) and (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 > -1 / uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256):
        revert with 0, 17
    call this.address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) * (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 / 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_bde99400[arg1].field_256 = uint32(block.timestamp)
    if sub_bde99400[arg1].field_512 > !(uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) * (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 / 24 * 3600):
        revert with 0, 17
    sub_bde99400[arg1].field_512 += uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) * (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 / 24 * 3600
    emit 0xa2c90f5e: arg1, uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) * (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 / 24 * 3600, uint32(block.timestamp), msg.sender
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
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
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_bde99400[arg1].field_768 != msg.sender:
        revert with 0, 'Not authorized'
    if not sub_bde99400[arg1].field_0:
        revert with 0, 'Doesn't staking'
    if sub_bde99400[arg1].field_768 != msg.sender:
        revert with 0, 'NOT OWNER'
    if not sub_bde99400[arg1].field_0:
        revert with 0, 'Doesn't staking'
    staticcall sub_ad0b4364Address.0x8b50306b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if not bool(ceil32(return_data.size) + 544 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
    if ext_call.return_data[32] < 10:
        revert with 0, 17
    if ext_call.return_data[32] - 10 / 100 and 50 > -1 / ext_call.return_data[32] - 10 / 100:
        revert with 0, 17
    if 10 > !(50 * ext_call.return_data[32] - 10 / 100):
        revert with 0, 17
    if (50 * ext_call.return_data[32] - 10 / 100) + 10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10 > !ext_call.return_data[64]:
        revert with 0, 17
    if (50 * 10^18 * ext_call.return_data[32] - 10 / 100) + 10 * 10^18 and ext_call.return_data[64] + 10 > -1 / (50 * 10^18 * ext_call.return_data[32] - 10 / 100) + 10 * 10^18:
        revert with 0, 17
    if uint32(block.timestamp) < sub_bde99400[arg1].field_256:
        revert with 0, 17
    if uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) and (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 > -1 / uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256):
        revert with 0, 17
    call this.address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) * (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 / 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_bde99400[arg1].field_256 = uint32(block.timestamp)
    if sub_bde99400[arg1].field_512 > !(uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) * (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 / 24 * 3600):
        revert with 0, 17
    sub_bde99400[arg1].field_512 += uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) * (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 / 24 * 3600
    emit 0xa2c90f5e: arg1, uint32(uint32(block.timestamp) - sub_bde99400[arg1].field_256) * (10 * 10^18 * ext_call.return_data[64]) + (500 * 10^18 * ext_call.return_data[32] - 10 / 100) + (50 * 10^18 * ext_call.return_data[64] * ext_call.return_data[32] - 10 / 100) + 100 * 10^18 / 10 / 24 * 3600, uint32(block.timestamp), msg.sender
    require ext_code.size(sub_ad0b4364Address)
    call sub_ad0b4364Address.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_75233e32 < 1:
        revert with 0, 17
    sub_75233e32--
    sub_bde99400[arg1].field_0 = 0
    sub_bde99400[arg1].field_256 = 0
    sub_bde99400[arg1].field_512 = 0
    sub_bde99400[arg1].field_768 = 0
    emit 0x72b9fb9c: msg.sender, arg1, uint32(block.timestamp)
}



}
