contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - withdrawAndClaim(uint256 arg1)
#  - depositWithPermit(uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5)
#  - initialize(string arg1, string arg2, address arg3, address arg4)
#  - depositAndClaim(uint256 arg1)
#  - deposit(uint256 arg1)
#  - sweepERC20(address arg1)
#  - whitelistedWithdraw(uint256 arg1)
#
const decimals = 18

const MAX_BPS = 10000

const VERSION = '', 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of uint256 nonces;
address governorAddress;
uint8 stor11; offset 160
uint8 stor11; offset 168
uint16 stor11; offset 160
address stor11;
address tokenAddress;
address sub_c12d636bAddress;
address poolRewardsAddress;
address feeCollectorAddress;
uint256 withdrawFee;
uint256 sub_8fe91ffb;
array of struct stor23;
mapping of uint256 stor24;
array of struct stor25;
mapping of uint256 stor26;
array of struct stor27;
mapping of uint256 stor28;

function governor() payable {
    return governorAddress
}

function totalSupply() payable {
    return totalSupply
}

function stopEverything() payable {
    return bool(uint8(stor11.field_168))
}

function paused() payable {
    return bool(uint8(stor11.field_160))
}

function isKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor26[address(arg1)])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function poolRewards() payable {
    return poolRewardsAddress
}

function sub_8fe91ffb(?) payable {
    return sub_8fe91ffb
}

function sub_c12d636b(?) payable {
    return sub_c12d636bAddress
}

function feeCollector() payable {
    return feeCollectorAddress
}

function sub_daea8623(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor24[address(arg1)])
}

function isMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor28[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function withdrawFee() payable {
    return withdrawFee
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function convertFrom18(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_8fe91ffb:
        revert with 0, 18
    return (arg1 / sub_8fe91ffb)
}

function pause() payable {
    if not stor26[address(msg.sender)]:
        revert with 0, 'not-a-keeper'
    if uint8(stor11.field_160):
        revert with 0, 'paused'
    uint8(stor11.field_160) = 1
    emit Paused(msg.sender);
}

function open() payable {
    if not stor26[address(msg.sender)]:
        revert with 0, 'not-a-keeper'
    if not uint8(stor11.field_168):
        revert with 0, 'not-shutdown'
    uint8(stor11.field_168) = 0
    emit Open(msg.sender);
}

function shutdown() payable {
    if not stor26[address(msg.sender)]:
        revert with 0, 'not-a-keeper'
    if uint8(stor11.field_168):
        revert with 0, 'shutdown'
    uint16(stor11.field_160) = 257
    emit Shutdown(msg.sender);
}

function DOMAIN_SEPARATOR() payable {
    if stor8 != chainid:
        return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor7, 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    return stor6
}

function acceptGovernorship() payable {
    if address(stor11.field_0) != msg.sender:
        revert with 0, 'not-the-proposed-governor'
    emit UpdatedGovernor(governorAddress, address(stor11.field_0));
    governorAddress = address(stor11.field_0)
    address(stor11.field_0) = 0
}

function transferGovernorship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'not-the-governor'
    if not arg1:
        revert with 0, 'proposed-governor-is-zero'
    address(stor11.field_0) = arg1
}

function unpause() payable {
    if not stor26[address(msg.sender)]:
        revert with 0, 'not-a-keeper'
    if not uint8(stor11.field_160):
        revert with 0, 'not-paused'
    if uint8(stor11.field_168):
        revert with 0, 'shutdown'
    uint8(stor11.field_160) = 0
    emit Unpaused(msg.sender);
}

function updatePoolRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'not-the-governor'
    if not arg1:
        revert with 0, '', 0
    emit UpdatedPoolRewards(poolRewardsAddress, arg1);
    poolRewardsAddress = arg1
}

function updateFeeCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'not-the-governor'
    if not arg1:
        revert with 0, '', 0
    emit UpdatedFeeCollector(feeCollectorAddress, arg1);
    feeCollectorAddress = arg1
}

function totalDebt() payable {
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0xfc7b9c18 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalDebtRatio() payable {
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0x2df9eab9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function tokensHere() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateWithdrawFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'not-the-governor'
    if not feeCollectorAddress:
        revert with 0, '', 0
    if arg1 > 10000:
        revert with 0, '', 0
    emit UpdatedWithdrawFee(withdrawFee, arg1);
    withdrawFee = arg1
}

function reportLoss(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        require ext_code.size(sub_c12d636bAddress)
        call sub_c12d636bAddress.0x7f13086e with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function addKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor26[address(msg.sender)]:
        revert with 0, 'not-a-keeper'
    if stor26[address(arg1)]:
        revert with 0, '', 0
    stor25.length++
    stor25[stor25.length].field_0 = arg1
    stor25[stor25.length].field_160 = 0
    stor26[address(arg1)] = stor25.length
}

function addMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor26[address(msg.sender)]:
        revert with 0, 'not-a-keeper'
    if stor28[address(arg1)]:
        revert with 0, '', 0
    stor27.length++
    stor27[stor27.length].field_0 = arg1
    stor27[stor27.length].field_160 = 0
    stor28[address(arg1)] = stor27.length
}

function sub_9198c859(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor26[address(msg.sender)]:
        revert with 0, 'not-a-keeper'
    if stor24[address(arg1)]:
        revert with 0, '', 0
    stor23.length++
    stor23[stor23.length].field_0 = address(arg1)
    stor23[stor23.length].field_160 = 0
    stor24[address(arg1)] = stor23.length
}

function excessDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0xd53ddc26 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalDebtOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0x9f2b2833 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function availableCreditLimit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0xb64321ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function totalValue() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0xfc7b9c18 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    return (2 * ext_call.return_data[0])
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

function strategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0x228bfd9f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0]), 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[256]
}

function sub_fc51ab2a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor26[address(msg.sender)]:
        revert with 0, 'not-a-keeper'
    if not stor24[address(arg1)]:
        revert with 0, '', 0
    if stor24[address(arg1)] < 1:
        revert with 0, 17
    if stor23.length < 1:
        revert with 0, 17
    if stor23.length - 1 != stor24[address(arg1)] - 1:
        if stor23.length - 1 >= stor23.length:
            revert with 0, 50
        if stor24[address(arg1)] - 1 >= stor23.length:
            revert with 0, 50
        stor23[stor24[address(arg1)]].field_0 = stor23[stor23.length].field_0
        stor24[stor23[stor23.length].field_0] = stor24[address(arg1)]
    if not stor23.length:
        revert with 0, 49
    stor23[stor23.length].field_0 = 0
    stor23.length--
    stor24[address(arg1)] = 0
}

function removeKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor26[address(msg.sender)]:
        revert with 0, 'not-a-keeper'
    if not stor26[address(arg1)]:
        revert with 0, '', 0
    if stor26[address(arg1)] < 1:
        revert with 0, 17
    if stor25.length < 1:
        revert with 0, 17
    if stor25.length - 1 != stor26[address(arg1)] - 1:
        if stor25.length - 1 >= stor25.length:
            revert with 0, 50
        if stor26[address(arg1)] - 1 >= stor25.length:
            revert with 0, 50
        stor25[stor26[address(arg1)]].field_0 = stor25[stor25.length].field_0
        stor26[stor25[stor25.length].field_0] = stor26[address(arg1)]
    if not stor25.length:
        revert with 0, 49
    stor25[stor25.length].field_0 = 0
    stor25.length--
    stor26[address(arg1)] = 0
}

function removeMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor26[address(msg.sender)]:
        revert with 0, 'not-a-keeper'
    if not stor28[address(arg1)]:
        revert with 0, '', 0
    if stor28[address(arg1)] < 1:
        revert with 0, 17
    if stor27.length < 1:
        revert with 0, 17
    if stor27.length - 1 != stor28[address(arg1)] - 1:
        if stor27.length - 1 >= stor27.length:
            revert with 0, 50
        if stor28[address(arg1)] - 1 >= stor27.length:
            revert with 0, 50
        stor27[stor28[address(arg1)]].field_0 = stor27[stor27.length].field_0
        stor28[stor27[stor27.length].field_0] = stor28[address(arg1)]
    if not stor27.length:
        revert with 0, 49
    stor27[stor27.length].field_0 = 0
    stor27.length--
    stor28[address(arg1)] = 0
}

function keepers() payable {
    mem[64] = (32 * stor25.length) + 128
    mem[96] = stor25.length
    if not stor25.length:
        mem[(32 * stor25.length) + 128] = 32
        mem[(32 * stor25.length) + 160] = stor25.length
        idx = 0
        s = (32 * stor25.length) + 192
        t = 128
        while idx < stor25.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor25.length) + 128
           len (96 * stor25.length) + 64
    mem[128] = uint256(stor25.field_0)
    idx = 128
    s = 0
    while (32 * stor25.length) + 96 > idx:
        mem[idx + 32] = stor25[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor25.length) + 128] = 32
    mem[(32 * stor25.length) + 160] = stor25.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor25.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor25.length) + -mem[64] + 192
}

function maintainers() payable {
    mem[64] = (32 * stor27.length) + 128
    mem[96] = stor27.length
    if not stor27.length:
        mem[(32 * stor27.length) + 128] = 32
        mem[(32 * stor27.length) + 160] = stor27.length
        idx = 0
        s = (32 * stor27.length) + 192
        t = 128
        while idx < stor27.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor27.length) + 128
           len (96 * stor27.length) + 64
    mem[128] = uint256(stor27.field_0)
    idx = 128
    s = 0
    while (32 * stor27.length) + 96 > idx:
        mem[idx + 32] = stor27[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor27.length) + 128] = 32
    mem[(32 * stor27.length) + 160] = stor27.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor27.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor27.length) + -mem[64] + 192
}

function sub_fc767810(?) payable {
    mem[64] = (32 * stor23.length) + 128
    mem[96] = stor23.length
    if not stor23.length:
        mem[(32 * stor23.length) + 128] = 32
        mem[(32 * stor23.length) + 160] = stor23.length
        idx = 0
        s = (32 * stor23.length) + 192
        t = 128
        while idx < stor23.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor23.length) + 128
           len (96 * stor23.length) + 64
    mem[128] = uint256(stor23.field_0)
    idx = 128
    s = 0
    while (32 * stor23.length) + 96 > idx:
        mem[idx + 32] = stor23[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor23.length) + 128] = 32
    mem[(32 * stor23.length) + 160] = stor23.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor23.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor23.length) + -mem[64] + 192
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if poolRewardsAddress:
        require ext_code.size(poolRewardsAddress)
        call poolRewardsAddress.updateReward(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(poolRewardsAddress)
        call poolRewardsAddress.updateReward(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function migrateStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if governorAddress != msg.sender:
        revert with 0, 'not-the-governor'
    require ext_code.size(arg2)
    staticcall arg2.0x16f0115b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, '', 0
    require ext_code.size(arg1)
    staticcall arg1.0x16f0115b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, '', 0
    require ext_code.size(sub_c12d636bAddress)
    call sub_c12d636bAddress.0x6cb56d19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.migrate(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getStrategies() payable {
    mem[96] = 0xb49a60bb00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0xb49a60bb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _12 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _12
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 128
    while idx < _5:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
}

function getWithdrawQueue() payable {
    mem[96] = 0x1118305200000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0x11183052 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _12 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _12
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 128
    while idx < _5:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
}

function pricePerShare() payable {
    if not totalSupply:
        if not sub_8fe91ffb:
            revert with 0, 18
        return (10^18 / sub_8fe91ffb)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0xfc7b9c18 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if not 2 * ext_call.return_data[0]:
        if not sub_8fe91ffb:
            revert with 0, 18
        return (10^18 / sub_8fe91ffb)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0xfc7b9c18 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return (2 * 10^18 * ext_call.return_data[0] / totalSupply)
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if block.timestamp > arg4:
        revert with 0, 'ERC20Permit: expired deadline'
    if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if arg5 != 27:
        if arg5 != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    if stor8 != chainid:
        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor7, 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    else:
        signer = erecover(sha3(0, stor6, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'ERC20Permit: invalid signature'
    if 1 > !nonces[address(arg1)]:
        revert with 0, 17
    nonces[address(arg1)]++
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg2:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if poolRewardsAddress:
        require ext_code.size(poolRewardsAddress)
        call poolRewardsAddress.updateReward(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(poolRewardsAddress)
        call poolRewardsAddress.updateReward(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function multiTransfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = 160
    if arg2.length != arg1.length:
        revert with 0, '', 0
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        if not poolRewardsAddress:
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[((32 * idx) + arg1 + 36)]):
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < cd[((32 * idx) + arg2 + 36)]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            mem[32] = 0
            balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] > !cd[((32 * idx) + arg2 + 36)]:
                revert with 0, 17
            balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
            mem[mem[64]] = cd[((32 * idx) + arg2 + 36)]
            emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
            _66 = mem[64]
            mem[64] = mem[64] + 64
            mem[_66] = 1
            mem[_66 + 32] = 0x3600000000000000000000000000000000000000000000000000000000000000
        else:
            require ext_code.size(poolRewardsAddress)
            call poolRewardsAddress.updateReward(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(poolRewardsAddress)
            call poolRewardsAddress.updateReward(address arg1) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg1 + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[((32 * idx) + arg1 + 36)]):
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < cd[((32 * idx) + arg2 + 36)]:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            mem[32] = 0
            balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] > !cd[((32 * idx) + arg2 + 36)]:
                revert with 0, 17
            balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
            mem[mem[64]] = cd[((32 * idx) + arg2 + 36)]
            emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
            _69 = mem[64]
            mem[64] = mem[64] + 64
            mem[_69] = 1
            mem[_69 + 32] = 0x3600000000000000000000000000000000000000000000000000000000000000
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
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
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
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
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
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

function sub_c01e0d40(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, '', 0
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0x346162d5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    if arg1 < arg1 * ext_call.return_data[0] / 10000:
        revert with 0, 17
    if not totalSupply:
        if not sub_8fe91ffb:
            revert with 0, 18
        if arg1 - (arg1 * ext_call.return_data[0] / 10000) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not 10^18 / sub_8fe91ffb:
            revert with 0, 18
        if not totalSupply:
            if not sub_8fe91ffb:
                revert with 0, 18
            if (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb:
                revert with 0, 17
            if arg1 - (arg1 * ext_call.return_data[0] / 10000) <= (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                return ((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb)
        else:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c12d636bAddress)
            staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if not 2 * ext_call.return_data[0]:
                if not sub_8fe91ffb:
                    revert with 0, 18
                if (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb:
                    revert with 0, 17
                if arg1 - (arg1 * ext_call.return_data[0] / 10000) <= (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                    return ((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb)
            else:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c12d636bAddress)
                staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !ext_call.return_data[0]:
                    revert with 0, 17
                if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb:
                    revert with 0, 17
                if arg1 - (arg1 * ext_call.return_data[0] / 10000) <= (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                    return ((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb)
        if 1 > !((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb):
            revert with 0, 17
        return (((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb) + 1)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0xfc7b9c18 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if not 2 * ext_call.return_data[0]:
        if not sub_8fe91ffb:
            revert with 0, 18
        if arg1 - (arg1 * ext_call.return_data[0] / 10000) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not 10^18 / sub_8fe91ffb:
            revert with 0, 18
        if not totalSupply:
            if not sub_8fe91ffb:
                revert with 0, 18
            if (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb:
                revert with 0, 17
            if arg1 - (arg1 * ext_call.return_data[0] / 10000) <= (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                return ((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb)
        else:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c12d636bAddress)
            staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if not 2 * ext_call.return_data[0]:
                if not sub_8fe91ffb:
                    revert with 0, 18
                if (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb:
                    revert with 0, 17
                if arg1 - (arg1 * ext_call.return_data[0] / 10000) <= (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                    return ((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb)
            else:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c12d636bAddress)
                staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !ext_call.return_data[0]:
                    revert with 0, 17
                if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb:
                    revert with 0, 17
                if arg1 - (arg1 * ext_call.return_data[0] / 10000) <= (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                    return ((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb)
        if 1 > !((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb):
            revert with 0, 17
        return (((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 10^18 / sub_8fe91ffb) + 1)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c12d636bAddress)
    staticcall sub_c12d636bAddress.0xfc7b9c18 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if arg1 - (arg1 * ext_call.return_data[0] / 10000) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not 2 * 10^18 * ext_call.return_data[0] / totalSupply:
        revert with 0, 18
    if not totalSupply:
        if not sub_8fe91ffb:
            revert with 0, 18
        if (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 10^18 / sub_8fe91ffb > -1 / (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
            revert with 0, 17
        if arg1 - (arg1 * ext_call.return_data[0] / 10000) <= (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 10^18 / sub_8fe91ffb / 10^18:
            return ((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply)
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c12d636bAddress)
        staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if not 2 * ext_call.return_data[0]:
            if not sub_8fe91ffb:
                revert with 0, 18
            if (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 10^18 / sub_8fe91ffb > -1 / (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                revert with 0, 17
            if arg1 - (arg1 * ext_call.return_data[0] / 10000) <= (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 10^18 / sub_8fe91ffb / 10^18:
                return ((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply)
        else:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c12d636bAddress)
            staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                revert with 0, 17
            if arg1 - (arg1 * ext_call.return_data[0] / 10000) <= (10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                return ((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply)
    if 1 > !((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
        revert with 0, 17
    return (((10^18 * arg1) - (10^18 * arg1 * ext_call.return_data[0] / 10000) / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1)
}

function reportEarning(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    mem[164] = arg2
    mem[196] = arg3
    require ext_code.size(sub_c12d636bAddress)
    call sub_c12d636bAddress.0xa066654b with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg1, arg2, arg3
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg1 > !ext_call.return_data[0]:
        revert with 0, 17
    if arg1 + ext_call.return_data[0] < ext_call.return_data[32]:
        if ext_call.return_data[32] < arg1 + ext_call.return_data[0]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[32] - arg1 - ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[32] - arg1 - ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call tokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[32] - arg1 - ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[32] - arg1 - ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                if not ext_call.return_data[32]:
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
        if ext_call.return_data[64]:
            require ext_code.size(msg.sender)
            staticcall msg.sender.0xc415b95c with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not totalSupply:
                if not sub_8fe91ffb:
                    revert with 0, 18
                if ext_call.return_data[64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^18 / sub_8fe91ffb:
                    revert with 0, 18
                if not totalSupply:
                    if not sub_8fe91ffb:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                        revert with 0, 17
                    if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                            revert with 0, 17
                        totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                        if balanceOf[ext_call.return_data[12 len 20]] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                            revert with 0, 17
                        balanceOf[ext_call.return_data[12 len 20]] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                        emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, ext_call.return_data[12 len 20]);
                    else:
                        if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                            revert with 0, 17
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                            revert with 0, 17
                        totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                        if balanceOf[ext_call.return_data[12 len 20]] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                            revert with 0, 17
                        balanceOf[ext_call.return_data[12 len 20]] = balanceOf[ext_call.return_data[12 len 20]] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                        emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, ext_call.return_data[12 len 20]);
                else:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c12d636bAddress)
                    staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                        revert with 0, 17
                    if not 2 * ext_call.return_data[0]:
                        if not sub_8fe91ffb:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                            revert with 0, 17
                        if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                            if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                            emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                        else:
                            if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                revert with 0, 17
                            totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                            if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                revert with 0, 17
                            balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                            emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                    else:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c12d636bAddress)
                        staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                            revert with 0, 17
                        if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                            revert with 0, 17
                        if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                            if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                            emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                        else:
                            if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                revert with 0, 17
                            totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                            if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                revert with 0, 17
                            balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                            emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
            else:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c12d636bAddress)
                staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !ext_call.return_data[0]:
                    revert with 0, 17
                if not 2 * ext_call.return_data[0]:
                    if not sub_8fe91ffb:
                        revert with 0, 18
                    if ext_call.return_data[64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 / sub_8fe91ffb:
                        revert with 0, 18
                    if not totalSupply:
                        if not sub_8fe91ffb:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                            revert with 0, 17
                        if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                            if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                            emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                        else:
                            if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                revert with 0, 17
                            totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                            if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                revert with 0, 17
                            balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                            emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                    else:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c12d636bAddress)
                        staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                            revert with 0, 17
                        if not 2 * ext_call.return_data[0]:
                            if not sub_8fe91ffb:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                        else:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c12d636bAddress)
                            staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !ext_call.return_data[0]:
                                revert with 0, 17
                            if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                else:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c12d636bAddress)
                    staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                        revert with 0, 17
                    if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    if ext_call.return_data[64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                        revert with 0, 18
                    if not totalSupply:
                        if not sub_8fe91ffb:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                            revert with 0, 17
                        if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 10^18 / sub_8fe91ffb / 10^18:
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                revert with 0, 17
                            totalSupply += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                            if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                revert with 0, 17
                            balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                            emit Transfer((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply), 0, address(ext_call.return_data[0]));
                        else:
                            if 1 > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                revert with 0, 17
                            if not address(ext_call.return_data[0]):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                revert with 0, 17
                            totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                            if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                revert with 0, 17
                            balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                            emit Transfer(((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1), 0, address(ext_call.return_data[0]));
                    else:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c12d636bAddress)
                        staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                            revert with 0, 17
                        if not 2 * ext_call.return_data[0]:
                            if not sub_8fe91ffb:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 10^18 / sub_8fe91ffb / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                emit Transfer((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1), 0, address(ext_call.return_data[0]));
                        else:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c12d636bAddress)
                            staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !ext_call.return_data[0]:
                                revert with 0, 17
                            if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                emit Transfer((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1), 0, address(ext_call.return_data[0]));
    else:
        if arg1 + ext_call.return_data[0] <= ext_call.return_data[32]:
            if ext_call.return_data[64]:
                require ext_code.size(msg.sender)
                staticcall msg.sender.0xc415b95c with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not totalSupply:
                    if not sub_8fe91ffb:
                        revert with 0, 18
                    if ext_call.return_data[64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 / sub_8fe91ffb:
                        revert with 0, 18
                    if not totalSupply:
                        if not sub_8fe91ffb:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                            revert with 0, 17
                        if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                            if balanceOf[ext_call.return_data[12 len 20]] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            balanceOf[ext_call.return_data[12 len 20]] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                            emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                        else:
                            if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                revert with 0, 17
                            totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                            if balanceOf[ext_call.return_data[12 len 20]] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                revert with 0, 17
                            balanceOf[ext_call.return_data[12 len 20]] = balanceOf[ext_call.return_data[12 len 20]] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                            emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                    else:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c12d636bAddress)
                        staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                            revert with 0, 17
                        if not 2 * ext_call.return_data[0]:
                            if not sub_8fe91ffb:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                        else:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c12d636bAddress)
                            staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !ext_call.return_data[0]:
                                revert with 0, 17
                            if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                else:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c12d636bAddress)
                    staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                        revert with 0, 17
                    if not 2 * ext_call.return_data[0]:
                        if not sub_8fe91ffb:
                            revert with 0, 18
                        if ext_call.return_data[64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^18 / sub_8fe91ffb:
                            revert with 0, 18
                        if not totalSupply:
                            if not sub_8fe91ffb:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                        else:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c12d636bAddress)
                            staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !ext_call.return_data[0]:
                                revert with 0, 17
                            if not 2 * ext_call.return_data[0]:
                                if not sub_8fe91ffb:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                    revert with 0, 17
                                if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                    if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                    emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                                else:
                                    if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                        revert with 0, 17
                                    totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                    if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                    emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                            else:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_c12d636bAddress)
                                staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not totalSupply:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                    revert with 0, 17
                                if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                    if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                    emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                                else:
                                    if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                        revert with 0, 17
                                    totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                    if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                    emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                    else:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c12d636bAddress)
                        staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                            revert with 0, 17
                        if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if ext_call.return_data[64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                            revert with 0, 18
                        if not totalSupply:
                            if not sub_8fe91ffb:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 10^18 / sub_8fe91ffb / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                emit Transfer((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1), 0, address(ext_call.return_data[0]));
                        else:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c12d636bAddress)
                            staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !ext_call.return_data[0]:
                                revert with 0, 17
                            if not 2 * ext_call.return_data[0]:
                                if not sub_8fe91ffb:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                                    revert with 0, 17
                                if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 10^18 / sub_8fe91ffb / 10^18:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    totalSupply += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                    if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                    emit Transfer((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply), 0, address(ext_call.return_data[0]));
                                else:
                                    if 1 > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                        revert with 0, 17
                                    totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                    if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                    emit Transfer(((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1), 0, address(ext_call.return_data[0]));
                            else:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_c12d636bAddress)
                                staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not totalSupply:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                                    revert with 0, 17
                                if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    totalSupply += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                    if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                    emit Transfer((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply), 0, address(ext_call.return_data[0]));
                                else:
                                    if 1 > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                        revert with 0, 17
                                    totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                    if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                    emit Transfer(((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1), 0, address(ext_call.return_data[0]));
        else:
            if arg1 + ext_call.return_data[0] < ext_call.return_data[32]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = arg1 + ext_call.return_data[0] - ext_call.return_data[32]
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1 + ext_call.return_data[0] - ext_call.return_data[32], 0
            mem[ceil32(return_data.size) + 392] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1 + ext_call.return_data[0] - ext_call.return_data[32], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1 + ext_call.return_data[0] - ext_call.return_data[32], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if ext_call.return_data[64]:
                require ext_code.size(msg.sender)
                staticcall msg.sender.0xc415b95c with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not totalSupply:
                    if not sub_8fe91ffb:
                        revert with 0, 18
                    if ext_call.return_data[64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 / sub_8fe91ffb:
                        revert with 0, 18
                    if not totalSupply:
                        if not sub_8fe91ffb:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                            revert with 0, 17
                        if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                            if balanceOf[ext_call.return_data[12 len 20]] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            balanceOf[ext_call.return_data[12 len 20]] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                            emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, ext_call.return_data[12 len 20]);
                        else:
                            if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                revert with 0, 17
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                revert with 0, 17
                            totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                            if balanceOf[ext_call.return_data[12 len 20]] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                revert with 0, 17
                            balanceOf[ext_call.return_data[12 len 20]] = balanceOf[ext_call.return_data[12 len 20]] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                            emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, ext_call.return_data[12 len 20]);
                    else:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c12d636bAddress)
                        staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                            revert with 0, 17
                        if not 2 * ext_call.return_data[0]:
                            if not sub_8fe91ffb:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                        else:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c12d636bAddress)
                            staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !ext_call.return_data[0]:
                                revert with 0, 17
                            if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not totalSupply:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                else:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_c12d636bAddress)
                    staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                        revert with 0, 17
                    if not 2 * ext_call.return_data[0]:
                        if not sub_8fe91ffb:
                            revert with 0, 18
                        if ext_call.return_data[64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^18 / sub_8fe91ffb:
                            revert with 0, 18
                        if not totalSupply:
                            if not sub_8fe91ffb:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                        else:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c12d636bAddress)
                            staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !ext_call.return_data[0]:
                                revert with 0, 17
                            if not 2 * ext_call.return_data[0]:
                                if not sub_8fe91ffb:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                    revert with 0, 17
                                if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 10^18 / sub_8fe91ffb / 10^18:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                    if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                    emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                                else:
                                    if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                        revert with 0, 17
                                    totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                    if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                    emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                            else:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_c12d636bAddress)
                                staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not totalSupply:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb:
                                    revert with 0, 17
                                if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    totalSupply += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                    if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb
                                    emit Transfer((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb), 0, address(ext_call.return_data[0]));
                                else:
                                    if 1 > !(10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb):
                                        revert with 0, 17
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                        revert with 0, 17
                                    totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                    if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1
                                    emit Transfer(((10^18 * ext_call.return_data[64] / 10^18 / sub_8fe91ffb) + 1), 0, address(ext_call.return_data[0]));
                    else:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_c12d636bAddress)
                        staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !ext_call.return_data[0]:
                            revert with 0, 17
                        if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not totalSupply:
                            revert with 0, 18
                        if ext_call.return_data[64] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                            revert with 0, 18
                        if not totalSupply:
                            if not sub_8fe91ffb:
                                revert with 0, 18
                            if 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                                revert with 0, 17
                            if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 10^18 / sub_8fe91ffb / 10^18:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                totalSupply += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                emit Transfer((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply), 0, address(ext_call.return_data[0]));
                            else:
                                if 1 > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                    revert with 0, 17
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                    revert with 0, 17
                                totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                    revert with 0, 17
                                balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                emit Transfer(((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1), 0, address(ext_call.return_data[0]));
                        else:
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_c12d636bAddress)
                            staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !ext_call.return_data[0]:
                                revert with 0, 17
                            if not 2 * ext_call.return_data[0]:
                                if not sub_8fe91ffb:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 10^18 / sub_8fe91ffb > -1 / 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                                    revert with 0, 17
                                if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 10^18 / sub_8fe91ffb / 10^18:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    totalSupply += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                    if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                    emit Transfer((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply), 0, address(ext_call.return_data[0]));
                                else:
                                    if 1 > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                        revert with 0, 17
                                    totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                    if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                    emit Transfer(((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1), 0, address(ext_call.return_data[0]));
                            else:
                                require ext_code.size(tokenAddress)
                                staticcall tokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_c12d636bAddress)
                                staticcall sub_c12d636bAddress.0xfc7b9c18 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if 2 * ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if not totalSupply:
                                    revert with 0, 18
                                if 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply and 2 * 10^18 * ext_call.return_data[0] / totalSupply > -1 / 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply:
                                    revert with 0, 17
                                if ext_call.return_data[64] <= 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply * 2 * 10^18 * ext_call.return_data[0] / totalSupply / 10^18:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    totalSupply += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                    if balanceOf[address(ext_call.return_data[0])] > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] += 10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply
                                    emit Transfer((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply), 0, address(ext_call.return_data[0]));
                                else:
                                    if 1 > !(10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply):
                                        revert with 0, 17
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                        revert with 0, 17
                                    totalSupply = totalSupply + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                    if balanceOf[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1):
                                        revert with 0, 17
                                    balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])] + (10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1
                                    emit Transfer(((10^18 * ext_call.return_data[64] / 2 * 10^18 * ext_call.return_data[0] / totalSupply) + 1), 0, address(ext_call.return_data[0]));
}



}
