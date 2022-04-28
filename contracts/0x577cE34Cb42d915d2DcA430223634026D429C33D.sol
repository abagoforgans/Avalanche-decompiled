contract main {




// =====================  Runtime code  =====================


#
#  - transferOutFees()
#  - sub_47e44c73(?)
#  - deposit(uint256 arg1, address arg2)
#  - sub_8b6c23ef(?)
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
uint8 paused;
address strategyAddress;
array of struct sub_e8c5ed48;
uint256 fees;
array of struct sub_82487f1f;
array of struct sub_238b1598;
array of struct stor256;
mapping of uint256 sub_fc08b01f;
uint256 sub_0eae91f6;
address treasuryWalletAddress;
address communityWalletAddress;
address adminAddress;

function sub_0eae91f6(?) payable {
    return sub_0eae91f6
}

function totalSupply() payable {
    return totalSupply
}

function sub_238b1598(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_238b1598.length
    return sub_238b1598[arg1].field_0
}

function treasuryWallet() payable {
    return treasuryWalletAddress
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_82487f1f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_82487f1f.length
    return sub_82487f1f[arg1].field_0
}

function owner() payable {
    return owner
}

function getTotalPendingDeposits() payable {
    return stor256.length
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e8c5ed48(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e8c5ed48.length
    return sub_e8c5ed48[arg1].field_0
}

function admin() payable {
    return adminAddress
}

function sub_fc08b01f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fc08b01f[arg1]
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
    if paused:
        revert with 0, 'Pausable: paused'
    if msg.sender != this.address:
        if adminAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Only authorized caller'
    require ext_code.size(strategyAddress)
    call strategyAddress.0x470343d8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if fees > !ext_call.return_data[0]:
            revert with 0, 17
        fees += ext_call.return_data[0]
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

function setProfitFeePerc(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 3001:
        revert with 0, 'Profit fee cannot > 30%'
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.profitFeePerc() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(strategyAddress)
    call strategyAddress.setProfitFeePerc(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SetProfitFeePerc(ext_call.return_data[0], arg1);
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
    require ext_code.size(0xfe000000000000000000000000d586e7f844cea2f87f50152665bcbc2c279d8d)
    staticcall 0xfe000000000000000000000000d586e7f844cea2f87f50152665bcbc2c279d8d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x18000000000000000000000000a7d7079b0fead91f3e65f86e8915cb59c1a4c6)
    staticcall 0x18000000000000000000000000a7d7079b0fead91f3e65f86e8915cb59c1a4c6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    require ext_code.size(0x70000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951)
    staticcall 0x70000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if 10^12 * ext_call.return_data[0] > !(10^12 * ext_call.return_data[0]):
        revert with 0, 17
    if 2 * 10^12 * ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if not paused:
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.0xcd5b5616 with:
                gas gas_remaining wei
    else:
        require ext_code.size(0x64000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        staticcall 0x64000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                gas gas_remaining wei
               args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 > !(2000000000001 * ext_call.return_data[0]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) < fees:
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) - fees)
}

function sub_403df6a7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_e8c5ed48.length:
        mem[128] = uint256(sub_e8c5ed48.field_0)
        idx = 128
        s = 0
        while (32 * sub_e8c5ed48.length) + 96 > idx:
            mem[idx + 32] = sub_e8c5ed48[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        sub_e8c5ed48.length = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while sub_e8c5ed48.length > idx:
                sub_e8c5ed48[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[4] + 36
            while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
                sub_e8c5ed48[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while sub_e8c5ed48.length > idx:
                sub_e8c5ed48[idx].field_0 = 0
                idx = idx + 1
                continue 
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        emit SetPercKeepInVault(Array(len=sub_e8c5ed48.length, data=mem[128 len 32 * sub_e8c5ed48.length], ('cd', 4).length, call.data[cd[4] + 36 len 32 * ('cd', 4).length]), (32 * sub_e8c5ed48.length) + 96);
    else:
        sub_e8c5ed48.length = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while sub_e8c5ed48.length > idx:
                sub_e8c5ed48[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[4] + 36
            while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
                sub_e8c5ed48[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while sub_e8c5ed48.length > idx:
                sub_e8c5ed48[idx].field_0 = 0
                idx = idx + 1
                continue 
        mem[(32 * sub_e8c5ed48.length) + 128] = 64
        mem[(32 * sub_e8c5ed48.length) + 192] = sub_e8c5ed48.length
        mem[(32 * sub_e8c5ed48.length) + 224 len 32 * sub_e8c5ed48.length] = mem[128 len 32 * sub_e8c5ed48.length]
        mem[(32 * sub_e8c5ed48.length) + 160] = (96 * sub_e8c5ed48.length) + 96
        mem[(64 * sub_e8c5ed48.length) + 224] = ('cd', 4).length
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(64 * sub_e8c5ed48.length) + 256 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(64 * sub_e8c5ed48.length) + (32 * ('cd', 4).length) + 256] = 0
        emit SetPercKeepInVault(uint256[] rg1, uint256[] rg2):
                                mem[(32 * sub_e8c5ed48.length) + 128 len (96 * sub_e8c5ed48.length) + (32 * ('cd', 4).length) + 128],
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
    require ext_code.size(0xfe000000000000000000000000d586e7f844cea2f87f50152665bcbc2c279d8d)
    staticcall 0xfe000000000000000000000000d586e7f844cea2f87f50152665bcbc2c279d8d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x18000000000000000000000000a7d7079b0fead91f3e65f86e8915cb59c1a4c6)
    staticcall 0x18000000000000000000000000a7d7079b0fead91f3e65f86e8915cb59c1a4c6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    require ext_code.size(0x70000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951)
    staticcall 0x70000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if 10^12 * ext_call.return_data[0] > !(10^12 * ext_call.return_data[0]):
        revert with 0, 17
    if 2 * 10^12 * ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if not paused:
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.0xcd5b5616 with:
                gas gas_remaining wei
    else:
        require ext_code.size(0x64000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        staticcall 0x64000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                gas gas_remaining wei
               args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 > !(2000000000001 * ext_call.return_data[0]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) < fees:
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) - fees < sub_0eae91f6:
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) - fees - sub_0eae91f6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * 10^18 * ext_call.return_data[0]) - (10^18 * fees) - (10^18 * sub_0eae91f6) / totalSupply)
}

function sub_00b7bd15(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    if 0 == ('cd', 4)[0]:
        revert with 0, 'Minimun amount cannot be 0'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    if ('cd', 4)[1] <= ('cd', 4)[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Maximun amount must > minimun amount'
    if 1 >= sub_82487f1f.length:
        revert with 0, 50
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    if ('cd', 4)[2] <= uint256(sub_82487f1f.field_256):
        revert with 0, 'Must > tier 2'
    if sub_82487f1f.length:
        mem[128] = uint256(sub_82487f1f.field_0)
        idx = 128
        s = 0
        while (32 * sub_82487f1f.length) + 96 > idx:
            mem[idx + 32] = sub_82487f1f[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        sub_82487f1f.length = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while sub_82487f1f.length > idx:
                sub_82487f1f[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[4] + 36
            while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
                sub_82487f1f[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while sub_82487f1f.length > idx:
                sub_82487f1f[idx].field_0 = 0
                idx = idx + 1
                continue 
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        emit 0x89d28856: Array(len=sub_82487f1f.length, data=mem[128 len 32 * sub_82487f1f.length], ('cd', 4).length, call.data[cd[4] + 36 len 32 * ('cd', 4).length]), (32 * sub_82487f1f.length) + 96
    else:
        sub_82487f1f.length = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while sub_82487f1f.length > idx:
                sub_82487f1f[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[4] + 36
            while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
                sub_82487f1f[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while sub_82487f1f.length > idx:
                sub_82487f1f[idx].field_0 = 0
                idx = idx + 1
                continue 
        mem[(32 * sub_82487f1f.length) + 128] = 64
        mem[(32 * sub_82487f1f.length) + 192] = sub_82487f1f.length
        mem[(32 * sub_82487f1f.length) + 224 len 32 * sub_82487f1f.length] = mem[128 len 32 * sub_82487f1f.length]
        mem[(32 * sub_82487f1f.length) + 160] = (96 * sub_82487f1f.length) + 96
        mem[(64 * sub_82487f1f.length) + 224] = ('cd', 4).length
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(64 * sub_82487f1f.length) + 256 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(64 * sub_82487f1f.length) + (32 * ('cd', 4).length) + 256] = 0
        emit 0x89d28856: mem[(32 * sub_82487f1f.length) + 128 len (96 * sub_82487f1f.length) + (32 * ('cd', 4).length) + 128]
}

function sub_737ea0ad(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    if ('cd', 4)[0] >= 3001:
        revert with 0, 'Not allow > 30%'
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    if ('cd', 4)[1] >= 3001:
        revert with 0, 'Not allow > 30%'
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    if ('cd', 4)[2] >= 3001:
        revert with 0, 'Not allow > 30%'
    if 2 >= sub_238b1598.length:
        revert with 0, 50
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    if ('cd', 4)[3] >= uint256(sub_238b1598.field_512):
        revert with 0, 'Not allow > tier 2'
    if sub_238b1598.length:
        mem[128] = uint256(sub_238b1598.field_0)
        idx = 128
        s = 0
        while (32 * sub_238b1598.length) + 96 > idx:
            mem[idx + 32] = sub_238b1598[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        sub_238b1598.length = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while sub_238b1598.length > idx:
                sub_238b1598[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[4] + 36
            while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
                sub_238b1598[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while sub_238b1598.length > idx:
                sub_238b1598[idx].field_0 = 0
                idx = idx + 1
                continue 
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        emit SetNetworkFeePerc(Array(len=sub_238b1598.length, data=mem[128 len 32 * sub_238b1598.length], ('cd', 4).length, call.data[cd[4] + 36 len 32 * ('cd', 4).length]), (32 * sub_238b1598.length) + 96);
    else:
        sub_238b1598.length = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while sub_238b1598.length > idx:
                sub_238b1598[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[4] + 36
            while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
                sub_238b1598[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while sub_238b1598.length > idx:
                sub_238b1598[idx].field_0 = 0
                idx = idx + 1
                continue 
        mem[(32 * sub_238b1598.length) + 128] = 64
        mem[(32 * sub_238b1598.length) + 192] = sub_238b1598.length
        mem[(32 * sub_238b1598.length) + 224 len 32 * sub_238b1598.length] = mem[128 len 32 * sub_238b1598.length]
        mem[(32 * sub_238b1598.length) + 160] = (96 * sub_238b1598.length) + 96
        mem[(64 * sub_238b1598.length) + 224] = ('cd', 4).length
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(64 * sub_238b1598.length) + 256 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(64 * sub_238b1598.length) + (32 * ('cd', 4).length) + 256] = 0
        emit SetNetworkFeePerc(uint256[] rg1, uint256[] rg2):
                               mem[(32 * sub_238b1598.length) + 128 len (96 * sub_238b1598.length) + (32 * ('cd', 4).length) + 128],
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
                mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
        else:
            if bool(stor54.length) == stor54.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor54.length.field_1 % 128:
                if 31 < stor54.length.field_1 % 128:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[(uint255(stor54.length) * 0.5) + ceil32(uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 % 128 < 32:
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
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
    else:
        if bool(stor54.length) == stor54.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor54.length.field_1 % 128:
            if 31 < stor54.length.field_1 % 128:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor54.length.field_8)
    mem[ceil32(stor54.length.field_1 % 128) + 192 len ceil32(stor54.length.field_1 % 128)] = mem[128 len ceil32(stor54.length.field_1 % 128)]
    if ceil32(stor54.length.field_1 % 128) > stor54.length.field_1 % 128:
        mem[stor54.length.field_1 % 128 + ceil32(stor54.length.field_1 % 128) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1 % 128)], mem[(2 * ceil32(stor54.length.field_1 % 128)) + 192 len 2 * ceil32(stor54.length.field_1 % 128)]), 
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
                mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
        else:
            if bool(stor55.length) == stor55.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor55.length.field_1 % 128:
                if 31 < stor55.length.field_1 % 128:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[(uint255(stor55.length) * 0.5) + ceil32(uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 % 128 < 32:
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
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
    else:
        if bool(stor55.length) == stor55.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor55.length.field_1 % 128:
            if 31 < stor55.length.field_1 % 128:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor55.length.field_8)
    mem[ceil32(stor55.length.field_1 % 128) + 192 len ceil32(stor55.length.field_1 % 128)] = mem[128 len ceil32(stor55.length.field_1 % 128)]
    if ceil32(stor55.length.field_1 % 128) > stor55.length.field_1 % 128:
        mem[stor55.length.field_1 % 128 + ceil32(stor55.length.field_1 % 128) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1 % 128)], mem[(2 * ceil32(stor55.length.field_1 % 128)) + 192 len 2 * ceil32(stor55.length.field_1 % 128)]), 
}

function sub_04b2c942(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if msg.sender == owner:
        mem[96] = 2
        mem[128] = address(cd[36])
        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = cd[68]
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[68], Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _101 = mem[192 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 223 < return_data.size + 192
        _103 = mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192]
        require (32 * _103) + _101 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224 len ceil32(32 * _103)] = mem[_101 + 224 len ceil32(32 * _103)]
        if 1 >= _103:
            revert with 0, 50
        _177 = mem[ceil32(return_data.size) + 256]
        if not ('cd', 100).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = _177
        mem[mem[64] + 68] = ('cd', 100)[0]
        require ext_code.size(strategyAddress)
        call strategyAddress.0x9dcc5daf with:
             gas gas_remaining wei
            args cd[4], _177, ('cd', 100)[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _183 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _185 = mem[_183]
        if 1 >= ('cd', 100).length:
            revert with 0, 50
        _191 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_191]:
            revert with 0, 50
        mem[_191 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        if 1 >= mem[_191]:
            revert with 0, 50
        mem[_191 + 64] = address(cd[36])
        mem[_191 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_191 + 100] = _185
        mem[_191 + 132] = ('cd', 100)[1]
        mem[_191 + 164] = 160
        mem[_191 + 260] = mem[_191]
        idx = 0
        s = _191 + 32
        t = _191 + 292
        while idx < mem[_191]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_191 + 196] = this.address
        mem[_191 + 228] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _191 + (32 * mem[_191]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] <= test266151307()
        require _243 + mem[_243] + 31 < _243 + return_data.size
        if mem[_243 + mem[_243]] > test266151307():
            revert with 0, 65
        if _243 + ceil32(return_data.size) + ceil32(32 * mem[_243 + mem[_243]]) + 1 > test266151307() or ceil32(32 * mem[_243 + mem[_243]]) + 1 < 0:
            revert with 0, 65
        require (32 * mem[_243 + mem[_243]]) + mem[_243] + 32 <= return_data.size
        if 1 >= mem[_243 + mem[_243]]:
            revert with 0, 50
    else:
        if adminAddress != msg.sender:
            revert with 0, 'Only owner or admin'
        mem[96] = 2
        mem[128] = address(cd[36])
        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = cd[68]
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[68], Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _102 = mem[192 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 223 < return_data.size + 192
        _104 = mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[68]) >> 32 + 192]
        require (32 * _104) + _102 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224 len ceil32(32 * _104)] = mem[_102 + 224 len ceil32(32 * _104)]
        if 1 >= _104:
            revert with 0, 50
        _178 = mem[ceil32(return_data.size) + 256]
        if not ('cd', 100).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = _178
        mem[mem[64] + 68] = ('cd', 100)[0]
        require ext_code.size(strategyAddress)
        call strategyAddress.0x9dcc5daf with:
             gas gas_remaining wei
            args cd[4], _178, ('cd', 100)[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _184 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _186 = mem[_184]
        if 1 >= ('cd', 100).length:
            revert with 0, 50
        _193 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_193]:
            revert with 0, 50
        mem[_193 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        if 1 >= mem[_193]:
            revert with 0, 50
        mem[_193 + 64] = address(cd[36])
        mem[_193 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_193 + 100] = _186
        mem[_193 + 132] = ('cd', 100)[1]
        mem[_193 + 164] = 160
        mem[_193 + 260] = mem[_193]
        idx = 0
        s = _193 + 32
        t = _193 + 292
        while idx < mem[_193]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_193 + 196] = this.address
        mem[_193 + 228] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _193 + (32 * mem[_193]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _244 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_244] <= test266151307()
        require _244 + mem[_244] + 31 < _244 + return_data.size
        if mem[_244 + mem[_244]] > test266151307():
            revert with 0, 65
        if _244 + ceil32(return_data.size) + ceil32(32 * mem[_244 + mem[_244]]) + 1 > test266151307() or ceil32(32 * mem[_244 + mem[_244]]) + 1 < 0:
            revert with 0, 65
        require (32 * mem[_244 + mem[_244]]) + mem[_244] + 32 <= return_data.size
        if 1 >= mem[_244 + mem[_244]]:
            revert with 0, 50
    if 0xfe000000000000000000000000d586e7f844cea2f87f50152665bcbc2c279d8d == address(cd[36]):
        require ext_code.size(strategyAddress)
        call strategyAddress.adjustWatermark(uint256 rg1, bool rg2) with:
             gas gas_remaining wei
            args cd[68], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Reimburse(cd[4], address(cd[36]), cd[68]);
    else:
        if cd[68] and 10^12 > -1 / cd[68]:
            revert with 0, 17
        require ext_code.size(strategyAddress)
        call strategyAddress.adjustWatermark(uint256 rg1, bool rg2) with:
             gas gas_remaining wei
            args 10^12 * cd[68], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Reimburse(cd[4], address(cd[36]), 10^12 * cd[68]);
}

function emergencyWithdraw() payable {
    if msg.sender == owner:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
        require ext_code.size(strategyAddress)
        call strategyAddress.0xdb2e21bc with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[100] = this.address
        require ext_code.size(0x64000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        staticcall 0x64000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[ceil32(return_data.size) + 160] = 0xc7198437980c041c805a1edcba50c1ce5db951
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0] / 3
        mem[ceil32(return_data.size) + 228] = 0
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] / 3, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _141 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _143 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192]
        require (32 * _143) + _141 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _143)] = mem[ceil32(return_data.size) + _141 + 224 len ceil32(32 * _143)]
        if 1 >= _143:
            revert with 0, 50
        _239 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_239]:
            revert with 0, 50
        mem[_239 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        if 1 >= mem[_239]:
            revert with 0, 50
        mem[_239 + 64] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c6
        mem[_239 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_239 + 100] = ext_call.return_data[0] / 3
        mem[_239 + 132] = 0
        mem[_239 + 164] = 160
        mem[_239 + 260] = mem[_239]
        idx = 0
        s = _239 + 32
        t = _239 + 292
        while idx < mem[_239]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_239 + 196] = this.address
        mem[_239 + 228] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _239 + (32 * mem[_239]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _307 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _309 = mem[_307]
        require mem[_307] <= test266151307()
        require _307 + mem[_307] + 31 < _307 + return_data.size
        _311 = mem[_307 + mem[_307]]
        if mem[_307 + mem[_307]] > test266151307():
            revert with 0, 65
        if _307 + ceil32(return_data.size) + ceil32(32 * mem[_307 + mem[_307]]) + 1 > test266151307() or ceil32(32 * mem[_307 + mem[_307]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _307 + ceil32(return_data.size) + ceil32(32 * mem[_307 + mem[_307]]) + 1
        mem[_307 + ceil32(return_data.size)] = _311
        require (32 * _311) + _309 + 32 <= return_data.size
        mem[_307 + ceil32(return_data.size) + 32 len ceil32(32 * _311)] = mem[_307 + _309 + 32 len ceil32(32 * _311)]
        if 1 >= _311:
            revert with 0, 50
        _371 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_371]:
            revert with 0, 50
        mem[_371 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        if 1 >= mem[_371]:
            revert with 0, 50
        mem[_371 + 64] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
        mem[_371 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_371 + 100] = ext_call.return_data[0] / 3
        mem[_371 + 132] = 0
        mem[_371 + 164] = 160
        mem[_371 + 260] = mem[_371]
        idx = 0
        s = _371 + 32
        t = _371 + 292
        while idx < mem[_371]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_371 + 196] = this.address
        mem[_371 + 228] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _371 + (32 * mem[_371]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _403 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_403] <= test266151307()
        require _403 + mem[_403] + 31 < _403 + return_data.size
        if mem[_403 + mem[_403]] > test266151307():
            revert with 0, 65
        if _403 + ceil32(return_data.size) + ceil32(32 * mem[_403 + mem[_403]]) + 1 > test266151307() or ceil32(32 * mem[_403 + mem[_403]]) + 1 < 0:
            revert with 0, 65
        require (32 * mem[_403 + mem[_403]]) + mem[_403] + 32 <= return_data.size
        if 1 >= mem[_403 + mem[_403]]:
            revert with 0, 50
    else:
        if adminAddress != msg.sender:
            revert with 0, 'Only owner or admin'
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
        require ext_code.size(strategyAddress)
        call strategyAddress.0xdb2e21bc with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[100] = this.address
        require ext_code.size(0x64000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        staticcall 0x64000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[ceil32(return_data.size) + 160] = 0xc7198437980c041c805a1edcba50c1ce5db951
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0] / 3
        mem[ceil32(return_data.size) + 228] = 0
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] / 3, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _142 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _144 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] / 3) >> 32 + 192]
        require (32 * _144) + _142 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _144)] = mem[ceil32(return_data.size) + _142 + 224 len ceil32(32 * _144)]
        if 1 >= _144:
            revert with 0, 50
        _241 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_241]:
            revert with 0, 50
        mem[_241 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        if 1 >= mem[_241]:
            revert with 0, 50
        mem[_241 + 64] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c6
        mem[_241 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_241 + 100] = ext_call.return_data[0] / 3
        mem[_241 + 132] = 0
        mem[_241 + 164] = 160
        mem[_241 + 260] = mem[_241]
        idx = 0
        s = _241 + 32
        t = _241 + 292
        while idx < mem[_241]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_241 + 196] = this.address
        mem[_241 + 228] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _241 + (32 * mem[_241]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _308 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _310 = mem[_308]
        require mem[_308] <= test266151307()
        require _308 + mem[_308] + 31 < _308 + return_data.size
        _312 = mem[_308 + mem[_308]]
        if mem[_308 + mem[_308]] > test266151307():
            revert with 0, 65
        if _308 + ceil32(return_data.size) + ceil32(32 * mem[_308 + mem[_308]]) + 1 > test266151307() or ceil32(32 * mem[_308 + mem[_308]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _308 + ceil32(return_data.size) + ceil32(32 * mem[_308 + mem[_308]]) + 1
        mem[_308 + ceil32(return_data.size)] = _312
        require (32 * _312) + _310 + 32 <= return_data.size
        mem[_308 + ceil32(return_data.size) + 32 len ceil32(32 * _312)] = mem[_308 + _310 + 32 len ceil32(32 * _312)]
        if 1 >= _312:
            revert with 0, 50
        _373 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_373]:
            revert with 0, 50
        mem[_373 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        if 1 >= mem[_373]:
            revert with 0, 50
        mem[_373 + 64] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
        mem[_373 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_373 + 100] = ext_call.return_data[0] / 3
        mem[_373 + 132] = 0
        mem[_373 + 164] = 160
        mem[_373 + 260] = mem[_373]
        idx = 0
        s = _373 + 32
        t = _373 + 292
        while idx < mem[_373]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_373 + 196] = this.address
        mem[_373 + 228] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _373 + (32 * mem[_373]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _404 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_404] <= test266151307()
        require _404 + mem[_404] + 31 < _404 + return_data.size
        if mem[_404 + mem[_404]] > test266151307():
            revert with 0, 65
        if _404 + ceil32(return_data.size) + ceil32(32 * mem[_404 + mem[_404]]) + 1 > test266151307() or ceil32(32 * mem[_404 + mem[_404]]) + 1 < 0:
            revert with 0, 65
        require (32 * mem[_404 + mem[_404]]) + mem[_404] + 32 <= return_data.size
        if 1 >= mem[_404 + mem[_404]]:
            revert with 0, 50
}

function releaseLPToken() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Not paused'
    require ext_code.size(0xa77230d17318075983913bc2145db16c7366156)
    staticcall 0xa77230d17318075983913bc2145db16c7366156.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ChainLink error'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0xfe000000000000000000000000d586e7f844cea2f87f50152665bcbc2c279d8d)
    staticcall 0xfe000000000000000000000000d586e7f844cea2f87f50152665bcbc2c279d8d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0x18000000000000000000000000a7d7079b0fead91f3e65f86e8915cb59c1a4c6)
    staticcall 0x18000000000000000000000000a7d7079b0fead91f3e65f86e8915cb59c1a4c6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0x70000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951)
    staticcall 0x70000000000000000000000000c7198437980c041c805a1edcba50c1ce5db951.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if 10^12 * ext_call.return_data[0] > !(10^12 * ext_call.return_data[0]):
        revert with 0, 17
    if 2 * 10^12 * ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if not paused:
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.0xcd5b5616 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 > !(2000000000001 * ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) < fees:
            revert with 0, 17
        if not totalSupply:
            if not stor256.length:
                idx = 0
                s = 0
                while idx < stor256.length:
                    if idx >= stor256.length:
                        revert with 0, 50
                    _127 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                    mem[0] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                    _128 = sha3(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20], 257)
                    if not totalSupply:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_127));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_127)
                        mem[32] = 257
                        sub_fc08b01f[address(_127)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_127)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_128]
                        emit DistributeLPToken(address(_127), stor[_128]);
                    else:
                        if sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] and totalSupply > -1 / sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_127));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_127)
                        mem[32] = 257
                        sub_fc08b01f[address(_127)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_127)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_128] * totalSupply / s
                        emit DistributeLPToken(address(_127), stor[_128] * totalSupply / s);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + stor[_128]
                    continue 
            else:
                mem[0] = 256
                mem[(7 * ceil32(return_data.size)) + 128] = address(stor256.field_0)
                idx = (7 * ceil32(return_data.size)) + 128
                s = 0
                while (7 * ceil32(return_data.size)) + (32 * stor256.length) + 96 > idx:
                    mem[idx + 32] = address(stor256[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                s = 0
                while idx < stor256.length:
                    if idx >= stor256.length:
                        revert with 0, 50
                    _279 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                    mem[0] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                    _280 = sha3(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20], 257)
                    if not totalSupply:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_279));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_279)
                        mem[32] = 257
                        sub_fc08b01f[address(_279)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_279)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_280]
                        emit DistributeLPToken(address(_279), stor[_280]);
                    else:
                        if sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] and totalSupply > -1 / sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_279));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_279)
                        mem[32] = 257
                        sub_fc08b01f[address(_279)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_279)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_280] * totalSupply / s
                        emit DistributeLPToken(address(_279), stor[_280] * totalSupply / s);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + stor[_280]
                    continue 
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) - fees < sub_0eae91f6:
                revert with 0, 17
            if not stor256.length:
                idx = 0
                s = (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) - fees - sub_0eae91f6
                while idx < stor256.length:
                    if idx >= stor256.length:
                        revert with 0, 50
                    _124 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                    mem[0] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                    _125 = sha3(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20], 257)
                    if not totalSupply:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_124));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_124)
                        mem[32] = 257
                        sub_fc08b01f[address(_124)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_124)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_125]
                        emit DistributeLPToken(address(_124), stor[_125]);
                    else:
                        if sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] and totalSupply > -1 / sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_124));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_124)
                        mem[32] = 257
                        sub_fc08b01f[address(_124)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_124)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_125] * totalSupply / s
                        emit DistributeLPToken(address(_124), stor[_125] * totalSupply / s);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + stor[_125]
                    continue 
            else:
                mem[0] = 256
                mem[(7 * ceil32(return_data.size)) + 128] = address(stor256.field_0)
                idx = (7 * ceil32(return_data.size)) + 128
                s = 0
                while (7 * ceil32(return_data.size)) + (32 * stor256.length) + 96 > idx:
                    mem[idx + 32] = address(stor256[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                s = (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) - fees - sub_0eae91f6
                while idx < stor256.length:
                    if idx >= stor256.length:
                        revert with 0, 50
                    _276 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                    mem[0] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                    _277 = sha3(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20], 257)
                    if not totalSupply:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_276));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_276)
                        mem[32] = 257
                        sub_fc08b01f[address(_276)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_276)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_277]
                        emit DistributeLPToken(address(_276), stor[_277]);
                    else:
                        if sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] and totalSupply > -1 / sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_276));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_276)
                        mem[32] = 257
                        sub_fc08b01f[address(_276)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_276)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_277] * totalSupply / s
                        emit DistributeLPToken(address(_276), stor[_277] * totalSupply / s);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + stor[_277]
                    continue 
    else:
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0x64000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        staticcall 0x64000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 > !(2000000000001 * ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) < fees:
            revert with 0, 17
        if not totalSupply:
            if not stor256.length:
                idx = 0
                s = 0
                while idx < stor256.length:
                    if idx >= stor256.length:
                        revert with 0, 50
                    _133 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                    mem[0] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                    _134 = sha3(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20], 257)
                    if not totalSupply:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_133));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_133)
                        mem[32] = 257
                        sub_fc08b01f[address(_133)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_133)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_134]
                        emit DistributeLPToken(address(_133), stor[_134]);
                    else:
                        if sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] and totalSupply > -1 / sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_133));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_133)
                        mem[32] = 257
                        sub_fc08b01f[address(_133)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_133)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_134] * totalSupply / s
                        emit DistributeLPToken(address(_133), stor[_134] * totalSupply / s);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + stor[_134]
                    continue 
            else:
                mem[0] = 256
                mem[(7 * ceil32(return_data.size)) + 128] = address(stor256.field_0)
                idx = (7 * ceil32(return_data.size)) + 128
                s = 0
                while (7 * ceil32(return_data.size)) + (32 * stor256.length) + 96 > idx:
                    mem[idx + 32] = address(stor256[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                s = 0
                while idx < stor256.length:
                    if idx >= stor256.length:
                        revert with 0, 50
                    _285 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                    mem[0] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                    _286 = sha3(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20], 257)
                    if not totalSupply:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_285));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_285)
                        mem[32] = 257
                        sub_fc08b01f[address(_285)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_285)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_286]
                        emit DistributeLPToken(address(_285), stor[_286]);
                    else:
                        if sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] and totalSupply > -1 / sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_285));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_285)
                        mem[32] = 257
                        sub_fc08b01f[address(_285)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_285)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_286] * totalSupply / s
                        emit DistributeLPToken(address(_285), stor[_286] * totalSupply / s);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + stor[_286]
                    continue 
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) - fees < sub_0eae91f6:
                revert with 0, 17
            if not stor256.length:
                idx = 0
                s = (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) - fees - sub_0eae91f6
                while idx < stor256.length:
                    if idx >= stor256.length:
                        revert with 0, 50
                    _130 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                    mem[0] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                    _131 = sha3(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20], 257)
                    if not totalSupply:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_130));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_130)
                        mem[32] = 257
                        sub_fc08b01f[address(_130)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_130)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_131]
                        emit DistributeLPToken(address(_130), stor[_131]);
                    else:
                        if sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] and totalSupply > -1 / sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_130));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_130)
                        mem[32] = 257
                        sub_fc08b01f[address(_130)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_130)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_131] * totalSupply / s
                        emit DistributeLPToken(address(_130), stor[_131] * totalSupply / s);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + stor[_131]
                    continue 
            else:
                mem[0] = 256
                mem[(7 * ceil32(return_data.size)) + 128] = address(stor256.field_0)
                idx = (7 * ceil32(return_data.size)) + 128
                s = 0
                while (7 * ceil32(return_data.size)) + (32 * stor256.length) + 96 > idx:
                    mem[idx + 32] = address(stor256[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                s = (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6) + (2000000000001 * ext_call.return_data[0]) - fees - sub_0eae91f6
                while idx < stor256.length:
                    if idx >= stor256.length:
                        revert with 0, 50
                    _282 = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128]
                    mem[0] = mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]
                    _283 = sha3(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20], 257)
                    if not totalSupply:
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_282));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_282)
                        mem[32] = 257
                        sub_fc08b01f[address(_282)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_282)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_283]
                        emit DistributeLPToken(address(_282), stor[_283]);
                    else:
                        if sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] and totalSupply > -1 / sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]]:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if not mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        totalSupply += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        if balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] > !(sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s):
                            revert with 0, 17
                        balanceOf[address(mem[(32 * idx) + (7 * ceil32(return_data.size)) + 128])] += sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = sub_fc08b01f[mem[(32 * idx) + (7 * ceil32(return_data.size)) + 140 len 20]] * totalSupply / s
                        emit Transfer(mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128], 0, address(_282));
                        if s > !sub_fc08b01f[mem[0]]:
                            revert with 0, 17
                        mem[0] = address(_282)
                        mem[32] = 257
                        sub_fc08b01f[address(_282)] = 0
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 128] = address(_282)
                        mem[(7 * ceil32(return_data.size)) + (32 * stor256.length) + 160] = stor[_283] * totalSupply / s
                        emit DistributeLPToken(address(_282), stor[_283] * totalSupply / s);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + stor[_283]
                    continue 
    stor256.length = 0
    idx = 0
    while stor256.length > idx:
        stor256[idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_0eae91f6 = 0
}



}
