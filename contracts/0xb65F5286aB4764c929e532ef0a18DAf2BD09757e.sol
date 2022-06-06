contract main {




// =====================  Runtime code  =====================


#
#  - sub_72a1c6b0(?)
#  - sub_b06c2075(?)
#  - sub_e56f2fe4(?)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
address owner;
uint8 stor201;
address strategyAddress;
address proxyAddress;
address treasuryWalletAddress;
address communityWalletAddress;
address adminAddress;
address communityAddress;
uint256 sub_ea569c0b;
uint256 fees;

function totalSupply() payable {
    return totalSupply
}

function treasuryWallet() payable {
    return treasuryWalletAddress
}

function paused() payable {
    return bool(stor201)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function fees() payable {
    return fees
}

function strategy() payable {
    return strategyAddress
}

function communityWallet() payable {
    return communityWalletAddress
}

function community() payable {
    return communityAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ea569c0b(?) payable {
    return sub_ea569c0b
}

function proxy() payable {
    return proxyAddress
}

function admin() payable {
    return adminAddress
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

function setProxy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    proxyAddress = arg1
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

function setFees(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ea569c0b = arg1
    require ext_code.size(strategyAddress)
    call strategyAddress.setProfitFeePerc(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Only owner or admin'
    if stor201:
        revert with 0, 'Pausable: paused'
    stor201 = 1
    emit Paused(msg.sender);
    require ext_code.size(strategyAddress)
    call strategyAddress.0xdb2e21bc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAddresses(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryWalletAddress = arg1
    communityWalletAddress = arg2
    adminAddress = arg3
    emit 0x7f485b89: treasuryWalletAddress, address(arg1), communityWalletAddress, address(arg2), adminAddress, address(arg3)
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

function collectProfitAndUpdateWatermark() payable {
    if stor201:
        revert with 0, 'Pausable: paused'
    require ext_code.size(strategyAddress)
    call strategyAddress.0x470343d8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        if fees > !ext_call.return_data[0]:
            revert with 0, 17
        fees += ext_call.return_data[0]
    return ext_call.return_data[32]
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

function getAllPoolInUSD() payable {
    require ext_code.size(0xa77230d17318075983913bc2145db16c7366156)
    staticcall 0xa77230d17318075983913bc2145db16c7366156.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ChainLink error'
    if stor201:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6)
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0xcd5b5616 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < fees:
        revert with 0, 17
    if ext_call.return_data[0] - fees and ext_call.return_data[0] > -1 / ext_call.return_data[0] - fees:
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6)
}

function getPricePerFullShare() payable {
    require ext_code.size(0xa77230d17318075983913bc2145db16c7366156)
    staticcall 0xa77230d17318075983913bc2145db16c7366156.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ChainLink error'
    if stor201:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply)
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.0xcd5b5616 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < fees:
        revert with 0, 17
    if ext_call.return_data[0] - fees and ext_call.return_data[0] > -1 / ext_call.return_data[0] - fees:
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return (10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply)
}

function sub_553b1993(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call 0x130966628846bfd36ff31a822705796e8cb8c18d with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), 0x60ae616a2155ee3d9a68541ba4544862 == bool(uint32(this.address), 0x60ae616a2155ee3d9a68541ba4544862)
            if not uint32(this.address), 0x60ae616a2155ee3d9a68541ba4544862:
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
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[(uint255(stor54.length) * 0.5) + ceil32(uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor54.length.field_1 + ceil32(stor54.length.field_1) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[(uint255(stor55.length) * 0.5) + ceil32(uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor55.length.field_1 + ceil32(stor55.length.field_1) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function releaseFees() payable {
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Only owner or admin'
    require ext_code.size(0xa77230d17318075983913bc2145db16c7366156)
    staticcall 0xa77230d17318075983913bc2145db16c7366156.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ChainLink error'
    if stor201:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if fees > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply:
            revert with 0, 18
        if 10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if not treasuryWalletAddress:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !(4 * 10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply / 5):
            revert with 0, 17
        totalSupply += 4 * 10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply / 5
        if balanceOf[stor253] > !(4 * 10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply / 5):
            revert with 0, 17
        balanceOf[stor253] += 4 * 10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply / 5
        emit Transfer((4 * 10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply / 5), 0, treasuryWalletAddress);
        if 10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply > -1:
            revert with 0, 17
        if not treasuryWalletAddress:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !(10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply / 5):
            revert with 0, 17
        totalSupply += 10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply / 5
        if balanceOf[stor253] > !(10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply / 5):
            revert with 0, 17
        balanceOf[stor253] += 10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply / 5
        emit Transfer((10^18 * fees / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / totalSupply / 5), 0, treasuryWalletAddress);
    else:
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.0xcd5b5616 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < fees:
            revert with 0, 17
        if ext_call.return_data[0] - fees and ext_call.return_data[0] > -1 / ext_call.return_data[0] - fees:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if fees > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply:
            revert with 0, 18
        if 10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if not treasuryWalletAddress:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !(4 * 10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply / 5):
            revert with 0, 17
        totalSupply += 4 * 10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply / 5
        if balanceOf[stor253] > !(4 * 10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply / 5):
            revert with 0, 17
        balanceOf[stor253] += 4 * 10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply / 5
        emit Transfer((4 * 10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply / 5), 0, treasuryWalletAddress);
        if 10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply > -1:
            revert with 0, 17
        if not treasuryWalletAddress:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !(10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply / 5):
            revert with 0, 17
        totalSupply += 10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply / 5
        if balanceOf[stor253] > !(10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply / 5):
            revert with 0, 17
        balanceOf[stor253] += 10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply / 5
        emit Transfer((10^18 * fees / 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) - (fees * ext_call.return_data[0]) / 100 * 10^6 / totalSupply / 5), 0, treasuryWalletAddress);
    fees = 0
}



}
